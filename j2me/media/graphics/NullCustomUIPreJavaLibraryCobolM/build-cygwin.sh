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
mkdir -p "$output_dir/src" "$tree"
cp -R "$source_dir/." "$output_dir/src/"
# The runtime keeps the java.* functions in java/... folders
cp -R "$runtime_dir/." "$tree/"
if [ -d "$dependency_dir/src" ]; then
    cp -R "$dependency_dir/src/." "$tree/"
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
# only this project's files and the runtime must compile
for file in $files; do
    # cobc takes a module name from the file base name, which can have at most 31 characters
    # (MachineAccessControlAddressInterface), so a longer one is compiled from a short copy in the same folder
    compile_file="$file"
    base="$(basename "$file")"
    if [ "${#base}" -gt 35 ]; then
        compile_file="$(dirname "$file")/j$(echo "$file" | cksum | cut -d' ' -f1).${base##*.}"
        cp "$file" "$compile_file"
    fi
    if ! output="$("$compiler" "${compiler_flags[@]}" -c -o "$object_path/$(echo "$file" | tr '/.' '__').o" "$compile_file" 2>&1)"; then
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
