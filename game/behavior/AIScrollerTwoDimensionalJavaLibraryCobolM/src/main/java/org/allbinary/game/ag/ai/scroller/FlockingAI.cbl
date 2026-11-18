>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.ag.ai.scroller
*> Java class FlockingAI

IDENTIFICATION DIVISION.
FUNCTION-ID. FlockingAI-new3.
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
01 J-allowedDistance BINARY-DOUBLE.
LINKAGE SECTION.
01 J-hashtable BINARY-DOUBLE.
01 J-ownerLayerInterface BINARY-DOUBLE.
01 J-gameInput BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-hashtable J-ownerLayerInterface J-gameInput RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("FlockingAI")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_allowedDistance")
    
        CONTINUE
        COMPUTE J-allowedDistance = FUNCTION Hashtable-get1(J-hashtable, FUNCTION BsPtrlAI-static-MAX-DISTANCE)
        COMPUTE JVALUE = J-allowedDistance
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_allowedDistance", JVALUE)
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION FlockingAI-new3.

IDENTIFICATION DIVISION.
FUNCTION-ID. FlockingAI-processAI1.
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
01 J-maxDistance BINARY-DOUBLE.
01 J-farAllbinaryLayer BINARY-DOUBLE.
01 J-groupLayerManagerListener BINARY-DOUBLE.
01 J-list BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-allBinaryLayer BINARY-DOUBLE.
01 J-ownerLayerInterface BINARY-DOUBLE.
01 J-distance BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
01 JFIRST1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-allBinaryLayerManager BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-allBinaryLayerManager RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-maxDistance = 0
        COMPUTE J-farAllbinaryLayer = FUNCTION AllBnryLyr-sttc-NULL-A70567
        COMPUTE J-groupLayerManagerListener = FUNCTION GrpLyrMngrLstnr-getInstance0
        COMPUTE jtemp1 = FUNCTION BasicGroupFactory-getInstance0
        COMPUTE J-list = FUNCTION GrpLyrMngrLstnr-getList1(J-groupLayerManagerListener, FUNCTION JR-GET(jtemp1, "f_ENEMY"))
        COMPUTE J-size = FUNCTION BasicArrayList-size0(J-list)
        CONTINUE
        CONTINUE
        COMPUTE J-index = 0
        MOVE 1 TO JFIRST1
        PERFORM FOREVER
            IF JFIRST1 = 0
                COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
            END-IF
            MOVE 0 TO JFIRST1
            IF NOT (J-index < J-size) EXIT PERFORM END-IF
            COMPUTE J-allBinaryLayer = FUNCTION BasicArrayList-get1(J-list, J-index)
            IF (FUNCTION AllBinaryLayer-getType0(J-allBinaryLayer) NOT = FUNCTION WeaponLayer-getStaticType0)
                COMPUTE J-distance = FUNCTION FlockingAI-getXYDistance1(J-THIS, J-allBinaryLayer)
                IF (J-distance > J-maxDistance)
                    COMPUTE J-maxDistance = J-distance
                    COMPUTE J-farAllbinaryLayer = J-allBinaryLayer
                    IF (J-distance > FUNCTION JR-GET(J-THIS, "f_allowedDistance"))
                        EXIT PERFORM
                    END-IF
                END-IF
            END-IF
        END-PERFORM
        IF (J-maxDistance > FUNCTION JR-GET(J-THIS, "f_allowedDistance"))
            IF (J-farAllbinaryLayer NOT = FUNCTION AllBnryLyr-sttc-NULL-A70567)
                COMPUTE J-ownerLayerInterface = FUNCTION BscAI-getOwnerLayerInterface0(J-THIS)
                IF (FUNCTION AllBinaryLayer-getXP0(J-farAllbinaryLayer) < FUNCTION AllBinaryLayer-getXP0(J-ownerLayerInterface))
                    COMPUTE JDISCARD = FUNCTION BasicAI-processKeyAI1(J-THIS, FUNCTION Canvas-static-LEFT)
                ELSE
                    IF (FUNCTION AllBinaryLayer-getXP0(J-farAllbinaryLayer) > FUNCTION AllBinaryLayer-getXP0(J-ownerLayerInterface))
                    COMPUTE JDISCARD = FUNCTION BasicAI-processKeyAI1(J-THIS, FUNCTION Canvas-static-RIGHT)
                ELSE
                    IF (FUNCTION AllBinaryLayer-getYP0(J-farAllbinaryLayer) > FUNCTION AllBinaryLayer-getYP0(J-ownerLayerInterface))
                    COMPUTE JDISCARD = FUNCTION BasicAI-processKeyAI1(J-THIS, FUNCTION Canvas-static-UP)
                ELSE
                    IF (FUNCTION AllBinaryLayer-getYP0(J-farAllbinaryLayer) < FUNCTION AllBinaryLayer-getYP0(J-ownerLayerInterface))
                    COMPUTE JDISCARD = FUNCTION BasicAI-processKeyAI1(J-THIS, FUNCTION Canvas-static-DOWN)
                END-IF
                END-IF
                END-IF
                END-IF
            END-IF
        END-IF
    GOBACK.
END FUNCTION FlockingAI-processAI1.

IDENTIFICATION DIVISION.
FUNCTION-ID. FlockingAI-getXYDistance1.
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
01 J-xTotalDistance BINARY-DOUBLE.
01 J-yTotalDistance BINARY-DOUBLE.
01 J-mathUtil BINARY-DOUBLE.
01 J-totalDistance BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-allBinaryLayer BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-allBinaryLayer RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-ownerLayerInterface = FUNCTION BscAI-getOwnerLayerInterface0(J-THIS)
        COMPUTE J-xTotalDistance = (FUNCTION MOD((((FUNCTION MOD((FUNCTION AllBinaryLayer-getXP0(J-allBinaryLayer) + FUNCTION AllBinaryLayer-getHalfWidth0(J-allBinaryLayer)) + 2147483648, 4294967296) - 2147483648)) - ((FUNCTION
        MOD((FUNCTION AllBinaryLayer-getXP0(J-ownerLayerInterface) + FUNCTION AllBinaryLayer-getHalfWidth0(J-ownerLayerInterface)) + 2147483648, 4294967296) - 2147483648))) + 2147483648, 4294967296) - 2147483648)
        COMPUTE J-yTotalDistance = (FUNCTION MOD((((FUNCTION MOD((FUNCTION AllBinaryLayer-getYP0(J-allBinaryLayer) + FUNCTION AllBinaryLayer-getHalfHeight0(J-allBinaryLayer)) + 2147483648, 4294967296) - 2147483648)) - ((FUNCTION
        MOD((FUNCTION AllBinaryLayer-getYP0(J-ownerLayerInterface) + FUNCTION AllBinaryLayer-getHalfHeight0(J-ownerLayerInterface)) + 2147483648, 4294967296) - 2147483648))) + 2147483648, 4294967296) - 2147483648)
        COMPUTE J-mathUtil = FUNCTION MathUtil-getInstance0
        COMPUTE J-totalDistance = (FUNCTION MOD((FUNCTION MathUtil-abs1(J-mathUtil, J-xTotalDistance) + FUNCTION MathUtil-abs1(J-mathUtil, J-yTotalDistance)) + 2147483648, 4294967296) - 2147483648)
        COMPUTE J-RESULT = J-totalDistance
        GOBACK
    GOBACK.
END FUNCTION FlockingAI-getXYDistance1.

