>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.input.motion.button
*> Java class BasicTouchButtonsBuilder

IDENTIFICATION DIVISION.
FUNCTION-ID. BasicTouchButtonsBuilder-new0.
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
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("BasicTouchButtonsBuilder")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_logUtil")
    COMPUTE JVALUE = FUNCTION LogUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_logUtil", JVALUE)
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION BasicTouchButtonsBuilder-new0.

IDENTIFICATION DIVISION.
FUNCTION-ID. BscTchBttnsBldr-getList0.
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
01 J-list BINARY-DOUBLE.
01 J-commonButtons BINARY-DOUBLE.
01 J-touchButtonLocationHelper BINARY-DOUBLE.
01 J-basicTouchButtonCellPositionFactory BINARY-DOUBLE.
01 J-UP BINARY-DOUBLE.
01 J-DOWN BINARY-DOUBLE.
01 J-LEFT BINARY-DOUBLE.
01 J-RIGHT BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
01 jtemp5 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        CONTINUE
            COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_START"), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"),
        "f_CONSTRUCTOR"))
            COMPUTE J-list = FUNCTION BasicArrayListD-new0
            COMPUTE J-commonButtons = FUNCTION CommonButtons-getInstance0
            COMPUTE J-touchButtonLocationHelper = FUNCTION TouchButtonLocationHelper-new0
            COMPUTE J-basicTouchButtonCellPositionFactory = FUNCTION BscTchBttnCllPstnFctry-new0
            COMPUTE jtemp1 = FUNCTION BscTchInptFctry-getInstance0
            COMPUTE J-UP = FUNCTION TouchButton-createButton6(FUNCTION JR-GET(jtemp1, "f_UP"), FUNCTION TchBttnUpRsrc-getInstance0, FUNCTION JR-GET(J-commonButtons, "f_NORMAL_BUTTON"), FUNCTION JR-GET(J-basicTouchButtonCellPositionFactory,
        "f_SECOND_FROM_BOTTOM_LEFT"), FUNCTION TchBttnLctnHlpr-gtClmnsRm39318(J-touchButtonLocationHelper), FUNCTION TchBttnLctnHlpr-gtRwsRmndrHlf0(J-touchButtonLocationHelper))
            COMPUTE jtemp2 = FUNCTION BscTchInptFctry-getInstance0
            COMPUTE J-DOWN = FUNCTION TouchButton-createButton6(FUNCTION JR-GET(jtemp2, "f_DOWN"), FUNCTION TchBttnDwnRsrc-getInstance0, FUNCTION JR-GET(J-commonButtons, "f_NORMAL_BUTTON"), FUNCTION
        JR-GET(J-basicTouchButtonCellPositionFactory, "f_BOTTOM_LEFT"), FUNCTION TchBttnLctnHlpr-gtClmnsRm39318(J-touchButtonLocationHelper), FUNCTION TchBttnLctnHlpr-gtRwsRmndrHlf0(J-touchButtonLocationHelper))
            COMPUTE jtemp3 = FUNCTION BscTchInptFctry-getInstance0
            COMPUTE J-LEFT = FUNCTION TouchButton-createButton6(FUNCTION JR-GET(jtemp3, "f_SPECIAL_BUTTON_FOUR"), FUNCTION TchBttnTrnLftRsrc-getInstance0, FUNCTION JR-GET(J-commonButtons, "f_NORMAL_BUTTON"), FUNCTION
        JR-GET(J-basicTouchButtonCellPositionFactory, "f_BOTTOM_SECOND_FROM_RIGHT"), FUNCTION TchBttnLctnHlpr-gtClmnsRm39318(J-touchButtonLocationHelper), FUNCTION TchBttnLctnHlpr-gtRwsRmndrHlf0(J-touchButtonLocationHelper))
            COMPUTE jtemp4 = FUNCTION BscTchInptFctry-getInstance0
            COMPUTE J-RIGHT = FUNCTION TouchButton-createButton6(FUNCTION JR-GET(jtemp4, "f_SPECIAL_BUTTON_THREE"), FUNCTION TchBttnTrnRghtRsrc-gtInstnc0, FUNCTION JR-GET(J-commonButtons, "f_NORMAL_BUTTON"), FUNCTION
        JR-GET(J-basicTouchButtonCellPositionFactory, "f_BOTTOM_RIGHT"), FUNCTION TchBttnLctnHlpr-gtClmnsRm39318(J-touchButtonLocationHelper), FUNCTION TchBttnLctnHlpr-gtRwsRmndrHlf0(J-touchButtonLocationHelper))
            COMPUTE JDISCARD = FUNCTION BasicArrayList-add1(J-list, J-UP)
            COMPUTE JDISCARD = FUNCTION BasicArrayList-add1(J-list, J-LEFT)
            COMPUTE JDISCARD = FUNCTION BasicArrayList-add1(J-list, J-RIGHT)
            COMPUTE JDISCARD = FUNCTION BasicArrayList-add1(J-list, J-DOWN)
            COMPUTE J-RESULT = J-list
            GOBACK
    GOBACK.
END FUNCTION BscTchBttnsBldr-getList0.

