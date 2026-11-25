>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.ag.ai
*> Java class StopAtEdgeAI

IDENTIFICATION DIVISION.
FUNCTION-ID. StopAtEdgeAI-new2.
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
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("StopAtEdgeAI")
        CONTINUE
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION StopAtEdgeAI-new2.

IDENTIFICATION DIVISION.
FUNCTION-ID. StopAtEdgeAI-processAI1.
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
01 J-velocityInterfaceCompositeInterface BINARY-DOUBLE.
01 J-velocityProperties BINARY-DOUBLE.
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
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-allBinaryLayerManager BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-allBinaryLayerManager RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-ownerLayerInterface = FUNCTION BscAI-getOwnerLayerInterface0(J-THIS)
        COMPUTE J-velocityInterfaceCompositeInterface = (J-ownerLayerInterface)
        COMPUTE J-velocityProperties = FUNCTION VlctyIntrfcCmpstIntrfc-gt15512(J-velocityInterfaceCompositeInterface)
        COMPUTE J-x = FUNCTION AllBinaryLayer-getXP0(J-ownerLayerInterface)
        COMPUTE J-y = FUNCTION AllBinaryLayer-getYP0(J-ownerLayerInterface)
        COMPUTE J-x2 = FUNCTION AllBinaryLayer-getX20(J-ownerLayerInterface)
        COMPUTE J-y2 = FUNCTION AllBinaryLayer-getY20(J-ownerLayerInterface)
        COMPUTE J-width = FUNCTION AllBinaryLayer-getWidth0(J-ownerLayerInterface)
        COMPUTE J-height = FUNCTION AllBinaryLayer-getHeight0(J-ownerLayerInterface)
        COMPUTE J-displayInfo = FUNCTION DsplyInfSngltn-getInstance0
        COMPUTE jtemp1 = FUNCTION BscVlctyPrprts-gtVlctyXBs63775(J-velocityProperties)
        IF ((FUNCTION MOD((J-x2 + FUNCTION JR-CLASS-NAME(jtemp1)) + 2147483648, 4294967296) - 2147483648) > FUNCTION DsplyInfSngltn-getLastWidth0(J-displayInfo))
            COMPUTE jtemp2 = (FUNCTION MOD((FUNCTION DsplyInfSngltn-getLastWidth0(J-displayInfo) - J-width) + 2147483648, 4294967296) - 2147483648)
            COMPUTE JDISCARD = FUNCTION AllBinaryLayer-setPosition3(J-ownerLayerInterface, jtemp2, J-y, FUNCTION AllBinaryLayer-getZP0(J-ownerLayerInterface))
            COMPUTE jtemp4 = 0
            COMPUTE jtemp3 = FUNCTION BscVlctyPrprts-gtVlctyYBs99895(J-velocityProperties)
            COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(jtemp3)
        END-IF
        COMPUTE jtemp5 = FUNCTION BscVlctyPrprts-gtVlctyYBs99895(J-velocityProperties)
        IF ((FUNCTION MOD((J-y2 + FUNCTION JR-CLASS-NAME(jtemp5)) + 2147483648, 4294967296) - 2147483648) > FUNCTION DsplyInfSngltn-getLastHeight0(J-displayInfo))
            COMPUTE jtemp6 = (FUNCTION MOD((FUNCTION DsplyInfSngltn-getLastHeight0(J-displayInfo) - J-height) + 2147483648, 4294967296) - 2147483648)
            COMPUTE JDISCARD = FUNCTION AllBinaryLayer-setPosition3(J-ownerLayerInterface, J-x, jtemp6, FUNCTION AllBinaryLayer-getZP0(J-ownerLayerInterface))
            COMPUTE jtemp8 = 0
            COMPUTE jtemp7 = FUNCTION BscVlctyPrprts-gtVlctyXBs63775(J-velocityProperties)
            COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(jtemp7)
        END-IF
        COMPUTE jtemp9 = FUNCTION BscVlctyPrprts-gtVlctyXBs63775(J-velocityProperties)
        IF ((FUNCTION MOD((J-x + FUNCTION JR-CLASS-NAME(jtemp9)) + 2147483648, 4294967296) - 2147483648) < 0)
            COMPUTE jtemp10 = 0
            COMPUTE JDISCARD = FUNCTION AllBinaryLayer-setPosition3(J-ownerLayerInterface, jtemp10, J-y, FUNCTION AllBinaryLayer-getZP0(J-ownerLayerInterface))
            COMPUTE jtemp12 = 0
            COMPUTE jtemp11 = FUNCTION BscVlctyPrprts-gtVlctyYBs99895(J-velocityProperties)
            COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(jtemp11)
        END-IF
        COMPUTE jtemp13 = FUNCTION BscVlctyPrprts-gtVlctyYBs99895(J-velocityProperties)
        IF ((FUNCTION MOD((J-y + FUNCTION JR-CLASS-NAME(jtemp13)) + 2147483648, 4294967296) - 2147483648) < 0)
            COMPUTE jtemp14 = 0
            COMPUTE JDISCARD = FUNCTION AllBinaryLayer-setPosition3(J-ownerLayerInterface, J-x, jtemp14, FUNCTION AllBinaryLayer-getZP0(J-ownerLayerInterface))
            COMPUTE jtemp16 = 0
            COMPUTE jtemp15 = FUNCTION BscVlctyPrprts-gtVlctyXBs63775(J-velocityProperties)
            COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(jtemp15)
        END-IF
    GOBACK.
END FUNCTION StopAtEdgeAI-processAI1.

IDENTIFICATION DIVISION.
PROGRAM-ID. VStopAtEdgeAI-processAI1.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-allBinaryLayerManager BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-allBinaryLayerManager J-RESULT.
    COMPUTE J-RESULT = FUNCTION StopAtEdgeAI-processAI1(J-THIS, J-allBinaryLayerManager)
    GOBACK.
END PROGRAM VStopAtEdgeAI-processAI1.

IDENTIFICATION DIVISION.
PROGRAM-ID. StopAtEdgeAI-jsuper.
DATA DIVISION.
LINKAGE SECTION.
01 J-CLASS PIC X(60).
PROCEDURE DIVISION USING J-CLASS.
    MOVE "BasicAI" TO J-CLASS
    GOBACK.
END PROGRAM StopAtEdgeAI-jsuper.

