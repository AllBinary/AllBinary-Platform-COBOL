>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.configuration
*> Java class GameConfigurationCentral

IDENTIFICATION DIVISION.
FUNCTION-ID. GmCnfgrtnCntrl-sttc-SINGLETON.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 GameConfigurationCentral-jcell-SINGLETON BINARY-DOUBLE EXTERNAL.
01 GameConfigurationCentral-jset-SINGLETON BINARY-DOUBLE EXTERNAL.
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
LINKAGE SECTION.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION RETURNING J-RESULT.
    IF GameConfigurationCentral-jset-SINGLETON = 0
        MOVE 1 TO GameConfigurationCentral-jset-SINGLETON
        COMPUTE jtemp1 = FUNCTION NullUtil-getInstance0
    COMPUTE GameConfigurationCentral-jcell-SINGLETON = FUNCTION JR-GET(jtemp1, "f_NULL_OBJECT")
    END-IF
    MOVE GameConfigurationCentral-jcell-SINGLETON TO J-RESULT
    GOBACK.
END FUNCTION GmCnfgrtnCntrl-sttc-SINGLETON.

IDENTIFICATION DIVISION.
FUNCTION-ID. GmCnfgrtnCntrlsttcSIS65103.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 GameConfigurationCentral-jcell-SINGLETON BINARY-DOUBLE EXTERNAL.
LINKAGE SECTION.
01 J-VALUE BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-VALUE RETURNING J-RESULT.
    MOVE FUNCTION GmCnfgrtnCntrl-sttc-SINGLETON TO J-RESULT
    MOVE J-VALUE TO GameConfigurationCentral-jcell-SINGLETON
    MOVE J-VALUE TO J-RESULT
    GOBACK.
END FUNCTION GmCnfgrtnCntrlsttcSIS65103.

IDENTIFICATION DIVISION.
FUNCTION-ID. GameConfigurationCentral-new0.
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
01 J-smallIntegerSingletonFactory BINARY-DOUBLE.
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
01 jtemp17 BINARY-DOUBLE.
01 jtemp18 BINARY-DOUBLE.
01 jtemp19 BINARY-DOUBLE.
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
01 jtemp34 BINARY-DOUBLE.
01 jtemp35 BINARY-DOUBLE.
01 jtemp36 BINARY-DOUBLE.
01 jtemp37 BINARY-DOUBLE.
01 jtemp38 BINARY-DOUBLE.
01 jtemp39 BINARY-DOUBLE.
01 jtemp40 BINARY-DOUBLE.
01 jtemp41 BINARY-DOUBLE.
01 jtemp42 BINARY-DOUBLE.
01 jtemp43 BINARY-DOUBLE.
01 jtemp44 BINARY-DOUBLE.
01 jtemp45 BINARY-DOUBLE.
01 jtemp46 BINARY-DOUBLE.
01 jtemp47 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("GameConfigurationCentral")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_logUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_SCALE")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_ORIENTATION")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_SENSOR_UPDATE_RATE")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_VIBRATION")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_CHALLENGE_LEVEL")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_COLLIDE_DAMAGE")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_DURABILITY_CHALLENGE_LEVEL")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_SPEED_CHALLENGE_LEVEL")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_ATTACK_CHALLENGE_LEVEL")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_CONTROL_LEVEL")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_PLAYER_INPUT_WAIT")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_SPEED")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_SOUND_VOLUME")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_MAX_GAME_OBJECTS")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_MAX_LAYERS")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_gameControlFidelity")
    COMPUTE JVALUE = FUNCTION LogUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_logUtil", JVALUE)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    COMPUTE JVALUE = 36
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_gameControlFidelity", JVALUE)
        COMPUTE J-smallIntegerSingletonFactory = FUNCTION SmllIntgrSngltnFctry-gtInstnc0
        COMPUTE jtemp3 = 2
        COMPUTE jtemp4 = 2
        COMPUTE jtemp5 = 3
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Scale"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp3), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp4),
        FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp5))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_SCALE", JVALUE)
        COMPUTE jtemp6 = 0
        COMPUTE jtemp7 = 0
        COMPUTE jtemp8 = 8
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Orientation"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp6), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory,
        jtemp7), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp8))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_ORIENTATION", JVALUE)
        COMPUTE jtemp9 = 0
        COMPUTE jtemp10 = 0
        COMPUTE jtemp11 = 3
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Sensor Update Rate"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp9), FUNCTION
        SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp10), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp11))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_SENSOR_UPDATE_RATE", JVALUE)
        COMPUTE jtemp12 = 0
        COMPUTE jtemp13 = 0
        COMPUTE jtemp14 = 3
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Vibration"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp12), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory,
        jtemp13), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp14))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_VIBRATION", JVALUE)
        COMPUTE jtemp15 = 3
        COMPUTE jtemp16 = 1
        COMPUTE jtemp17 = 10
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Global Challenge Level"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp15), FUNCTION
        SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp16), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp17))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_CHALLENGE_LEVEL", JVALUE)
        COMPUTE jtemp18 = 3
        COMPUTE jtemp19 = 1
        COMPUTE jtemp20 = 10
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Collide Damage Challenge Level"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp18), FUNCTION
        SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp19), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp20))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_COLLIDE_DAMAGE", JVALUE)
        COMPUTE jtemp21 = 3
        COMPUTE jtemp22 = 1
        COMPUTE jtemp23 = 10
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Enemy Durability Challenge Level"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp21), FUNCTION
        SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp22), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp23))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_DURABILITY_CHALLENGE_LEVEL", JVALUE)
        COMPUTE jtemp24 = 3
        COMPUTE jtemp25 = 1
        COMPUTE jtemp26 = 10
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Enemy Speed Challenge Level"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp24), FUNCTION
        SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp25), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp26))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_SPEED_CHALLENGE_LEVEL", JVALUE)
        COMPUTE jtemp27 = 3
        COMPUTE jtemp28 = 1
        COMPUTE jtemp29 = 10
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Enemy Attack Challenge Level"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp27), FUNCTION
        SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp28), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp29))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_ATTACK_CHALLENGE_LEVEL", JVALUE)
        COMPUTE jtemp30 = 5
        COMPUTE jtemp31 = 1
        COMPUTE jtemp32 = 10
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Control Fidelity"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp30), FUNCTION
        SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp31), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp32))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_CONTROL_LEVEL", JVALUE)
        COMPUTE jtemp33 = 5
        COMPUTE jtemp34 = 1
        COMPUTE jtemp35 = 10
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Input Wait"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp33), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory,
        jtemp34), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp35))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_PLAYER_INPUT_WAIT", JVALUE)
        COMPUTE jtemp36 = 5
        COMPUTE jtemp37 = 1
        COMPUTE jtemp38 = 10
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Game Speed (Device Specific)"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp36), FUNCTION
        SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp37), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp38))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_SPEED", JVALUE)
        COMPUTE jtemp39 = 6
        COMPUTE jtemp40 = 0
        COMPUTE jtemp41 = 10
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Sound Volume"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp39), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory,
        jtemp40), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp41))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_SOUND_VOLUME", JVALUE)
        COMPUTE jtemp42 = 20
        COMPUTE jtemp43 = 1
        COMPUTE jtemp44 = 50
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Max Game Objects"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp42), FUNCTION
        SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp43), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp44))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_MAX_GAME_OBJECTS", JVALUE)
        COMPUTE jtemp45 = 20
        COMPUTE jtemp46 = 1
        COMPUTE jtemp47 = 50
        COMPUTE JVALUE = FUNCTION GameConfiguration-new4(FUNCTION JR-STR("Max Layers"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp45), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory,
        jtemp46), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, jtemp47))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_MAX_LAYERS", JVALUE)
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION GameConfigurationCentral-new0.

IDENTIFICATION DIVISION.
FUNCTION-ID. GmCnfgrtnCntrl-getInstance0.
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
01 jtemp2 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp2 = FUNCTION NullUtil-getInstance0
        IF (FUNCTION GmCnfgrtnCntrl-sttc-SINGLETON = FUNCTION JR-GET(jtemp2, "f_NULL_OBJECT"))
            COMPUTE JDISCARD = FUNCTION GmCnfgrtnCntrlsttcSIS65103(FUNCTION GameConfigurationCentral-new0)
        END-IF
        COMPUTE J-RESULT = FUNCTION GmCnfgrtnCntrl-sttc-SINGLETON
        GOBACK
    GOBACK.
END FUNCTION GmCnfgrtnCntrl-getInstance0.

IDENTIFICATION DIVISION.
FUNCTION-ID. GameConfigurationCentral-load1.
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
01 J-smallIntegerSingletonFactory BINARY-DOUBLE.
01 J-keyValuePersistance BINARY-DOUBLE.
01 J-list BINARY-DOUBLE.
01 J-hashtable BINARY-DOUBLE.
01 J-anyType BINARY-DOUBLE.
01 J-value BINARY-DOUBLE.
01 jtemp48 BINARY-DOUBLE.
01 jtemp49 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-abeClientInformation BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-abeClientInformation RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-commonStrings = FUNCTION CommonStrings-getInstance0
        CONTINUE
            COMPUTE J-smallIntegerSingletonFactory = FUNCTION SmllIntgrSngltnFctry-gtInstnc0
            COMPUTE J-keyValuePersistance = FUNCTION GmCnfgrtnPrsstncSngltn-gt56870
            COMPUTE JDISCARD = FUNCTION BasicPersitance-clear0(J-keyValuePersistance)
            COMPUTE JDISCARD = FUNCTION KeyValuePersistance-loadAll1(J-keyValuePersistance, J-abeClientInformation)
            COMPUTE J-list = FUNCTION BasicPersitance-getIds0(J-keyValuePersistance)
            IF (FUNCTION BasicArrayList-size0(J-list) > 0)
                COMPUTE jtemp48 = 0
                COMPUTE J-hashtable = FUNCTION KeyValuePersistance-get1(J-keyValuePersistance, jtemp48)
                COMPUTE J-anyType = FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_SCALE"))
                COMPUTE J-value = FUNCTION Hashtable-get1(J-hashtable, J-anyType)
                COMPUTE jtemp49 = J-value
                COMPUTE JDISCARD = FUNCTION GameConfiguration-setValue1(FUNCTION JR-GET(J-THIS, "f_SCALE"), FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, FUNCTION JR-CLASS-NAME(jtemp49)))
            ELSE
                COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-STR("No Game Configuration To Load"), J-THIS, FUNCTION JR-GET(J-commonStrings, "f_LOAD"))
            END-IF
    GOBACK.
END FUNCTION GameConfigurationCentral-load1.

IDENTIFICATION DIVISION.
FUNCTION-ID. GmCnfgrtnCntrl-stGmCntrlFdlty1.
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
01 J-gameControlFidelity BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-gameControlFidelity RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE JVALUE = J-gameControlFidelity
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_gameControlFidelity", JVALUE)
    GOBACK.
END FUNCTION GmCnfgrtnCntrl-stGmCntrlFdlty1.

IDENTIFICATION DIVISION.
FUNCTION-ID. GmCnfgrtnCntrl-gtGmCntrlFdlty0.
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
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-RESULT = FUNCTION JR-GET(J-THIS, "f_gameControlFidelity")
        GOBACK
    GOBACK.
END FUNCTION GmCnfgrtnCntrl-gtGmCntrlFdlty0.

IDENTIFICATION DIVISION.
FUNCTION-ID. GmCnfgrtnCntrl-toString0.
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
01 J-commonStrings BINARY-DOUBLE.
01 jtemp50 BINARY-DOUBLE.
01 jtemp51 BINARY-DOUBLE.
01 jtemp52 BINARY-DOUBLE.
01 jtemp53 BINARY-DOUBLE.
01 jtemp54 BINARY-DOUBLE.
01 jtemp55 BINARY-DOUBLE.
01 jtemp56 BINARY-DOUBLE.
01 jtemp57 BINARY-DOUBLE.
01 jtemp58 BINARY-DOUBLE.
01 jtemp59 BINARY-DOUBLE.
01 jtemp60 BINARY-DOUBLE.
01 jtemp61 BINARY-DOUBLE.
01 jtemp62 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-stringBuffer = FUNCTION StringMaker-new0
        COMPUTE J-commonStrings = FUNCTION CommonSeps-getInstance0
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_SCALE")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp50 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_SCALE"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp50))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_ORIENTATION")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp51 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_ORIENTATION"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp51))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_SENSOR_UPDATE_RATE")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp52 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_SENSOR_UPDATE_RATE"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp52))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_VIBRATION")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp53 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_VIBRATION"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp53))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_CHALLENGE_LEVEL")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp54 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_CHALLENGE_LEVEL"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp54))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_COLLIDE_DAMAGE")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp55 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_COLLIDE_DAMAGE"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp55))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_DURABILITY_CHALLENGE_LEVEL")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp56 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_DURABILITY_CHALLENGE_LEVEL"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp56))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_SPEED_CHALLENGE_LEVEL")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp57 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_SPEED_CHALLENGE_LEVEL"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp57))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_ATTACK_CHALLENGE_LEVEL")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp58 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_ATTACK_CHALLENGE_LEVEL"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp58))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_CONTROL_LEVEL")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp59 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_CONTROL_LEVEL"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp59))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_SPEED")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp60 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_SPEED"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp60))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_MAX_GAME_OBJECTS")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp61 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_MAX_GAME_OBJECTS"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp61))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_COMMA_SEP"))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION GameConfiguration-getName0(FUNCTION JR-GET(J-THIS, "f_MAX_LAYERS")))
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(J-commonStrings, "f_EQUALS"))
        COMPUTE jtemp62 = FUNCTION GameConfiguration-getValue0(FUNCTION JR-GET(J-THIS, "f_MAX_LAYERS"))
        COMPUTE JDISCARD = FUNCTION StringMaker-appendint1(J-stringBuffer, FUNCTION JR-CLASS-NAME(jtemp62))
        COMPUTE J-RESULT = FUNCTION JR-TO-STRING(J-stringBuffer)
        GOBACK
    GOBACK.
END FUNCTION GmCnfgrtnCntrl-toString0.

IDENTIFICATION DIVISION.
PROGRAM-ID. GameConfigurationCent-toString.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-RESULT.
    COMPUTE J-RESULT = FUNCTION GmCnfgrtnCntrl-toString0(J-THIS)
    GOBACK.
END PROGRAM GameConfigurationCent-toString.

