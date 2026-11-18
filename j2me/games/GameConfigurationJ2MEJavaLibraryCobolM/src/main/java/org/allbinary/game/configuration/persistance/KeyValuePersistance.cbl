>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.configuration.persistance
*> Java class KeyValuePersistance

IDENTIFICATION DIVISION.
FUNCTION-ID. KeyValuePersistance-new1.
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
01 J-recordId BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-recordId RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("KeyValuePersistance")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_tsUtil")
    COMPUTE JVALUE = FUNCTION TsUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_tsUtil", JVALUE)
        CONTINUE
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION KeyValuePersistance-new1.

IDENTIFICATION DIVISION.
FUNCTION-ID. KeyValuePersistance-loadAll1.
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
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-abeClientInformation BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-abeClientInformation RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp1 = 1
        COMPUTE JDISCARD = FUNCTION KyVlPrsstnc-loadAllSize2(J-THIS, J-abeClientInformation, jtemp1)
    GOBACK.
END FUNCTION KeyValuePersistance-loadAll1.

IDENTIFICATION DIVISION.
FUNCTION-ID. KyVlPrsstnc-loadAllSize2.
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
01 J-hashtable BINARY-DOUBLE.
01 J-name BINARY-DOUBLE.
01 J-value BINARY-DOUBLE.
01 J-smallIntegerSingletonFactory BINARY-DOUBLE.
01 J-stringBuffer BINARY-DOUBLE.
01 J-recordAsBytes BINARY-DOUBLE.
01 J-byteArrayInputStream BINARY-DOUBLE.
01 J-inputStream BINARY-DOUBLE.
01 J-id BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
01 jtemp3 BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
01 jtemp5 BINARY-DOUBLE.
01 jtemp6 BINARY-DOUBLE.
01 JFIRST1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-abeClientInformation BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-abeClientInformation J-size RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-recordStore = FUNCTION NllRcrdStr-sttc-NULL-R57789
        CONTINUE
            COMPUTE jtemp2 = 1
            COMPUTE J-recordStore = FUNCTION RecordStore-openRecordStore2(FUNCTION BasicPersitance-getRecordId1(J-THIS, J-abeClientInformation), jtemp2)
            COMPUTE jtemp3 = 1
            COMPUTE J-recordEnum = FUNCTION RecordStore-enumerateRecords3(J-recordStore, FUNCTION NllRcrdFltr-sttc-NULL-79613, FUNCTION NllRcrdCmprtr-sttc-NUL41497, jtemp3)
            CONTINUE
            CONTINUE
            CONTINUE
            COMPUTE J-smallIntegerSingletonFactory = FUNCTION SmllIntgrSngltnFctry-gtInstnc0
            COMPUTE J-stringBuffer = FUNCTION StringMaker-new0
            CONTINUE
            CONTINUE
            CONTINUE
            PERFORM FOREVER
                IF NOT (FUNCTION RcrdEnmrtn-hasNextElement0(J-recordEnum) = 1) EXIT PERFORM END-IF
                COMPUTE J-id = FUNCTION RcrdEnmrtn-nextRecordId0(J-recordEnum)
                COMPUTE jtemp4 = 0
                COMPUTE JDISCARD = FUNCTION StringMaker-delete2(J-stringBuffer, jtemp4, FUNCTION StringMaker-length0(J-stringBuffer))
                COMPUTE jtemp6 = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_LOADING_ID"))
                COMPUTE jtemp5 = FUNCTION StringMaker-appendint1(jtemp6, J-id)
                COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(FUNCTION JR-GET(J-THIS, "f_logUtil"))
                COMPUTE J-recordAsBytes = FUNCTION TsUtil-getRecord2(FUNCTION JR-GET(J-THIS, "f_tsUtil"), J-recordStore, J-id)
                IF (J-recordAsBytes NOT = 0)
                    COMPUTE J-byteArrayInputStream = FUNCTION ByteArrayInputStream-new1(J-recordAsBytes)
                    COMPUTE J-inputStream = FUNCTION DataInputStream-new1(J-byteArrayInputStream)
                    COMPUTE J-hashtable = FUNCTION ABHashtable-new0
                    COMPUTE J-index = 0
                    MOVE 1 TO JFIRST1
                    PERFORM FOREVER
                        IF JFIRST1 = 0
                            COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
                        END-IF
                        MOVE 0 TO JFIRST1
                        IF NOT (J-index < J-size) EXIT PERFORM END-IF
                        COMPUTE J-name = FUNCTION DataInputStream-readUTF0(J-inputStream)
                        COMPUTE JDISCARD = FUNCTION DataInputStream-readUTF0(J-inputStream)
                        COMPUTE J-value = FUNCTION DataInputStream-readUTF0(J-inputStream)
                        COMPUTE JDISCARD = FUNCTION Hashtable-put2(J-hashtable, J-name, J-value)
                    END-PERFORM
                    COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(FUNCTION JR-GET(J-THIS, "f_valueList"))
                    COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(FUNCTION JR-GET(J-THIS, "f_idList"))
                END-IF
            END-PERFORM
            IF (J-recordStore NOT = 0)
                COMPUTE JDISCARD = FUNCTION PreLogUtil-put3(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_CLOSING_RECORDSTORE"), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_LOAD_ALL"))
                COMPUTE JDISCARD = FUNCTION RecordStore-closeRecordStore0(J-recordStore)
            END-IF
    GOBACK.
END FUNCTION KyVlPrsstnc-loadAllSize2.

IDENTIFICATION DIVISION.
FUNCTION-ID. KeyValuePersistance-save2.
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
01 J-byteArrayOutputStream BINARY-DOUBLE.
01 J-outputStream BINARY-DOUBLE.
01 J-value BINARY-DOUBLE.
01 J-commonSeps BINARY-DOUBLE.
01 J-objectArray BINARY-DOUBLE.
01 J-anyType BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 J-tsUtil BINARY-DOUBLE.
01 J-savedGameBytes BINARY-DOUBLE.
01 jtemp7 BINARY-DOUBLE.
01 jtemp8 BINARY-DOUBLE.
01 jtemp9 BINARY-DOUBLE.
01 jtemp10 BINARY-DOUBLE.
01 jtemp11 BINARY-DOUBLE.
01 jtemp12 BINARY-DOUBLE.
01 jtemp13 BINARY-DOUBLE.
01 jtemp14 BINARY-DOUBLE.
01 JFIRST2 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-abeClientInformation BINARY-DOUBLE.
01 J-hashtable BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-abeClientInformation J-hashtable RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-recordStore = FUNCTION NllRcrdStr-sttc-NULL-R57789
        CONTINUE
            COMPUTE jtemp10 = FUNCTION StringUtil-getInstance0
            COMPUTE jtemp9 = FUNCTION StringMaker-new0
            COMPUTE jtemp8 = FUNCTION StringMaker-append1(jtemp9, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_SAVING"))
            COMPUTE jtemp7 = FUNCTION StringMaker-append1(jtemp8, FUNCTION StringUtil-toString1(jtemp10, J-hashtable))
            COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(FUNCTION JR-GET(J-THIS, "f_logUtil"))
            COMPUTE jtemp11 = 1
            COMPUTE J-recordStore = FUNCTION RecordStore-openRecordStore2(FUNCTION BasicPersitance-getRecordId1(J-THIS, J-abeClientInformation), jtemp11)
            COMPUTE J-byteArrayOutputStream = FUNCTION ByteArrayOutputStream-new0
            COMPUTE J-outputStream = FUNCTION DataOutputStream-new1(J-byteArrayOutputStream)
            CONTINUE
            COMPUTE J-commonSeps = FUNCTION CommonSeps-getInstance0
            COMPUTE jtemp12 = FUNCTION HashtableUtil-getInstance0
            COMPUTE J-objectArray = FUNCTION HashtableUtil-getKeysAsArray1(jtemp12, J-hashtable)
            CONTINUE
            COMPUTE J-size = FUNCTION JR-ARRAY-LENGTH(J-objectArray)
            COMPUTE J-index = 0
            MOVE 1 TO JFIRST2
            PERFORM FOREVER
                IF JFIRST2 = 0
                    COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
                END-IF
                MOVE 0 TO JFIRST2
                IF NOT (J-index < J-size) EXIT PERFORM END-IF
                COMPUTE jtemp13 = FUNCTION JR-ARRAY-GET(J-objectArray, J-index)
                COMPUTE JDISCARD = FUNCTION DataOutputStream-writeUTF1(J-outputStream, jtemp13)
                COMPUTE JDISCARD = FUNCTION DataOutputStream-writeUTF1(J-outputStream, FUNCTION JR-GET(J-commonSeps, "f_EQUALS"))
                COMPUTE J-anyType = FUNCTION JR-ARRAY-GET(J-objectArray, J-index)
                COMPUTE J-value = FUNCTION Hashtable-get1(J-hashtable, J-anyType)
                COMPUTE JDISCARD = FUNCTION DataOutputStream-writeUTF1(J-outputStream, J-value)
            END-PERFORM
            COMPUTE J-tsUtil = FUNCTION TsUtil-getInstance0
            COMPUTE J-savedGameBytes = FUNCTION TsUtil-getByteArray1(J-tsUtil, FUNCTION JR-TO-STRING(J-byteArrayOutputStream))
            COMPUTE jtemp14 = 0
            COMPUTE JDISCARD = FUNCTION RecordStore-addRecord3(J-recordStore, J-savedGameBytes, jtemp14, FUNCTION JR-ARRAY-LENGTH(J-savedGameBytes))
            IF (J-recordStore NOT = 0)
                COMPUTE JDISCARD = FUNCTION PreLogUtil-put3(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_persistanceStrings"), "f_CLOSING_RECORDSTORE"), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_SAVE"))
                COMPUTE JDISCARD = FUNCTION RecordStore-closeRecordStore0(J-recordStore)
            END-IF
    GOBACK.
END FUNCTION KeyValuePersistance-save2.

IDENTIFICATION DIVISION.
FUNCTION-ID. KeyValuePersistance-get1.
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
01 J-hashtable BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-index RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-hashtable = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_valueList"), "f_objectArray"), J-index)
        COMPUTE J-RESULT = J-hashtable
        GOBACK
    GOBACK.
END FUNCTION KeyValuePersistance-get1.

