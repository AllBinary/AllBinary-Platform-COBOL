>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.input.motion.button
*> Java class TouchButtonRecognizer

IDENTIFICATION DIVISION.
FUNCTION-ID. TouchButtonRecognizer-new0.
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
01 jtemp2 BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("TouchButtonRecognizer")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_logUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_rectangleCollisionUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_upGameKeyEventHandler")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_downGameKeyEventHandler")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_lastPressedTouchButtonInput")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_currentlyPressedTouchButtonSingleton")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_releaseHelper")
    COMPUTE JVALUE = FUNCTION LogUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_logUtil", JVALUE)
    COMPUTE JVALUE = FUNCTION RctnglCllsnUtl-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_rectangleCollisionUtil", JVALUE)
    COMPUTE JVALUE = FUNCTION UpGmKyEvntHndlr-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_upGameKeyEventHandler", JVALUE)
    COMPUTE JVALUE = FUNCTION DwnGmKyEvntHndlr-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_downGameKeyEventHandler", JVALUE)
    COMPUTE jtemp1 = FUNCTION BscTchInptFctry-getInstance0
    COMPUTE JVALUE = FUNCTION JR-GET(jtemp1, "f_NONE")
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_lastPressedTouchButtonInput", JVALUE)
    COMPUTE JVALUE = FUNCTION CrrntlyPrssdTchBttnSngl-19967
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_currentlyPressedTouchButtonSingleton", JVALUE)
    
        COMPUTE jtemp2 = FUNCTION TchScrnFctry-getInstance0
        IF (FUNCTION TchScrnFctry-isMultiTouch0(jtemp2) = 1)
            COMPUTE JVALUE = FUNCTION MultitouchReleaseHelper-new1(J-THIS)
            COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_releaseHelper", JVALUE)
        ELSE
            COMPUTE JVALUE = FUNCTION ReleaseHelper-new1(J-THIS)
            COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_releaseHelper", JVALUE)
        END-IF
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION TouchButtonRecognizer-new0.

IDENTIFICATION DIVISION.
FUNCTION-ID. TchBttnRcgnzr-processRelease2.
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
01 J-gameKeyEvent BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-touchButtonInput BINARY-DOUBLE.
01 J-deviceId BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-touchButtonInput J-deviceId RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE JDISCARD = FUNCTION ReleaseHelper-release2(FUNCTION JR-GET(J-THIS, "f_releaseHelper"), J-touchButtonInput, J-deviceId)
        COMPUTE J-gameKeyEvent = FUNCTION TchBttnInpt-getGameKeyEvent0(J-touchButtonInput)
        COMPUTE JDISCARD = FUNCTION UpGmKyEvntHndlrBs-fireEvent1(FUNCTION JR-GET(J-THIS, "f_upGameKeyEventHandler"), J-gameKeyEvent)
        COMPUTE jtemp3 = FUNCTION UpGmKyEvntHndlr-gtInstncFrDvc1(FUNCTION JR-GET(J-THIS, "f_upGameKeyEventHandler"), J-deviceId)
        COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(jtemp3)
        COMPUTE JDISCARD = FUNCTION CrrntlyPrssdTchBttnSngltn-rmv1(FUNCTION JR-GET(J-THIS, "f_currentlyPressedTouchButtonSingleton"), J-touchButtonInput)
    GOBACK.
END FUNCTION TchBttnRcgnzr-processRelease2.

IDENTIFICATION DIVISION.
FUNCTION-ID. TchBttnRcgnzr-rlsTchBttnInpt3.
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
01 J-touchButtonInput BINARY-DOUBLE.
01 J-list BINARY-DOUBLE.
01 J-rectangle BINARY-DOUBLE.
01 J-point BINARY-DOUBLE.
01 J-touchButton BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
01 jtemp5 BINARY-DOUBLE.
01 JFIRST1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-x BINARY-DOUBLE.
01 J-y BINARY-DOUBLE.
01 J-deviceId BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-x J-y J-deviceId RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-touchButtonInput = FUNCTION JR-GET(J-THIS, "f_lastPressedTouchButtonInput")
        IF (FUNCTION CrrntlyPrssdTchBttnSngl-78025(FUNCTION JR-GET(J-THIS, "f_currentlyPressedTouchButtonSingleton"), J-touchButtonInput) = 1)
            COMPUTE jtemp5 = FUNCTION BscTchInptFctry-getInstance0
            COMPUTE JVALUE = FUNCTION JR-GET(jtemp5, "f_NONE")
            COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_lastPressedTouchButtonInput", JVALUE)
            COMPUTE JDISCARD = FUNCTION TchBttnRcgnzr-processRelease2(J-THIS, J-touchButtonInput, J-deviceId)
            COMPUTE J-RESULT = 1
            GOBACK
        ELSE
            COMPUTE jtemp4 = FUNCTION TchBttnFctry-getInstance0
            COMPUTE J-list = FUNCTION TouchButtonFactory-getList0(jtemp4)
            CONTINUE
            CONTINUE
            CONTINUE
            COMPUTE J-index = (FUNCTION MOD((FUNCTION BasicArrayList-size0(J-list) - 1) + 2147483648, 4294967296) - 2147483648)
            MOVE 1 TO JFIRST1
            PERFORM FOREVER
                IF JFIRST1 = 0
                    COMPUTE J-index = (FUNCTION MOD(J-index - 1 + 2147483648, 4294967296) - 2147483648)
                END-IF
                MOVE 0 TO JFIRST1
                IF NOT (J-index >= 0) EXIT PERFORM END-IF
                COMPUTE J-touchButton = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-list, "f_objectArray"), J-index)
                COMPUTE J-rectangle = FUNCTION TouchButton-getRectangle0(J-touchButton)
                COMPUTE J-point = FUNCTION Rectangle-getPoint0(J-rectangle)
                IF (FUNCTION RctnglCllsnUtl-isInside6(FUNCTION JR-GET(J-THIS, "f_rectangleCollisionUtil"), FUNCTION GPoint-getX0(J-point), FUNCTION GPoint-getY0(J-point), FUNCTION Rectangle-getMaxX0(J-rectangle), FUNCTION
        Rectangle-getMaxY0(J-rectangle), J-x, J-y) = 1)
                    COMPUTE J-touchButtonInput = FUNCTION TchBttn-getTouchButtonInput0(J-touchButton)
                    COMPUTE JDISCARD = FUNCTION TchBttnRcgnzr-processRelease2(J-THIS, J-touchButtonInput, J-deviceId)
                    COMPUTE J-RESULT = 1
                    GOBACK
                END-IF
            END-PERFORM
        END-IF
        COMPUTE J-RESULT = 0
        GOBACK
    GOBACK.
END FUNCTION TchBttnRcgnzr-rlsTchBttnInpt3.

IDENTIFICATION DIVISION.
FUNCTION-ID. TchBttnRcgnzr-prssTchBttnInpt3.
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
01 J-rectangle BINARY-DOUBLE.
01 J-point BINARY-DOUBLE.
01 J-touchButton BINARY-DOUBLE.
01 J-touchButtonInput BINARY-DOUBLE.
01 J-gameKeyEvent BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 jtemp6 BINARY-DOUBLE.
01 jtemp7 BINARY-DOUBLE.
01 JFIRST2 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-x BINARY-DOUBLE.
01 J-y BINARY-DOUBLE.
01 J-deviceId BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-x J-y J-deviceId RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp6 = FUNCTION TchBttnFctry-getInstance0
        COMPUTE J-list = FUNCTION TouchButtonFactory-getList0(jtemp6)
        CONTINUE
        CONTINUE
        CONTINUE
        CONTINUE
        CONTINUE
        COMPUTE J-index = (FUNCTION MOD((FUNCTION BasicArrayList-size0(J-list) - 1) + 2147483648, 4294967296) - 2147483648)
        MOVE 1 TO JFIRST2
        PERFORM FOREVER
            IF JFIRST2 = 0
                COMPUTE J-index = (FUNCTION MOD(J-index - 1 + 2147483648, 4294967296) - 2147483648)
            END-IF
            MOVE 0 TO JFIRST2
            IF NOT (J-index >= 0) EXIT PERFORM END-IF
            COMPUTE J-touchButton = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-list, "f_objectArray"), J-index)
            COMPUTE J-rectangle = FUNCTION TouchButton-getRectangle0(J-touchButton)
            COMPUTE J-point = FUNCTION Rectangle-getPoint0(J-rectangle)
            IF (FUNCTION RctnglCllsnUtl-isInside6(FUNCTION JR-GET(J-THIS, "f_rectangleCollisionUtil"), FUNCTION GPoint-getX0(J-point), FUNCTION GPoint-getY0(J-point), FUNCTION Rectangle-getMaxX0(J-rectangle), FUNCTION
        Rectangle-getMaxY0(J-rectangle), J-x, J-y) = 1)
                COMPUTE J-touchButtonInput = FUNCTION TchBttn-getTouchButtonInput0(J-touchButton)
                IF (NOT (FUNCTION CrrntlyPrssdTchBttnSngl-78025(FUNCTION JR-GET(J-THIS, "f_currentlyPressedTouchButtonSingleton"), J-touchButtonInput) = 1))
                    COMPUTE JDISCARD = FUNCTION ReleaseHelper-release2(FUNCTION JR-GET(J-THIS, "f_releaseHelper"), J-touchButtonInput, J-deviceId)
                    COMPUTE JVALUE = J-touchButtonInput
                    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_lastPressedTouchButtonInput", JVALUE)
                    COMPUTE JDISCARD = FUNCTION CrrntlyPrssdTchBttnSngltn-add1(FUNCTION JR-GET(J-THIS, "f_currentlyPressedTouchButtonSingleton"), J-touchButtonInput)
                    COMPUTE J-gameKeyEvent = FUNCTION TchBttnInpt-getGameKeyEvent0(J-touchButtonInput)
                    COMPUTE JDISCARD = FUNCTION DwnGmKyEvntHndlrBs-fireEvent1(FUNCTION JR-GET(J-THIS, "f_downGameKeyEventHandler"), J-gameKeyEvent)
                    COMPUTE jtemp7 = FUNCTION DwnGmKyEvntHndlr-gtInstnc21989(FUNCTION JR-GET(J-THIS, "f_downGameKeyEventHandler"), J-deviceId)
                    COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(jtemp7)
                END-IF
                COMPUTE J-RESULT = 1
                GOBACK
            END-IF
        END-PERFORM
        COMPUTE J-RESULT = 0
        GOBACK
    GOBACK.
END FUNCTION TchBttnRcgnzr-prssTchBttnInpt3.

