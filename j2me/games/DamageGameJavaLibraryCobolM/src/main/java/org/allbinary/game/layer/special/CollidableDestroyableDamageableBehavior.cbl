>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.layer.special
*> Java class CollidableDestroyableDamageableBehavior

IDENTIFICATION DIVISION.
FUNCTION-ID. ClldblDstryblDmgblBhvr-new1.
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
01 J-collidable BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-collidable RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("CollidableDestroyableDamageableBehavior")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_damageUtil")
    COMPUTE JVALUE = FUNCTION DamageUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_damageUtil", JVALUE)
        CONTINUE
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION ClldblDstryblDmgblBhvr-new1.

IDENTIFICATION DIVISION.
FUNCTION-ID. ClldblDstryblDmgblBhvr-is73840.
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
01 J-ownerLayer BINARY-DOUBLE.
01 J-collisionLayer BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collisionLayer RETURNING J-RESULT.
    MOVE 0 TO JV-DONE
    MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
    IF J-THIS NOT = 0
        MOVE JH-OBJECT-CLASS(J-THIS) TO JV-CLASS
    END-IF
    PERFORM UNTIL JV-DONE = 1
        IF JV-CLASS = "CollidableDestroyableDamageableBehavior"
            COMPUTE J-RESULT = FUNCTION ClldblDstryblDmgblBhvr-is12803(J-THIS, J-ownerLayer, J-collisionLayer)
            MOVE 1 TO JV-DONE
        ELSE
            MOVE SPACES TO JV-NAME
            STRING "V" DELIMITED BY SIZE JV-CLASS(1:16) DELIMITED BY SPACE "-isCollision2" DELIMITED BY SIZE INTO JV-NAME
            CALL JV-NAME USING J-THIS J-ownerLayer J-collisionLayer J-RESULT
                ON EXCEPTION
                    MOVE SPACES TO JV-NAME
                    STRING JV-CLASS(1:23) DELIMITED BY SPACE "-jsuper" DELIMITED BY SIZE INTO JV-NAME
                    CALL JV-NAME USING JV-CLASS
                        ON EXCEPTION
                            MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
                    END-CALL
                    IF JV-CLASS = "Object"
                        MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
                    END-IF
                NOT ON EXCEPTION
                    MOVE 1 TO JV-DONE
            END-CALL
        END-IF
    END-PERFORM
    GOBACK.
END FUNCTION ClldblDstryblDmgblBhvr-is73840.

IDENTIFICATION DIVISION.
FUNCTION-ID. ClldblDstryblDmgblBhvr-is12803.
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
01 jtemp1 BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-ownerLayer BINARY-DOUBLE.
01 J-collisionLayer BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collisionLayer RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp1 = 0
        COMPUTE jtemp2 = 0
        IF (FUNCTION JR-ARRAY-GET(FUNCTION AllBnryLyr-getGroupInterface0(J-ownerLayer), jtemp1) NOT = FUNCTION JR-ARRAY-GET(FUNCTION AllBnryLyr-getGroupInterface0(J-collisionLayer), jtemp2))
            COMPUTE J-RESULT = FUNCTION ClldblBsBhvr-isCollision2J(J-THIS, J-ownerLayer, J-collisionLayer)
            GOBACK
        END-IF
        COMPUTE J-RESULT = 0
        GOBACK
    GOBACK.
END FUNCTION ClldblDstryblDmgblBhvr-is12803.

IDENTIFICATION DIVISION.
PROGRAM-ID. VCollidableDestro-isCollision2.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-ownerLayer BINARY-DOUBLE.
01 J-collisionLayer BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collisionLayer J-RESULT.
    COMPUTE J-RESULT = FUNCTION ClldblDstryblDmgblBhvr-is12803(J-THIS, J-ownerLayer, J-collisionLayer)
    GOBACK.
END PROGRAM VCollidableDestro-isCollision2.

IDENTIFICATION DIVISION.
FUNCTION-ID. ClldblDstryblDmgblBhvr-clld2.
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
01 J-ownerLayer BINARY-DOUBLE.
01 J-collidableInterfaceCompositeInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface RETURNING J-RESULT.
    MOVE 0 TO JV-DONE
    MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
    IF J-THIS NOT = 0
        MOVE JH-OBJECT-CLASS(J-THIS) TO JV-CLASS
    END-IF
    PERFORM UNTIL JV-DONE = 1
        IF JV-CLASS = "CollidableDestroyableDamageableBehavior"
            COMPUTE J-RESULT = FUNCTION ClldblDstryblDmgblBhvr-clld2J(J-THIS, J-ownerLayer, J-collidableInterfaceCompositeInterface)
            MOVE 1 TO JV-DONE
        ELSE
            MOVE SPACES TO JV-NAME
            STRING "V" DELIMITED BY SIZE JV-CLASS(1:20) DELIMITED BY SPACE "-collide2" DELIMITED BY SIZE INTO JV-NAME
            CALL JV-NAME USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface J-RESULT
                ON EXCEPTION
                    MOVE SPACES TO JV-NAME
                    STRING JV-CLASS(1:23) DELIMITED BY SPACE "-jsuper" DELIMITED BY SIZE INTO JV-NAME
                    CALL JV-NAME USING JV-CLASS
                        ON EXCEPTION
                            MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
                    END-CALL
                    IF JV-CLASS = "Object"
                        MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
                    END-IF
                NOT ON EXCEPTION
                    MOVE 1 TO JV-DONE
            END-CALL
        END-IF
    END-PERFORM
    GOBACK.
END FUNCTION ClldblDstryblDmgblBhvr-clld2.

IDENTIFICATION DIVISION.
FUNCTION-ID. ClldblDstryblDmgblBhvr-clld2J.
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
01 J-ownerCollidableDestroyableDamageableLayer BINARY-DOUBLE.
01 J-collidableDestroyableDamageableLayer BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-ownerLayer BINARY-DOUBLE.
01 J-collidableInterfaceCompositeInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-ownerCollidableDestroyableDamageableLayer = J-ownerLayer
        COMPUTE J-collidableDestroyableDamageableLayer = J-collidableInterfaceCompositeInterface
        COMPUTE jtemp3 = 0
        COMPUTE jtemp4 = 0
        COMPUTE JDISCARD = FUNCTION ClldblDstryblDmgblLyr-damage2(J-ownerCollidableDestroyableDamageableLayer, FUNCTION ClldblDstryblDmgblLyr-gtDmg1(J-collidableDestroyableDamageableLayer, jtemp3), jtemp4)
    GOBACK.
END FUNCTION ClldblDstryblDmgblBhvr-clld2J.

IDENTIFICATION DIVISION.
PROGRAM-ID. VCollidableDestroyabl-collide2.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-ownerLayer BINARY-DOUBLE.
01 J-collidableInterfaceCompositeInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface J-RESULT.
    COMPUTE J-RESULT = FUNCTION ClldblDstryblDmgblBhvr-clld2J(J-THIS, J-ownerLayer, J-collidableInterfaceCompositeInterface)
    GOBACK.
END PROGRAM VCollidableDestroyabl-collide2.

IDENTIFICATION DIVISION.
FUNCTION-ID. ClldblDstryblDmgblBhvr-is36884.
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
01 J-ownerLayer BINARY-DOUBLE.
01 J-collidableInterfaceCompositeInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface RETURNING J-RESULT.
    MOVE 0 TO JV-DONE
    MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
    IF J-THIS NOT = 0
        MOVE JH-OBJECT-CLASS(J-THIS) TO JV-CLASS
    END-IF
    PERFORM UNTIL JV-DONE = 1
        IF JV-CLASS = "CollidableDestroyableDamageableBehavior"
            COMPUTE J-RESULT = FUNCTION ClldblDstryblDmgblBhvr-is91323(J-THIS, J-ownerLayer, J-collidableInterfaceCompositeInterface)
            MOVE 1 TO JV-DONE
        ELSE
            MOVE SPACES TO JV-NAME
            STRING "V" DELIMITED BY SIZE JV-CLASS(1:7) DELIMITED BY SPACE "-isCollisionInterface2" DELIMITED BY SIZE INTO JV-NAME
            CALL JV-NAME USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface J-RESULT
                ON EXCEPTION
                    MOVE SPACES TO JV-NAME
                    STRING JV-CLASS(1:23) DELIMITED BY SPACE "-jsuper" DELIMITED BY SIZE INTO JV-NAME
                    CALL JV-NAME USING JV-CLASS
                        ON EXCEPTION
                            MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
                    END-CALL
                    IF JV-CLASS = "Object"
                        MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
                    END-IF
                NOT ON EXCEPTION
                    MOVE 1 TO JV-DONE
            END-CALL
        END-IF
    END-PERFORM
    GOBACK.
END FUNCTION ClldblDstryblDmgblBhvr-is36884.

IDENTIFICATION DIVISION.
FUNCTION-ID. ClldblDstryblDmgblBhvr-is91323.
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
01 J-ownerLayer BINARY-DOUBLE.
01 J-collidableInterfaceCompositeInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE JDISCARD = FUNCTION ForcedLogUtil-log2(FUNCTION JR-STR("No Longer Used"), J-THIS)
        COMPUTE J-RESULT = 0
        GOBACK
    GOBACK.
END FUNCTION ClldblDstryblDmgblBhvr-is91323.

IDENTIFICATION DIVISION.
PROGRAM-ID. VCollida-isCollisionInterface2.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-ownerLayer BINARY-DOUBLE.
01 J-collidableInterfaceCompositeInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface J-RESULT.
    COMPUTE J-RESULT = FUNCTION ClldblDstryblDmgblBhvr-is91323(J-THIS, J-ownerLayer, J-collidableInterfaceCompositeInterface)
    GOBACK.
END PROGRAM VCollida-isCollisionInterface2.

IDENTIFICATION DIVISION.
FUNCTION-ID. ClldblDstryblDmgblBhvr-cl12775.
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
01 J-ownerLayer BINARY-DOUBLE.
01 J-collidableInterfaceCompositeInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface RETURNING J-RESULT.
    MOVE 0 TO JV-DONE
    MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
    IF J-THIS NOT = 0
        MOVE JH-OBJECT-CLASS(J-THIS) TO JV-CLASS
    END-IF
    PERFORM UNTIL JV-DONE = 1
        IF JV-CLASS = "CollidableDestroyableDamageableBehavior"
            COMPUTE J-RESULT = FUNCTION ClldblDstryblDmgblBhvr-cl72193(J-THIS, J-ownerLayer, J-collidableInterfaceCompositeInterface)
            MOVE 1 TO JV-DONE
        ELSE
            MOVE SPACES TO JV-NAME
            STRING "V" DELIMITED BY SIZE JV-CLASS(1:11) DELIMITED BY SPACE "-collideInterface2" DELIMITED BY SIZE INTO JV-NAME
            CALL JV-NAME USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface J-RESULT
                ON EXCEPTION
                    MOVE SPACES TO JV-NAME
                    STRING JV-CLASS(1:23) DELIMITED BY SPACE "-jsuper" DELIMITED BY SIZE INTO JV-NAME
                    CALL JV-NAME USING JV-CLASS
                        ON EXCEPTION
                            MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
                    END-CALL
                    IF JV-CLASS = "Object"
                        MOVE "CollidableDestroyableDamageableBehavior" TO JV-CLASS
                    END-IF
                NOT ON EXCEPTION
                    MOVE 1 TO JV-DONE
            END-CALL
        END-IF
    END-PERFORM
    GOBACK.
END FUNCTION ClldblDstryblDmgblBhvr-cl12775.

IDENTIFICATION DIVISION.
FUNCTION-ID. ClldblDstryblDmgblBhvr-cl72193.
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
01 J-ownerLayer BINARY-DOUBLE.
01 J-collidableInterfaceCompositeInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE JDISCARD = FUNCTION ForcedLogUtil-log2(FUNCTION JR-STR("No Longer Used"), J-THIS)
    GOBACK.
END FUNCTION ClldblDstryblDmgblBhvr-cl72193.

IDENTIFICATION DIVISION.
PROGRAM-ID. VCollidableD-collideInterface2.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-ownerLayer BINARY-DOUBLE.
01 J-collidableInterfaceCompositeInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-ownerLayer J-collidableInterfaceCompositeInterface J-RESULT.
    COMPUTE J-RESULT = FUNCTION ClldblDstryblDmgblBhvr-cl72193(J-THIS, J-ownerLayer, J-collidableInterfaceCompositeInterface)
    GOBACK.
END PROGRAM VCollidableD-collideInterface2.

IDENTIFICATION DIVISION.
PROGRAM-ID. CollidableDestroyableDa-jsuper.
DATA DIVISION.
LINKAGE SECTION.
01 J-CLASS PIC X(60).
PROCEDURE DIVISION USING J-CLASS.
    MOVE "CollidableBaseBehavior" TO J-CLASS
    GOBACK.
END PROGRAM CollidableDestroyableDa-jsuper.

