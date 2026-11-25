>>SOURCE FORMAT IS FREE
*> Generated Code Do Not Modify
*> package org.allbinary.graphics.opengles.shader
*> Java class ShaderComposite

IDENTIFICATION DIVISION.
FUNCTION-ID. ShaderComposite-new8.
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
01 J-requiresOpenGLVersion BINARY-DOUBLE.
01 J-shaderArray BINARY-DOUBLE.
01 J-compositeShaderUpdater BINARY-DOUBLE.
01 J-shaderInitializer BINARY-DOUBLE.
01 J-modelViewProjection BINARY-DOUBLE.
01 J-colorOpenGLProcessor BINARY-DOUBLE.
01 J-vertexOpenGLProcessor BINARY-DOUBLE.
01 J-disableProgramShaderOpenGLProcessor BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-requiresOpenGLVersion J-shaderArray J-compositeShaderUpdater J-shaderInitializer J-modelViewProjection J-colorOpenGLProcessor J-vertexOpenGLProcessor J-disableProgramShaderOpenGLProcessor RETURNING J-RESULT.
    COMPUTE J-THIS = FUNCTION JR-NEW-OBJECT("ShaderComposite")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_disableProgramShaderOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_requiresOpenGLVersion")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_shaderArray")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_shaderInitializer")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_compositeShaderUpdater")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_modelViewProjection")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_colorOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_vertexOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_useProgramShaderOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_shaderMatrixOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_colorEnableVertexAttribArrayOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_normalEnableVertexAttribArrayOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_vertexEnableVertexAttribArrayOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_textureEnableVertexAttribArrayOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_colorDisableVertexAttribArrayOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_normalDisableVertexAttribArrayOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_vertexDisableVertexAttribArrayOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_textureDisableVertexAttribArrayOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_uniformLightPositionOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_uniformLightColorOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_uniformCameraPositionOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_uniformTextureUnitOpenGLProcessor")
    COMPUTE JDISCARD = FUNCTION JR-FIELD(J-THIS, "f_programHandle")
    
    
    
    
    
    
    
    
    COMPUTE JVALUE = FUNCTION NllOpnGLPrcssrFctry-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_useProgramShaderOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLPrcssrFctry-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_shaderMatrixOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLPrcssrFctry-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_colorEnableVertexAttribArrayOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLPrcssrFctry-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_normalEnableVertexAttribArrayOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLPrcssrFctry-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_vertexEnableVertexAttribArrayOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLPrcssrFctry-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_textureEnableVertexAttribArrayOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLPrcssrFctry-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_colorDisableVertexAttribArrayOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLPrcssrFctry-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_normalDisableVertexAttribArrayOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLPrcssrFctry-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_vertexDisableVertexAttribArrayOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLPrcssrFctry-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_textureDisableVertexAttribArrayOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLTxtrPrcssr-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_uniformLightPositionOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLTxtrPrcssr-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_uniformLightColorOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLTxtrPrcssr-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_uniformCameraPositionOpenGLProcessor", JVALUE)
    COMPUTE JVALUE = FUNCTION NllOpnGLTxtrPrcssr-gtInstnc0
    COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_uniformTextureUnitOpenGLProcessor", JVALUE)
    
        COMPUTE JVALUE = J-requiresOpenGLVersion
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_requiresOpenGLVersion", JVALUE)
        COMPUTE JVALUE = J-shaderArray
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_shaderArray", JVALUE)
        COMPUTE JVALUE = J-shaderInitializer
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_shaderInitializer", JVALUE)
        COMPUTE JVALUE = J-compositeShaderUpdater
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_compositeShaderUpdater", JVALUE)
        COMPUTE JVALUE = J-modelViewProjection
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_modelViewProjection", JVALUE)
        COMPUTE JVALUE = J-colorOpenGLProcessor
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_colorOpenGLProcessor", JVALUE)
        COMPUTE JVALUE = J-vertexOpenGLProcessor
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_vertexOpenGLProcessor", JVALUE)
        COMPUTE JVALUE = J-disableProgramShaderOpenGLProcessor
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_disableProgramShaderOpenGLProcessor", JVALUE)
    MOVE J-THIS TO J-RESULT
    GOBACK.
END FUNCTION ShaderComposite-new8.

IDENTIFICATION DIVISION.
FUNCTION-ID. ShaderComposite-init1.
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
01 J-gl BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-gl RETURNING J-RESULT.
    MOVE 0 TO J-RESULT
        COMPUTE jtemp1 = FUNCTION StringUtil-getInstance0
        COMPUTE JVALUE = FUNCTION ShaderInitializer-init3(FUNCTION JR-GET(J-THIS, "f_shaderInitializer"), J-gl, FUNCTION JR-GET(J-THIS, "f_shaderArray"), FUNCTION StringUtil-getArrayInstance0(jtemp1))
        COMPUTE JDISCARD = FUNCTION JR-SET(J-THIS, "f_programHandle", JVALUE)
    GOBACK.
END FUNCTION ShaderComposite-init1.

IDENTIFICATION DIVISION.
PROGRAM-ID. VShaderComposite-init1.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
REPOSITORY.
COPY "jrepository.cpy".
DATA DIVISION.
LINKAGE SECTION.
01 J-THIS BINARY-DOUBLE.
01 J-gl BINARY-DOUBLE.
01 J-RESULT BINARY-DOUBLE.
PROCEDURE DIVISION USING J-THIS J-gl J-RESULT.
    COMPUTE J-RESULT = FUNCTION ShaderComposite-init1(J-THIS, J-gl)
    GOBACK.
END PROGRAM VShaderComposite-init1.

IDENTIFICATION DIVISION.
PROGRAM-ID. ShaderComposite-jsuper.
DATA DIVISION.
LINKAGE SECTION.
01 J-CLASS PIC X(60).
PROCEDURE DIVISION USING J-CLASS.
    MOVE "Object" TO J-CLASS
    GOBACK.
END PROGRAM ShaderComposite-jsuper.

