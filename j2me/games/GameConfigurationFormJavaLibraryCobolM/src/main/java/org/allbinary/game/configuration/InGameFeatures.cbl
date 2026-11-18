>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.configuration
*> Java class InGameFeatures

IDENTIFICATION DIVISION.
FUNCTION-ID. InGameFeatures-new0.
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
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("InGameFeatures")
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION InGameFeatures-new0.

IDENTIFICATION DIVISION.
FUNCTION-ID. InGameFeatures-init0.
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
01 J-LABEL BINARY-DOUBLE.
01 J-orientationData BINARY-DOUBLE.
01 J-exclusiveOrientationSensorVector BINARY-DOUBLE.
01 J-inGameFeatureChoiceGroups BINARY-DOUBLE.
01 J-inGameExclusiveOrientationSensorVectorCanBeNull BINARY-DOUBLE.
01 J-inGameExclusiveOrientationSensorVector BINARY-DOUBLE.
01 J-features BINARY-DOUBLE.
01 J-exclusiveScreenButtonsVector BINARY-DOUBLE.
01 J-touchFeatureFactory BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
01 jtemp5 BINARY-DOUBLE.
01 jtemp6 BINARY-DOUBLE.
01 jtemp7 BINARY-DOUBLE.
01 jtemp8 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-LABEL = FUNCTION JR-STR("Screen Buttons")
        COMPUTE J-orientationData = FUNCTION OrientationData-getInstance0
        COMPUTE jtemp2 = FUNCTION GmFtrChcGrps-gtExclsvInstnc0
        COMPUTE jtemp3 = FUNCTION JR-GET(J-orientationData, "f_ORIENTATION_SENSOR_INPUT")
        COMPUTE jtemp1 = FUNCTION JR-CLASS-NAME(jtemp2)
        COMPUTE J-exclusiveOrientationSensorVector = FUNCTION JR-CLASS-NAME(jtemp1)
        COMPUTE J-inGameFeatureChoiceGroups = FUNCTION InGmFtrChcGrps-gtExclsvInstnc0
        IF (J-exclusiveOrientationSensorVector NOT = 0)
            COMPUTE jtemp5 = FUNCTION JR-GET(J-orientationData, "f_ORIENTATION_SENSOR_INPUT")
            COMPUTE jtemp4 = FUNCTION InGameFeatureChoiceGroups-get0(J-inGameFeatureChoiceGroups)
            COMPUTE J-inGameExclusiveOrientationSensorVectorCanBeNull = FUNCTION JR-CLASS-NAME(jtemp4)
            IF (J-inGameExclusiveOrientationSensorVectorCanBeNull = 0)
                COMPUTE JDISCARD = FUNCTION InGmFtrs-addToInGameMenu0(J-THIS)
            ELSE
                COMPUTE J-inGameExclusiveOrientationSensorVector = J-inGameExclusiveOrientationSensorVectorCanBeNull
                IF (FUNCTION BasicArrayList-size0(J-inGameExclusiveOrientationSensorVector) = 0)
                    COMPUTE JDISCARD = FUNCTION InGmFtrs-addToInGameMenu0(J-THIS)
                END-IF
            END-IF
        END-IF
        COMPUTE J-features = FUNCTION Features-getInstance0
        COMPUTE jtemp6 = FUNCTION TchFtrFctry-getInstance0
        COMPUTE jtemp7 = FUNCTION TchFtrFctry-getInstance0
        COMPUTE jtemp8 = FUNCTION TchFtrFctry-getInstance0
        IF (((FUNCTION Features-isFeature1(J-features, FUNCTION JR-GET(jtemp6, "f_SHOW_SCREEN_BUTTONS")) = 1) OR (FUNCTION Features-isFeature1(J-features, FUNCTION JR-GET(jtemp7, "f_AUTO_HIDE_SHOW_SCREEN_BUTTONS")) = 1)) OR (FUNCTION
        Features-isFeature1(J-features, FUNCTION JR-GET(jtemp8, "f_HIDE_SCREEN_BUTTONS")) = 1))
            COMPUTE J-exclusiveScreenButtonsVector = FUNCTION BasicArrayListD-new0
            COMPUTE J-touchFeatureFactory = FUNCTION TchFtrFctry-getInstance0
            COMPUTE JDISCARD = FUNCTION BasicArrayList-add1(J-exclusiveScreenButtonsVector, FUNCTION JR-GET(J-touchFeatureFactory, "f_AUTO_HIDE_SHOW_SCREEN_BUTTONS"))
            COMPUTE JDISCARD = FUNCTION BasicArrayList-add1(J-exclusiveScreenButtonsVector, FUNCTION JR-GET(J-touchFeatureFactory, "f_SHOW_SCREEN_BUTTONS"))
            COMPUTE JDISCARD = FUNCTION BasicArrayList-add1(J-exclusiveScreenButtonsVector, FUNCTION JR-GET(J-touchFeatureFactory, "f_HIDE_SCREEN_BUTTONS"))
            COMPUTE JDISCARD = FUNCTION InGameFeatureChoiceGroups-add2(J-inGameFeatureChoiceGroups, J-LABEL, J-exclusiveScreenButtonsVector)
        END-IF
    GOBACK.
END FUNCTION InGameFeatures-init0.

IDENTIFICATION DIVISION.
FUNCTION-ID. InGmFtrs-addToInGameMenu0.
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
01 J-orientationData BINARY-DOUBLE.
01 J-inGameExclusiveOrientationSensorVector BINARY-DOUBLE.
01 jtemp9 BINARY-DOUBLE.
01 jtemp10 BINARY-DOUBLE.
01 jtemp11 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-orientationData = FUNCTION OrientationData-getInstance0
        COMPUTE J-inGameExclusiveOrientationSensorVector = FUNCTION BasicArrayListD-new0
        COMPUTE jtemp9 = FUNCTION SnsrFtrFctry-getInstance0
        COMPUTE JDISCARD = FUNCTION BasicArrayList-add1(J-inGameExclusiveOrientationSensorVector, FUNCTION JR-GET(jtemp9, "f_ORIENTATION_SENSORS"))
        COMPUTE jtemp10 = FUNCTION SnsrFtrFctry-getInstance0
        COMPUTE JDISCARD = FUNCTION BasicArrayList-add1(J-inGameExclusiveOrientationSensorVector, FUNCTION JR-GET(jtemp10, "f_NO_ORIENTATION"))
        COMPUTE jtemp11 = FUNCTION InGmFtrChcGrps-gtExclsvInstnc0
        COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(jtemp11)
    GOBACK.
END FUNCTION InGmFtrs-addToInGameMenu0.

IDENTIFICATION DIVISION.
FUNCTION-ID. InGameFeatures-isAny0.
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
01 J-features BINARY-DOUBLE.
01 J-touchFeatureFactory BINARY-DOUBLE.
01 J-exclusiveOrientationSensorVector BINARY-DOUBLE.
01 jtemp12 BINARY-DOUBLE.
01 jtemp13 BINARY-DOUBLE.
01 jtemp14 BINARY-DOUBLE.
01 jtemp15 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-features = FUNCTION Features-getInstance0
        COMPUTE J-touchFeatureFactory = FUNCTION TchFtrFctry-getInstance0
        IF (((FUNCTION Features-isFeature1(J-features, FUNCTION JR-GET(J-touchFeatureFactory, "f_SHOW_SCREEN_BUTTONS")) = 1) OR (FUNCTION Features-isFeature1(J-features, FUNCTION JR-GET(J-touchFeatureFactory,
        "f_AUTO_HIDE_SHOW_SCREEN_BUTTONS")) = 1)) OR (FUNCTION Features-isFeature1(J-features, FUNCTION JR-GET(J-touchFeatureFactory, "f_HIDE_SCREEN_BUTTONS")) = 1))
            COMPUTE J-RESULT = 1
            GOBACK
        END-IF
        COMPUTE jtemp15 = FUNCTION OrientationData-getInstance0
        COMPUTE jtemp13 = FUNCTION GmFtrChcGrps-gtExclsvInstnc0
        COMPUTE jtemp14 = FUNCTION JR-GET(jtemp15, "f_ORIENTATION_SENSOR_INPUT")
        COMPUTE jtemp12 = FUNCTION JR-CLASS-NAME(jtemp13)
        COMPUTE J-exclusiveOrientationSensorVector = FUNCTION JR-CLASS-NAME(jtemp12)
        IF (J-exclusiveOrientationSensorVector NOT = 0)
            COMPUTE J-RESULT = 1
            GOBACK
        END-IF
        COMPUTE J-RESULT = 0
        GOBACK
    GOBACK.
END FUNCTION InGameFeatures-isAny0.

