>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.input.motion.gesture
*> Java class MotionGestureRecognizer

IDENTIFICATION DIVISION.
FUNCTION-ID. MotionGestureRecognizer-new1.
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
01 J-motionGesturesHandler BINARY-DOUBLE.
01 J-movedMotionGesturesHandler BINARY-DOUBLE.
01 J-scrolledMotionGesturesHandler BINARY-DOUBLE.
01 J-commonStrings BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-id BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-id RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("MotionGestureRecognizer")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_logUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_j2seMath")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_origin")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_previous")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_intermediate")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_line")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_motionGesturesHandler")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_movedMotionGesturesHandler")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_scrolledMotionGesturesHandler")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_motionEventCircularPool")
    COMPUTE JVALUE = FUNCTION LogUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_logUtil", JVALUE)
    COMPUTE JVALUE = FUNCTION J2SEMath-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_j2seMath", JVALUE)
    COMPUTE jtemp1 = FUNCTION PointFactory-getInstance0
    COMPUTE JVALUE = FUNCTION JR-GET(jtemp1, "f_ZERO_ZERO")
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_origin", JVALUE)
    COMPUTE JVALUE = FUNCTION JR-GET(J-THIS, "f_origin")
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_previous", JVALUE)
    COMPUTE JVALUE = FUNCTION JR-GET(J-THIS, "f_origin")
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_intermediate", JVALUE)
    COMPUTE JVALUE = FUNCTION Line-new2(FUNCTION JR-GET(J-THIS, "f_origin"), FUNCTION JR-GET(J-THIS, "f_origin"))
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_line", JVALUE)
    
    
    
    
        COMPUTE JVALUE = FUNCTION MtnEvntCrclrPl-createPool1(J-id)
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_motionEventCircularPool", JVALUE)
        COMPUTE J-motionGesturesHandler = FUNCTION BasicEventHandler-new0
        COMPUTE J-movedMotionGesturesHandler = J-motionGesturesHandler
        COMPUTE J-scrolledMotionGesturesHandler = J-motionGesturesHandler
        CONTINUE
            COMPUTE J-motionGesturesHandler = FUNCTION BscMtnGstrsHndlr-getInstance0
            COMPUTE J-movedMotionGesturesHandler = FUNCTION MvdMtnGstrsHndlr-getInstance0
            COMPUTE J-scrolledMotionGesturesHandler = FUNCTION ScrlldMtnGstrsHndlr-gtInstnc0
        COMPUTE JVALUE = J-motionGesturesHandler
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_motionGesturesHandler", JVALUE)
        COMPUTE JVALUE = J-movedMotionGesturesHandler
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_movedMotionGesturesHandler", JVALUE)
        COMPUTE JVALUE = J-scrolledMotionGesturesHandler
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_scrolledMotionGesturesHandler", JVALUE)
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION MotionGestureRecognizer-new1.

IDENTIFICATION DIVISION.
FUNCTION-ID. MtnGstrRcgnzr-prcssPrssdM62945.
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
01 J-event BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-current BINARY-DOUBLE.
01 J-deviceId BINARY-DOUBLE.
01 J-button BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-current J-deviceId J-button RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE JVALUE = FUNCTION JR-GET(J-THIS, "f_origin")
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_intermediate", JVALUE)
        COMPUTE JVALUE = FUNCTION JR-GET(J-THIS, "f_origin")
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_previous", JVALUE)
        COMPUTE jtemp2 = FUNCTION TchMtnGstrFctry-getInstance0
        COMPUTE J-event = FUNCTION MtnEvntCrclrPl-getInstance1(FUNCTION JR-GET(J-THIS, "f_motionEventCircularPool"), FUNCTION JR-GET(jtemp2, "f_PRESSED"))
        COMPUTE JDISCARD = FUNCTION MtnGstrEvnt-setPreviousPoint1(J-event, FUNCTION JR-GET(J-THIS, "f_previous"))
        COMPUTE JDISCARD = FUNCTION MtnGstrEvnt-setCurrentPoint1(J-event, J-current)
        COMPUTE JDISCARD = FUNCTION BasicEventHandler-fireEvent1(FUNCTION JR-GET(J-THIS, "f_motionGesturesHandler"), J-event)
        COMPUTE J-RESULT = 1
        GOBACK
    GOBACK.
END FUNCTION MtnGstrRcgnzr-prcssPrssdM62945.

IDENTIFICATION DIVISION.
FUNCTION-ID. MtnGstrRcgnzr-prcssRlsdMt56528.
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
01 J-event BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-current BINARY-DOUBLE.
01 J-deviceId BINARY-DOUBLE.
01 J-button BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-current J-deviceId J-button RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp3 = FUNCTION TchMtnGstrFctry-getInstance0
        COMPUTE J-event = FUNCTION MtnEvntCrclrPl-getInstance1(FUNCTION JR-GET(J-THIS, "f_motionEventCircularPool"), FUNCTION JR-GET(jtemp3, "f_RELEASED"))
        COMPUTE JDISCARD = FUNCTION MtnGstrEvnt-setPreviousPoint1(J-event, FUNCTION JR-GET(J-THIS, "f_previous"))
        COMPUTE JDISCARD = FUNCTION MtnGstrEvnt-setCurrentPoint1(J-event, J-current)
        COMPUTE JDISCARD = FUNCTION BasicEventHandler-fireEvent1(FUNCTION JR-GET(J-THIS, "f_motionGesturesHandler"), J-event)
        COMPUTE J-RESULT = 1
        GOBACK
    GOBACK.
END FUNCTION MtnGstrRcgnzr-prcssRlsdMt56528.

IDENTIFICATION DIVISION.
FUNCTION-ID. MtnGstrRcgnzr-prcssDrggdM55938.
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
01 J-minimumMotionGesture BINARY-DOUBLE.
01 J-gradient COMP-2.
01 J-absGradient COMP-2.
01 J-conf BINARY-DOUBLE.
01 J-touchMotionGestureFactory BINARY-DOUBLE.
01 J-newMotionGesture BINARY-DOUBLE.
01 J-diagonalToleranceHigher COMP-2.
01 J-diagonalToleranceLower COMP-2.
01 J-event BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
01 jtemp5 COMP-2.
01 jtemp6 COMP-2.
01 jtemp7 COMP-2.
01 jtemp8 COMP-2.
01 jtemp9 COMP-2.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-current BINARY-DOUBLE.
01 J-deviceId BINARY-DOUBLE.
01 J-buttonMask BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-current J-deviceId J-buttonMask RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        IF ((FUNCTION JR-GET(J-THIS, "f_previous") = FUNCTION JR-GET(J-THIS, "f_origin")) OR (FUNCTION JR-GET(J-THIS, "f_intermediate") = FUNCTION JR-GET(J-THIS, "f_origin")))
            COMPUTE JVALUE = J-current
            COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_previous", JVALUE)
            COMPUTE JVALUE = J-current
            COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_intermediate", JVALUE)
            GOBACK
        END-IF
        COMPUTE JDISCARD = FUNCTION Line-setP11(FUNCTION JR-GET(J-THIS, "f_line"), FUNCTION JR-GET(J-THIS, "f_previous"))
        COMPUTE JDISCARD = FUNCTION Line-setP21(FUNCTION JR-GET(J-THIS, "f_line"), J-current)
        COMPUTE jtemp4 = FUNCTION MtnGstrCnfgrtnFctry-gtInstnc0
        COMPUTE J-minimumMotionGesture = FUNCTION MtnGstrCnfgrtnFctry-gtMnm54044(jtemp4)
        COMPUTE jtemp5 = FUNCTION Line-getDeltaX0(FUNCTION JR-GET(J-THIS, "f_line"))
        COMPUTE jtemp6 = FUNCTION Line-getDeltaY0(FUNCTION JR-GET(J-THIS, "f_line"))
        IF ((FUNCTION J2SEMath-abs1(FUNCTION JR-GET(J-THIS, "f_j2seMath"), jtemp5) < J-minimumMotionGesture) AND (FUNCTION J2SEMath-abs1(FUNCTION JR-GET(J-THIS, "f_j2seMath"), jtemp6) < J-minimumMotionGesture))
            COMPUTE JVALUE = J-current
            COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_intermediate", JVALUE)
            GOBACK
        END-IF
        COMPUTE J-gradient = FUNCTION Line-getGradient0(FUNCTION JR-GET(J-THIS, "f_line"))
        COMPUTE jtemp7 = J-gradient
        COMPUTE J-absGradient = FUNCTION J2SEMath-abs1(FUNCTION JR-GET(J-THIS, "f_j2seMath"), jtemp7)
        COMPUTE J-conf = FUNCTION MtnGstrCnfgrtnFctry-gtInstnc0
        COMPUTE J-touchMotionGestureFactory = FUNCTION TchMtnGstrFctry-getInstance0
        COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_NO_MOTION")
        COMPUTE J-diagonalToleranceHigher = 12.0
        COMPUTE J-diagonalToleranceLower = 12.0
        IF (FUNCTION MtnGstrCnfgrtn-isDgnlMtnG24016(J-conf) = 1)
            COMPUTE J-diagonalToleranceHigher = ((FUNCTION MOD((90 - FUNCTION MtnGstrCnfgrtn-gtDgnlTlrnc0(J-conf)) + 2147483648, 4294967296) - 2147483648))
            COMPUTE J-diagonalToleranceLower = FUNCTION MtnGstrCnfgrtn-gtDgnlTlrnc0(J-conf)
        END-IF
        COMPUTE jtemp8 = FUNCTION TORADIANS(J-diagonalToleranceHigher)
        IF (J-absGradient > FUNCTION TAN(jtemp8))
            IF (FUNCTION Line-getDeltaY0(FUNCTION JR-GET(J-THIS, "f_line")) > 0)
                COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_UP")
            ELSE
                COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_DOWN")
            END-IF
        ELSE
            COMPUTE jtemp9 = FUNCTION TORADIANS(J-diagonalToleranceLower)
            IF (J-absGradient < FUNCTION TAN(jtemp9))
                IF (FUNCTION Line-getDeltaX0(FUNCTION JR-GET(J-THIS, "f_line")) > 0)
                    COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_LEFT")
                ELSE
                    COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_RIGHT")
                END-IF
            ELSE
                IF (J-gradient > 0)
                    IF (FUNCTION Line-getDeltaX0(FUNCTION JR-GET(J-THIS, "f_line")) > 0)
                        COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_DIAGONAL_UP_LEFT")
                    ELSE
                        COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_DIAGONAL_DOWN_RIGHT")
                    END-IF
                ELSE
                    IF (FUNCTION Line-getDeltaX0(FUNCTION JR-GET(J-THIS, "f_line")) > 0)
                        COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_DIAGONAL_DOWN_LEFT")
                    ELSE
                        COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_DIAGONAL_UP_RIGHT")
                    END-IF
                END-IF
            END-IF
        END-IF
        COMPUTE JVALUE = J-current
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_previous", JVALUE)
        COMPUTE JVALUE = J-current
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_intermediate", JVALUE)
        COMPUTE J-event = FUNCTION MtnEvntCrclrPl-getInstance1(FUNCTION JR-GET(J-THIS, "f_motionEventCircularPool"), J-newMotionGesture)
        COMPUTE JDISCARD = FUNCTION MtnGstrEvnt-setPreviousPoint1(J-event, FUNCTION JR-GET(J-THIS, "f_previous"))
        COMPUTE JDISCARD = FUNCTION MtnGstrEvnt-setCurrentPoint1(J-event, J-current)
        COMPUTE JDISCARD = FUNCTION BasicEventHandler-fireEvent1(FUNCTION JR-GET(J-THIS, "f_motionGesturesHandler"), J-event)
        GOBACK
    GOBACK.
END FUNCTION MtnGstrRcgnzr-prcssDrggdM55938.

IDENTIFICATION DIVISION.
FUNCTION-ID. MtnGstrRcgnzr-prcssMvdMtnEvnt3.
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
01 J-event BINARY-DOUBLE.
01 jtemp10 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-current BINARY-DOUBLE.
01 J-deviceId BINARY-DOUBLE.
01 J-button BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-current J-deviceId J-button RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp10 = FUNCTION TchMtnGstrFctry-getInstance0
        COMPUTE J-event = FUNCTION MtnEvntCrclrPl-getInstance1(FUNCTION JR-GET(J-THIS, "f_motionEventCircularPool"), FUNCTION JR-GET(jtemp10, "f_NO_MOTION"))
        COMPUTE JDISCARD = FUNCTION MtnGstrEvnt-setPreviousPoint1(J-event, FUNCTION JR-GET(J-THIS, "f_previous"))
        COMPUTE JDISCARD = FUNCTION MtnGstrEvnt-setCurrentPoint1(J-event, J-current)
        COMPUTE JDISCARD = FUNCTION BasicEventHandler-fireEvent1(FUNCTION JR-GET(J-THIS, "f_movedMotionGesturesHandler"), J-event)
        COMPUTE J-RESULT = 1
        GOBACK
    GOBACK.
END FUNCTION MtnGstrRcgnzr-prcssMvdMtnEvnt3.

IDENTIFICATION DIVISION.
FUNCTION-ID. MtnGstrRcgnzr-prcssScrlld70660.
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
01 J-touchMotionGestureFactory BINARY-DOUBLE.
01 J-newMotionGesture BINARY-DOUBLE.
01 J-event BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-current BINARY-DOUBLE.
01 J-deviceId BINARY-DOUBLE.
01 J-button BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-current J-deviceId J-button RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-touchMotionGestureFactory = FUNCTION TchMtnGstrFctry-getInstance0
        COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_NO_MOTION")
        IF (J-button > 0)
            COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_SCROLL_UP")
        ELSE
            IF (J-button < 0)
            COMPUTE J-newMotionGesture = FUNCTION JR-GET(J-touchMotionGestureFactory, "f_SCROLL_DOWN")
        END-IF
        END-IF
        COMPUTE J-event = FUNCTION MtnEvntCrclrPl-getInstance1(FUNCTION JR-GET(J-THIS, "f_motionEventCircularPool"), J-newMotionGesture)
        COMPUTE JDISCARD = FUNCTION MtnGstrEvnt-setPreviousPoint1(J-event, FUNCTION JR-GET(J-THIS, "f_previous"))
        COMPUTE JDISCARD = FUNCTION MtnGstrEvnt-setCurrentPoint1(J-event, J-current)
        COMPUTE JDISCARD = FUNCTION BasicEventHandler-fireEvent1(FUNCTION JR-GET(J-THIS, "f_scrolledMotionGesturesHandler"), J-event)
        COMPUTE J-RESULT = 1
        GOBACK
    GOBACK.
END FUNCTION MtnGstrRcgnzr-prcssScrlld70660.

IDENTIFICATION DIVISION.
FUNCTION-ID. MtnGstrRcgnzr-gtMtnGstrsHndlr0.
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
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-RESULT = FUNCTION JR-GET(J-THIS, "f_motionGesturesHandler")
        GOBACK
    GOBACK.
END FUNCTION MtnGstrRcgnzr-gtMtnGstrsHndlr0.

