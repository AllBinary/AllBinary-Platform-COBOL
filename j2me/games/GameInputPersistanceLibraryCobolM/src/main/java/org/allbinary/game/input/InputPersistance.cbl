>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.input
*> Java class InputPersistance

IDENTIFICATION DIVISION.
FUNCTION-ID. InputPersistance-new1.
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
01 J-name BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-name RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("InputPersistance")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_tsUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_hashtableUtil")
    COMPUTE JVALUE = FUNCTION TsUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_tsUtil", JVALUE)
    COMPUTE JVALUE = FUNCTION HashtableUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_hashtableUtil", JVALUE)
        CONTINUE
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION InputPersistance-new1.

IDENTIFICATION DIVISION.
FUNCTION-ID. InputPersistance-loadAll1.
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
01 J-recordStore BINARY-DOUBLE.
01 J-recordEnum BINARY-DOUBLE.
01 J-gameActionInputId BINARY-DOUBLE.
01 J-inputId BINARY-DOUBLE.
01 J-gameActionInput BINARY-DOUBLE.
01 J-input BINARY-DOUBLE.
01 J-hashtable BINARY-DOUBLE.
01 J-gameKeyFactory BINARY-DOUBLE.
01 J-stringBuffer BINARY-DOUBLE.
01 J-inputFactory BINARY-DOUBLE.
01 J-smallIntegerSingletonFactory BINARY-DOUBLE.
01 J-stdUtil BINARY-DOUBLE.
01 J-recordAsBytes BINARY-DOUBLE.
01 J-byteArrayInputStream BINARY-DOUBLE.
01 J-inputStream BINARY-DOUBLE.
01 J-id BINARY-DOUBLE.
01 J-value BINARY-DOUBLE.
01 J-gameActionInputIdAsString BINARY-DOUBLE.
01 jtemp1 BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
01 jtemp5 BINARY-DOUBLE.
01 jtemp6 BINARY-DOUBLE.
01 jtemp7 BINARY-DOUBLE.
01 jtemp8 BINARY-DOUBLE.
01 jtemp9 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-abeClientInformation BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-abeClientInformation RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-recordStore = FUNCTION NllRcrdStr-sttc-NULL-R57789
        CONTINUE
            COMPUTE jtemp1 = 1
            COMPUTE J-recordStore = FUNCTION RecordStore-openRecordStore2(FUNCTION BasicPersitance-getRecordId1(J-THIS, J-abeClientInformation), jtemp1)
            COMPUTE jtemp2 = 1
            COMPUTE J-recordEnum = FUNCTION RecordStore-enumerateRecords3(J-recordStore, FUNCTION NllRcrdFltr-sttc-NULL-79613, FUNCTION NllRcrdCmprtr-sttc-NUL41497, jtemp2)
            CONTINUE
            CONTINUE
            CONTINUE
            CONTINUE
            CONTINUE
            COMPUTE J-gameKeyFactory = FUNCTION GmKyMppngFctry-getInstance0
            COMPUTE J-stringBuffer = FUNCTION StringMaker-new0
            COMPUTE J-inputFactory = FUNCTION InputFactory-getInstance0
            COMPUTE J-smallIntegerSingletonFactory = FUNCTION SmllIntgrSngltnFctry-gtInstnc0
            COMPUTE J-stdUtil = FUNCTION StdUtil-getInstance0
            CONTINUE
            CONTINUE
            CONTINUE
            PERFORM FOREVER
                IF NOT (FUNCTION RcrdEnmrtn-hasNextElement0(J-recordEnum) = 1) EXIT PERFORM END-IF
                COMPUTE J-id = FUNCTION RcrdEnmrtn-nextRecordId0(J-recordEnum)
                COMPUTE jtemp3 = 0
                COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringBuffer, jtemp3, FUNCTION StringMaker-length0(J-stringBuffer))
                COMPUTE jtemp5 = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_LOADING_ID"))
                COMPUTE jtemp4 = FUNCTION StringMaker-appendint1(jtemp5, J-id)
                COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(FUNCTION JR-GET(J-THIS, "f_logUtil"))
                COMPUTE J-recordAsBytes = FUNCTION TsUtil-getRecord2(FUNCTION JR-GET(J-THIS, "f_tsUtil"), J-recordStore, J-id)
                IF (J-recordAsBytes NOT = 0)
                    COMPUTE J-byteArrayInputStream = FUNCTION ByteArrayInputStream-new1(J-recordAsBytes)
                    COMPUTE J-inputStream = FUNCTION DataInputStream-new1(J-byteArrayInputStream)
                    COMPUTE J-hashtable = FUNCTION StdUtil-createHashtable0(J-stdUtil)
                    CONTINUE
                    PERFORM FOREVER
                        IF NOT (FUNCTION DataInputStream-available0(J-inputStream) > 0) EXIT PERFORM END-IF
                        COMPUTE J-gameActionInputIdAsString = FUNCTION DataInputStream-readUTF0(J-inputStream)
                        COMPUTE J-value = FUNCTION Integer-parseInt1(J-gameActionInputIdAsString)
                        COMPUTE J-gameActionInputId = J-value
                        COMPUTE JDISCARD = FUNCTION DataInputStream-readUTF0(J-inputStream)
                        COMPUTE J-value = FUNCTION Integer-parseInt1(FUNCTION DataInputStream-readUTF0(J-inputStream))
                        COMPUTE J-inputId = J-value
                        COMPUTE jtemp6 = (FUNCTION MOD(J-gameActionInputId + 2147483648, 4294967296) - 2147483648)
                        COMPUTE J-gameActionInput = FUNCTION GmKyMppngFctry-getGameKey1(J-gameKeyFactory, jtemp6)
                        COMPUTE jtemp7 = (FUNCTION MOD(J-inputId + 2147483648, 4294967296) - 2147483648)
                        COMPUTE J-input = FUNCTION InputFactory-getInstanceById1(J-inputFactory, jtemp7)
                        IF ((J-input = FUNCTION JR-GET(J-inputFactory, "f_NO_INPUT")) OR (J-gameActionInput = 0))
                            COMPUTE jtemp8 = 0
                            COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringBuffer, jtemp8, FUNCTION StringMaker-length0(J-stringBuffer))
                            IF (J-input = FUNCTION JR-GET(J-inputFactory, "f_NO_INPUT"))
                                COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_ERROR_LOADING_ID"))
                                COMPUTE JDISCARD = FUNCTION StringMaker-appendlong1(J-stringBuffer, J-inputId)
                                COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_GAME_ACTION_INPUT"))
                                COMPUTE JDISCARD = FUNCTION StringMaker-appendlong1(J-stringBuffer, J-gameActionInputId)
                                COMPUTE JDISCARD = FUNCTION PreLogUtil-put3(FUNCTION JR-TO-STRING(J-stringBuffer), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_LOAD_ALL"))
                            END-IF
                            IF (J-gameActionInput = 0)
                                COMPUTE jtemp9 = 0
                                COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringBuffer, jtemp9, FUNCTION StringMaker-length0(J-stringBuffer))
                                COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_ERROR_LOADING"))
                                COMPUTE JDISCARD = FUNCTION StringMaker-appendlong1(J-stringBuffer, J-gameActionInputId)
                                COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_ID"))
                                COMPUTE JDISCARD = FUNCTION StringMaker-appendlong1(J-stringBuffer, J-inputId)
                                COMPUTE JDISCARD = FUNCTION PreLogUtil-put3(FUNCTION JR-TO-STRING(J-stringBuffer), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_LOAD_ALL"))
                            END-IF
                        ELSE
                            CONTINUE
                        END-IF
                        COMPUTE JDISCARD = FUNCTION Hashtable-put2(J-hashtable, J-input, J-gameActionInput)
                    END-PERFORM
                    COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(FUNCTION JR-GET(J-THIS, "f_valueList"))
                    COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(FUNCTION JR-GET(J-THIS, "f_idList"))
                ELSE
                    CONTINUE
                END-IF
            END-PERFORM
            IF (J-recordStore NOT = 0)
                COMPUTE JDISCARD = FUNCTION PreLogUtil-put3(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_CLOSING_RECORDSTORE"), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_LOAD_ALL"))
                COMPUTE JDISCARD = FUNCTION RecordStore-closeRecordStore0(J-recordStore)
            END-IF
    GOBACK.
END FUNCTION InputPersistance-loadAll1.

IDENTIFICATION DIVISION.
PROGRAM-ID. VInputPersistance-loadAll1.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-abeClientInformation BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-abeClientInformation J-RESULT.
    COMPUTE J-RESULT = FUNCTION InputPersistance-loadAll1(J-THIS, J-abeClientInformation)
    GOBACK.
END PROGRAM VInputPersistance-loadAll1.

IDENTIFICATION DIVISION.
FUNCTION-ID. InputPersistance-save2.
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
01 J-recordStore BINARY-DOUBLE.
01 J-stringBuffer BINARY-DOUBLE.
01 J-byteArrayOutputStream BINARY-DOUBLE.
01 J-outputStream BINARY-DOUBLE.
01 J-gameActionInput BINARY-DOUBLE.
01 J-list BINARY-DOUBLE.
01 J-input BINARY-DOUBLE.
01 J-savedGameBytes BINARY-DOUBLE.
01 J-commonSeps BINARY-DOUBLE.
01 J-smallIntegerSingletonFactory BINARY-DOUBLE.
01 J-inputObjectArray BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-gameActionInputIdAsString BINARY-DOUBLE.
01 J-inputIdAsString BINARY-DOUBLE.
01 J-index2 BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 jtemp10 BINARY-DOUBLE.
01 jtemp11 BINARY-DOUBLE.
01 jtemp12 BINARY-DOUBLE.
01 jtemp13 BINARY-DOUBLE.
01 jtemp14 BINARY-DOUBLE.
01 jtemp15 BINARY-DOUBLE.
01 jtemp16 BINARY-DOUBLE.
01 jtemp17 BINARY-DOUBLE.
01 JFIRST-N72087 BINARY-DOUBLE.
01 JFIRST-N72224 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-abeClientInformation BINARY-DOUBLE.
01 J-hashtable BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-abeClientInformation J-hashtable RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-recordStore = FUNCTION NllRcrdStr-sttc-NULL-R57789
        CONTINUE
            COMPUTE J-stringBuffer = FUNCTION StringMaker-new0
            COMPUTE jtemp12 = FUNCTION StringUtil-getInstance0
            COMPUTE jtemp11 = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_SAVING"))
            COMPUTE jtemp10 = FUNCTION StringMaker-append1(jtemp11, FUNCTION StringUtil-toString1(jtemp12, J-hashtable))
            COMPUTE JDISCARD = FUNCTION PreLogUtil-put3(FUNCTION JR-TO-STRING(jtemp10), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_SAVE"))
            COMPUTE jtemp13 = 1
            COMPUTE J-recordStore = FUNCTION RecordStore-openRecordStore2(FUNCTION BasicPersitance-getRecordId1(J-THIS, J-abeClientInformation), jtemp13)
            COMPUTE J-byteArrayOutputStream = FUNCTION ByteArrayOutputStream-new0
            COMPUTE J-outputStream = FUNCTION DataOutputStream-new1(J-byteArrayOutputStream)
            CONTINUE
            CONTINUE
            CONTINUE
            CONTINUE
            COMPUTE J-commonSeps = FUNCTION CommonSeps-getInstance0
            COMPUTE J-smallIntegerSingletonFactory = FUNCTION SmllIntgrSngltnFctry-gtInstnc0
            COMPUTE J-inputObjectArray = FUNCTION HashtableUtil-getKeysAsArray1(FUNCTION JR-GET(J-THIS, "f_hashtableUtil"), J-hashtable)
            COMPUTE J-size = FUNCTION JR-ARRAY-LENGTH(J-inputObjectArray)
            COMPUTE J-index = 0
            MOVE 1 TO JFIRST-N72087
            PERFORM FOREVER
                IF JFIRST-N72087 = 0
                    COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
                END-IF
                MOVE 0 TO JFIRST-N72087
                IF NOT (J-index < J-size) EXIT PERFORM END-IF
                COMPUTE J-gameActionInput = FUNCTION JR-ARRAY-GET(J-inputObjectArray, J-index)
                COMPUTE jtemp14 = FUNCTION JR-ARRAY-GET(J-inputObjectArray, J-index)
                COMPUTE J-list = FUNCTION Hashtable-get1(J-hashtable, jtemp14)
                COMPUTE J-index2 = 0
                MOVE 1 TO JFIRST-N72224
                PERFORM FOREVER
                    IF JFIRST-N72224 = 0
                        COMPUTE J-index2 = (FUNCTION MOD(J-index2 + 1 + 2147483648, 4294967296) - 2147483648)
                    END-IF
                    MOVE 0 TO JFIRST-N72224
                    IF NOT (J-index2 < FUNCTION BasicArrayList-size0(J-list)) EXIT PERFORM END-IF
                    COMPUTE jtemp15 = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, FUNCTION Input-getId0(J-gameActionInput))
                    COMPUTE J-gameActionInputIdAsString = FUNCTION JR-TO-STRING(jtemp15)
                    COMPUTE JDISCARD = FUNCTION DataOutputStream-writeUTF1(J-outputStream, J-gameActionInputIdAsString)
                    COMPUTE JDISCARD = FUNCTION DataOutputStream-writeUTF1(J-outputStream, FUNCTION JR-GET(J-commonSeps, "f_EQUALS"))
                    COMPUTE J-input = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-list, "f_objectArray"), J-index2)
                    COMPUTE jtemp16 = FUNCTION SmllIntgrSngltnFctry-getAt1(J-smallIntegerSingletonFactory, FUNCTION Input-getId0(J-input))
                    COMPUTE J-inputIdAsString = FUNCTION JR-TO-STRING(jtemp16)
                    COMPUTE JDISCARD = FUNCTION DataOutputStream-writeUTF1(J-outputStream, J-inputIdAsString)
                END-PERFORM
            END-PERFORM
            COMPUTE J-savedGameBytes = FUNCTION BytArryOtptStrm-toByteArray0(J-byteArrayOutputStream)
            COMPUTE jtemp17 = 0
            COMPUTE JDISCARD = FUNCTION RecordStore-addRecord3(J-recordStore, J-savedGameBytes, jtemp17, FUNCTION JR-ARRAY-LENGTH(J-savedGameBytes))
            IF (J-recordStore NOT = 0)
                COMPUTE JDISCARD = FUNCTION PreLogUtil-put3(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_CLOSING_RECORDSTORE"), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_SAVE"))
                COMPUTE JDISCARD = FUNCTION RecordStore-closeRecordStore0(J-recordStore)
            END-IF
    GOBACK.
END FUNCTION InputPersistance-save2.

IDENTIFICATION DIVISION.
PROGRAM-ID. VInputPersistance-save2.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-abeClientInformation BINARY-DOUBLE.
01 J-hashtable BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-abeClientInformation J-hashtable J-RESULT.
    COMPUTE J-RESULT = FUNCTION InputPersistance-save2(J-THIS, J-abeClientInformation, J-hashtable)
    GOBACK.
END PROGRAM VInputPersistance-save2.

IDENTIFICATION DIVISION.
PROGRAM-ID. InputPersistance-jsuper.
DATA DIVISION.
LINKAGE SECTION.
01 J-CLASS PIC X(60).
PROCEDURE DIVISION USING J-CLASS.
    MOVE "BasicPersitance" TO J-CLASS
    GOBACK.
END PROGRAM InputPersistance-jsuper.

