>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.graphics.form.item
*> Java class CommandTextItemArrayFactory

IDENTIFICATION DIVISION.
FUNCTION-ID. CmmndTxtItmArryFctry-new1.
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
01 J-visitorInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-visitorInterface RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("CommandTextItemArrayFactory")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_list")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_visitorInterface")
    COMPUTE JVALUE = FUNCTION BasicArrayListD-new0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_list", JVALUE)
    
        COMPUTE JVALUE = J-visitorInterface
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_visitorInterface", JVALUE)
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION CmmndTxtItmArryFctry-new1.

IDENTIFICATION DIVISION.
FUNCTION-ID. CmmndTxtItmArryFctry-gtInstnc3.
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
01 J-vectorUtil BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-textItem BINARY-DOUBLE.
01 J-priorityLimit BINARY-DOUBLE.
01 J-displayInfo BINARY-DOUBLE.
01 J-isLargeEnoughDisplayForBigMenu BINARY-DOUBLE.
01 J-command BINARY-DOUBLE.
01 J-aBoolean BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 J-textItemArray BINARY-DOUBLE.
01 J-size2 BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
01 JFIRST-N69215 BINARY-DOUBLE.
01 JFIRST-N69750 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-vector BINARY-DOUBLE.
01 J-backgroundBasicColor BINARY-DOUBLE.
01 J-foregroundBasicColor BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-vector J-backgroundBasicColor J-foregroundBasicColor RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-vectorUtil = FUNCTION VectorUtil-getInstance0
        COMPUTE J-size = FUNCTION VectorUtil-getSize1(J-vectorUtil, J-vector)
        COMPUTE JDISCARD = FUNCTION BasicArrayList-clear0(FUNCTION JR-GET(J-THIS, "f_list"))
        CONTINUE
        COMPUTE J-priorityLimit = 7
        COMPUTE J-displayInfo = FUNCTION DsplyInfSngltn-getInstance0
        COMPUTE jtemp1 = FUNCTION ScreenInfo-getInstance0
        COMPUTE jtemp2 = FUNCTION ScreenInfo-getInstance0
        COMPUTE J-isLargeEnoughDisplayForBigMenu = FUNCTION MAX(((FUNCTION DsplyInfSngltn-isPortrait0(J-displayInfo) * (1 - FUNCTION MAX(0, FUNCTION SIGN(FUNCTION JR-GET(jtemp1, "f_MEDIUM_WIDTH") - FUNCTION
        DsplyInfSngltn-getLastHeight0(J-displayInfo)))))), (((1 - FUNCTION DsplyInfSngltn-isPortrait0(J-displayInfo)) * (1 - FUNCTION MAX(0, FUNCTION SIGN(FUNCTION JR-GET(jtemp2, "f_MEDIUM_WIDTH") - FUNCTION
        DsplyInfSngltn-getLastWidth0(J-displayInfo)))))))
        IF ((NOT (J-isLargeEnoughDisplayForBigMenu = 1)) AND (J-size > 3))
            COMPUTE J-priorityLimit = 3
        END-IF
        CONTINUE
        COMPUTE J-index = 0
        MOVE 1 TO JFIRST-N69215
        PERFORM FOREVER
            IF JFIRST-N69215 = 0
                COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
            END-IF
            MOVE 0 TO JFIRST-N69215
            IF NOT (J-index < J-size) EXIT PERFORM END-IF
            COMPUTE J-command = FUNCTION VectorUtil-elementAt2(J-vectorUtil, J-vector, J-index)
            IF (FUNCTION Command-getPriority0(J-command) < J-priorityLimit)
                COMPUTE J-aBoolean = FUNCTION Visitor-visit1(FUNCTION JR-GET(J-THIS, "f_visitorInterface"), J-command)
                IF (J-aBoolean = 1)
                    COMPUTE jtemp3 = FUNCTION StringUtil-getInstance0
                    COMPUTE J-textItem = FUNCTION CommandTextItem-new5(J-command, FUNCTION ImgItm-static-LAYOUT-DEFAULT, FUNCTION JR-GET(jtemp3, "f_EMPTY_STRING"), J-backgroundBasicColor, J-foregroundBasicColor)
                    COMPUTE JDISCARD = FUNCTION BasicArrayList-add1(FUNCTION JR-GET(J-THIS, "f_list"), J-textItem)
                END-IF
            END-IF
        END-PERFORM
        COMPUTE J-textItemArray = FUNCTION JR-NEW-ARRAY(FUNCTION BasicArrayList-size0(FUNCTION JR-GET(J-THIS, "f_list")))
        COMPUTE J-size2 = FUNCTION JR-ARRAY-LENGTH(J-textItemArray)
        COMPUTE J-index = 0
        MOVE 1 TO JFIRST-N69750
        PERFORM FOREVER
            IF JFIRST-N69750 = 0
                COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
            END-IF
            MOVE 0 TO JFIRST-N69750
            IF NOT (J-index < J-size2) EXIT PERFORM END-IF
            COMPUTE JVALUE = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_list"), "f_objectArray"), J-index)
            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-textItemArray, J-index, JVALUE)
        END-PERFORM
        COMPUTE J-RESULT = J-textItemArray
        GOBACK
    GOBACK.
END FUNCTION CmmndTxtItmArryFctry-gtInstnc3.

IDENTIFICATION DIVISION.
PROGRAM-ID. VCommandTextItemA-getInstance3.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-vector BINARY-DOUBLE.
01 J-backgroundBasicColor BINARY-DOUBLE.
01 J-foregroundBasicColor BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-vector J-backgroundBasicColor J-foregroundBasicColor J-RESULT.
    COMPUTE J-RESULT = FUNCTION CmmndTxtItmArryFctry-gtInstnc3(J-THIS, J-vector, J-backgroundBasicColor, J-foregroundBasicColor)
    GOBACK.
END PROGRAM VCommandTextItemA-getInstance3.

IDENTIFICATION DIVISION.
PROGRAM-ID. CommandTextItemArrayFac-jsuper.
DATA DIVISION.
LINKAGE SECTION.
01 J-CLASS PIC X(60).
PROCEDURE DIVISION USING J-CLASS.
    MOVE "Object" TO J-CLASS
    GOBACK.
END PROGRAM CommandTextItemArrayFac-jsuper.

