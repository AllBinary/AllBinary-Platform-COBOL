>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.input
*> Java class DesktopDefaultGameInputMapping

IDENTIFICATION DIVISION.
FUNCTION-ID. DsktpDfltGmInptMppng-new0.
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
01 J-inputToGameKeyMapping BINARY-DOUBLE.
01 J-pcKeyFactory BINARY-DOUBLE.
01 J-gameKeyFactory BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("DesktopDefaultGameInputMapping")
        COMPUTE jtemp1 = FUNCTION GmPrsstncStrngs-getInstance0
        CONTINUE
        COMPUTE J-inputToGameKeyMapping = FUNCTION PrsstntInptMppng-gtInptMppng0(J-THIS)
        COMPUTE J-pcKeyFactory = FUNCTION PCKeyFactory-getInstance0
        COMPUTE J-gameKeyFactory = FUNCTION GameKeyFactory-getInstance0
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_FIRE"), FUNCTION JR-GET(J-pcKeyFactory, "f_ENTER"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM1"), FUNCTION JR-GET(J-pcKeyFactory, "f_FOUR"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM1"), FUNCTION JR-GET(J-pcKeyFactory, "f__P"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM1"), FUNCTION JR-GET(J-pcKeyFactory, "f_p"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_UP"), FUNCTION JR-GET(J-pcKeyFactory, "f_DPAD_UP"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_DOWN"), FUNCTION JR-GET(J-pcKeyFactory, "f_DPAD_DOWN"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_LEFT"), FUNCTION JR-GET(J-pcKeyFactory, "f_DPAD_LEFT"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_RIGHT"), FUNCTION JR-GET(J-pcKeyFactory, "f_DPAD_RIGHT"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM1"), FUNCTION JR-GET(J-pcKeyFactory, "f_FIVE"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM7"), FUNCTION JR-GET(J-pcKeyFactory, "f__Y"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM9"), FUNCTION JR-GET(J-pcKeyFactory, "f__I"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_UP"), FUNCTION JR-GET(J-pcKeyFactory, "f__U"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_LEFT"), FUNCTION JR-GET(J-pcKeyFactory, "f__H"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_RIGHT"), FUNCTION JR-GET(J-pcKeyFactory, "f__J"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_DOWN"), FUNCTION JR-GET(J-pcKeyFactory, "f__N"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM5"), FUNCTION JR-GET(J-pcKeyFactory, "f__M"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM7"), FUNCTION JR-GET(J-pcKeyFactory, "f_y"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM9"), FUNCTION JR-GET(J-pcKeyFactory, "f_i"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_UP"), FUNCTION JR-GET(J-pcKeyFactory, "f_u"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_LEFT"), FUNCTION JR-GET(J-pcKeyFactory, "f_h"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_RIGHT"), FUNCTION JR-GET(J-pcKeyFactory, "f_j"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_DOWN"), FUNCTION JR-GET(J-pcKeyFactory, "f_n"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM5"), FUNCTION JR-GET(J-pcKeyFactory, "f_m"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM7"), FUNCTION JR-GET(J-pcKeyFactory, "f__Q"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM9"), FUNCTION JR-GET(J-pcKeyFactory, "f__E"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_UP"), FUNCTION JR-GET(J-pcKeyFactory, "f__W"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_LEFT"), FUNCTION JR-GET(J-pcKeyFactory, "f__A"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_RIGHT"), FUNCTION JR-GET(J-pcKeyFactory, "f__D"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_DOWN"), FUNCTION JR-GET(J-pcKeyFactory, "f__S"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM5"), FUNCTION JR-GET(J-pcKeyFactory, "f__X"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM7"), FUNCTION JR-GET(J-pcKeyFactory, "f_q"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM9"), FUNCTION JR-GET(J-pcKeyFactory, "f_e"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_UP"), FUNCTION JR-GET(J-pcKeyFactory, "f_w"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_LEFT"), FUNCTION JR-GET(J-pcKeyFactory, "f_a"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_RIGHT"), FUNCTION JR-GET(J-pcKeyFactory, "f_d"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_DOWN"), FUNCTION JR-GET(J-pcKeyFactory, "f_s"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM5"), FUNCTION JR-GET(J-pcKeyFactory, "f_x"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM3"), FUNCTION JR-GET(J-pcKeyFactory, "f_THREE"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM0"), FUNCTION JR-GET(J-pcKeyFactory, "f_ZERO"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM0"), FUNCTION JR-GET(J-pcKeyFactory, "f_ONE"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM0"), FUNCTION JR-GET(J-pcKeyFactory, "f_SPACE"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_POUND"), FUNCTION JR-GET(J-pcKeyFactory, "f_DEL"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_POUND"), FUNCTION JR-GET(J-pcKeyFactory, "f_TWO"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_STAR"), FUNCTION JR-GET(J-pcKeyFactory, "f_ESCAPE"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_STAR"), FUNCTION JR-GET(J-pcKeyFactory, "f_STAR"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_LEVEL_DOWN"), FUNCTION JR-GET(J-pcKeyFactory, "f_COMMA"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_LEVEL_UP"), FUNCTION JR-GET(J-pcKeyFactory, "f_PERIOD"))
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION DsktpDfltGmInptMppng-new0.

