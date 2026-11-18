>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.game.score
*> Java class RecordStoreHighScores

IDENTIFICATION DIVISION.
FUNCTION-ID. RcrdStrHghScrs-sttc-hshTbl.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 RecordStoreHighScores-jcell-hashTable BINARY-DOUBLE EXTERNAL.
01 RecordStoreHighScores-jset-hashTable BINARY-DOUBLE EXTERNAL.
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
    IF RecordStoreHighScores-jset-hashTable = 0
        MOVE 1 TO RecordStoreHighScores-jset-hashTable
        COMPUTE jtemp1 = FUNCTION StdUtil-getInstance0
    COMPUTE RecordStoreHighScores-jcell-hashTable = FUNCTION StdUtil-createHashtable0(jtemp1)
    END-IF
    MOVE RecordStoreHighScores-jcell-hashTable TO J-RESULT
    GOBACK.
END FUNCTION RcrdStrHghScrs-sttc-hshTbl.

IDENTIFICATION DIVISION.
FUNCTION-ID. RcrdStrHghScrssttchsS27893.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 RecordStoreHighScores-jcell-hashTable BINARY-DOUBLE EXTERNAL.
LINKAGE SECTION.
01 J-VALUE BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-VALUE RETURNING J-RESULT.
    MOVE FUNCTION RcrdStrHghScrs-sttc-hshTbl TO J-RESULT
    MOVE J-VALUE TO RecordStoreHighScores-jcell-hashTable
    MOVE J-VALUE TO J-RESULT
    GOBACK.
END FUNCTION RcrdStrHghScrssttchsS27893.

IDENTIFICATION DIVISION.
FUNCTION-ID. RecordStoreHighScores-new6.
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
01 J-abeClientInformation BINARY-DOUBLE.
01 J-gameInfo BINARY-DOUBLE.
01 J-name BINARY-DOUBLE.
01 J-heading BINARY-DOUBLE.
01 J-columnTwoHeading BINARY-DOUBLE.
01 J-recordComparatorInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-abeClientInformation J-gameInfo J-name J-heading J-columnTwoHeading J-recordComparatorInterface RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("RecordStoreHighScores")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_logUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_commonStrings")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_platformRecordIdUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_tsUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_RECORD_ID")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_MAXHIGHSCORES")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_gameInfo")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_abeClientInformation")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_recordComparatorInterface")
    COMPUTE JVALUE = FUNCTION LogUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_logUtil", JVALUE)
    COMPUTE JVALUE = FUNCTION CommonStrings-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_commonStrings", JVALUE)
    COMPUTE JVALUE = FUNCTION PltfrmRcrdIdUtl-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_platformRecordIdUtil", JVALUE)
    COMPUTE JVALUE = FUNCTION TsUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_tsUtil", JVALUE)
    COMPUTE JVALUE = FUNCTION JR-STR("_HS")
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_RECORD_ID", JVALUE)
    COMPUTE JVALUE = 100
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_MAXHIGHSCORES", JVALUE)
    
    
    
        CONTINUE
        COMPUTE JVALUE = J-abeClientInformation
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_abeClientInformation", JVALUE)
        COMPUTE JVALUE = J-gameInfo
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_gameInfo", JVALUE)
        COMPUTE JVALUE = J-recordComparatorInterface
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_recordComparatorInterface", JVALUE)
        COMPUTE JDISCARD = FUNCTION RecordStoreHighScores-load0(J-THIS)
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION RecordStoreHighScores-new6.

IDENTIFICATION DIVISION.
FUNCTION-ID. RcrdStrHghScrs-getInstance6.
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
01 J-highScoresCanBeNull BINARY-DOUBLE.
01 J-highScores BINARY-DOUBLE.
01 jtemp2 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-abeClientInformation BINARY-DOUBLE.
01 J-gameInfo BINARY-DOUBLE.
01 J-highScoreName BINARY-DOUBLE.
01 J-heading BINARY-DOUBLE.
01 J-columnTwoHeading BINARY-DOUBLE.
01 J-recordComparatorInterface BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-abeClientInformation J-gameInfo J-highScoreName J-heading J-columnTwoHeading J-recordComparatorInterface RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp2 = J-highScoreName
        COMPUTE J-highScoresCanBeNull = FUNCTION JR-CLASS-NAME(FUNCTION RcrdStrHghScrs-sttc-hshTbl)
        IF (J-highScoresCanBeNull = 0)
            COMPUTE J-highScores = FUNCTION RecordStoreHighScores-new6(J-abeClientInformation, J-gameInfo, J-highScoreName, J-heading, J-columnTwoHeading, J-recordComparatorInterface)
            COMPUTE JDISCARD = FUNCTION JR-CLASS-NAME(FUNCTION RcrdStrHghScrs-sttc-hshTbl)
            COMPUTE J-RESULT = J-highScores
            GOBACK
        END-IF
        COMPUTE J-RESULT = J-highScoresCanBeNull
        GOBACK
    GOBACK.
END FUNCTION RcrdStrHghScrs-getInstance6.

IDENTIFICATION DIVISION.
FUNCTION-ID. RcrdStrHghScrs-getRecordId1.
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
01 jtemp3 BINARY-DOUBLE.
01 jtemp4 BINARY-DOUBLE.
01 jtemp5 BINARY-DOUBLE.
01 jtemp6 BINARY-DOUBLE.
01 jtemp7 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-abeClientInformation BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-abeClientInformation RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp7 = FUNCTION CommonSeps-getInstance0
        COMPUTE jtemp6 = FUNCTION StringMaker-new0
        COMPUTE jtemp5 = FUNCTION StringMaker-append1(jtemp6, FUNCTION JR-GET(jtemp7, "f_UNDERSCORE"))
        COMPUTE jtemp4 = FUNCTION StringMaker-append1(jtemp5, FUNCTION HighScores-getName0(J-THIS))
        COMPUTE jtemp3 = FUNCTION StringMaker-append1(jtemp4, FUNCTION JR-GET(J-THIS, "f_RECORD_ID"))
        COMPUTE J-RESULT = FUNCTION PltfrmRcrdIdUtl-getRecordId2(FUNCTION JR-GET(J-THIS, "f_platformRecordIdUtil"), J-abeClientInformation, FUNCTION JR-TO-STRING(jtemp3))
        GOBACK
    GOBACK.
END FUNCTION RcrdStrHghScrs-getRecordId1.

IDENTIFICATION DIVISION.
FUNCTION-ID. RcrdStrHghScrs-addHighScore1.
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
01 J-highScoreBytes BINARY-DOUBLE.
01 J-recordId BINARY-DOUBLE.
01 jtemp8 BINARY-DOUBLE.
01 jtemp9 BINARY-DOUBLE.
01 jtemp10 BINARY-DOUBLE.
01 jtemp11 BINARY-DOUBLE.
01 jtemp12 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-newHighScore BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-newHighScore RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-recordStore = FUNCTION NllRcrdStr-sttc-NULL-R57789
        CONTINUE
            COMPUTE jtemp10 = FUNCTION StringMaker-new0
            COMPUTE jtemp9 = FUNCTION StringMaker-append1(jtemp10, FUNCTION JR-STR("Adding HighScore: "))
            COMPUTE jtemp8 = FUNCTION StringMaker-appendlong1(jtemp9, FUNCTION HighScore-getScore0(J-newHighScore))
            COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-TO-STRING(jtemp8), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_ADD"))
            IF (FUNCTION RcrdStrHghScrs-isTMnyHghScrs0(J-THIS) = 1)
                COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-STR("Removing Lowest Score"), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_ADD"))
                COMPUTE JDISCARD = FUNCTION RcrdStrHghScrs-rmvLwstHghScr0(J-THIS)
            END-IF
            COMPUTE jtemp11 = 1
            COMPUTE J-recordStore = FUNCTION RecordStore-openRecordStore2(FUNCTION RcrdStrHghScrs-getRecordId1(J-THIS, FUNCTION JR-GET(J-THIS, "f_abeClientInformation")), jtemp11)
            COMPUTE J-highScoreBytes = FUNCTION HighScore-getAsBytes0(J-newHighScore)
            COMPUTE jtemp12 = 0
            COMPUTE J-recordId = FUNCTION RecordStore-addRecord3(J-recordStore, J-highScoreBytes, jtemp12, FUNCTION JR-ARRAY-LENGTH(J-highScoreBytes))
            COMPUTE JDISCARD = FUNCTION RecordStoreHighScores-load0(J-THIS)
            CONTINUE
                IF (J-recordStore NOT = 0)
                    COMPUTE JDISCARD = FUNCTION PreLogUtil-put3(FUNCTION JR-STR("Closing RecordStore"), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_ADD"))
                    COMPUTE JDISCARD = FUNCTION RecordStore-closeRecordStore0(J-recordStore)
                END-IF
    GOBACK.
END FUNCTION RcrdStrHghScrs-addHighScore1.

IDENTIFICATION DIVISION.
FUNCTION-ID. RcrdStrHghScrs-rmvLwstHghScr0.
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
01 J-scoreComparator BINARY-DOUBLE.
01 J-bestHighScore BINARY-DOUBLE.
01 J-recordAsBytes BINARY-DOUBLE.
01 J-byteArrayInputStream BINARY-DOUBLE.
01 J-inputStream BINARY-DOUBLE.
01 J-id BINARY-DOUBLE.
01 J-name BINARY-DOUBLE.
01 J-nextScore BINARY-DOUBLE.
01 J-nextCurrentHighScore BINARY-DOUBLE.
01 jtemp13 BINARY-DOUBLE.
01 jtemp14 BINARY-DOUBLE.
01 jtemp15 BINARY-DOUBLE.
01 jtemp16 BINARY-DOUBLE.
01 jtemp17 BINARY-DOUBLE.
01 jtemp18 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-recordStore = FUNCTION NllRcrdStr-sttc-NULL-R57789
        CONTINUE
            COMPUTE jtemp13 = 1
            COMPUTE J-recordStore = FUNCTION RecordStore-openRecordStore2(FUNCTION RcrdStrHghScrs-getRecordId1(J-THIS, FUNCTION JR-GET(J-THIS, "f_abeClientInformation")), jtemp13)
            COMPUTE jtemp14 = 1
            COMPUTE J-recordEnum = FUNCTION RecordStore-enumerateRecords3(J-recordStore, FUNCTION NllRcrdFltr-sttc-NULL-79613, FUNCTION NllRcrdCmprtr-sttc-NUL41497, jtemp14)
            COMPUTE J-scoreComparator = (FUNCTION JR-GET(J-THIS, "f_recordComparatorInterface"))
            COMPUTE jtemp15 = (0 - 1)
            COMPUTE J-bestHighScore = FUNCTION HighScore-new4(jtemp15, FUNCTION JR-STR("none"), FUNCTION GameInfo-static-NONE, FUNCTION ScoreComparator-getBestScore0(J-scoreComparator))
            CONTINUE
            CONTINUE
            CONTINUE
            PERFORM FOREVER
                IF NOT (FUNCTION RcrdEnmrtn-hasNextElement0(J-recordEnum) = 1) EXIT PERFORM END-IF
                COMPUTE J-id = FUNCTION RcrdEnmrtn-nextRecordId0(J-recordEnum)
                COMPUTE J-recordAsBytes = FUNCTION TsUtil-getRecord2(FUNCTION JR-GET(J-THIS, "f_tsUtil"), J-recordStore, J-id)
                IF (J-recordAsBytes NOT = 0)
                    COMPUTE J-byteArrayInputStream = FUNCTION ByteArrayInputStream-new1(J-recordAsBytes)
                    COMPUTE J-inputStream = FUNCTION DataInputStream-new1(J-byteArrayInputStream)
                    COMPUTE J-name = FUNCTION DataInputStream-readUTF0(J-inputStream)
                    COMPUTE J-nextScore = FUNCTION DataInputStream-readLong0(J-inputStream)
                    COMPUTE J-nextCurrentHighScore = FUNCTION HighScore-new4(J-id, J-name, FUNCTION GameInfo-static-NONE, J-nextScore)
                    IF (FUNCTION RecordComparator-compare2(FUNCTION JR-GET(J-THIS, "f_recordComparatorInterface"), FUNCTION HighScore-getAsBytes0(J-nextCurrentHighScore), FUNCTION HighScore-getAsBytes0(J-bestHighScore)) = FUNCTION
        RcrdCmprtr-static-FOLLOWS)
                        COMPUTE J-bestHighScore = J-nextCurrentHighScore
                    END-IF
                END-IF
            END-PERFORM
            IF (FUNCTION HighScore-getId0(J-bestHighScore) NOT = (0 - 1))
                COMPUTE jtemp18 = FUNCTION StringMaker-new0
                COMPUTE jtemp17 = FUNCTION StringMaker-append1(jtemp18, FUNCTION JR-STR("Removing Lowest HighScore: "))
                COMPUTE jtemp16 = FUNCTION StringMaker-appendlong1(jtemp17, FUNCTION HighScore-getScore0(J-bestHighScore))
                COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-TO-STRING(jtemp16), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_LOAD"))
                COMPUTE JDISCARD = FUNCTION RecordStore-deleteRecord1(J-recordStore, FUNCTION HighScore-getId0(J-bestHighScore))
            END-IF
            CONTINUE
                IF (J-recordStore NOT = 0)
                    COMPUTE JDISCARD = FUNCTION PreLogUtil-put3(FUNCTION JR-STR("Closing RecordStore"), J-THIS, FUNCTION JR-STR("removeLowestHighScore"))
                    COMPUTE JDISCARD = FUNCTION RecordStore-closeRecordStore0(J-recordStore)
                END-IF
    GOBACK.
END FUNCTION RcrdStrHghScrs-rmvLwstHghScr0.

IDENTIFICATION DIVISION.
FUNCTION-ID. RecordStoreHighScores-load0.
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
01 J-recordAsBytes BINARY-DOUBLE.
01 J-byteArrayInputStream BINARY-DOUBLE.
01 J-inputStream BINARY-DOUBLE.
01 J-id BINARY-DOUBLE.
01 J-name BINARY-DOUBLE.
01 J-score BINARY-DOUBLE.
01 J-newHighScore BINARY-DOUBLE.
01 J-list BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-lastIndex BINARY-DOUBLE.
01 J-highScore BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 jtemp19 BINARY-DOUBLE.
01 jtemp20 BINARY-DOUBLE.
01 JFIRST1 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-recordStore = FUNCTION NllRcrdStr-sttc-NULL-R57789
        CONTINUE
            COMPUTE jtemp19 = 1
            COMPUTE J-recordStore = FUNCTION RecordStore-openRecordStore2(FUNCTION RcrdStrHghScrs-getRecordId1(J-THIS, FUNCTION JR-GET(J-THIS, "f_abeClientInformation")), jtemp19)
            COMPUTE JDISCARD = FUNCTION HighScores-setList1(J-THIS, FUNCTION BasicArrayListD-new0)
            COMPUTE jtemp20 = 1
            COMPUTE J-recordEnum = FUNCTION RecordStore-enumerateRecords3(J-recordStore, FUNCTION NllRcrdFltr-sttc-NULL-79613, FUNCTION NllRcrdCmprtr-sttc-NUL41497, jtemp20)
            CONTINUE
            CONTINUE
            CONTINUE
            PERFORM FOREVER
                IF NOT (FUNCTION RcrdEnmrtn-hasNextElement0(J-recordEnum) = 1) EXIT PERFORM END-IF
                COMPUTE J-id = FUNCTION RcrdEnmrtn-nextRecordId0(J-recordEnum)
                COMPUTE J-recordAsBytes = FUNCTION TsUtil-getRecord2(FUNCTION JR-GET(J-THIS, "f_tsUtil"), J-recordStore, J-id)
                IF (J-recordAsBytes NOT = 0)
                    COMPUTE J-byteArrayInputStream = FUNCTION ByteArrayInputStream-new1(J-recordAsBytes)
                    COMPUTE J-inputStream = FUNCTION DataInputStream-new1(J-byteArrayInputStream)
                    CONTINUE
                        COMPUTE J-name = FUNCTION DataInputStream-readUTF0(J-inputStream)
                        COMPUTE J-score = FUNCTION DataInputStream-readLong0(J-inputStream)
                        COMPUTE J-newHighScore = FUNCTION HighScore-new4(J-id, J-name, FUNCTION GameInfo-static-NONE, J-score)
                        COMPUTE J-list = FUNCTION HighScores-getList0(J-THIS)
                        COMPUTE J-size = FUNCTION BasicArrayList-size0(J-list)
                        COMPUTE J-lastIndex = J-size
                        COMPUTE J-index = 0
                        MOVE 1 TO JFIRST1
                        PERFORM FOREVER
                            IF JFIRST1 = 0
                                COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
                            END-IF
                            MOVE 0 TO JFIRST1
                            IF NOT (J-index < J-size) EXIT PERFORM END-IF
                            COMPUTE J-highScore = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-list, "f_objectArray"), J-index)
                            IF (FUNCTION RecordComparator-compare2(FUNCTION JR-GET(J-THIS, "f_recordComparatorInterface"), FUNCTION HighScore-getAsBytes0(J-newHighScore), FUNCTION HighScore-getAsBytes0(J-highScore)) = FUNCTION
        RcrdCmprtr-static-PRECEDES)
                                COMPUTE J-lastIndex = J-index
                                EXIT PERFORM
                            END-IF
                        END-PERFORM
                        COMPUTE JDISCARD = FUNCTION BasicArrayList-addAt2(J-list, J-lastIndex, J-newHighScore)
                END-IF
            END-PERFORM
            CONTINUE
                IF (J-recordStore NOT = 0)
                    COMPUTE JDISCARD = FUNCTION PreLogUtil-put3(FUNCTION JR-STR("Closing RecordStore"), J-THIS, FUNCTION JR-GET(FUNCTION JR-GET(J-THIS, "f_commonStrings"), "f_LOAD"))
                    COMPUTE JDISCARD = FUNCTION RecordStore-closeRecordStore0(J-recordStore)
                END-IF
    GOBACK.
END FUNCTION RecordStoreHighScores-load0.

IDENTIFICATION DIVISION.
FUNCTION-ID. RcrdStrHghScrs-isTMnyHghScrs0.
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
01 jtemp21 BINARY-DOUBLE.
01 jtemp22 BINARY-DOUBLE.
01 jtemp23 BINARY-DOUBLE.
01 jtemp24 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp21 = FUNCTION HighScores-getList0(J-THIS)
        IF ((FUNCTION HighScores-getList0(J-THIS) NOT = 0) AND (FUNCTION JR-CLASS-NAME(jtemp21) < FUNCTION JR-GET(J-THIS, "f_MAXHIGHSCORES")))
            COMPUTE J-RESULT = 0
            GOBACK
        ELSE
            COMPUTE jtemp24 = FUNCTION StringMaker-new0
            COMPUTE jtemp23 = FUNCTION StringMaker-append1(jtemp24, FUNCTION JR-STR("HighScores RecordStore Max Reached: "))
            COMPUTE jtemp22 = FUNCTION StringMaker-appendint1(jtemp23, FUNCTION JR-GET(J-THIS, "f_MAXHIGHSCORES"))
            COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-TO-STRING(jtemp22), J-THIS, FUNCTION JR-STR("isTooManyHighScores"))
            COMPUTE J-RESULT = 1
            GOBACK
        END-IF
    GOBACK.
END FUNCTION RcrdStrHghScrs-isTMnyHghScrs0.

IDENTIFICATION DIVISION.
FUNCTION-ID. RcrdStrHghScrs-isBestScore1.
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
01 J-list BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-highScore BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 JFIRST2 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-newHighScore BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-newHighScore RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        CONTINUE
            IF (NOT (FUNCTION RcrdStrHghScrs-isTMnyHghScrs0(J-THIS) = 1))
                COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-STR("Slot Available for a High Score"), J-THIS, FUNCTION JR-STR("isBestScore"))
                COMPUTE J-RESULT = 1
                GOBACK
            ELSE
                COMPUTE J-list = FUNCTION HighScores-getList0(J-THIS)
                COMPUTE J-size = FUNCTION BasicArrayList-size0(J-list)
                COMPUTE J-index = 0
                MOVE 1 TO JFIRST2
                PERFORM FOREVER
                    IF JFIRST2 = 0
                        COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
                    END-IF
                    MOVE 0 TO JFIRST2
                    IF NOT (J-index < J-size) EXIT PERFORM END-IF
                    COMPUTE J-highScore = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-list, "f_objectArray"), J-index)
                    IF (FUNCTION RecordComparator-compare2(FUNCTION JR-GET(J-THIS, "f_recordComparatorInterface"), FUNCTION HighScore-getAsBytes0(J-newHighScore), FUNCTION HighScore-getAsBytes0(J-highScore)) = FUNCTION
        RcrdCmprtr-static-FOLLOWS)
                        COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-STR("Obtained a High Score"), J-THIS, FUNCTION JR-STR("isBestScore"))
                        COMPUTE J-RESULT = 1
                        GOBACK
                    END-IF
                END-PERFORM
            END-IF
            COMPUTE JDISCARD = FUNCTION LogUtil-putF3(FUNCTION JR-GET(J-THIS, "f_logUtil"), FUNCTION JR-STR("Not a High Score"), J-THIS, FUNCTION JR-STR("isBestScore"))
            COMPUTE J-RESULT = 0
            GOBACK
    GOBACK.
END FUNCTION RcrdStrHghScrs-isBestScore1.

IDENTIFICATION DIVISION.
FUNCTION-ID. RcrdStrHghScrs-toString0.
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
01 J-list BINARY-DOUBLE.
01 J-size BINARY-DOUBLE.
01 J-highScore BINARY-DOUBLE.
01 J-index BINARY-DOUBLE.
01 jtemp25 BINARY-DOUBLE.
01 JFIRST3 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-stringBuffer = FUNCTION StringMaker-new0
        COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION HighScores-toString0(J-THIS))
        COMPUTE J-list = FUNCTION HighScores-getList0(J-THIS)
        COMPUTE J-size = FUNCTION BasicArrayList-size0(J-list)
        COMPUTE J-index = 0
        MOVE 1 TO JFIRST3
        PERFORM FOREVER
            IF JFIRST3 = 0
                COMPUTE J-index = (FUNCTION MOD(J-index + 1 + 2147483648, 4294967296) - 2147483648)
            END-IF
            MOVE 0 TO JFIRST3
            IF NOT (J-index < J-size) EXIT PERFORM END-IF
            COMPUTE J-highScore = FUNCTION JR-ARRAY-GET(FUNCTION JR-GET(J-list, "f_objectArray"), J-index)
            COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION HighScore-getScoreString0(J-highScore))
            COMPUTE jtemp25 = FUNCTION CommonSeps-getInstance0
            COMPUTE JDISCARD = FUNCTION StringMaker-append1(J-stringBuffer, FUNCTION JR-GET(jtemp25, "f_COMMA_SEP"))
        END-PERFORM
        COMPUTE J-RESULT = FUNCTION JR-TO-STRING(J-stringBuffer)
        GOBACK
    GOBACK.
END FUNCTION RcrdStrHghScrs-toString0.

IDENTIFICATION DIVISION.
PROGRAM-ID. RecordStoreHighScores-toString.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-RESULT.
    COMPUTE J-RESULT = FUNCTION RcrdStrHghScrs-toString0(J-THIS)
    GOBACK.
END PROGRAM RecordStoreHighScores-toString.

