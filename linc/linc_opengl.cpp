#include <hxcpp.h>

#include "./linc_opengl.h"

namespace linc {
    namespace opengl {
        namespace webgl {

            #ifdef LINC_OPENGL_GLEW
                #define HAS_EXT_framebuffer_object GLEW_EXT_framebuffer_object
            #else
                #define HAS_EXT_framebuffer_object true
            #endif

            int createTexture() {
                unsigned int id = 0;
                glGenTextures(1,&id);
                return id;
            }

            void deleteTexture(int id) {
                glDeleteTextures(1, (GLuint*)&id);
            }

            int createBuffer() {
                GLuint id;
                glGenBuffers(1,&id);
                return id;
            }

            void deleteBuffer(int id) {
                glDeleteBuffers(1, (const GLuint *)&id);
            }

            int getShaderParameter(int id, int param) {
                int result = 0;
                glGetShaderiv(id, param, &result);
                return result;
            }

            Dynamic getActiveUniform(int program, int index) {

                char buf[1024];
                GLsizei out_len = 1024;
                GLsizei size = 0;
                GLenum  type = 0;

                glGetActiveUniform(program, index, 1024, &out_len, &size, &type, buf);

                hx::Anon result = hx::Anon_obj::Create();

                    result->Add(HX_CSTRING("size"), size);
                    result->Add(HX_CSTRING("type"), (int)type);
                    result->Add(HX_CSTRING("name"), ::String(buf));

                return result;

            } //getActiveUniform

            Dynamic getActiveAttrib(int program, int index) {

                char buf[1024];
                GLsizei out_len = 1024;
                GLsizei size = 0;
                GLenum  type = 0;

                glGetActiveAttrib(program, index, 1024, &out_len, &size, &type, buf);

                hx::Anon result = hx::Anon_obj::Create();

                    result->Add(HX_CSTRING("size"), size);
                    result->Add(HX_CSTRING("type"), (int)type);
                    result->Add(HX_CSTRING("name"), ::String(buf));

                return result;

            } //getActiveAttrib

            ::String getShaderSource(int id) {
                int len = 0;
                glGetShaderiv(id, GL_SHADER_SOURCE_LENGTH, &len);
                if (len == 0) return null();
                char *buf = new char[len+1];
                glGetShaderSource(id, len+1, 0, buf);
                ::String result(buf);
                delete [] buf;
                return result;
            }

            ::String getShaderInfoLog(int id) {
                char buf[1024] = "";
                glGetShaderInfoLog(id, 1024, 0, buf);
                return ::String(buf);
            }

            ::String getProgramInfoLog(int id) {
                char buf[1024] = "";
                glGetProgramInfoLog(id, 1024, 0, buf);
                return ::String(buf);
            }

            Dynamic getParameter(int param) {

                switch(param) {

                    case GL_VENDOR:
                    case GL_VERSION:
                    case GL_RENDERER:
                        return ::String((const char *)glGetString(param));
                    break;

                    case GL_ARRAY_BUFFER_BINDING:
                    case GL_CURRENT_PROGRAM:
                    case GL_ELEMENT_ARRAY_BUFFER_BINDING:
                    case GL_FRAMEBUFFER_BINDING:
                    case GL_RENDERBUFFER_BINDING:
                    case GL_TEXTURE_BINDING_2D:
                    case GL_TEXTURE_BINDING_CUBE_MAP:
                    case GL_DEPTH_CLEAR_VALUE:
                    case GL_LINE_WIDTH:
                    case GL_POLYGON_OFFSET_FACTOR:
                    case GL_POLYGON_OFFSET_UNITS:
                    case GL_SAMPLE_COVERAGE_VALUE:
                    case GL_BLEND:
                    case GL_DEPTH_WRITEMASK:
                    case GL_DITHER:
                    case GL_CULL_FACE:
                    case GL_POLYGON_OFFSET_FILL:
                    case GL_SAMPLE_COVERAGE_INVERT:
                    case GL_STENCIL_TEST:
                    case GL_ALPHA_BITS:
                    case GL_ACTIVE_TEXTURE:
                    case GL_BLEND_DST_ALPHA:
                    case GL_BLEND_DST_RGB:
                    case GL_BLEND_EQUATION_ALPHA:
                    case GL_BLEND_EQUATION_RGB:
                    case GL_BLEND_SRC_ALPHA:
                    case GL_BLEND_SRC_RGB:
                    case GL_BLUE_BITS:
                    case GL_CULL_FACE_MODE:
                    case GL_DEPTH_BITS:
                    case GL_DEPTH_FUNC:
                    case GL_DEPTH_TEST:
                    case GL_FRONT_FACE:
                    case GL_GENERATE_MIPMAP_HINT:
                    case GL_GREEN_BITS:
                    case GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS:
                    case GL_MAX_CUBE_MAP_TEXTURE_SIZE:
                    case GL_MAX_TEXTURE_IMAGE_UNITS:
                    case GL_MAX_TEXTURE_SIZE:
                    case GL_MAX_VERTEX_ATTRIBS:
                    case GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS:
                    case GL_NUM_COMPRESSED_TEXTURE_FORMATS:
                    case GL_PACK_ALIGNMENT:
                    case GL_RED_BITS:
                    case GL_SAMPLE_BUFFERS:
                    case GL_SAMPLES:
                    case GL_SCISSOR_TEST:
                    case GL_SHADING_LANGUAGE_VERSION:
                    case GL_STENCIL_BACK_FAIL:
                    case GL_STENCIL_BACK_FUNC:
                    case GL_STENCIL_BACK_PASS_DEPTH_FAIL:
                    case GL_STENCIL_BACK_PASS_DEPTH_PASS:
                    case GL_STENCIL_BACK_REF:
                    case GL_STENCIL_BACK_VALUE_MASK:
                    case GL_STENCIL_BACK_WRITEMASK:
                    case GL_STENCIL_BITS:
                    case GL_STENCIL_CLEAR_VALUE:
                    case GL_STENCIL_FAIL:
                    case GL_STENCIL_FUNC:
                    case GL_STENCIL_PASS_DEPTH_FAIL:
                    case GL_STENCIL_PASS_DEPTH_PASS:
                    case GL_STENCIL_REF:
                    case GL_STENCIL_VALUE_MASK:
                    case GL_STENCIL_WRITEMASK:
                    case GL_SUBPIXEL_BITS:
                    case GL_UNPACK_ALIGNMENT:
                        int val;
                        glGetIntegerv(param,&val);
                        return val;
                    break;

                }
            
                return null();
            
            } //getParameter

            Array< ::String > getSupportedExtensions() {

                Array< ::String > result = Array_obj< ::String >::__new();

                const char *ext = (const char *)glGetString(GL_EXTENSIONS);

                if (ext && *ext) {

                    while(true) {

                        const char *next = ext;
                        while(*next && *next!=' ') {
                            next++;
                        }

                        result->push( ::String(ext, next - ext) );

                        if (!*next || !next[1]) {
                            break;
                        }

                        ext = next+1;

                    } //while true
                } //if ext and *ext

                return result;
            
            } //getSupportedExtensions

            void shaderSource(int id, const char* source) {

                glShaderSource(id, 1, &source, 0);

            } //

            int getRenderbufferParameter(int renderbuffer, int param) {
            
                int result = 0;

                    glGetRenderbufferParameteriv(renderbuffer, param, &result);

                return result;

            } //

            int getTexParameter(int target, int param) {

                int result = 0;

                    glGetTexParameteriv(target, param, &result);

                return result;

            } //

            int getProgramParameter(int program, int param) {

                int result = 0;

                    glGetProgramiv(program, param, &result);

                return result;

            } //

            int createFramebuffer() {
                
                GLuint id = 0;

                    glGenFramebuffers( 1, &id );

                return id;

            } //

            int createRenderbuffer() {
                
                GLuint id = 0;
                    
                    glGenRenderbuffers( 1, &id );

                return id;
           
            } //

            void deleteFramebuffer(int id) {

                glDeleteFramebuffers(1, (GLuint*)&id);

            } //

            void deleteRenderbuffer(int id) {

                glDeleteRenderbuffers(1, (GLuint*)&id);

            } //

            ::Array<int> getAttachedShaders(int program) {

                GLuint shaders[2];
                GLsizei count;
                glGetAttachedShaders(program, 2, &count, shaders);

                Array<int> result = Array_obj<int>::__new();
                
                    result->push(shaders[0]);
                    result->push(shaders[1]);

                return result;

            } //getAttachedShaders

            ::String getVersionString() {

                const char* gl_ver = (const char*)glGetString(GL_VERSION);
                const char* gl_sl  = (const char*)glGetString(GL_SHADING_LANGUAGE_VERSION);
                const char* gl_ren = (const char*)glGetString(GL_RENDERER);
                const char* gl_ven = (const char*)glGetString(GL_VENDOR);

                ::String ver = ::String( gl_ver ? gl_ver   : "GL(null)" );
                ::String sl  = ::String( gl_sl  ? gl_sl    : "GLSL(null)" );
                ::String ren = ::String( gl_ren ? gl_ren   : "GLRenderer(null)" );
                ::String ven = ::String( gl_ven ? gl_ven   : "GLVendor(null)" );

                ::String slash(" / ");

                return slash + ver + slash + sl + slash + ren + slash + ven + slash;
            
            } //getVersionString

        } // webgl namespace
    } //opengl namespace
} //linc namespace
