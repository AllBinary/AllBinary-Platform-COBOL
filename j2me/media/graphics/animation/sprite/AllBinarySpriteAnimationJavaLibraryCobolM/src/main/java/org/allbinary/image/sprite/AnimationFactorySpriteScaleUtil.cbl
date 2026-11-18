>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.image.sprite
*> Java class AnimationFactorySpriteScaleUtil

IDENTIFICATION DIVISION.
FUNCTION-ID. AnmtnFctrySprtSclUtl-stt34078.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 AnimationFactorySpriteScaleUtil-jcell-instance BINARY-DOUBLE EXTERNAL.
01 AnimationFactorySpriteScaleUtil-jset-instance BINARY-DOUBLE EXTERNAL.
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
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION RETURNING J-RESULT.
    IF AnimationFactorySpriteScaleUtil-jset-instance = 0
        MOVE 1 TO AnimationFactorySpriteScaleUtil-jset-instance
        COMPUTE AnimationFactorySpriteScaleUtil-jcell-instance = FUNCTION AnmtnFctrySprtSclUtl-new0
    END-IF
    MOVE AnimationFactorySpriteScaleUtil-jcell-instance TO J-RESULT
    GOBACK.
END FUNCTION AnmtnFctrySprtSclUtl-stt34078.

IDENTIFICATION DIVISION.
FUNCTION-ID. AnmtnFctrySprtSclUtlS66459.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
WORKING-STORAGE SECTION.
01 AnimationFactorySpriteScaleUtil-jcell-instance BINARY-DOUBLE EXTERNAL.
LINKAGE SECTION.
01 J-VALUE BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-VALUE RETURNING J-RESULT.
    MOVE FUNCTION AnmtnFctrySprtSclUtl-stt34078 TO J-RESULT
    MOVE J-VALUE TO AnimationFactorySpriteScaleUtil-jcell-instance
    MOVE J-VALUE TO J-RESULT
    GOBACK.
END FUNCTION AnmtnFctrySprtSclUtlS66459.

IDENTIFICATION DIVISION.
FUNCTION-ID. AnmtnFctrySprtSclUtl-new0.
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
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("AnimationFactorySpriteScaleUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_imageCache")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_imageScaleUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_openGLUtil")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_j2seMath")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_openGLESImageExclusionUtil")
    COMPUTE JVALUE = FUNCTION ImageCacheFactory-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_imageCache", JVALUE)
    COMPUTE JVALUE = FUNCTION ImageScaleUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_imageScaleUtil", JVALUE)
    COMPUTE JVALUE = FUNCTION OpenGLUtil-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_openGLUtil", JVALUE)
    COMPUTE JVALUE = FUNCTION J2SEMath-getInstance0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_j2seMath", JVALUE)
    COMPUTE JVALUE = FUNCTION OpnGLESImgExclsnUtl-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_openGLESImageExclusionUtil", JVALUE)
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION AnmtnFctrySprtSclUtl-new0.

IDENTIFICATION DIVISION.
FUNCTION-ID. AnmtnFctrySprtSclUtl-gtInstnc0.
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
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-RESULT = FUNCTION AnmtnFctrySprtSclUtl-stt34078
        GOBACK
    GOBACK.
END FUNCTION AnmtnFctrySprtSclUtl-gtInstnc0.

IDENTIFICATION DIVISION.
FUNCTION-ID. AnmtnFctrySprtSclUtl-crtImg5.
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
01 J-spriteFactory BINARY-DOUBLE.
01 J-sprite BINARY-DOUBLE.
01 J-scaledImage BINARY-DOUBLE.
01 J-scaleX COMP-2.
01 J-scaleY COMP-2.
01 J-width2 BINARY-DOUBLE.
01 J-height2 BINARY-DOUBLE.
01 J-multiplesOf16Width BINARY-DOUBLE.
01 J-by16Width BINARY-DOUBLE.
01 J-multiplesOf16Height BINARY-DOUBLE.
01 J-by16Height BINARY-DOUBLE.
01 jtemp1 COMP-2.
01 jtemp2 COMP-2.
01 jtemp3 COMP-2.
01 jtemp4 COMP-2.
01 jtemp5 BINARY-DOUBLE.
01 jtemp6 BINARY-DOUBLE.
01 jtemp7 BINARY-DOUBLE.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-image BINARY-DOUBLE.
01 J-width BINARY-DOUBLE.
01 J-height BINARY-DOUBLE.
01 J-scaleWidth BINARY-DOUBLE.
01 J-scaleHeight BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-image J-width J-height J-scaleWidth J-scaleHeight RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE J-spriteFactory = FUNCTION SpriteFactory-getInstance0
        CONTINUE
        CONTINUE
        IF ((J-scaleWidth NOT = 0) AND (J-scaleHeight NOT = 0))
            COMPUTE J-scaleX = ((J-scaleWidth) / (J-width))
            COMPUTE J-scaleY = ((J-scaleHeight) / (J-height))
            IF ((((J-scaleX = 1.0) AND (J-scaleY = 1.0))) OR (((J-scaleX = 0.0) OR (J-scaleY = 0.0))))
                COMPUTE J-scaledImage = FUNCTION OpenGLUtil-addImage1(FUNCTION JR-GET(J-THIS, "f_openGLUtil"), J-image)
                COMPUTE J-sprite = FUNCTION SpriteFactory-createSprite3(J-spriteFactory, J-scaledImage, J-width, J-height)
            ELSE
                IF (FUNCTION OpnGLESImgExclsnUtl-isCst29128(FUNCTION JR-GET(J-THIS, "f_openGLESImageExclusionUtil"), J-image) = 1)
                    COMPUTE jtemp1 = ((J-scaleWidth) - 0.5)
                    COMPUTE J-width2 = FUNCTION J2SEMath-round1(FUNCTION JR-GET(J-THIS, "f_j2seMath"), jtemp1)
                    COMPUTE jtemp2 = ((J-scaleHeight) - 0.5)
                    COMPUTE J-height2 = FUNCTION J2SEMath-round1(FUNCTION JR-GET(J-THIS, "f_j2seMath"), jtemp2)
                    COMPUTE J-multiplesOf16Width = (FUNCTION MOD(FUNCTION INTEGER-PART(J-width2 / 16) + 2147483648, 4294967296) - 2147483648)
                    COMPUTE J-by16Width = (FUNCTION MOD((J-multiplesOf16Width * 16) + 2147483648, 4294967296) - 2147483648)
                    COMPUTE J-scaleX = ((J-by16Width) / J-width)
                    COMPUTE J-multiplesOf16Height = (FUNCTION MOD(FUNCTION INTEGER-PART(J-height2 / 16) + 2147483648, 4294967296) - 2147483648)
                    COMPUTE J-by16Height = (FUNCTION MOD((J-multiplesOf16Height * 16) + 2147483648, 4294967296) - 2147483648)
                    COMPUTE J-scaleY = ((J-by16Height) / J-height)
                    IF (J-scaleWidth < J-width)
                        COMPUTE J-scaleX = (J-scaleX * 2.35)
                    END-IF
                    IF (J-scaleHeight < J-height)
                        COMPUTE J-scaleY = (J-scaleY * 2.35)
                    END-IF
                END-IF
                COMPUTE jtemp3 = 1.0
                COMPUTE jtemp4 = 1.0
                COMPUTE jtemp5 = 1
                COMPUTE J-scaledImage = FUNCTION ImageScaleUtil-createImage27(FUNCTION JR-GET(J-THIS, "f_imageScaleUtil"), FUNCTION JR-GET(J-THIS, "f_imageCache"), J-image, J-scaleX, jtemp3, J-scaleY, jtemp4, jtemp5)
                COMPUTE jtemp6 = FUNCTION JR-D2I(((J-width * J-scaleX)))
                COMPUTE jtemp7 = FUNCTION JR-D2I(((J-height * J-scaleY)))
                COMPUTE J-sprite = FUNCTION SpriteFactory-createSprite3(J-spriteFactory, J-scaledImage, jtemp6, jtemp7)
            END-IF
        ELSE
            COMPUTE J-scaledImage = FUNCTION OpenGLUtil-addImage1(FUNCTION JR-GET(J-THIS, "f_openGLUtil"), J-image)
            COMPUTE J-sprite = FUNCTION SpriteFactory-createSprite3(J-spriteFactory, J-scaledImage, J-width, J-height)
        END-IF
        COMPUTE J-RESULT = J-sprite
        GOBACK
    GOBACK.
END FUNCTION AnmtnFctrySprtSclUtl-crtImg5.

