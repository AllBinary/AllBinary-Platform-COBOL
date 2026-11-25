#!/usr/bin/env bash

# Compiles the COBOL sources the COBOL converter generated with GnuCOBOL cobc. Every source copies jrepository.cpy, which declares every user defined function of the build, so
# the hand written runtime, the COBOL sources of the dependencies (META-INF/cobol/src of their jars),
# and this project are copied to one tree first. This project's sources are written to <output>/src.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -u "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No COBOL sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
tree="$object_dir/tree"
mkdir -p "$output_dir/src" "$output_dir/modules/$artifact" "$tree"
cp -R "$source_dir/." "$output_dir/src/"
# The sources again under modules/<artifactId>: all dependency jars are unpacked into one folder, so a class two modules
# have (a platform variant and its No*/Null*/None* stub) is only told apart there
cp -R "$source_dir/." "$output_dir/modules/$artifact/"
# The runtime keeps the java.* functions in java/... folders
cp -R "$runtime_dir/." "$tree/"
if [ -d "$dependency_dir/src" ]; then
    cp -R "$dependency_dir/src/." "$tree/"
fi
# A file more dependency modules have (one class of a platform variant and its stub): the file of a module that is not a
# No*/Null*/None* stub, else the one with more functions (a superset declares every function the smaller one has).
# Jars built before modules/ existed (an older microemu) only have src/, which stays as unpacked.
if [ -d "$dependency_dir/modules" ]; then
    perl -e '
        use strict;
        my ($modules, $target) = @ARGV;
        my %candidates;
        opendir(my $dir, $modules) or exit 0;
        my @names = sort grep { !/^\./ && -d "$modules/$_" } readdir($dir);
        closedir($dir);
        for my $module (@names) {
            my @stack = ("");
            while (@stack) {
                my $relative = shift @stack;
                my $path = $relative eq "" ? "$modules/$module" : "$modules/$module/$relative";
                if (-d $path) {
                    opendir(my $sub, $path) or next;
                    push @stack, map { $relative eq "" ? $_ : "$relative/$_" } grep { !/^\./ } readdir($sub);
                    closedir($sub);
                } elsif ($relative =~ /\.cbl$/) {
                    push @{$candidates{$relative}}, $module;
                }
            }
        }
        sub stub { return $_[0] =~ /^(No|Null|None)[A-Z]/ ? 1 : 0; }
        sub functions {
            my ($file) = @_;
            open(my $in, "<", $file) or return 0;
            my $count = 0;
            while (my $line = <$in>) { $count++ if $line =~ /^\s*FUNCTION-ID\./i; }
            close($in);
            return $count;
        }
        for my $relative (sort keys %candidates) {
            my @list = @{$candidates{$relative}};
            next if @list < 2;
            my $best = $list[0];
            for my $module (@list[1..$#list]) {
                my ($a, $b) = (stub($best), stub($module));
                if ($a != $b) {
                    $best = $module if $a;
                } elsif (functions("$modules/$module/$relative") > functions("$modules/$best/$relative")) {
                    $best = $module;
                }
            }
            my $class = $relative;
            $class =~ s/\.cbl$//;
            $class =~ s#.*/##;
            print "COBOL duplicate class $class: using $best (of @list)\n";
            my $destination = "$target/$relative";
            (my $folder = $destination) =~ s#/[^/]*$##;
            system("mkdir", "-p", $folder);
            system("cp", "$modules/$best/$relative", $destination);
        }
    ' "$dependency_dir/modules" "$tree"
fi
cp -R "$source_dir/." "$tree/"

# cobc of an all in one GnuCOBOL install finds its configuration, copybooks, C headers, and C compiler from these
cobol_home="$(dirname "$(dirname "$compiler")")"
export COB_CONFIG_DIR="$(cygpath -w "$cobol_home/config")"
export COB_COPY_DIR="$(cygpath -w "$cobol_home/copy")"
export COB_CFLAGS="-pipe -I$(cygpath -w "$cobol_home/include") -Wno-unused -fsigned-char -Wno-pointer-sign"
export COB_LDFLAGS="-L$(cygpath -w "$cobol_home/lib")"
export COB_LIBS="-lcob"
export PATH="$cobol_home/bin:$cobol_home/mingw64/bin:$PATH"

# cobc can not open a path over the Windows 260 character limit, which a deep project folder plus a deep package
# reaches, so it compiles a short temporary copy of the tree
short_tree="$(mktemp -d /tmp/cobolXXXXXX)"
trap 'rm -rf "$short_tree"' EXIT
cp -R "$tree/." "$short_tree/"
cd "$short_tree" || exit 1
# The copybooks of the runtime are found next to each source
find . -mindepth 2 -type f \( -name '*.cob' -o -name '*.cbl' \) -exec dirname {} \; | sort -u | while IFS= read -r folder; do cp jrstorage.cpy "$folder/" 2>/dev/null; done
own="$(cd "$source_dir" && find . -type f -name '*.cbl' | sed 's|^\./||' | sort)"
files=$(find . -type f \( -name '*.cbl' -o -name '*.cob' \) | sed 's|^\./||' | sort)
{ grep -h -o -i 'FUNCTION-ID\. *[A-Za-z0-9_-]*' $files | sed 's/FUNCTION-ID\. */    FUNCTION /'; echo '    .'; } > jrepository.cpy
echo "COBOL sources: $(find "$source_dir" -type f -name '*.cbl' | wc -l)"
mkdir -p "$object_dir/jobj"
# cobc is a MinGW program so the object path is a Windows path
object_path="$(cygpath -m "$object_dir/jobj")"
failed=""
# A dependency file can call a function of an optional dependency of that dependency (not transitive like Java), so
# only this project's files and the runtime must compile. The dependency files are not compiled at all: their errors
# do not count and nothing links the objects (jrepository.cpy already declares their functions for this project)
for file in $files; do
    if [ "${file%.cob}" = "$file" ] && ! echo "$own" | grep -qxF "$file"; then
        continue
    fi
    # cobc takes a module name from the file base name, which can have at most 31 characters
    # (MachineAccessControlAddressInterface), so a longer one is compiled from a short copy in the same folder
    compile_file="$file"
    base="$(basename "$file")"
    if [ "${#base}" -gt 35 ]; then
        compile_file="$(dirname "$file")/j$(echo "$file" | cksum | cut -d' ' -f1).${base##*.}"
        cp "$file" "$compile_file"
    fi
    # cobc keeps a C header open for each function of a source, and the Windows C runtime opens at most about 512 files
    # ("Too many open files" for GL10 with its constants), so a source with more than 200 functions and programs is
    # compiled in parts of at most 200 (each function or program is complete on its own: IDENTIFICATION DIVISION. to
    # its END FUNCTION or END PROGRAM)
    units="$(grep -c -E '^IDENTIFICATION DIVISION\.' "$compile_file")"
    parts="$compile_file"
    if [ "$units" -gt 200 ]; then
        prefix="$(dirname "$file")/j$(echo "$file" | cksum | cut -d' ' -f1)p"
        awk -v prefix="$prefix" -v extension="${base##*.}" '
            NR == 1 { header = $0; next }
            /^IDENTIFICATION DIVISION\./ { if (count % 200 == 0) { part++; output = prefix part "." extension; print header > output } count++ }
            { if (output != "") print >> output }
        ' "$compile_file"
        parts="$(ls "$prefix"*."${base##*.}")"
    fi
    output=""
    status=0
    part_number=0
    for part in $parts; do
        part_number=$((part_number + 1))
        if ! part_output="$("$compiler" "${compiler_flags[@]}" -c -o "$object_path/$(echo "$file" | tr '/.' '__')_$part_number.o" "$part" 2>&1)"; then
            status=1
            output="$output$part_output"$'\n'
        fi
    done
    if [ "$status" != "0" ]; then
        if [ "${file%.cob}" != "$file" ] || echo "$own" | grep -qxF "$file"; then
            echo "== $file"
            echo "$output" | head -40
            failed="$failed $file"
        fi
    fi
done
if [ -z "$failed" ]; then
    echo "COBOL compiled: $artifact"
    exit 0
fi
echo "COBOL build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
