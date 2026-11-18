>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.layer.resources
*> Java class OnDemandLoader

IDENTIFICATION DIVISION.
FUNCTION-ID. OnDemandLoader-new3.
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
01 J-onDemandResourcesFactory BINARY-DOUBLE.
01 J-gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory BINARY-DOUBLE.
01 J-resourceAnimationInterfaceFactoryInterfaceFactory BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-onDemandResourcesFactory J-gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory J-resourceAnimationInterfaceFactoryInterfaceFactory RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("OnDemandLoader")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_onDemandResourcesFactory")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_resourceAnimationInterfaceFactoryInterfaceFactory")
    
    
    
        COMPUTE JVALUE = J-onDemandResourcesFactory
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_onDemandResourcesFactory", JVALUE)
        COMPUTE JVALUE = J-gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory", JVALUE)
        COMPUTE JVALUE = J-resourceAnimationInterfaceFactoryInterfaceFactory
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_resourceAnimationInterfaceFactoryInterfaceFactory", JVALUE)
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION OnDemandLoader-new3.

IDENTIFICATION DIVISION.
FUNCTION-ID. OnDemandLoader-init3.
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
01 J-layerPlacementInterfaceBasicArrayListFactoryInterface BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-imageCache BINARY-DOUBLE.
01 J-level BINARY-DOUBLE.
01 J-loadingString BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-imageCache J-level J-loadingString RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-resourceLoadingLevelFactory = FUNCTION RsrcLdngLvlFctry-getInstance0
        COMPUTE jtemp2 = FUNCTION MnFtrFctry-getInstance0
        COMPUTE jtemp1 = FUNCTION Features-getInstance0
        IF (FUNCTION Features-isFeature1(jtemp1, FUNCTION JR-GET(jtemp2, "f_LOAD_ALL")) = 1)
            IF (FUNCTION BsRsrcAnmtnIntrfcFctryI-45603(FUNCTION JR-GET(J-THIS, "f_resourceAnimationInterfaceFactoryInterfaceFactory")) = 1)
                GOBACK
            END-IF
            COMPUTE JDISCARD = FUNCTION OnDemandLoader-initAll2(J-THIS, J-imageCache, J-loadingString)
        ELSE
            IF (J-level NOT = FUNCTION JR-CLASS-NAME(FUNCTION JR-GET(J-resourceLoadingLevelFactory, "f_LOAD_ALL")))
            COMPUTE J-layerPlacementInterfaceBasicArrayListFactoryInterface = FUNCTION GmLyrPlcmntIntrfcBscArr-90111(FUNCTION JR-GET(J-THIS, "f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory"), J-level)
            COMPUTE JDISCARD = FUNCTION OnDemandLoader-initLevel4(J-THIS, J-layerPlacementInterfaceBasicArrayListFactoryInterface, J-imageCache, J-level, J-loadingString)
        END-IF
        END-IF
    GOBACK.
END FUNCTION OnDemandLoader-init3.

IDENTIFICATION DIVISION.
FUNCTION-ID. OnDemandLoader-initAll2.
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
01 J-index BINARY-DOUBLE.
01 J-portion BINARY-DOUBLE.
01 J-onDemandResources BINARY-DOUBLE.
01 J-onDemandIndex BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
01 JFIRST1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-imageCache BINARY-DOUBLE.
01 J-loadingString BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-imageCache J-loadingString RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-index = 0
        COMPUTE J-portion = 120
        CONTINUE
        COMPUTE J-onDemandIndex = (FUNCTION MOD(J-onDemandIndex - 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE jtemp3 = J-onDemandIndex
        COMPUTE J-onDemandIndex = FUNCTION OnDemandResourcesFactory-size0(FUNCTION JR-GET(J-THIS, "f_onDemandResourcesFactory"))
        MOVE 1 TO JFIRST1
        PERFORM FOREVER
            MOVE 0 TO JFIRST1
            IF NOT (jtemp3 >= 0) EXIT PERFORM END-IF
            COMPUTE J-onDemandResources = FUNCTION OnDmndRsrcsFctry-remove1(FUNCTION JR-GET(J-THIS, "f_onDemandResourcesFactory"), J-onDemandIndex)
            IF (J-onDemandResources NOT = FUNCTION OnDmndRsrcs-sttc-NULL74683)
                COMPUTE J-index = FUNCTION OnDemandResources-initAt5(J-onDemandResources, J-imageCache, FUNCTION JR-GET(J-THIS, "f_resourceAnimationInterfaceFactoryInterfaceFactory"), J-portion, J-loadingString, J-index)
            END-IF
        END-PERFORM
    GOBACK.
END FUNCTION OnDemandLoader-initAll2.

IDENTIFICATION DIVISION.
FUNCTION-ID. OnDemandLoader-initLevel4.
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
01 J-commonStrings BINARY-DOUBLE.
01 J-portion BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 J-onDemandArray BINARY-DOUBLE.
01 J-onDemandResources BINARY-DOUBLE.
01 J-onDemandIndex BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
01 jtemp5 BINARY-DOUBLE.
01 jtemp6 BINARY-DOUBLE.
01 jtemp7 BINARY-DOUBLE.
01 JFIRST2 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-layerPlacementInterfaceBasicArrayListFactoryInterface BINARY-DOUBLE.
01 J-imageCache BINARY-DOUBLE.
01 J-level BINARY-DOUBLE.
01 J-loadingString BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-layerPlacementInterfaceBasicArrayListFactoryInterface J-imageCache J-level J-loadingString RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-commonStrings = FUNCTION CommonStrings-getInstance0
        COMPUTE J-portion = 120
        COMPUTE J-index = 0
        COMPUTE J-onDemandArray = FUNCTION LyrPlcmntIntrfcBscArryL-31637(J-layerPlacementInterfaceBasicArrayListFactoryInterface)
        COMPUTE jtemp6 = FUNCTION StringMaker-new0
        COMPUTE jtemp5 = FUNCTION StringMaker-append1(jtemp6, FUNCTION JR-GET(J-commonStrings, "f_START"))
        COMPUTE jtemp4 = FUNCTION StringMaker-appendint1(jtemp5, FUNCTION JR-ARRAY-LENGTH(J-onDemandArray))
        COMPUTE JDISCARD = FUNCTION PreLogUtil-put3(FUNCTION JR-TO-STRING(jtemp4), J-THIS, FUNCTION JR-STR("initLevel"))
        CONTINUE
        COMPUTE J-onDemandIndex = (FUNCTION MOD(J-onDemandIndex - 1 + 2147483648, 4294967296) - 2147483648)
        COMPUTE jtemp7 = J-onDemandIndex
        COMPUTE J-onDemandIndex = FUNCTION JR-ARRAY-LENGTH(J-onDemandArray)
        MOVE 1 TO JFIRST2
        PERFORM FOREVER
            MOVE 0 TO JFIRST2
            IF NOT (jtemp7 >= 0) EXIT PERFORM END-IF
            COMPUTE J-onDemandResources = FUNCTION OnDmndRsrcsFctry-remove1(FUNCTION JR-GET(J-THIS, "f_onDemandResourcesFactory"), FUNCTION JR-ARRAY-GET(J-onDemandArray, J-onDemandIndex))
            IF (J-onDemandResources NOT = FUNCTION OnDmndRsrcs-sttc-NULL74683)
                COMPUTE J-index = FUNCTION OnDemandResources-initAt5(J-onDemandResources, J-imageCache, FUNCTION JR-GET(J-THIS, "f_resourceAnimationInterfaceFactoryInterfaceFactory"), J-portion, J-loadingString, J-index)
            END-IF
        END-PERFORM
    GOBACK.
END FUNCTION OnDemandLoader-initLevel4.

