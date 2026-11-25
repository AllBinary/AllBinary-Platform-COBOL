>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.input.motion.button
*> Java class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory

IDENTIFICATION DIVISION.
FUNCTION-ID. TchBttnRsrcAnmtnIntrfcF-66427.
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
01 jtemp1 BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-name BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-name RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory")
        COMPUTE jtemp1 = FUNCTION StdUtil-getInstance0
        COMPUTE jtemp2 = FUNCTION StdUtil-getInstance0
        COMPUTE jtemp3 = FUNCTION StdUtil-getInstance0
        CONTINUE
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION TchBttnRsrcAnmtnIntrfcF-66427.

IDENTIFICATION DIVISION.
FUNCTION-ID. TchBttnRsrcAnmtnIntrfcF-58248.
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
        COMPUTE J-RESULT = FUNCTION TchBttnRsrcAnmtnIntrfcF-66427(FUNCTION JR-STR("TouchButton Animations"))
        GOBACK
    GOBACK.
END FUNCTION TchBttnRsrcAnmtnIntrfcF-58248.

IDENTIFICATION DIVISION.
FUNCTION-ID. TchBttnRsrcAnmtnIntrfcF-75896.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
COPY "jrstorage.cpy".
LOCAL-STORAGE SECTION.
01 JV-CLASS PIC X(60).
01 JV-NAME PIC X(31).
01 JV-DONE BINARY-LONG.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-level BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-level RETURNING J-RESULT.
    MOVE 0 TO JV-DONE
    MOVE "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" TO JV-CLASS
    IF J-THIS NOT = 0
        MOVE JH-OBJECT-CLASS(J-THIS) TO JV-CLASS
    END-IF
    PERFORM UNTIL JV-DONE = 1
        IF JV-CLASS = "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory"
            COMPUTE J-RESULT = FUNCTION TchBttnRsrcAnmtnIntrfcF-29067(J-THIS, J-level)
            MOVE 1 TO JV-DONE
        ELSE
            MOVE SPACES TO JV-NAME
            STRING "V" DELIMITED BY SIZE JV-CLASS(1:23) DELIMITED BY SPACE "-init1" DELIMITED BY SIZE INTO JV-NAME
            CALL JV-NAME USING J-THIS J-level J-RESULT
                ON EXCEPTION
                    MOVE SPACES TO JV-NAME
                    STRING JV-CLASS(1:23) DELIMITED BY SPACE "-jsuper" DELIMITED BY SIZE INTO JV-NAME
                    CALL JV-NAME USING JV-CLASS
                        ON EXCEPTION
                            MOVE "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" TO JV-CLASS
                    END-CALL
                    IF JV-CLASS = "Object"
                        MOVE "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" TO JV-CLASS
                    END-IF
                NOT ON EXCEPTION
                    MOVE 1 TO JV-DONE
            END-CALL
        END-IF
    END-PERFORM
    GOBACK.
END FUNCTION TchBttnRsrcAnmtnIntrfcF-75896.

IDENTIFICATION DIVISION.
FUNCTION-ID. TchBttnRsrcAnmtnIntrfcF-29067.
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
01 J-level BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-level RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE JDISCARD = FUNCTION TchBttnRsrcAnmtnIntrfcF-91721(J-THIS, FUNCTION ImageCacheFactory-getInstance0, J-level)
    GOBACK.
END FUNCTION TchBttnRsrcAnmtnIntrfcF-29067.

IDENTIFICATION DIVISION.
PROGRAM-ID. VTouchButtonResourceAnim-init1.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-level BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-level J-RESULT.
    COMPUTE J-RESULT = FUNCTION TchBttnRsrcAnmtnIntrfcF-29067(J-THIS, J-level)
    GOBACK.
END PROGRAM VTouchButtonResourceAnim-init1.

IDENTIFICATION DIVISION.
FUNCTION-ID. TchBttnRsrcAnmtnIntrfcF-91721.
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
01 J-portion BINARY-DOUBLE.
01 J-loadingString BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 J-progressCanvas BINARY-DOUBLE.
01 J-touchButtonBlankResource BINARY-DOUBLE.
01 J-touchButtonGenericActionResource BINARY-DOUBLE.
01 J-touchButtonStartResource BINARY-DOUBLE.
01 J-touchButtonUpResource BINARY-DOUBLE.
01 J-touchButtonDownResource BINARY-DOUBLE.
01 J-touchButtonTurnLeftResource BINARY-DOUBLE.
01 J-touchButtonTurnRightResource BINARY-DOUBLE.
01 J-touchButtonStrafeLeftResource BINARY-DOUBLE.
01 J-touchButtonStrafeRightResource BINARY-DOUBLE.
01 J-touchButtonBlankResourceImage BINARY-DOUBLE.
01 J-touchButtonGenericActionResourceImage BINARY-DOUBLE.
01 J-touchButtonStartResourceImage BINARY-DOUBLE.
01 J-touchButtonUpResourceImage BINARY-DOUBLE.
01 J-touchButtonDownResourceImage BINARY-DOUBLE.
01 J-touchButtonTurnLeftResourceImage BINARY-DOUBLE.
01 J-touchButtonTurnRightResourceImage BINARY-DOUBLE.
01 J-touchButtonStrafeLeftResourceImage BINARY-DOUBLE.
01 J-touchButtonStrafeRightResourceImage BINARY-DOUBLE.
01 J-nullAnimationFactory BINARY-DOUBLE.
01 J-imageCompleteUtil BINARY-DOUBLE.
01 J-touchButtonStartHintResource BINARY-DOUBLE.
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
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-imageCache BINARY-DOUBLE.
01 J-level BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-imageCache J-level RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        IF (FUNCTION BsRsrcAnmtnIntrfcFctryI-45603(J-THIS) = 1)
            GOBACK
        END-IF
        COMPUTE J-portion = 140
        COMPUTE jtemp6 = FUNCTION StringMaker-new0
        COMPUTE jtemp5 = FUNCTION StringMaker-append1(jtemp6, FUNCTION BsRsrcAnmtnIntrfcFctryI-99487(J-THIS))
        COMPUTE jtemp4 = FUNCTION StringMaker-append1(jtemp5, FUNCTION JR-STR(" Loading: "))
        COMPUTE J-loadingString = FUNCTION JR-TO-STRING(jtemp4)
        COMPUTE J-index = 0
        COMPUTE J-progressCanvas = FUNCTION PrgrssCnvsFctry-getInstance0
        COMPUTE jtemp7 = J-index
        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION ProgressCanvas-addPortion3(J-progressCanvas, J-portion, J-loadingString, jtemp7)
        COMPUTE J-touchButtonBlankResource = FUNCTION TchBttnBlnkRsrc-getInstance0
        COMPUTE J-touchButtonGenericActionResource = FUNCTION TchBttnGnrcActnRsrc-gtInstnc0
        COMPUTE J-touchButtonStartResource = FUNCTION TchBttnStrtRsrc-getInstance0
        COMPUTE J-touchButtonUpResource = FUNCTION TchBttnUpRsrc-getInstance0
        COMPUTE J-touchButtonDownResource = FUNCTION TchBttnDwnRsrc-getInstance0
        COMPUTE J-touchButtonTurnLeftResource = FUNCTION TchBttnTrnLftRsrc-getInstance0
        COMPUTE J-touchButtonTurnRightResource = FUNCTION TchBttnTrnRghtRsrc-gtInstnc0
        COMPUTE J-touchButtonStrafeLeftResource = FUNCTION TchBttnStrfLftRsrc-gtInstnc0
        COMPUTE J-touchButtonStrafeRightResource = FUNCTION TchBttnStrfRghtRsrc-gtInstnc0
        COMPUTE J-touchButtonBlankResourceImage = FUNCTION ImageCache-getWithKey1(J-imageCache, FUNCTION JR-GET(J-touchButtonBlankResource, "f_RESOURCE"))
        COMPUTE J-touchButtonGenericActionResourceImage = FUNCTION ImageCache-getWithKey1(J-imageCache, FUNCTION JR-GET(J-touchButtonGenericActionResource, "f_RESOURCE"))
        COMPUTE J-touchButtonStartResourceImage = FUNCTION ImageCache-getWithKey1(J-imageCache, FUNCTION JR-GET(J-touchButtonStartResource, "f_RESOURCE"))
        COMPUTE J-touchButtonUpResourceImage = FUNCTION ImageCache-getWithKey1(J-imageCache, FUNCTION JR-GET(J-touchButtonUpResource, "f_RESOURCE"))
        COMPUTE J-touchButtonDownResourceImage = FUNCTION ImageCache-getWithKey1(J-imageCache, FUNCTION JR-GET(J-touchButtonDownResource, "f_RESOURCE"))
        COMPUTE J-touchButtonTurnLeftResourceImage = FUNCTION ImageCache-getWithKey1(J-imageCache, FUNCTION JR-GET(J-touchButtonTurnLeftResource, "f_RESOURCE"))
        COMPUTE J-touchButtonTurnRightResourceImage = FUNCTION ImageCache-getWithKey1(J-imageCache, FUNCTION JR-GET(J-touchButtonTurnRightResource, "f_RESOURCE"))
        COMPUTE J-touchButtonStrafeLeftResourceImage = FUNCTION ImageCache-getWithKey1(J-imageCache, FUNCTION JR-GET(J-touchButtonStrafeLeftResource, "f_RESOURCE"))
        COMPUTE J-touchButtonStrafeRightResourceImage = FUNCTION ImageCache-getWithKey1(J-imageCache, FUNCTION JR-GET(J-touchButtonStrafeRightResource, "f_RESOURCE"))
        COMPUTE J-nullAnimationFactory = FUNCTION NllAnmtnFctry-gtFctryInstnc0
        COMPUTE jtemp9 = FUNCTION OprtngSystmFctry-getInstance0
        COMPUTE jtemp8 = FUNCTION OprtngSystmFctry-gtOprtng62787(jtemp9)
        IF (FUNCTION JR-CLASS-NAME(jtemp8) = 1)
            COMPUTE jtemp10 = FUNCTION TchBttnStrtRsrc-getInstance0
            COMPUTE JDISCARD = FUNCTION ImageCache-getWithKey1(J-imageCache, FUNCTION JR-GET(jtemp10, "f_HINT"))
        END-IF
        COMPUTE jtemp11 = J-index
        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION ProgressCanvas-addPortion3(J-progressCanvas, J-portion, J-loadingString, jtemp11)
        COMPUTE J-imageCompleteUtil = FUNCTION ImageCompleteUtil-getInstance0
        COMPUTE jtemp12 = J-index
        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION ProgressCanvas-addPortion3(J-progressCanvas, J-portion, J-loadingString, jtemp12)
        COMPUTE JDISCARD = FUNCTION ImgCmpltUtl-waitForImage2(J-imageCompleteUtil, J-touchButtonBlankResourceImage, FUNCTION JR-GET(J-touchButtonBlankResource, "f_RESOURCE"))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonBlankResource, "f_RESOURCE"), FUNCTION OnRwSprtIndxdAnmtnFctry-c12702(J-touchButtonBlankResourceImage, FUNCTION
        AnmtnBhvrFctry-getInstance0))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonBlankResource, "f_HINT"), J-nullAnimationFactory)
        COMPUTE jtemp13 = J-index
        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION ProgressCanvas-addPortion3(J-progressCanvas, J-portion, J-loadingString, jtemp13)
        COMPUTE JDISCARD = FUNCTION ImgCmpltUtl-waitForImage2(J-imageCompleteUtil, J-touchButtonGenericActionResourceImage, FUNCTION JR-GET(J-touchButtonGenericActionResource, "f_RESOURCE"))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonGenericActionResource, "f_RESOURCE"), FUNCTION OnRwSprtIndxdAnmtnFctry-c12702(J-touchButtonGenericActionResourceImage, FUNCTION
        AnmtnBhvrFctry-getInstance0))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonGenericActionResource, "f_HINT"), J-nullAnimationFactory)
        COMPUTE jtemp14 = J-index
        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION ProgressCanvas-addPortion3(J-progressCanvas, J-portion, J-loadingString, jtemp14)
        COMPUTE JDISCARD = FUNCTION ImgCmpltUtl-waitForImage2(J-imageCompleteUtil, J-touchButtonStartResourceImage, FUNCTION JR-GET(J-touchButtonStartResource, "f_RESOURCE"))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonStartResource, "f_RESOURCE"), FUNCTION OnRwSprtIndxdAnmtnFctry-c12702(J-touchButtonStartResourceImage, FUNCTION
        AnmtnBhvrFctry-getInstance0))
        COMPUTE jtemp15 = J-index
        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION ProgressCanvas-addPortion3(J-progressCanvas, J-portion, J-loadingString, jtemp15)
        COMPUTE JDISCARD = FUNCTION ImgCmpltUtl-waitForImage2(J-imageCompleteUtil, J-touchButtonUpResourceImage, FUNCTION JR-GET(J-touchButtonUpResource, "f_RESOURCE"))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonUpResource, "f_RESOURCE"), FUNCTION OnRwSprtIndxdAnmtnFctry-c12702(J-touchButtonUpResourceImage, FUNCTION AnmtnBhvrFctry-getInstance0))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonUpResource, "f_HINT"), J-nullAnimationFactory)
        COMPUTE jtemp16 = J-index
        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION ProgressCanvas-addPortion3(J-progressCanvas, J-portion, J-loadingString, jtemp16)
        COMPUTE JDISCARD = FUNCTION ImgCmpltUtl-waitForImage2(J-imageCompleteUtil, J-touchButtonDownResourceImage, FUNCTION JR-GET(J-touchButtonDownResource, "f_RESOURCE"))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonDownResource, "f_RESOURCE"), FUNCTION OnRwSprtIndxdAnmtnFctry-c12702(J-touchButtonDownResourceImage, FUNCTION
        AnmtnBhvrFctry-getInstance0))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonDownResource, "f_HINT"), J-nullAnimationFactory)
        COMPUTE jtemp17 = J-index
        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION ProgressCanvas-addPortion3(J-progressCanvas, J-portion, J-loadingString, jtemp17)
        COMPUTE JDISCARD = FUNCTION ImgCmpltUtl-waitForImage2(J-imageCompleteUtil, J-touchButtonTurnLeftResourceImage, FUNCTION JR-GET(J-touchButtonTurnLeftResource, "f_RESOURCE"))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonTurnLeftResource, "f_RESOURCE"), FUNCTION OnRwSprtIndxdAnmtnFctry-c12702(J-touchButtonTurnLeftResourceImage, FUNCTION
        AnmtnBhvrFctry-getInstance0))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonTurnLeftResource, "f_HINT"), J-nullAnimationFactory)
        COMPUTE jtemp18 = J-index
        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION ProgressCanvas-addPortion3(J-progressCanvas, J-portion, J-loadingString, jtemp18)
        COMPUTE JDISCARD = FUNCTION ImgCmpltUtl-waitForImage2(J-imageCompleteUtil, J-touchButtonTurnRightResourceImage, FUNCTION JR-GET(J-touchButtonTurnRightResource, "f_RESOURCE"))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonTurnRightResource, "f_RESOURCE"), FUNCTION OnRwSprtIndxdAnmtnFctry-c12702(J-touchButtonTurnRightResourceImage, FUNCTION
        AnmtnBhvrFctry-getInstance0))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonTurnRightResource, "f_HINT"), J-nullAnimationFactory)
        COMPUTE jtemp19 = J-index
        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION ProgressCanvas-addPortion3(J-progressCanvas, J-portion, J-loadingString, jtemp19)
        COMPUTE JDISCARD = FUNCTION ImgCmpltUtl-waitForImage2(J-imageCompleteUtil, J-touchButtonStrafeLeftResourceImage, FUNCTION JR-GET(J-touchButtonStrafeLeftResource, "f_RESOURCE"))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonStrafeLeftResource, "f_RESOURCE"), FUNCTION OnRwSprtIndxdAnmtnFctry-c12702(J-touchButtonStrafeLeftResourceImage, FUNCTION
        AnmtnBhvrFctry-getInstance0))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonStrafeLeftResource, "f_HINT"), J-nullAnimationFactory)
        COMPUTE jtemp20 = J-index
        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION ProgressCanvas-addPortion3(J-progressCanvas, J-portion, J-loadingString, jtemp20)
        COMPUTE JDISCARD = FUNCTION ImgCmpltUtl-waitForImage2(J-imageCompleteUtil, J-touchButtonStrafeRightResourceImage, FUNCTION JR-GET(J-touchButtonStrafeRightResource, "f_RESOURCE"))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonStrafeRightResource, "f_RESOURCE"), FUNCTION OnRwSprtIndxdAnmtnFctry-c12702(J-touchButtonStrafeRightResourceImage, FUNCTION
        AnmtnBhvrFctry-getInstance0))
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonStrafeRightResource, "f_HINT"), J-nullAnimationFactory)
        COMPUTE jtemp22 = FUNCTION OprtngSystmFctry-getInstance0
        COMPUTE jtemp21 = FUNCTION OprtngSystmFctry-gtOprtng62787(jtemp22)
        IF (FUNCTION JR-CLASS-NAME(jtemp21) = 1)
            COMPUTE jtemp23 = FUNCTION TchBttnStrtRsrc-getInstance0
            COMPUTE J-touchButtonStartHintResource = FUNCTION ImageCache-getWithKey1(J-imageCache, FUNCTION JR-GET(jtemp23, "f_HINT"))
            COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonStartResource, "f_HINT"), FUNCTION OnRwSprtIndxdAnmtnFctry-c12702(J-touchButtonStartHintResource, FUNCTION
        AnmtnBhvrFctry-getInstance0))
        ELSE
            COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-31216(J-THIS, FUNCTION JR-GET(J-touchButtonStartResource, "f_HINT"), J-nullAnimationFactory)
        END-IF
        COMPUTE JDISCARD = FUNCTION BsRsrcAnmtnIntrfcFctryI-19218(J-THIS, J-level)
    GOBACK.
END FUNCTION TchBttnRsrcAnmtnIntrfcF-91721.

IDENTIFICATION DIVISION.
PROGRAM-ID. VTouchButtonRe-initImageCache2.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-imageCache BINARY-DOUBLE.
01 J-level BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-imageCache J-level J-RESULT.
    COMPUTE J-RESULT = FUNCTION TchBttnRsrcAnmtnIntrfcF-91721(J-THIS, J-imageCache, J-level)
    GOBACK.
END PROGRAM VTouchButtonRe-initImageCache2.

IDENTIFICATION DIVISION.
FUNCTION-ID. TchBttnRsrcAnmtnIntrfcF-90564.
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
01 J-resourceLoadingLevelFactory BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-level BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-level RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-resourceLoadingLevelFactory = FUNCTION RsrcLdngLvlFctry-getInstance0
        IF (J-level = FUNCTION JR-CLASS-NAME(FUNCTION JR-GET(J-resourceLoadingLevelFactory, "f_LOAD_TOUCH")))
            COMPUTE J-RESULT = 1
            GOBACK
        ELSE
            COMPUTE J-RESULT = FUNCTION BsRsrcAnmtnIntrfcFctryI-70565(J-THIS, J-level)
            GOBACK
        END-IF
    GOBACK.
END FUNCTION TchBttnRsrcAnmtnIntrfcF-90564.

IDENTIFICATION DIVISION.
PROGRAM-ID. VTouchButtonRe-isLoadingLevel1.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-level BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-level J-RESULT.
    COMPUTE J-RESULT = FUNCTION TchBttnRsrcAnmtnIntrfcF-90564(J-THIS, J-level)
    GOBACK.
END PROGRAM VTouchButtonRe-isLoadingLevel1.

IDENTIFICATION DIVISION.
FUNCTION-ID. TchBttnRsrcAnmtnIntrfcF-59761.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
COPY "jrstorage.cpy".
LOCAL-STORAGE SECTION.
01 JV-CLASS PIC X(60).
01 JV-NAME PIC X(31).
01 JV-DONE BINARY-LONG.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO JV-DONE
    MOVE "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" TO JV-CLASS
    IF J-THIS NOT = 0
        MOVE JH-OBJECT-CLASS(J-THIS) TO JV-CLASS
    END-IF
    PERFORM UNTIL JV-DONE = 1
        IF JV-CLASS = "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory"
            COMPUTE J-RESULT = FUNCTION TchBttnRsrcAnmtnIntrfcF-13277(J-THIS)
            MOVE 1 TO JV-DONE
        ELSE
            MOVE SPACES TO JV-NAME
            STRING "V" DELIMITED BY SIZE JV-CLASS(1:18) DELIMITED BY SPACE "-isFeature0" DELIMITED BY SIZE INTO JV-NAME
            CALL JV-NAME USING J-THIS J-RESULT
                ON EXCEPTION
                    MOVE SPACES TO JV-NAME
                    STRING JV-CLASS(1:23) DELIMITED BY SPACE "-jsuper" DELIMITED BY SIZE INTO JV-NAME
                    CALL JV-NAME USING JV-CLASS
                        ON EXCEPTION
                            MOVE "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" TO JV-CLASS
                    END-CALL
                    IF JV-CLASS = "Object"
                        MOVE "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory" TO JV-CLASS
                    END-IF
                NOT ON EXCEPTION
                    MOVE 1 TO JV-DONE
            END-CALL
        END-IF
    END-PERFORM
    GOBACK.
END FUNCTION TchBttnRsrcAnmtnIntrfcF-59761.

IDENTIFICATION DIVISION.
FUNCTION-ID. TchBttnRsrcAnmtnIntrfcF-13277.
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
01 jtemp24 BINARY-DOUBLE.
01 jtemp25 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp25 = FUNCTION OpnGLFtrFctry-getInstance0
        COMPUTE jtemp24 = FUNCTION Features-getInstance0
        IF (NOT (FUNCTION Features-isDefault1(jtemp24, FUNCTION JR-GET(jtemp25, "f_OPENGL")) = 1))
            COMPUTE J-RESULT = 1
            GOBACK
        ELSE
            COMPUTE J-RESULT = 0
            GOBACK
        END-IF
    GOBACK.
END FUNCTION TchBttnRsrcAnmtnIntrfcF-13277.

IDENTIFICATION DIVISION.
PROGRAM-ID. VTouchButtonResourc-isFeature0.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-RESULT.
    COMPUTE J-RESULT = FUNCTION TchBttnRsrcAnmtnIntrfcF-13277(J-THIS)
    GOBACK.
END PROGRAM VTouchButtonResourc-isFeature0.

IDENTIFICATION DIVISION.
PROGRAM-ID. TouchButtonResourceAnim-jsuper.
DATA DIVISION.
LINKAGE SECTION.
01 J-CLASS PIC X(60).
PROCEDURE DIVISION USING J-CLASS.
    MOVE "BaseResourceAnimationInterfaceFactoryInterfaceFactory" TO J-CLASS
    GOBACK.
END PROGRAM TouchButtonResourceAnim-jsuper.

