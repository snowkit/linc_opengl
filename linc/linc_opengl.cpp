

#include "./linc_opengl.h"
#include <hxcpp.h>

namespace linc {
    namespace opengl {
        namespace webgl {

            #ifdef LINC_OPENGL_GLEW
                #define HAS_EXT_framebuffer_object GLEW_EXT_framebuffer_object
            #else
                #define HAS_EXT_framebuffer_object true
            #endif

            int create_texture() {
                unsigned int id = 0;
                glGenTextures(1,&id);
                return id;
            }

            void delete_texture(int id) {
                glDeleteTextures(1, (GLuint*)&id);
            }

            int create_buffer() {
                GLuint buffers;
                glGenBuffers(1,&buffers);
                return buffers;
            }

            int get_shader_parameter(int id, int param) {
                int result = 0;
                glGetShaderiv(id, param, &result);
                return result;
            }

            ::String get_shader_source(int id) {
                int len = 0;
                glGetShaderiv(id, GL_SHADER_SOURCE_LENGTH, &len);
                if (len == 0) return null();
                char *buf = new char[len+1];
                glGetShaderSource(id, len+1, 0, buf);
                ::String result(buf);
                delete [] buf;
                return result;
            }

            ::String get_shader_info_log(int id) {
                char buf[1024] = "";
                glGetShaderInfoLog(id, 1024, 0, buf);
                return ::String(buf);
            }

            ::String get_program_info_log(int id) {
                char buf[1024] = "";
                glGetProgramInfoLog(id, 1024, 0, buf);
                return ::String(buf);
            }

            ::String get_parameter_str(int param) {
                switch(param) {
                    case GL_VENDOR:
                    case GL_VERSION:
                    case GL_RENDERER:
                        return ::String((const char *)glGetString(param));
                    break;
                }
                return ::String();
            }

            int get_parameter(int param) {
                switch(param) {
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
                return 0;
            }

            Array< ::String > get_supported_extensions() {
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
            }

            void shader_source(int id, const char* source) {
                glShaderSource(id, 1, &source, 0);
            }

            int get_program_parameter(int id, int param) {
                int result = 0;
                glGetProgramiv(id, param, &result);
                return result;
            }

            int create_frame_buffer() {
                GLuint id = 0;
                if( HAS_EXT_framebuffer_object ) {
                    glGenFramebuffers( 1, &id );
                } else {
                    printf("%s\\n", "snow / framebuffer object extension not found. / createFramebuffer");
                }
                return id;
            }

            bool is_frame_buffer(int id) {
                if (HAS_EXT_framebuffer_object) {
                    return glIsFramebuffer(id);
                } else {
                    printf("%s\\n", "snow / framebuffer object extension not found. / IsFramebuffer");
                }
                return false;
            }

            bool is_render_buffer(int id) {
                if (HAS_EXT_framebuffer_object) {
                    return glIsRenderbuffer(id);
                } else {
                    printf("%s\\n", "snow / framebuffer object extension not found. / IsRenderbuffer");
                }
                return false;
            }

            int create_render_buffer() {
                GLuint id = 0;
                if( HAS_EXT_framebuffer_object ) {
                    glGenRenderbuffers( 1, &id );
                } else {
                    printf("%s\\n", "snow / framebuffer object extension not found. / createRenderbuffer");
                }
                return id;
            }

            void delete_frame_buffer(int id) {
                if (HAS_EXT_framebuffer_object) {
                    glDeleteFramebuffers(1, (GLuint*)&id);
                } else {
                    printf("%s\\n", "snow / framebuffer object extension not found. / DeleteFramebuffers");
                }
            }

            void delete_render_buffer(int id) {
                if (HAS_EXT_framebuffer_object) {
                    glDeleteRenderbuffers(1, (GLuint*)&id);
                } else {
                    printf("%s\\n", "snow / framebuffer object extension not found. / DeleteRenderbuffers");
                }
            }

            ::String get_version_string() {
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
            }

        } // webgl namespace
    } //opengl namespace
} //linc namespace
