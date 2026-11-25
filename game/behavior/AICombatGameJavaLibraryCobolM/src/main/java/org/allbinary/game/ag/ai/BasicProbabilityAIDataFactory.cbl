>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.ag.ai
*> Java class BasicProbabilityAIDataFactory

IDENTIFICATION DIVISION.
FUNCTION-ID. BscPrbbltyAIDtFctry-new0.
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
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("BasicProbabilityAIDataFactory")
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION BscPrbbltyAIDtFctry-new0.

IDENTIFICATION DIVISION.
FUNCTION-ID. BscPrbbltyAIDtFctry-gtInstnc0.
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
01 J-likelyhoodIntegerArray BINARY-DOUBLE.
01 J-smallIntegerSingletonFactory BINARY-DOUBLE.
01 J-repeatLikelyhoodIntegerArray BINARY-DOUBLE.
01 J-inputProbability BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
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
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp2 = 1
        COMPUTE jtemp1 = (FUNCTION MOD((FUNCTION Canvas-static-KEY-NUM9 + jtemp2) + 2147483648, 4294967296) - 2147483648)
        COMPUTE jtemp3 = 2
        COMPUTE J-likelyhoodIntegerArray = FUNCTION JR-NEW-ARRAY2(jtemp1, jtemp3)
        COMPUTE J-smallIntegerSingletonFactory = FUNCTION SmllIntgrSngltnFctry-gtInstnc0
        COMPUTE jtemp5 = 0
        COMPUTE jtemp4 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp5)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-UP), jtemp4, JVALUE)
        COMPUTE jtemp7 = 10
        COMPUTE jtemp6 = 1
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp7)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-UP), jtemp6, JVALUE)
        COMPUTE jtemp9 = 10
        COMPUTE jtemp8 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp9)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-DOWN), jtemp8, JVALUE)
        COMPUTE jtemp11 = 14
        COMPUTE jtemp10 = 1
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp11)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-DOWN), jtemp10, JVALUE)
        COMPUTE jtemp13 = 14
        COMPUTE jtemp12 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp13)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-LEFT), jtemp12, JVALUE)
        COMPUTE jtemp15 = 18
        COMPUTE jtemp14 = 1
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp15)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-LEFT), jtemp14, JVALUE)
        COMPUTE jtemp17 = 18
        COMPUTE jtemp16 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp17)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-RIGHT), jtemp16, JVALUE)
        COMPUTE jtemp19 = 22
        COMPUTE jtemp18 = 1
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp19)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-RIGHT), jtemp18, JVALUE)
        COMPUTE jtemp21 = 22
        COMPUTE jtemp20 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp21)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-KEY-NUM7), jtemp20, JVALUE)
        COMPUTE jtemp23 = 26
        COMPUTE jtemp22 = 1
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp23)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-KEY-NUM7), jtemp22, JVALUE)
        COMPUTE jtemp25 = 26
        COMPUTE jtemp24 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp25)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-KEY-NUM9), jtemp24, JVALUE)
        COMPUTE jtemp27 = 30
        COMPUTE jtemp26 = 1
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp27)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-KEY-NUM9), jtemp26, JVALUE)
        COMPUTE jtemp29 = 30
        COMPUTE jtemp28 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp29)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-KEY-NUM1), jtemp28, JVALUE)
        COMPUTE jtemp31 = 40
        COMPUTE jtemp30 = 1
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp31)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, FUNCTION Canvas-static-KEY-NUM1), jtemp30, JVALUE)
        COMPUTE jtemp33 = 1
        COMPUTE jtemp32 = (FUNCTION MOD((FUNCTION Canvas-static-KEY-NUM9 + jtemp33) + 2147483648, 4294967296) - 2147483648)
        COMPUTE J-repeatLikelyhoodIntegerArray = FUNCTION JR-NEW-ARRAY(jtemp32)
        COMPUTE jtemp34 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp34)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-repeatLikelyhoodIntegerArray, FUNCTION Canvas-static-UP, JVALUE)
        COMPUTE jtemp35 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp35)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-repeatLikelyhoodIntegerArray, FUNCTION Canvas-static-DOWN, JVALUE)
        COMPUTE jtemp36 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp36)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-repeatLikelyhoodIntegerArray, FUNCTION Canvas-static-LEFT, JVALUE)
        COMPUTE jtemp37 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp37)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-repeatLikelyhoodIntegerArray, FUNCTION Canvas-static-RIGHT, JVALUE)
        COMPUTE jtemp38 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp38)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-repeatLikelyhoodIntegerArray, FUNCTION Canvas-static-KEY-NUM7, JVALUE)
        COMPUTE jtemp39 = 0
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp39)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-repeatLikelyhoodIntegerArray, FUNCTION Canvas-static-KEY-NUM9, JVALUE)
        COMPUTE jtemp40 = 10
        COMPUTE JVALUE = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp40)
        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-repeatLikelyhoodIntegerArray, FUNCTION Canvas-static-KEY-NUM1, JVALUE)
        COMPUTE jtemp41 = 42
        COMPUTE J-inputProbability = FUNCTION InputProbability-new4(J-likelyhoodIntegerArray, J-repeatLikelyhoodIntegerArray, jtemp41, FUNCTION NTmDlyHlpr-static-SINGLETON)
        COMPUTE J-RESULT = FUNCTION InputProbability-toHashtable0(J-inputProbability)
        GOBACK
    GOBACK.
END FUNCTION BscPrbbltyAIDtFctry-gtInstnc0.

IDENTIFICATION DIVISION.
PROGRAM-ID. VBasicProbability-getInstance0.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-RESULT.
    COMPUTE J-RESULT = FUNCTION BscPrbbltyAIDtFctry-gtInstnc0(J-THIS)
    GOBACK.
END PROGRAM VBasicProbability-getInstance0.

IDENTIFICATION DIVISION.
PROGRAM-ID. BasicProbabilityAIDataF-jsuper.
DATA DIVISION.
LINKAGE SECTION.
01 J-CLASS PIC X(60).
PROCEDURE DIVISION USING J-CLASS.
    MOVE "Object" TO J-CLASS
    GOBACK.
END PROGRAM BasicProbabilityAIDataF-jsuper.

