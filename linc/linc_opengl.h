#pragma once

#include <hxcpp.h>
#include <haxe/io/Bytes.h>

#if defined(HX_ANDROID)
    #include <GLES2/gl2.h>
    #include <GLES2/gl2ext.h>
#elif defined(IPHONE) || defined(__IPHONEOS__) || defined(APPLETVOS) || defined(APPLETVSIM)
    #include <OpenGLES/ES2/gl.h>
    #include <OpenGLES/ES2/glext.h>
#else
    #include "../lib/glew/include/GL/glew.h"
#endif

namespace linc {

    namespace opengl {

        namespace webgl {
            extern int createTexture();
            extern void deleteTexture(int id);
            extern int createBuffer();
            extern void deleteBuffer(int id);
            extern int createFramebuffer();
            extern void deleteFramebuffer(int id);
            extern int createRenderbuffer();
            extern void deleteRenderbuffer(int id);
            extern int getShaderParameter(int id, int param);
            extern Dynamic getActiveUniform(int program, int index);
            extern Dynamic getActiveAttrib(int program, int index);
            extern ::String getShaderSource(int id);
            extern ::String getShaderInfoLog(int id);
            extern ::String getProgramInfoLog(int id);
            extern Dynamic getParameter(int param);
            extern Array< ::String > getSupportedExtensions();
            extern void shaderSource(int id, const char* source);
            extern int getProgramParameter(int program, int param);
            extern int getRenderbufferParameter(int renderbuffer, int param);
            extern int getTexParameter(int target, int param);
            extern ::Array<int> getAttachedShaders(int program);
            extern ::String getVersionString();
        }

    } //opengl

} //linc namespace
