>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.data.resource
*> Java class ResourceUtil

IDENTIFICATION DIVISION.
FUNCTION-ID. ResourceUtil-static-instance.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 ResourceUtil-jcell-instance BINARY-DOUBLE EXTERNAL.
01 ResourceUtil-jset-instance BINARY-DOUBLE EXTERNAL.
LOCAL-STORAGE SECTION.
01 JDISCARD BINARY-DOUBLE.
01 JVALUE BINARY-DOUBLE.
01 JVALUEF COMP-2.
01 JZERO BINARY-DOUBLE VALUE 0.
01 JONE BINARY-DOUBLE VALUE 1.
01 JTWO BINARY-DOUBLE VALUE 2.
01 JTHREE BINARY-DOUBLE VALUE 3.
01 JFOUR BINARY-DOUBLE VALUE 4.
01 JFIVE BINARY-DOUBLE VALUE 5.
01 JSIX BINARY-DOUBLE VALUE 6.
LINKAGE SECTION.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION RETURNING J-RESULT.
    IF ResourceUtil-jset-instance = 0
        MOVE 1 TO ResourceUtil-jset-instance
        COMPUTE ResourceUtil-jcell-instance = FUNCTION ResourceUtil-new0
    END-IF
    MOVE ResourceUtil-jcell-instance TO J-RESULT
    GOBACK.
END FUNCTION ResourceUtil-static-instance.

IDENTIFICATION DIVISION.
FUNCTION-ID. ResourceUtilstaticinS90055.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 ResourceUtil-jcell-instance BINARY-DOUBLE EXTERNAL.
LINKAGE SECTION.
01 J-VALUE BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-VALUE RETURNING J-RESULT.
    MOVE FUNCTION ResourceUtil-static-instance TO J-RESULT
    MOVE J-VALUE TO ResourceUtil-jcell-instance
    MOVE J-VALUE TO J-RESULT
    GOBACK.
END FUNCTION ResourceUtilstaticinS90055.

IDENTIFICATION DIVISION.
FUNCTION-ID. ResourceUtil-new0.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LOCAL-STORAGE SECTION.
01 JDISCARD BINARY-DOUBLE.
01 JVALUE BINARY-DOUBLE.
01 JVALUEF COMP-2.
01 JZERO BINARY-DOUBLE VALUE 0.
01 JONE BINARY-DOUBLE VALUE 1.
01 JTWO BINARY-DOUBLE VALUE 2.
01 JTHREE BINARY-DOUBLE VALUE 3.
01 JFOUR BINARY-DOUBLE VALUE 4.
01 JFIVE BINARY-DOUBLE VALUE 5.
01 JSIX BINARY-DOUBLE VALUE 6.
01 J-THIS BINARY-DOUBLE.
LINKAGE SECTION.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("ResourceUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_logUtil")
    COMPUTE JVALUE = FUNCTION LogUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_logUtil", JVALUE)
        CONTINUE
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION ResourceUtil-new0.

IDENTIFICATION DIVISION.
FUNCTION-ID. ResourceUtil-getInstance0.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LOCAL-STORAGE SECTION.
01 JDISCARD BINARY-DOUBLE.
01 JVALUE BINARY-DOUBLE.
01 JVALUEF COMP-2.
01 JZERO BINARY-DOUBLE VALUE 0.
01 JONE BINARY-DOUBLE VALUE 1.
01 JTWO BINARY-DOUBLE VALUE 2.
01 JTHREE BINARY-DOUBLE VALUE 3.
01 JFOUR BINARY-DOUBLE VALUE 4.
01 JFIVE BINARY-DOUBLE VALUE 5.
01 JSIX BINARY-DOUBLE VALUE 6.
LINKAGE SECTION.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-RESULT = FUNCTION ResourceUtil-static-instance
        GOBACK
    GOBACK.
END FUNCTION ResourceUtil-getInstance0.

IDENTIFICATION DIVISION.
FUNCTION-ID. ResourceUtil-setLoadingPaths2.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LOCAL-STORAGE SECTION.
01 JDISCARD BINARY-DOUBLE.
01 JVALUE BINARY-DOUBLE.
01 JVALUEF COMP-2.
01 JZERO BINARY-DOUBLE VALUE 0.
01 JONE BINARY-DOUBLE VALUE 1.
01 JTWO BINARY-DOUBLE VALUE 2.
01 JTHREE BINARY-DOUBLE VALUE 3.
01 JFOUR BINARY-DOUBLE VALUE 4.
01 JFIVE BINARY-DOUBLE VALUE 5.
01 JSIX BINARY-DOUBLE VALUE 6.
01 jtemp1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-path BINARY-DOUBLE.
01 J-ext BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-path J-ext RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp1 = FUNCTION CommonStrings-getInstance0
        COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-GET(jtemp1, "f_NOT_IMPLEMENTED"), J-THIS, FUNCTION JR-STR("setLoadingPaths"))
    GOBACK.
END FUNCTION ResourceUtil-setLoadingPaths2.

IDENTIFICATION DIVISION.
FUNCTION-ID. RsrcUtl-getResourceAsStream1.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LOCAL-STORAGE SECTION.
01 JDISCARD BINARY-DOUBLE.
01 JVALUE BINARY-DOUBLE.
01 JVALUEF COMP-2.
01 JZERO BINARY-DOUBLE VALUE 0.
01 JONE BINARY-DOUBLE VALUE 1.
01 JTWO BINARY-DOUBLE VALUE 2.
01 JTHREE BINARY-DOUBLE VALUE 3.
01 JFOUR BINARY-DOUBLE VALUE 4.
01 JFIVE BINARY-DOUBLE VALUE 5.
01 JSIX BINARY-DOUBLE VALUE 6.
01 J-inputStream BINARY-DOUBLE.
01 J-stringMaker BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 J-resourcePath BINARY-DOUBLE.
01 J-RES BINARY-DOUBLE.
01 J-COLON BINARY-DOUBLE.
01 J-RESOURCE_STRING BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
01 jtemp5 BINARY-DOUBLE.
01 jtemp6 BINARY-DOUBLE.
01 jtemp7 BINARY-DOUBLE.
01 jtemp8 BINARY-DOUBLE.
01 jtemp9 BINARY-DOUBLE.
01 jtemp10 BINARY-DOUBLE.
01 jtemp11 BINARY-DOUBLE.
01 jtemp12 BINARY-DOUBLE.
01 jtemp13 BINARY-DOUBLE.
01 jtemp14 BINARY-DOUBLE.
01 jtemp15 BINARY-DOUBLE.
01 jtemp16 BINARY-DOUBLE.
01 jtemp17 BINARY-DOUBLE.
01 jtemp18 BINARY-DOUBLE.
01 jtemp19 BINARY-DOUBLE.
01 jtemp20 BINARY-DOUBLE.
01 jtemp21 BINARY-DOUBLE.
01 jtemp22 BINARY-DOUBLE.
01 jtemp23 BINARY-DOUBLE.
01 jtemp24 BINARY-DOUBLE.
01 jtemp25 BINARY-DOUBLE.
01 jtemp26 BINARY-DOUBLE.
01 jtemp27 BINARY-DOUBLE.
01 jtemp28 BINARY-DOUBLE.
01 jtemp29 BINARY-DOUBLE.
01 jtemp30 BINARY-DOUBLE.
01 jtemp31 BINARY-DOUBLE.
01 jtemp32 BINARY-DOUBLE.
01 jtemp33 BINARY-DOUBLE.
01 jtemp34 BINARY-DOUBLE.
01 jtemp35 BINARY-DOUBLE.
01 jtemp36 BINARY-DOUBLE.
01 jtemp37 BINARY-DOUBLE.
01 jtemp38 BINARY-DOUBLE.
01 jtemp39 BINARY-DOUBLE.
01 jtemp40 BINARY-DOUBLE.
01 jtemp41 BINARY-DOUBLE.
01 jtemp42 BINARY-DOUBLE.
01 jtemp43 BINARY-DOUBLE.
01 jtemp44 BINARY-DOUBLE.
01 jtemp45 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-resource BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-resource RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp2 = FUNCTION JR-CLASS-NAME(J-resource)
        COMPUTE J-inputStream = FUNCTION JR-CLASS-NAME(jtemp2)
        IF (J-inputStream = 0)
            COMPUTE jtemp3 = 2
            COMPUTE J-inputStream = FUNCTION RsrcUtl-gtRsrcAsStrmAtStrt2(J-THIS, J-resource, jtemp3)
            IF (J-inputStream = 0)
                COMPUTE jtemp4 = 1
                COMPUTE J-inputStream = FUNCTION RsrcUtl-gtRsrcAsStrmAtStrt2(J-THIS, J-resource, jtemp4)
                IF (J-inputStream = 0)
                    COMPUTE J-stringMaker = FUNCTION StringMaker-new0
                    COMPUTE jtemp5 = 47
                    COMPUTE J-index = FUNCTION JR-LASTINDEXOF(J-resource, FUNCTION JR-CHAR-STRING(jtemp5))
                    COMPUTE jtemp7 = 1
                    COMPUTE jtemp6 = (FUNCTION MOD((J-index + jtemp7) + 2147483648, 4294967296) - 2147483648)
                    COMPUTE J-resourcePath = FUNCTION JR-SUBSTRING(J-resource, jtemp6)
                    COMPUTE jtemp8 = FUNCTION JR-CLASS-NAME(J-resource)
                    COMPUTE J-inputStream = FUNCTION JR-CLASS-NAME(jtemp8)
                    IF (J-inputStream = 0)
                        COMPUTE J-resourcePath = FUNCTION JR-SUBSTRING(J-resource, J-index)
                        COMPUTE jtemp9 = FUNCTION JR-CLASS-NAME(J-resource)
                        COMPUTE J-inputStream = FUNCTION JR-CLASS-NAME(jtemp9)
                        IF (J-inputStream = 0)
                            COMPUTE J-RES = FUNCTION JR-STR("res")
                            COMPUTE jtemp11 = FUNCTION StringMaker-append1(J-stringMaker, J-RES)
                            COMPUTE jtemp10 = FUNCTION StringMaker-append1(jtemp11, FUNCTION JR-SUBSTRING(J-resource, J-index))
                            COMPUTE J-resourcePath = FUNCTION JR-TO-STRING(jtemp10)
                            COMPUTE jtemp12 = FUNCTION JR-CLASS-NAME(J-resource)
                            COMPUTE J-inputStream = FUNCTION JR-CLASS-NAME(jtemp12)
                            IF (J-inputStream = 0)
                                COMPUTE jtemp13 = 0
                                COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringMaker, jtemp13, FUNCTION StringMaker-length0(J-stringMaker))
                                COMPUTE jtemp16 = FUNCTION StringMaker-append1(J-stringMaker, FUNCTION JR-STR("/"))
                                COMPUTE jtemp15 = FUNCTION StringMaker-append1(jtemp16, J-RES)
                                COMPUTE jtemp14 = FUNCTION StringMaker-append1(jtemp15, FUNCTION JR-SUBSTRING(J-resource, J-index))
                                COMPUTE J-resourcePath = FUNCTION JR-TO-STRING(jtemp14)
                                COMPUTE jtemp17 = FUNCTION JR-CLASS-NAME(J-resource)
                                COMPUTE J-inputStream = FUNCTION JR-CLASS-NAME(jtemp17)
                                COMPUTE jtemp18 = FUNCTION CommonSeps-getInstance0
                                COMPUTE J-COLON = FUNCTION JR-GET(jtemp18, "f_COLON")
                                IF (J-inputStream = 0)
                                    COMPUTE jtemp19 = 0
                                    COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringMaker, jtemp19, FUNCTION StringMaker-length0(J-stringMaker))
                                    COMPUTE jtemp22 = FUNCTION StringMaker-append1(J-stringMaker, J-RES)
                                    COMPUTE jtemp21 = FUNCTION StringMaker-append1(jtemp22, J-COLON)
                                    COMPUTE jtemp20 = FUNCTION StringMaker-append1(jtemp21, FUNCTION JR-SUBSTRING(J-resource, J-index))
                                    COMPUTE J-resourcePath = FUNCTION JR-TO-STRING(jtemp20)
                                    COMPUTE jtemp23 = FUNCTION JR-CLASS-NAME(J-resource)
                                    COMPUTE J-inputStream = FUNCTION JR-CLASS-NAME(jtemp23)
                                    IF (J-inputStream = 0)
                                        COMPUTE jtemp24 = 0
                                        COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringMaker, jtemp24, FUNCTION StringMaker-length0(J-stringMaker))
                                        COMPUTE jtemp29 = 1
                                        COMPUTE jtemp28 = (FUNCTION MOD((J-index + jtemp29) + 2147483648, 4294967296) - 2147483648)
                                        COMPUTE jtemp27 = FUNCTION StringMaker-append1(J-stringMaker, J-RES)
                                        COMPUTE jtemp26 = FUNCTION StringMaker-append1(jtemp27, J-COLON)
                                        COMPUTE jtemp25 = FUNCTION StringMaker-append1(jtemp26, FUNCTION JR-SUBSTRING(J-resource, jtemp28))
                                        COMPUTE J-resourcePath = FUNCTION JR-TO-STRING(jtemp25)
                                        COMPUTE jtemp30 = FUNCTION JR-CLASS-NAME(J-resource)
                                        COMPUTE J-inputStream = FUNCTION JR-CLASS-NAME(jtemp30)
                                        IF (J-inputStream = 0)
                                            COMPUTE J-RESOURCE_STRING = FUNCTION JR-STR("resource")
                                            COMPUTE jtemp31 = 0
                                            COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringMaker, jtemp31, FUNCTION StringMaker-length0(J-stringMaker))
                                            COMPUTE jtemp34 = FUNCTION StringMaker-append1(J-stringMaker, J-RESOURCE_STRING)
                                            COMPUTE jtemp33 = FUNCTION StringMaker-append1(jtemp34, J-COLON)
                                            COMPUTE jtemp32 = FUNCTION StringMaker-append1(jtemp33, FUNCTION JR-SUBSTRING(J-resource, J-index))
                                            COMPUTE J-resourcePath = FUNCTION JR-TO-STRING(jtemp32)
                                            COMPUTE jtemp35 = FUNCTION JR-CLASS-NAME(J-resource)
                                            COMPUTE J-inputStream = FUNCTION JR-CLASS-NAME(jtemp35)
                                            IF (J-inputStream = 0)
                                                COMPUTE jtemp36 = 0
                                                COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringMaker, jtemp36, FUNCTION StringMaker-length0(J-stringMaker))
                                                COMPUTE jtemp41 = 1
                                                COMPUTE jtemp40 = (FUNCTION MOD((J-index + jtemp41) + 2147483648, 4294967296) - 2147483648)
                                                COMPUTE jtemp39 = FUNCTION StringMaker-append1(J-stringMaker, J-RESOURCE_STRING)
                                                COMPUTE jtemp38 = FUNCTION StringMaker-append1(jtemp39, J-COLON)
                                                COMPUTE jtemp37 = FUNCTION StringMaker-append1(jtemp38, FUNCTION JR-SUBSTRING(J-resource, jtemp40))
                                                COMPUTE J-resourcePath = FUNCTION JR-TO-STRING(jtemp37)
                                                COMPUTE jtemp42 = FUNCTION JR-CLASS-NAME(J-resource)
                                                COMPUTE J-inputStream = FUNCTION JR-CLASS-NAME(jtemp42)
                                                IF (J-inputStream = 0)
                                                    COMPUTE jtemp43 = 0
                                                    COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringMaker, jtemp43, FUNCTION StringMaker-length0(J-stringMaker))
                                                    COMPUTE jtemp45 = FUNCTION StringMaker-append1(J-stringMaker, FUNCTION JR-STR("Unable to obtain: "))
                                                    COMPUTE jtemp44 = FUNCTION StringMaker-append1(jtemp45, J-resource)
                                                    COMPUTE JDISCARD = FUNCTION JR-THROW(JZERO)
                                                END-IF
                                            END-IF
                                        END-IF
                                    END-IF
                                END-IF
                            END-IF
                        END-IF
                    END-IF
                END-IF
            END-IF
        END-IF
        COMPUTE J-RESULT = J-inputStream
        GOBACK
    GOBACK.
END FUNCTION RsrcUtl-getResourceAsStream1.

IDENTIFICATION DIVISION.
FUNCTION-ID. RsrcUtl-gtRsrcAsStrmAtStrt2.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LOCAL-STORAGE SECTION.
01 JDISCARD BINARY-DOUBLE.
01 JVALUE BINARY-DOUBLE.
01 JVALUEF COMP-2.
01 JZERO BINARY-DOUBLE VALUE 0.
01 JONE BINARY-DOUBLE VALUE 1.
01 JTWO BINARY-DOUBLE VALUE 2.
01 JTHREE BINARY-DOUBLE VALUE 3.
01 JFOUR BINARY-DOUBLE VALUE 4.
01 JFIVE BINARY-DOUBLE VALUE 5.
01 JSIX BINARY-DOUBLE VALUE 6.
01 J-stringMaker BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 J-resourcePath BINARY-DOUBLE.
01 J-inputStream BINARY-DOUBLE.
01 jtemp46 BINARY-DOUBLE.
01 jtemp47 BINARY-DOUBLE.
01 jtemp48 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-resource BINARY-DOUBLE.
01 J-startIndex BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-resource J-startIndex RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-stringMaker = FUNCTION StringMaker-new0
        COMPUTE jtemp46 = FUNCTION CommonSeps-getInstance0
        COMPUTE J-index = FUNCTION JR-INDEX-OF(J-resource, FUNCTION JR-GET(jtemp46, "f_COLON"))
        COMPUTE jtemp47 = (FUNCTION MOD((J-index + J-startIndex) + 2147483648, 4294967296) - 2147483648)
        COMPUTE J-resourcePath = FUNCTION JR-SUBSTRING(J-resource, jtemp47)
        COMPUTE jtemp48 = FUNCTION JR-CLASS-NAME(J-resource)
        COMPUTE J-inputStream = FUNCTION JR-CLASS-NAME(jtemp48)
        IF (J-inputStream NOT = 0)
            COMPUTE J-RESULT = J-inputStream
            GOBACK
        END-IF
        COMPUTE J-RESULT = J-inputStream
        GOBACK
    GOBACK.
END FUNCTION RsrcUtl-gtRsrcAsStrmAtStrt2.

IDENTIFICATION DIVISION.
FUNCTION-ID. ResourceUtil-addResource2.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LOCAL-STORAGE SECTION.
01 JDISCARD BINARY-DOUBLE.
01 JVALUE BINARY-DOUBLE.
01 JVALUEF COMP-2.
01 JZERO BINARY-DOUBLE VALUE 0.
01 JONE BINARY-DOUBLE VALUE 1.
01 JTWO BINARY-DOUBLE VALUE 2.
01 JTHREE BINARY-DOUBLE VALUE 3.
01 JFOUR BINARY-DOUBLE VALUE 4.
01 JFIVE BINARY-DOUBLE VALUE 5.
01 JSIX BINARY-DOUBLE VALUE 6.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-resource BINARY-DOUBLE.
01 J-value BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-resource J-value RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        CONTINUE
    GOBACK.
END FUNCTION ResourceUtil-addResource2.

