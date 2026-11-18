>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.collision
*> Java class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer

IDENTIFICATION DIVISION.
FUNCTION-ID. OptmzdAllBnryCllsnLyrPr-96042.
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
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer")
        CONTINUE
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION OptmzdAllBnryCllsnLyrPr-96042.

IDENTIFICATION DIVISION.
FUNCTION-ID. OptmzdAllBnryCllsnLyrPr-80695.
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
01 J-collidableInterfaceCompositeInterface BINARY-DOUBLE.
01 J-collidableBase BINARY-DOUBLE.
01 J-layerManager BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-collidableInterfaceCompositeInterface2 BINARY-DOUBLE.
01 J-collidableBase2 BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
01 JFIRST1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-allBinaryLayerManager BINARY-DOUBLE.
01 J-layerInterface BINARY-DOUBLE.
01 J-startIndex BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-allBinaryLayerManager J-layerInterface J-startIndex RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-collidableInterfaceCompositeInterface = J-layerInterface
        COMPUTE J-collidableBase = FUNCTION ClldblCmpstLyr-gtClldblInfrfc0(J-collidableInterfaceCompositeInterface)
        IF (FUNCTION ClldblBsBhvr-isCollidable1(J-collidableBase, J-collidableInterfaceCompositeInterface) = 1)
            COMPUTE J-layerManager = FUNCTION LyrPrcssr-getLayerManager0(J-THIS)
            COMPUTE J-size = FUNCTION ABLayerManager-getSize0(J-layerManager)
            CONTINUE
            CONTINUE
            COMPUTE jtemp1 = 1
            COMPUTE J-index = (FUNCTION MOD((J-startIndex + jtemp1) + 2147483648, 4294967296) - 2147483648)
            MOVE 1 TO JFIRST1
            PERFORM FOREVER
                IF JFIRST1 = 0
                    COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
                END-IF
                MOVE 0 TO JFIRST1
                IF NOT (J-index < J-size) EXIT PERFORM END-IF
                COMPUTE J-collidableInterfaceCompositeInterface2 = FUNCTION ABLayerManager-getLayerAt1(J-layerManager, J-index)
                COMPUTE J-collidableBase2 = FUNCTION ClldblCmpstLyr-gtClldblInfrfc0(J-collidableInterfaceCompositeInterface2)
                IF ((FUNCTION ClldblBsBhvr-isCollidable1(J-collidableBase2, J-collidableInterfaceCompositeInterface) = 1) AND (FUNCTION ClldblBsBhvr-isCollision2(J-collidableBase, J-collidableInterfaceCompositeInterface,
        J-collidableInterfaceCompositeInterface2) = 1))
                    COMPUTE JDISCARD = FUNCTION ClldblBsBhvr-collide2(J-collidableBase, J-collidableInterfaceCompositeInterface, J-collidableInterfaceCompositeInterface2)
                    COMPUTE JDISCARD = FUNCTION ClldblBsBhvr-collide2(J-collidableBase2, J-collidableInterfaceCompositeInterface2, J-collidableInterfaceCompositeInterface)
                END-IF
            END-PERFORM
        END-IF
    GOBACK.
END FUNCTION OptmzdAllBnryCllsnLyrPr-80695.

IDENTIFICATION DIVISION.
FUNCTION-ID. OptmzdAllBnryCllsnLyrPr-15215.
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
01 J-layerInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-layerInterface RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        IF (FUNCTION AllBnryLyr-implmntsClldbl84088(J-layerInterface) = 1)
            COMPUTE J-RESULT = 1
            GOBACK
        ELSE
            COMPUTE J-RESULT = 0
            GOBACK
        END-IF
    GOBACK.
END FUNCTION OptmzdAllBnryCllsnLyrPr-15215.

