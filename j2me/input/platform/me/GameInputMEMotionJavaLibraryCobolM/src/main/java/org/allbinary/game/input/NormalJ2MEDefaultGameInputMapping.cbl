>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.input
*> Java class NormalJ2MEDefaultGameInputMapping

IDENTIFICATION DIVISION.
FUNCTION-ID. NrmlJ2MEDfltGmInptMppng-new0.
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
01 J-gameKeyFactory BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("NormalJ2MEDefaultGameInputMapping")
        COMPUTE jtemp1 = FUNCTION GmPrsstncStrngs-getInstance0
        CONTINUE
        COMPUTE J-inputToGameKeyMapping = FUNCTION PrsstntInptMppng-gtInptMppng0(J-THIS)
        COMPUTE J-gameKeyFactory = FUNCTION GameKeyFactory-getInstance0
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_UP"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM2"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_LEFT"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM4"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_RIGHT"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM6"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_DOWN"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM8"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM1"), FUNCTION JR-GET(J-gameKeyFactory, "f_GAME_A"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM3"), FUNCTION JR-GET(J-gameKeyFactory, "f_GAME_B"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM7"), FUNCTION JR-GET(J-gameKeyFactory, "f_GAME_C"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM9"), FUNCTION JR-GET(J-gameKeyFactory, "f_GAME_D"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_LEVEL_DOWN"), FUNCTION JR-GET(J-gameKeyFactory, "f_LEVEL_DOWN"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_LEVEL_UP"), FUNCTION JR-GET(J-gameKeyFactory, "f_LEVEL_UP"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_UP"), FUNCTION JR-GET(J-gameKeyFactory, "f_UP"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_DOWN"), FUNCTION JR-GET(J-gameKeyFactory, "f_DOWN"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_LEFT"), FUNCTION JR-GET(J-gameKeyFactory, "f_LEFT"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_RIGHT"), FUNCTION JR-GET(J-gameKeyFactory, "f_RIGHT"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_POUND"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_POUND"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_STAR"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_STAR"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM1"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM1"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM3"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM3"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM5"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM5"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM7"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM7"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM9"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM9"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM0"), FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM0"))
        COMPUTE JDISCARD = FUNCTION InputToGameKeyMapping-add2(J-inputToGameKeyMapping, FUNCTION JR-GET(J-gameKeyFactory, "f_KEY_NUM1"), FUNCTION JR-GET(J-gameKeyFactory, "f_FIRE"))
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION NrmlJ2MEDfltGmInptMppng-new0.

IDENTIFICATION DIVISION.
PROGRAM-ID. NormalJ2MEDefaultGameIn-jsuper.
DATA DIVISION.
LINKAGE SECTION.
01 J-CLASS PIC X(60).
PROCEDURE DIVISION USING J-CLASS.
    MOVE "PersistentInputMapping" TO J-CLASS
    GOBACK.
END PROGRAM NormalJ2MEDefaultGameIn-jsuper.

