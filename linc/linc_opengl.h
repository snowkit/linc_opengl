#ifndef _LINC_OPENGL_H_
#define _LINC_OPENGL_H_

#include <hxcpp.h>

#if defined(HX_ANDROID)
#include <GLES2/gl2.h>
#include <GLES2/gl2ext.h>
#elif defined(IPHONE) || defined(__IPHONEOS__)
#include <OpenGLES/ES2/gl.h>
#include <OpenGLES/ES2/glext.h>
#else
#include "../lib/glew/include/GL/glew.h"
#endif

namespace linc {

    namespace opengl {

        namespace webgl {
            extern int create_texture();
            extern void delete_texture(int id);
            extern int create_buffer();
            extern void delete_buffer(int id);
            extern bool is_frame_buffer(int id);
            extern bool is_render_buffer(int id);
            extern int create_frame_buffer();
            extern void delete_frame_buffer(int id);
            extern int create_render_buffer();
            extern void delete_render_buffer(int id);
            extern int get_shader_parameter(int id, int param);
            extern ::String get_shader_source(int id);
            extern ::String get_shader_info_log(int id);
            extern ::String get_program_info_log(int id);
            extern int get_parameter(int param);
            extern ::String get_parameter_str(int param);
            extern Array< ::String > get_supported_extensions();
            extern void shader_source(int id, const char* source);
            extern int get_program_parameter(int id, int param);
            extern ::String get_version_string();
        }

    } //opengl

} //linc namespace

#endif