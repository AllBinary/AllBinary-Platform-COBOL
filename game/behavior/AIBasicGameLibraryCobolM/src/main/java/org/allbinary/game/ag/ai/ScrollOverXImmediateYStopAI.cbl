>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.ag.ai
*> Java class ScrollOverXImmediateYStopAI

IDENTIFICATION DIVISION.
FUNCTION-ID. ScrllOvrXImmdtYStpAI-new2.
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
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-ownerLayerInterface J-gameInput RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("ScrollOverXImmediateYStopAI")
        CONTINUE
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION ScrllOvrXImmdtYStpAI-new2.

IDENTIFICATION DIVISION.
FUNCTION-ID. ScrllOvrXImmdtYStpAI-prcssAI1.
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
01 J-ownerLayerInterface BINARY-DOUBLE.
01 J-x BINARY-DOUBLE.
01 J-y BINARY-DOUBLE.
01 J-x2 BINARY-DOUBLE.
01 J-y2 BINARY-DOUBLE.
01 J-width BINARY-DOUBLE.
01 J-height BINARY-DOUBLE.
01 J-displayInfo BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-allBinaryLayerManager BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-allBinaryLayerManager RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-ownerLayerInterface = FUNCTION BscAI-getOwnerLayerInterface0(J-THIS)
        COMPUTE J-x = FUNCTION AllBinaryLayer-getXP0(J-ownerLayerInterface)
        COMPUTE J-y = FUNCTION AllBinaryLayer-getYP0(J-ownerLayerInterface)
        COMPUTE J-x2 = FUNCTION AllBinaryLayer-getX20(J-ownerLayerInterface)
        COMPUTE J-y2 = FUNCTION AllBinaryLayer-getY20(J-ownerLayerInterface)
        COMPUTE J-width = FUNCTION AllBinaryLayer-getWidth0(J-ownerLayerInterface)
        COMPUTE J-height = FUNCTION AllBinaryLayer-getHeight0(J-ownerLayerInterface)
        COMPUTE J-displayInfo = FUNCTION DsplyInfSngltn-getInstance0
        IF (J-x2 > FUNCTION DsplyInfSngltn-getLastWidth0(J-displayInfo))
            COMPUTE jtemp1 = 0
            COMPUTE JDISCARD = FUNCTION AllBinaryLayer-setPosition3(J-ownerLayerInterface, jtemp1, J-y, FUNCTION AllBinaryLayer-getZP0(J-ownerLayerInterface))
        END-IF
        IF (J-y2 > FUNCTION DsplyInfSngltn-getLastHeight0(J-displayInfo))
            COMPUTE jtemp2 = (FUNCTION MOD((FUNCTION DsplyInfSngltn-getLastHeight0(J-displayInfo) - J-height) + 2147483648, 4294967296) - 2147483648)
            COMPUTE JDISCARD = FUNCTION AllBinaryLayer-setPosition3(J-ownerLayerInterface, J-x, jtemp2, FUNCTION AllBinaryLayer-getZP0(J-ownerLayerInterface))
        END-IF
        IF (J-x < 0)
            COMPUTE jtemp3 = (FUNCTION MOD((FUNCTION DsplyInfSngltn-getLastWidth0(J-displayInfo) - J-width) + 2147483648, 4294967296) - 2147483648)
            COMPUTE JDISCARD = FUNCTION AllBinaryLayer-setPosition3(J-ownerLayerInterface, jtemp3, J-y, FUNCTION AllBinaryLayer-getZP0(J-ownerLayerInterface))
        END-IF
        IF (J-y < 0)
            COMPUTE jtemp4 = 0
            COMPUTE JDISCARD = FUNCTION AllBinaryLayer-setPosition3(J-ownerLayerInterface, J-x, jtemp4, FUNCTION AllBinaryLayer-getZP0(J-ownerLayerInterface))
        END-IF
    GOBACK.
END FUNCTION ScrllOvrXImmdtYStpAI-prcssAI1.

