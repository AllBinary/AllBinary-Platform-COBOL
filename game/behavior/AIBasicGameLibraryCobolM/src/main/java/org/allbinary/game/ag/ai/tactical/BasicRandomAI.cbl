>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.ag.ai.tactical
*> Java class BasicRandomAI

IDENTIFICATION DIVISION.
FUNCTION-ID. BasicRandomAI-new4.
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
01 J-ownerLayerInterface BINARY-DOUBLE.
01 J-gameInput BINARY-DOUBLE.
01 J-inputProbability BINARY-DOUBLE.
01 J-visitor BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-ownerLayerInterface J-gameInput J-inputProbability J-visitor RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("BasicRandomAI")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_i_random")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_inputProbability")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_visitor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_keyArray")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_myRandomFactory")
    COMPUTE JVALUE = 0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_i_random", JVALUE)
    
    
    COMPUTE JVALUE = FUNCTION JR-ARRAY-ADD(FUNCTION JR-ARRAY-ADD(FUNCTION JR-ARRAY-ADD(FUNCTION JR-ARRAY-ADD(FUNCTION JR-ARRAY-ADD(FUNCTION JR-ARRAY-ADD(FUNCTION JR-ARRAY-ADD(FUNCTION JR-NEW-ARRAY(JZERO), FUNCTION Canvas-static-UP),
        FUNCTION Canvas-static-DOWN), FUNCTION Canvas-static-LEFT), FUNCTION Canvas-static-RIGHT), FUNCTION Canvas-static-KEY-NUM1), FUNCTION Canvas-static-KEY-NUM7), FUNCTION Canvas-static-KEY-NUM9)
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_keyArray", JVALUE)
    COMPUTE JVALUE = FUNCTION MyRandomFactory-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_myRandomFactory", JVALUE)
        CONTINUE
        COMPUTE JVALUE = J-inputProbability
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_inputProbability", JVALUE)
        COMPUTE JVALUE = J-visitor
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_visitor", JVALUE)
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION BasicRandomAI-new4.

IDENTIFICATION DIVISION.
FUNCTION-ID. BasicRandomAI-processAI1.
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
01 J-repeat BINARY-DOUBLE.
01 J-repeatLikelyhoodIntegerArray BINARY-DOUBLE.
01 J-likelyhoodIntegerArray BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-likelyhoodIntegerKeyArray BINARY-DOUBLE.
01 J-key BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
01 jtemp5 BINARY-DOUBLE.
01 JFIRST1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-allBinaryLayerManager BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-allBinaryLayerManager RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp2 = FUNCTION GmTckTmDlyHlprFctry-gtInstnc0
        COMPUTE jtemp1 = FUNCTION InptPrbblty-gtTmDlyHlpr0(FUNCTION JR-GET(J-THIS, "f_inputProbability"))
        IF (FUNCTION JR-CLASS-NAME(jtemp1) = 1)
            COMPUTE JVALUE = FUNCTION MyRndmFctry-gtAbsltNxtInt1(FUNCTION JR-GET(J-THIS, "f_myRandomFactory"), FUNCTION InputProbability-getMax0(FUNCTION JR-GET(J-THIS, "f_inputProbability")))
            COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_i_random", JVALUE)
            COMPUTE J-repeat = 0
            COMPUTE J-repeatLikelyhoodIntegerArray = FUNCTION InptPrbblty-gtRptLklyhdIn73747(FUNCTION JR-GET(J-THIS, "f_inputProbability"))
            IF ((FUNCTION BasicAI-getLastKey0(J-THIS) NOT = (0 - 1)) AND (FUNCTION JR-CLASS-NAME(FUNCTION JR-ARRAY-GET(J-repeatLikelyhoodIntegerArray, FUNCTION BasicAI-getLastKey0(J-THIS))) >= FUNCTION JR-GET(J-THIS, "f_i_random")))
                COMPUTE J-repeat = 1
            END-IF
            IF (NOT (J-repeat = 1))
                COMPUTE J-likelyhoodIntegerArray = FUNCTION InptPrbblty-gtLklyhdIntgrArry0(FUNCTION JR-GET(J-THIS, "f_inputProbability"))
                COMPUTE JVALUE = FUNCTION MyRndmFctry-gtAbsltNxtInt1(FUNCTION JR-GET(J-THIS, "f_myRandomFactory"), FUNCTION InputProbability-getMax0(FUNCTION JR-GET(J-THIS, "f_inputProbability")))
                COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_i_random", JVALUE)
                COMPUTE J-size = FUNCTION JR-ARRAY-LENGTH(FUNCTION JR-GET(J-THIS, "f_keyArray"))
                CONTINUE
                COMPUTE J-index = 0
                MOVE 1 TO JFIRST1
                PERFORM FOREVER
                    IF JFIRST1 = 0
                        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
                    END-IF
                    MOVE 0 TO JFIRST1
                    IF NOT (J-index < J-size) EXIT PERFORM END-IF
                    COMPUTE J-key = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-THIS, "f_keyArray"), J-index)
                    COMPUTE J-likelyhoodIntegerKeyArray = FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerArray, J-key)
                    COMPUTE jtemp3 = 0
                    IF ((FUNCTION JR-ARRAY-LENGTH(J-likelyhoodIntegerArray) >= J-key) AND (FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerKeyArray, jtemp3) NOT = 0))
                        COMPUTE jtemp4 = 0
                        COMPUTE jtemp5 = 1
                        IF ((FUNCTION JR-GET(J-THIS, "f_i_random") >= FUNCTION JR-CLASS-NAME(FUNCTION JR-ARRAY-GET(J-likelyhoodIntegerKeyArray, jtemp4))) AND (FUNCTION JR-GET(J-THIS, "f_i_random") < FUNCTION JR-CLASS-NAME(FUNCTION
        JR-ARRAY-GET(J-likelyhoodIntegerKeyArray, jtemp5))))
                            COMPUTE JDISCARD = FUNCTION BasicAI-setLastKey1(J-THIS, J-key)
                            EXIT PERFORM
                        END-IF
                    END-IF
                END-PERFORM
            END-IF
            COMPUTE JDISCARD = FUNCTION Visitor-visit1(FUNCTION JR-GET(J-THIS, "f_visitor"), J-THIS)
        END-IF
    GOBACK.
END FUNCTION BasicRandomAI-processAI1.

