>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.paint.help
*> Java class InputMappingHelpPaintable

IDENTIFICATION DIVISION.
FUNCTION-ID. InptMppngHlpPntbl-static-AND.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 InputMappingHelpPaintable-jcell-AND BINARY-DOUBLE EXTERNAL.
01 InputMappingHelpPaintable-jset-AND BINARY-DOUBLE EXTERNAL.
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
    IF InputMappingHelpPaintable-jset-AND = 0
        MOVE 1 TO InputMappingHelpPaintable-jset-AND
        COMPUTE InputMappingHelpPaintable-jcell-AND = FUNCTION JR-STR(" and ")
    END-IF
    MOVE InputMappingHelpPaintable-jcell-AND TO J-RESULT
    GOBACK.
END FUNCTION InptMppngHlpPntbl-static-AND.

IDENTIFICATION DIVISION.
FUNCTION-ID. InptMppngHlpPntblstaS62402.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 InputMappingHelpPaintable-jcell-AND BINARY-DOUBLE EXTERNAL.
LINKAGE SECTION.
01 J-VALUE BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-VALUE RETURNING J-RESULT.
    MOVE FUNCTION InptMppngHlpPntbl-static-AND TO J-RESULT
    MOVE J-VALUE TO InputMappingHelpPaintable-jcell-AND
    MOVE J-VALUE TO J-RESULT
    GOBACK.
END FUNCTION InptMppngHlpPntblstaS62402.

IDENTIFICATION DIVISION.
FUNCTION-ID. InptMppngHlpPntbl-static-SEP.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 InputMappingHelpPaintable-jcell-SEP BINARY-DOUBLE EXTERNAL.
01 InputMappingHelpPaintable-jset-SEP BINARY-DOUBLE EXTERNAL.
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
    IF InputMappingHelpPaintable-jset-SEP = 0
        MOVE 1 TO InputMappingHelpPaintable-jset-SEP
        COMPUTE InputMappingHelpPaintable-jcell-SEP = FUNCTION JR-STR(", ")
    END-IF
    MOVE InputMappingHelpPaintable-jcell-SEP TO J-RESULT
    GOBACK.
END FUNCTION InptMppngHlpPntbl-static-SEP.

IDENTIFICATION DIVISION.
FUNCTION-ID. InptMppngHlpPntblstaS52624.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 InputMappingHelpPaintable-jcell-SEP BINARY-DOUBLE EXTERNAL.
LINKAGE SECTION.
01 J-VALUE BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-VALUE RETURNING J-RESULT.
    MOVE FUNCTION InptMppngHlpPntbl-static-SEP TO J-RESULT
    MOVE J-VALUE TO InputMappingHelpPaintable-jcell-SEP
    MOVE J-VALUE TO J-RESULT
    GOBACK.
END FUNCTION InptMppngHlpPntblstaS52624.

IDENTIFICATION DIVISION.
FUNCTION-ID. InptMppngHlpPntbl-s79353.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 InputMappingHelpPaintable-jcell-MORE_THAN_TWO_IN_LIST_AND BINARY-DOUBLE EXTERNAL.
01 InputMappingHelpPaintable-jset-MORE_THAN_TWO_IN_LIST_AND BINARY-DOUBLE EXTERNAL.
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
    IF InputMappingHelpPaintable-jset-MORE_THAN_TWO_IN_LIST_AND = 0
        MOVE 1 TO InputMappingHelpPaintable-jset-MORE_THAN_TWO_IN_LIST_AND
        COMPUTE InputMappingHelpPaintable-jcell-MORE_THAN_TWO_IN_LIST_AND = FUNCTION JR-STR(", and ")
    END-IF
    MOVE InputMappingHelpPaintable-jcell-MORE_THAN_TWO_IN_LIST_AND TO J-RESULT
    GOBACK.
END FUNCTION InptMppngHlpPntbl-s79353.

IDENTIFICATION DIVISION.
FUNCTION-ID. InptMppngHlpPntbls79S77121.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 InputMappingHelpPaintable-jcell-MORE_THAN_TWO_IN_LIST_AND BINARY-DOUBLE EXTERNAL.
LINKAGE SECTION.
01 J-VALUE BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-VALUE RETURNING J-RESULT.
    MOVE FUNCTION InptMppngHlpPntbl-s79353 TO J-RESULT
    MOVE J-VALUE TO InputMappingHelpPaintable-jcell-MORE_THAN_TWO_IN_LIST_AND
    MOVE J-VALUE TO J-RESULT
    GOBACK.
END FUNCTION InptMppngHlpPntbls79S77121.

IDENTIFICATION DIVISION.
FUNCTION-ID. InputMappingHelpPaintable-new3.
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
01 jtemp4 BINARY-DOUBLE.
01 jtemp5 BINARY-DOUBLE.
01 jtemp6 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-gameInputMappingArray BINARY-DOUBLE.
01 J-backgroundBasicColor BINARY-DOUBLE.
01 J-basicColor BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-gameInputMappingArray J-backgroundBasicColor J-basicColor RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("InputMappingHelpPaintable")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_logUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_commonStrings")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_commonSeps")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_stringUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_basicColorFactory")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_NONE")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_EMPTY_STRING")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_gameInputMappingArray")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_keyMappingArray")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_actionBasicColor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_inputBasicColorArray")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_selectedBasicColor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_updateMyFontProperties")
    COMPUTE JVALUE = FUNCTION LogUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_logUtil", JVALUE)
    COMPUTE JVALUE = FUNCTION CommonStrings-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_commonStrings", JVALUE)
    COMPUTE JVALUE = FUNCTION CommonSeps-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_commonSeps", JVALUE)
    COMPUTE JVALUE = FUNCTION StringUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_stringUtil", JVALUE)
    COMPUTE JVALUE = FUNCTION BasicColorFactory-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_basicColorFactory", JVALUE)
    COMPUTE jtemp1 = FUNCTION GameKeyFactory-getInstance0
    COMPUTE JVALUE = FUNCTION JR-GET(jtemp1, "f_NONE")
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_NONE", JVALUE)
    COMPUTE jtemp2 = FUNCTION StringUtil-getInstance0
    COMPUTE JVALUE = FUNCTION JR-GET(jtemp2, "f_EMPTY_STRING")
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_EMPTY_STRING", JVALUE)
    
    COMPUTE jtemp3 = 0
    COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY(jtemp3)
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_keyMappingArray", JVALUE)
    COMPUTE jtemp4 = FUNCTION BasicColorUtil-getInstance0
    COMPUTE JVALUE = FUNCTION JR-GET(jtemp4, "f_ZERO_ARRAY")
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_actionBasicColor", JVALUE)
    COMPUTE jtemp5 = 0
    COMPUTE jtemp6 = 0
    COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY2(jtemp5, jtemp6)
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_inputBasicColorArray", JVALUE)
    
    COMPUTE JVALUE = FUNCTION UpdateMyFontProperties-new0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_updateMyFontProperties", JVALUE)
        CONTINUE
        COMPUTE JVALUE = J-gameInputMappingArray
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_gameInputMappingArray", JVALUE)
        COMPUTE JDISCARD = FUNCTION InptMppngHlpPntbl-update2(J-THIS, FUNCTION JR-GET(J-THIS, "f_NONE"), FUNCTION JR-GET(J-THIS, "f_NONE"))
        IF ((J-backgroundBasicColor = FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_basicColorFactory"), "f_WHITE")) OR (J-basicColor = FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_basicColorFactory"), "f_WHITE")))
            COMPUTE JVALUE = FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_basicColorFactory"), "f_RED")
            COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_selectedBasicColor", JVALUE)
        ELSE
            COMPUTE JVALUE = FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_basicColorFactory"), "f_WHITE")
            COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_selectedBasicColor", JVALUE)
        END-IF
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION InputMappingHelpPaintable-new3.

IDENTIFICATION DIVISION.
FUNCTION-ID. InptMppngHlpPntbl-updtMsrmnt1.
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
01 J-font BINARY-DOUBLE.
01 J-updateMyFontProperties BINARY-DOUBLE.
01 J-stringMaker BINARY-DOUBLE.
01 J-inputInfo BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-list BINARY-DOUBLE.
01 J-keyMappings BINARY-DOUBLE.
01 J-actionString BINARY-DOUBLE.
01 J-input BINARY-DOUBLE.
01 J-size2 BINARY-DOUBLE.
01 J-index2 BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
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
01 JFIRST1 BINARY-DOUBLE.
01 JFIRST2 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-graphics BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-graphics RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-font = FUNCTION Graphics-getFont0(J-graphics)
        COMPUTE J-updateMyFontProperties = FUNCTION UpdateMyFontProperties-new0
        COMPUTE JVALUE = FUNCTION Font-getHeight0(J-font)
        COMPUTE JDISCARD = FUNCTION JR-SET(J-updateMyFontProperties, "f_charHeight", JVALUE)
        COMPUTE J-stringMaker = FUNCTION StringMaker-new0
        COMPUTE J-inputInfo = FUNCTION JR-GET(J-THIS, "f_inputInfo")
        COMPUTE J-size = FUNCTION JR-ARRAY-LENGTH(J-inputInfo)
        COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY(J-size)
        COMPUTE JDISCARD = FUNCTION JR-SET(J-updateMyFontProperties, "f_actionStringArray", JVALUE)
        COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY(J-size)
        COMPUTE JDISCARD = FUNCTION JR-SET(J-updateMyFontProperties, "f_keymappingBeginWidthArray", JVALUE)
        COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY(J-size)
        COMPUTE JDISCARD = FUNCTION JR-SET(J-updateMyFontProperties, "f_actionStringDeltaXArray", JVALUE)
        COMPUTE jtemp7 = 0
        COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY2(J-size, jtemp7)
        COMPUTE JDISCARD = FUNCTION JR-SET(J-updateMyFontProperties, "f_inputDeltaXArray", JVALUE)
        COMPUTE jtemp8 = 0
        COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY2(J-size, jtemp8)
        COMPUTE JDISCARD = FUNCTION JR-SET(J-updateMyFontProperties, "f_sepArray", JVALUE)
        COMPUTE jtemp9 = 0
        COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY2(J-size, jtemp9)
        COMPUTE JDISCARD = FUNCTION JR-SET(J-updateMyFontProperties, "f_sepWidthArray", JVALUE)
        CONTINUE
        CONTINUE
        CONTINUE
        CONTINUE
        COMPUTE J-size2 = 0
        COMPUTE J-index = 0
        MOVE 1 TO JFIRST1
        PERFORM FOREVER
            IF JFIRST1 = 0
                COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
            END-IF
            MOVE 0 TO JFIRST1
            IF NOT (J-index < J-size) EXIT PERFORM END-IF
            COMPUTE J-list = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-THIS, "f_keyMappingArray"), J-index)
            COMPUTE J-keyMappings = FUNCTION InputMappingHelpPaintable-get1(J-THIS, J-list)
            COMPUTE jtemp10 = 0
            COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringMaker, jtemp10, FUNCTION StringMaker-length0(J-stringMaker))
            COMPUTE jtemp14 = FUNCTION StringMaker-append1(J-stringMaker, FUNCTION JR-ARRAY-GET(J-inputInfo, J-index))
            COMPUTE jtemp13 = FUNCTION StringMaker-append1(jtemp14, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonSeps"), "f_COLON"))
            COMPUTE jtemp12 = FUNCTION StringMaker-append1(jtemp13, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonSeps"), "f_SPACE"))
            COMPUTE jtemp11 = FUNCTION StringMaker-append1(jtemp12, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonSeps"), "f_SPACE"))
            COMPUTE J-actionString = FUNCTION JR-TO-STRING(jtemp11)
            COMPUTE JVALUE = J-actionString
            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-GET(J-updateMyFontProperties, "f_actionStringArray"), J-index, JVALUE)
            COMPUTE jtemp15 = 0
            COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringMaker, jtemp15, FUNCTION StringMaker-length0(J-stringMaker))
            COMPUTE jtemp17 = FUNCTION StringMaker-append1(J-stringMaker, FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-updateMyFontProperties, "f_actionStringArray"), J-index))
            COMPUTE jtemp16 = FUNCTION StringMaker-append1(jtemp17, J-keyMappings)
            COMPUTE JVALUE = (FUNCTION JR-SHIFT(JFIVE, FUNCTION Font-stringWidth1(J-font, FUNCTION JR-TO-STRING(jtemp16)), 1))
            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-GET(J-updateMyFontProperties, "f_keymappingBeginWidthArray"), J-index, JVALUE)
            COMPUTE JVALUE = FUNCTION Font-stringWidth1(J-font, J-actionString)
            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-GET(J-updateMyFontProperties, "f_actionStringDeltaXArray"), J-index, JVALUE)
            COMPUTE J-size2 = FUNCTION BasicArrayList-size0(J-list)
            COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY(J-size2)
            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-GET(J-updateMyFontProperties, "f_inputDeltaXArray"), J-index, JVALUE)
            COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY(J-size2)
            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-GET(J-updateMyFontProperties, "f_sepArray"), J-index, JVALUE)
            COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY(J-size2)
            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-GET(J-updateMyFontProperties, "f_sepWidthArray"), J-index, JVALUE)
            COMPUTE J-index2 = 0
            MOVE 1 TO JFIRST2
            PERFORM FOREVER
                IF JFIRST2 = 0
                    COMPUTE J-index2 = (FUNCTION MOD(J-index2 + 1 + 2147483648, 4294967296) - 2147483648)
                END-IF
                MOVE 0 TO JFIRST2
                IF NOT (J-index2 < J-size2) EXIT PERFORM END-IF
                COMPUTE J-input = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-list, "f_objectArray"), J-index2)
                COMPUTE JVALUE = FUNCTION Font-stringWidth1(J-font, FUNCTION Input-getName0(J-input))
                COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-updateMyFontProperties, "f_inputDeltaXArray"), J-index), J-index2, JVALUE)
                COMPUTE JVALUE = FUNCTION JR-GET(J-THIS, "f_EMPTY_STRING")
                COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-updateMyFontProperties, "f_sepArray"), J-index), J-index2, JVALUE)
                COMPUTE jtemp18 = 1
                IF ((FUNCTION MOD((J-index2 + jtemp18) + 2147483648, 4294967296) - 2147483648) < FUNCTION BasicArrayList-size0(J-list))
                    IF (FUNCTION BasicArrayList-size0(J-list) = 2)
                        COMPUTE JVALUE = FUNCTION InptMppngHlpPntbl-static-AND
                        COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-updateMyFontProperties, "f_sepArray"), J-index), J-index2, JVALUE)
                    ELSE
                        COMPUTE jtemp19 = 2
                        IF ((FUNCTION MOD((J-index2 + jtemp19) + 2147483648, 4294967296) - 2147483648) = FUNCTION BasicArrayList-size0(J-list))
                            COMPUTE JVALUE = FUNCTION InptMppngHlpPntbl-s79353
                            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-updateMyFontProperties, "f_sepArray"), J-index), J-index2, JVALUE)
                        ELSE
                            COMPUTE JVALUE = FUNCTION InptMppngHlpPntbl-static-SEP
                            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-updateMyFontProperties, "f_sepArray"), J-index), J-index2, JVALUE)
                        END-IF
                    END-IF
                END-IF
                IF (FUNCTION JR-ARRAY-GET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-updateMyFontProperties, "f_sepArray"), J-index), J-index2) NOT = FUNCTION JR-GET(J-THIS, "f_EMPTY_STRING"))
                    COMPUTE JVALUE = FUNCTION Font-stringWidth1(J-font, FUNCTION JR-ARRAY-GET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-updateMyFontProperties, "f_sepArray"), J-index), J-index2))
                    COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-updateMyFontProperties, "f_sepWidthArray"), J-index), J-index2, JVALUE)
                END-IF
            END-PERFORM
        END-PERFORM
        COMPUTE JVALUE = J-updateMyFontProperties
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_updateMyFontProperties", JVALUE)
        COMPUTE JDISCARD = FUNCTION HlpPntbl-updateMeasurement1(J-THIS, J-graphics)
    GOBACK.
END FUNCTION InptMppngHlpPntbl-updtMsrmnt1.

IDENTIFICATION DIVISION.
FUNCTION-ID. InptMppngHlpPntbl-update2.
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
01 J-gameKeyMapping BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-keyInfo BINARY-DOUBLE.
01 J-keyMappingArray BINARY-DOUBLE.
01 J-actionBasicColor BINARY-DOUBLE.
01 J-inputBasicColorArray BINARY-DOUBLE.
01 J-gameInputMapping BINARY-DOUBLE.
01 J-gameKey BINARY-DOUBLE.
01 J-list BINARY-DOUBLE.
01 J-size2 BINARY-DOUBLE.
01 J-index2 BINARY-DOUBLE.
01 J-indexOfSelectedInput BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
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
01 JFIRST3 BINARY-DOUBLE.
01 JFIRST4 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-selectedGameKey BINARY-DOUBLE.
01 J-selectedInput BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-selectedGameKey J-selectedInput RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-stringMaker = FUNCTION StringMaker-new0
        COMPUTE jtemp25 = FUNCTION CommonLabels-getInstance0
        COMPUTE jtemp24 = FUNCTION StringMaker-append1(J-stringMaker, FUNCTION JR-GET(jtemp25, "f_START_LABEL"))
        COMPUTE jtemp23 = FUNCTION StringMaker-append1(jtemp24, FUNCTION JR-STR("selected GameKey: "))
        COMPUTE jtemp22 = FUNCTION StringMaker-append1(jtemp23, FUNCTION StringUtil-toString1(FUNCTION JR-GET(J-THIS, "f_stringUtil"), J-selectedGameKey))
        COMPUTE jtemp21 = FUNCTION StringMaker-append1(jtemp22, FUNCTION JR-STR(" Input: "))
        COMPUTE jtemp20 = FUNCTION StringMaker-append1(jtemp21, FUNCTION StringUtil-toString1(FUNCTION JR-GET(J-THIS, "f_stringUtil"), J-selectedInput))
        COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-TO-STRING(jtemp20), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_UPDATE"))
        COMPUTE jtemp26 = FUNCTION PltfrmInptMppngFctry-gtInstnc0
        COMPUTE J-gameKeyMapping = FUNCTION PltfrmInptMppngFctry-gtPr75051(jtemp26)
        COMPUTE J-size = FUNCTION JR-ARRAY-LENGTH(FUNCTION JR-GET(J-THIS, "f_gameInputMappingArray"))
        COMPUTE J-keyInfo = FUNCTION JR-NEW-ARRAY(J-size)
        COMPUTE J-keyMappingArray = FUNCTION JR-NEW-ARRAY(J-size)
        COMPUTE J-actionBasicColor = FUNCTION JR-NEW-ARRAY(J-size)
        COMPUTE J-inputBasicColorArray = FUNCTION JR-NEW-ARRAY(J-size)
        CONTINUE
        CONTINUE
        CONTINUE
        COMPUTE J-index = 0
        MOVE 1 TO JFIRST3
        PERFORM FOREVER
            IF JFIRST3 = 0
                COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
            END-IF
            MOVE 0 TO JFIRST3
            IF NOT (J-index < J-size) EXIT PERFORM END-IF
            COMPUTE J-gameInputMapping = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-THIS, "f_gameInputMappingArray"), J-index)
            COMPUTE J-gameKey = FUNCTION GameInputMapping-getGameKey0(J-gameInputMapping)
            COMPUTE jtemp27 = FUNCTION PrsstntInptMppng-gtInptMppng0(J-gameKeyMapping)
            COMPUTE J-list = FUNCTION JR-CLASS-NAME(jtemp27)
            COMPUTE J-size2 = FUNCTION BasicArrayList-size0(J-list)
            COMPUTE JVALUE = FUNCTION JR-NEW-ARRAY(J-size2)
            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-inputBasicColorArray, J-index, JVALUE)
            COMPUTE J-index2 = 0
            MOVE 1 TO JFIRST4
            PERFORM FOREVER
                IF JFIRST4 = 0
                    COMPUTE J-index2 = (FUNCTION MOD(J-index2 + 1 + 2147483648, 4294967296) - 2147483648)
                END-IF
                MOVE 0 TO JFIRST4
                IF NOT (J-index2 < J-size2) EXIT PERFORM END-IF
                COMPUTE JVALUE = FUNCTION JR-GET(J-THIS, "f_basicColor")
                COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-inputBasicColorArray, J-index), J-index2, JVALUE)
            END-PERFORM
            IF (J-gameKey = J-selectedGameKey)
                COMPUTE jtemp28 = 0
                COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringMaker, jtemp28, FUNCTION StringMaker-length0(J-stringMaker))
                COMPUTE jtemp30 = FUNCTION StringMaker-append1(J-stringMaker, FUNCTION JR-STR("Found: selected GameKey: "))
                COMPUTE jtemp29 = FUNCTION StringMaker-append1(jtemp30, FUNCTION StringUtil-toString1(FUNCTION JR-GET(J-THIS, "f_stringUtil"), J-selectedGameKey))
                COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-TO-STRING(jtemp29), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_UPDATE"))
                COMPUTE JVALUE = FUNCTION JR-GET(J-THIS, "f_selectedBasicColor")
                COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-actionBasicColor, J-index, JVALUE)
                COMPUTE J-indexOfSelectedInput = FUNCTION BasicArrayList-indexOf1(J-list, J-selectedInput)
                IF (J-indexOfSelectedInput >= 0)
                    COMPUTE jtemp31 = 0
                    COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringMaker, jtemp31, FUNCTION StringMaker-length0(J-stringMaker))
                    COMPUTE jtemp33 = FUNCTION StringMaker-append1(J-stringMaker, FUNCTION JR-STR("Found: selected Input: "))
                    COMPUTE jtemp32 = FUNCTION StringMaker-append1(jtemp33, FUNCTION StringUtil-toString1(FUNCTION JR-GET(J-THIS, "f_stringUtil"), J-selectedInput))
                    COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-TO-STRING(jtemp32), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_UPDATE"))
                    COMPUTE JVALUE = FUNCTION JR-GET(J-THIS, "f_selectedBasicColor")
                    COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(FUNCTION JR-ARRAY-GET(J-inputBasicColorArray, J-index), J-indexOfSelectedInput, JVALUE)
                END-IF
            ELSE
                COMPUTE JVALUE = FUNCTION JR-GET(J-THIS, "f_basicColor")
                COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-actionBasicColor, J-index, JVALUE)
            END-IF
            COMPUTE JVALUE = FUNCTION GameInputMapping-getName0(J-gameInputMapping)
            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-keyInfo, J-index, JVALUE)
            COMPUTE JVALUE = J-list
            COMPUTE JDISCARD = FUNCTION JR-ARRAY-SET(J-keyMappingArray, J-index, JVALUE)
        END-PERFORM
        COMPUTE JVALUE = J-keyMappingArray
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_keyMappingArray", JVALUE)
        COMPUTE JVALUE = J-actionBasicColor
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_actionBasicColor", JVALUE)
        COMPUTE JVALUE = J-inputBasicColorArray
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_inputBasicColorArray", JVALUE)
        COMPUTE JDISCARD = FUNCTION HelpPaintable-setInputInfoP1(J-THIS, J-keyInfo)
        COMPUTE JVALUE = FUNCTION JR-GET(J-THIS, "f_updateMyFontProcessor")
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_myFontProcessor", JVALUE)
    GOBACK.
END FUNCTION InptMppngHlpPntbl-update2.

IDENTIFICATION DIVISION.
FUNCTION-ID. InputMappingHelpPaintable-get1.
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
01 J-stringBuffer BINARY-DOUBLE.
01 J-key BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 jtemp34 BINARY-DOUBLE.
01 jtemp35 BINARY-DOUBLE.
01 JFIRST5 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-keyList BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-keyList RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-stringBuffer = FUNCTION StringMaker-new0
        CONTINUE
        COMPUTE J-size = FUNCTION BasicArrayList-size0(J-keyList)
        COMPUTE J-index = 0
        MOVE 1 TO JFIRST5
        PERFORM FOREVER
            IF JFIRST5 = 0
                COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
            END-IF
            MOVE 0 TO JFIRST5
            IF NOT (J-index < J-size) EXIT PERFORM END-IF
            COMPUTE J-key = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-keyList, "f_objectArray"), J-index)
            COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION Input-getName0(J-key))
            COMPUTE jtemp34 = 1
            IF ((FUNCTION MOD((J-index + jtemp34) + 2147483648, 4294967296) - 2147483648) < FUNCTION BasicArrayList-size0(J-keyList))
                IF (FUNCTION BasicArrayList-size0(J-keyList) = 2)
                    COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION InptMppngHlpPntbl-static-AND)
                ELSE
                    COMPUTE jtemp35 = 2
                    IF ((FUNCTION MOD((J-index + jtemp35) + 2147483648, 4294967296) - 2147483648) = FUNCTION BasicArrayList-size0(J-keyList))
                        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION InptMppngHlpPntbl-s79353)
                    ELSE
                        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION InptMppngHlpPntbl-static-SEP)
                    END-IF
                END-IF
            END-IF
        END-PERFORM
        COMPUTE J-RESULT = FUNCTION JR-TO-STRING(J-stringBuffer)
        GOBACK
    GOBACK.
END FUNCTION InputMappingHelpPaintable-get1.

IDENTIFICATION DIVISION.
FUNCTION-ID. InptMppngHlpPntbl-paint1.
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
01 J-halfWidth BINARY-DOUBLE.
01 J-inputInfo BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-y BINARY-DOUBLE.
01 J-deltaX BINARY-DOUBLE.
01 J-size2 BINARY-DOUBLE.
01 J-actionString BINARY-DOUBLE.
01 J-input BINARY-DOUBLE.
01 J-list BINARY-DOUBLE.
01 J-sep BINARY-DOUBLE.
01 J-beginWidth BINARY-DOUBLE.
01 J-index2 BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 jtemp36 BINARY-DOUBLE.
01 jtemp37 BINARY-DOUBLE.
01 jtemp38 BINARY-DOUBLE.
01 jtemp39 BINARY-DOUBLE.
01 jtemp40 BINARY-DOUBLE.
01 jtemp41 BINARY-DOUBLE.
01 jtemp42 BINARY-DOUBLE.
01 jtemp43 BINARY-DOUBLE.
01 JFIRST6 BINARY-DOUBLE.
01 JFIRST7 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-graphics BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-graphics RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(FUNCTION JR-GET(J-THIS, "f_myFontProcessor"))
        COMPUTE J-halfWidth = FUNCTION JR-CLASS-NAME(FUNCTION JR-GET(J-THIS, "f_displayInfo"))
        COMPUTE JDISCARD = FUNCTION Graphics-setColor1(J-graphics, FUNCTION BasicColor-intValue0(FUNCTION JR-GET(J-THIS, "f_basicColor")))
        COMPUTE jtemp36 = (FUNCTION MOD((J-halfWidth - FUNCTION JR-GET(J-THIS, "f_titleBeginWidth")) + 2147483648, 4294967296) - 2147483648)
        COMPUTE JDISCARD = FUNCTION Graphics-drawString4(J-graphics, FUNCTION JR-GET(J-THIS, "f_title"), jtemp36, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_updateMyFontProperties"), "f_charHeight"), FUNCTION JR-GET(J-THIS, "f_anchor"))
        COMPUTE J-inputInfo = FUNCTION JR-GET(J-THIS, "f_inputInfo")
        COMPUTE J-size = FUNCTION JR-ARRAY-LENGTH(J-inputInfo)
        COMPUTE J-y = 0
        COMPUTE J-deltaX = 0
        COMPUTE J-size2 = 0
        CONTINUE
        CONTINUE
        CONTINUE
        CONTINUE
        CONTINUE
        COMPUTE J-index = 0
        MOVE 1 TO JFIRST6
        PERFORM FOREVER
            IF JFIRST6 = 0
                COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
            END-IF
            MOVE 0 TO JFIRST6
            IF NOT (J-index < J-size) EXIT PERFORM END-IF
            COMPUTE jtemp37 = 3
            COMPUTE J-y = (FUNCTION MOD((((FUNCTION MOD((J-index + jtemp37) + 2147483648, 4294967296) - 2147483648)) * FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_updateMyFontProperties"), "f_charHeight")) + 2147483648, 4294967296) -
        2147483648)
            COMPUTE J-deltaX = 0
            COMPUTE J-list = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-THIS, "f_keyMappingArray"), J-index)
            COMPUTE J-size2 = FUNCTION BasicArrayList-size0(J-list)
            COMPUTE J-beginWidth = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_updateMyFontProperties"), "f_keymappingBeginWidthArray"), J-index)
            COMPUTE JDISCARD = FUNCTION Graphics-setColor1(J-graphics, FUNCTION JR-CLASS-NAME(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-THIS, "f_actionBasicColor"), J-index)))
            COMPUTE J-actionString = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_updateMyFontProperties"), "f_actionStringArray"), J-index)
            COMPUTE jtemp39 = (FUNCTION MOD((J-halfWidth - J-beginWidth) + 2147483648, 4294967296) - 2147483648)
            COMPUTE jtemp38 = (FUNCTION MOD((jtemp39 + J-deltaX) + 2147483648, 4294967296) - 2147483648)
            COMPUTE JDISCARD = FUNCTION Graphics-drawString4(J-graphics, J-actionString, jtemp38, J-y, FUNCTION JR-GET(J-THIS, "f_anchor"))
            COMPUTE J-deltaX = (FUNCTION MOD((J-deltaX + FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_updateMyFontProperties"), "f_actionStringDeltaXArray"), J-index)) + 2147483648, 4294967296) - 2147483648)
            COMPUTE J-index2 = 0
            MOVE 1 TO JFIRST7
            PERFORM FOREVER
                IF JFIRST7 = 0
                    COMPUTE J-index2 = (FUNCTION MOD(J-index2 + 1 + 2147483648, 4294967296) - 2147483648)
                END-IF
                MOVE 0 TO JFIRST7
                IF NOT (J-index2 < J-size2) EXIT PERFORM END-IF
                COMPUTE J-input = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-list, "f_objectArray"), J-index2)
                COMPUTE JDISCARD = FUNCTION Graphics-setColor1(J-graphics, FUNCTION JR-CLASS-NAME(FUNCTION JR-ARRAY-GET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-THIS, "f_inputBasicColorArray"), J-index), J-index2)))
                COMPUTE jtemp41 = (FUNCTION MOD((J-halfWidth - J-beginWidth) + 2147483648, 4294967296) - 2147483648)
                COMPUTE jtemp40 = (FUNCTION MOD((jtemp41 + J-deltaX) + 2147483648, 4294967296) - 2147483648)
                COMPUTE JDISCARD = FUNCTION Graphics-drawString4(J-graphics, FUNCTION Input-getName0(J-input), jtemp40, J-y, FUNCTION JR-GET(J-THIS, "f_anchor"))
                COMPUTE J-deltaX = (FUNCTION MOD((J-deltaX + FUNCTION JR-ARRAY-GET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_updateMyFontProperties"), "f_inputDeltaXArray"), J-index), J-index2)) + 2147483648,
        4294967296) - 2147483648)
                COMPUTE J-sep = FUNCTION JR-ARRAY-GET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_updateMyFontProperties"), "f_sepArray"), J-index), J-index2)
                COMPUTE JDISCARD = FUNCTION Graphics-setColor1(J-graphics, FUNCTION BasicColor-intValue0(FUNCTION JR-GET(J-THIS, "f_basicColor")))
                COMPUTE jtemp43 = (FUNCTION MOD((J-halfWidth - J-beginWidth) + 2147483648, 4294967296) - 2147483648)
                COMPUTE jtemp42 = (FUNCTION MOD((jtemp43 + J-deltaX) + 2147483648, 4294967296) - 2147483648)
                COMPUTE JDISCARD = FUNCTION Graphics-drawString4(J-graphics, J-sep, jtemp42, J-y, FUNCTION JR-GET(J-THIS, "f_anchor"))
                COMPUTE J-deltaX = (FUNCTION MOD((J-deltaX + FUNCTION JR-ARRAY-GET(FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_updateMyFontProperties"), "f_sepWidthArray"), J-index), J-index2)) + 2147483648,
        4294967296) - 2147483648)
            END-PERFORM
        END-PERFORM
    GOBACK.
END FUNCTION InptMppngHlpPntbl-paint1.

