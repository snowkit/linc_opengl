package opengl;

import snow.api.buffers.ArrayBufferView;
import snow.api.buffers.Float32Array;
import snow.api.buffers.Int32Array;
import opengl.GL;

typedef GLenum = Int
typedef GLuint = Int
typedef GLbitfield = Int
typedef Any = Dynamic

@:keep
@:include('linc_opengl.h')
#if !display
@:build(linc.Linc.touch())
#end
extern class WebGL {

//WebGL spec GL externs

    inline static function activeTexture(texture:GLenum):Void 
        GL.glActiveTexture(texture);

    inline static function attachShader(program:GLProgram, shader:GLShader):Void 
        GL.glAttachShader(program, shader);

    inline static function bindAttribLocation(program:GLProgram, index:GLuint, name:String):Void
        GL.glBindAttribLocation(program, index, name);

    inline static function bindBuffer(target:GLenum, buffer:GLBuffer):Void 
        GL.glBindBuffer(target, buffer);

    inline static function bindFramebuffer(target:GLenum, framebuffer:GLFramebuffer):Void 
        GL.glBindFramebuffer(target, framebuffer);

    inline static function bindRenderbuffer(target:GLenum, renderbuffer:GLRenderbuffer):Void 
        GL.glBindRenderbuffer(target, renderbuffer);

    inline static function bindTexture(target:GLenum, texture:GLTexture):Void
        GL.glBindTexture(target, texture);

    inline static function blendColor(red:Float, green:Float, blue:Float, alpha:Float):Void
        GL.glBlendColor(red, green, blue, alpha);

    inline static function blendEquation(mode:GLenum):Void
        GL.glBlendEquation(mode);
    
    inline static function blendEquationSeparate(modeRGB:GLenum, modeAlpha:GLenum):Void
        GL.glBlendEquationSeparate(modeRGB, modeAlpha);

    inline static function blendFunc(sfactor:GLenum, dfactor:GLenum):Void
        GL.glBlendFunc(sfactor, dfactor);

    inline static function blendFuncSeparate(srcRGB:GLenum, dstRGB:GLenum, srcAlpha:GLenum, dstAlpha:GLenum):Void
        GL.glBlendFuncSeparate(srcRGB, dstRGB, srcAlpha, dstAlpha);

    inline static function checkFramebufferStatus(target:GLenum):GLenum
        return GL.glCheckFramebufferStatus(target);

    inline static function clear(mask:GLbitfield):Void
        GL.glClear(mask);

    inline static function clearColor(red:Float, green:Float, blue:Float, alpha:Float):Void
        GL.glClearColor(red, green, blue, alpha);

    #if linc_opengl_GLES
        @:native('glClearDepthf')
    #else
        @:native('glClearDepth')
    #end
    static function clearDepth(depth:Float):Void;

    inline static function clearStencil(s:Int):Void
        GL.glClearStencil(s);

    inline static function colorMask(red:Bool, green:Bool, blue:Bool, alpha:Bool):Void
        GL.glColorMask(red, green, blue, alpha);

    inline static function compileShader(shader:GLShader):Void
        GL.glCompileShader(shader);

    inline static function copyTexImage2D(target:GLenum, level:Int, internalformat:GLenum, x:Int, y:Int, width:Int, height:Int, border:Int):Void
        GL.glCopyTexImage2D(target, level, internalformat, x, y, width, height, border);

    inline static function copyTexSubImage2D(target:GLenum, level:Int, xoffset:Int, yoffset:Int, x:Int, y:Int, width:Int, height:Int):Void
        GL.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);

    inline static function createBuffer():GLBuffer {
        var _id:Int = _createBuffer(); return _id;
    }
    
    inline static function createFramebuffer():GLFramebuffer {
        var _id:Int = _createFramebuffer(); return _id;
    }

    inline static function createProgram():GLProgram {
        var _id:Int = GL.glCreateProgram(); return _id;
    }
    
    inline static function createRenderbuffer():GLRenderbuffer {
        var _id:Int = _createRenderbuffer(); return _id;
    }

    inline static function createShader(type:GLenum):GLShader {
        var _id:Int = GL.glCreateShader(type); 
        return _id;
    }
    
    inline static function createTexture():GLTexture {
        var _id:Int = _createTexture(); 
        return _id;
    }

    inline static function cullFace(mode:GLenum):Void
        GL.glCullFace(mode);

    inline static function deleteBuffer(buffer:GLBuffer):Void 
        _deleteBuffer(buffer);

    inline static function deleteFramebuffer(framebuffer:GLFramebuffer):Void 
        _deleteFramebuffer(framebuffer);

    inline static function deleteProgram(program:GLProgram):Void 
        GL.glDeleteProgram(program);

    inline static function deleteRenderbuffer(renderbuffer:GLRenderbuffer):Void 
        _deleteRenderbuffer(renderbuffer);

    inline static function deleteShader(shader:GLShader):Void
        GL.glDeleteShader(shader);
    
    inline static function deleteTexture(texture:GLTexture):Void 
        _deleteTexture(texture);

    inline static function depthFunc(func:GLenum):Void
        GL.glDepthFunc(func);

    inline static function depthMask(flag:Bool):Void
        GL.glDepthMask(flag);

    inline static function depthRange(zNear:Float, zFar:Float):Void
        GL.glDepthRange(zNear, zFar);

    inline static function detachShader(program:GLProgram, shader:GLShader):Void
        GL.glDetachShader(program, shader);

    inline static function disable(cap:GLenum):Void
        GL.glDisable(cap);

    inline static function disableVertexAttribArray(index:GLuint):Void
        GL.glDisableVertexAttribArray(index);

    inline static function drawArrays(mode:GLenum, first:Int, count:Int):Void
        GL.glDrawArrays(mode, first, count);

    inline static function drawElements(mode:GLenum, count:Int, type:GLenum, offset:Int):Void {
        force_include;
        untyped __cpp__('glDrawElements({0}, {1}, {2}, (void*)(intptr_t){3})', mode, count, type, offset);
    }

    inline static function enable(cap:GLenum):Void
        GL.glEnable(cap);

    inline static function enableVertexAttribArray(index:GLuint):Void
        GL.glEnableVertexAttribArray(index);

    inline static function finish():Void
        GL.glFinish();

    inline static function flush():Void
        GL.glFlush();

    inline static function framebufferRenderbuffer(target:GLenum, attachment:GLenum, renderbuffertarget:GLenum, renderbuffer:GLRenderbuffer):Void
        GL.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer);

    inline static function framebufferTexture2D(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLTexture, level:Int):Void
        GL.glFramebufferTexture2D(target, attachment, textarget, texture, level);

    inline static function frontFace(mode:GLenum):Void
        GL.glFrontFace(mode);

    inline static function generateMipmap(target:GLenum):Void
        GL.glGenerateMipmap(target);

    @:native('linc::opengl::webgl::getActiveAttrib')
    private static function _getActiveAttrib(program:Int, index:GLuint):GLActiveInfo;
    static inline function getActiveAttrib(program:GLProgram, index:GLuint):GLActiveInfo {
        return _getActiveAttrib(program, index);
    }

    @:native('linc::opengl::webgl::getActiveUniform')
    private static function _getActiveUniform(program:Int, index:GLuint):GLActiveInfo;
    static inline function getActiveUniform(program:GLProgram, index:GLuint):GLActiveInfo {
        return _getActiveUniform(program, index);
    }

    @:native('linc::opengl::webgl::getAttachedShaders')
    static function getAttachedShaders(program:GLProgram):Array<GLShader>;

    inline static function getAttribLocation(program:GLProgram, name:String):Int
        return GL.glGetAttribLocation(program, name);

    // @:native('glGetBufferParameter') //:todo: Requires wrapping
    // static function getBufferParameter(target:GLenum, pname:GLenum):Any;

    // @:native('glGetContextAttributes') //:todo: Requires wrapping but that information isn't 1:1 on desktop
    // static function getContextAttributes() : GLContextAttributes;

    inline static function getError():GLenum
        return GL.glGetError();

    // @:native('glGetExtension') 
    //:todo: returns `object?` with defines and functions attached,
    //       however, there are no real extensions that make sense from WebGL on desktop without wrapping them completely
    //       which is plausible, but for immediate term, just making the function unavailable is best
    // static function getExtension(name:String):Dynamic;
    // inline static function getExtension(name:String):Dynamic
        // throw 'getExtension is not currently available on the native bindings';

    // @:native('glGetFramebufferAttachmentParameter') //:todo: Requires wrapping
    // static function getFramebufferAttachmentParameter(target:GLenum, attachment:GLenum, pname:GLenum):Any;

    @:native('linc::opengl::webgl::getParameter')
    static function getParameter(pname:GLenum):Any;

    inline static function getProgramInfoLog(program:GLProgram):String 
        return _getProgramInfoLog(program);

    inline static function getProgramParameter(program:GLProgram, pname:GLenum):Int 
        return _getProgramParameter(program, pname);

    @:native('linc::opengl::webgl::getRenderbufferParameter')
    static function getRenderbufferParameter(target:GLenum, pname:GLenum):Int;

    inline static function getShaderInfoLog(shader:GLShader):String 
        return _getShaderInfoLog(shader);

    inline static function getShaderParameter(shader:GLShader, pname:GLenum):Int 
        return _getShaderParameter(shader, pname);

    // @:native('glGetShaderPrecisionFormat') //:todo: Requires wrapping if possible
    // static function getShaderPrecisionFormat(shadertype:Int, precisiontype:Int) : GLShaderPrecisionFormat;

    inline static function getShaderSource(shader:GLShader):String 
        return _getShaderSource(shader);

    @:native('linc::opengl::webgl::getSupportedExtensions')
    static function getSupportedExtensions():Array<String>;

    @:native('linc::opengl::webgl::getTexParameter')
    static function getTexParameter(target:GLenum, pname:GLenum):Int;

    // @:native('glGetUniform') //:todo: Requires wrapping
    // static function getUniform(program:Int, location:GLUniformLocation):Any;

    inline static function getUniformLocation(program:GLProgram, name:String):GLUniformLocation
        return GL.glGetUniformLocation(program, name);

    // @:native('glGetVertexAttrib')  //:todo: Requires wrapping
    // static function getVertexAttrib(index:GLuint, pname:GLenum):Any;

    // @:native('glGetVertexAttribOffset') //:todo: GLES requires wrapping to GetVertexAttribPointerv
    // static function getVertexAttribOffset(index:GLuint, pname:GLenum):Int;

    inline static function hint(target:GLenum, mode:GLenum):Void
        return GL.glHint(target, mode);

    inline static function isBuffer(buffer:GLBuffer):Bool
        return GL.glIsBuffer(buffer);

    inline static function isEnabled(cap:GLenum):Bool
        return GL.glIsEnabled(cap);

    inline static function isFramebuffer(framebuffer:GLFramebuffer):Bool
        return GL.glIsFramebuffer(framebuffer);

    inline static function isProgram(program:GLProgram):Bool
        return GL.glIsProgram(program);

    inline static function isRenderbuffer(renderbuffer:GLRenderbuffer):Bool
        return GL.glIsRenderbuffer(renderbuffer);

    inline static function isShader(shader:GLShader):Bool
        return GL.glIsShader(shader);

    inline static function isTexture(texture:GLTexture):Bool
        return GL.glIsTexture(texture);

    inline static function lineWidth(width:Float):Void
        GL.glLineWidth(width);

    inline static function linkProgram(program:GLProgram):Void
        GL.glLinkProgram(program);

    inline static function pixelStorei(pname:GLenum, param:Int):Void
        GL.glPixelStorei(pname, param);

    inline static function polygonOffset(factor:Float, units:Float):Void
        GL.glPolygonOffset(factor, units);

    inline static function renderbufferStorage(target:GLenum, internalformat:GLenum, width:Int, height:Int):Void
        GL.glRenderbufferStorage(target, internalformat, width, height);

    inline static function sampleCoverage(value:Float, invert:Bool):Void
        GL.glSampleCoverage(value, invert);

    inline static function scissor(x:Int, y:Int, width:Int, height:Int):Void
        GL.glScissor(x, y, width, height);

    inline static function shaderSource(shader:GLShader, source:String):Void 
        _shaderSource(shader, source);

    inline static function stencilFunc(func:GLenum, ref:Int, mask:GLuint):Void
        GL.glStencilFunc(func, ref, mask);

    // @:native('glStencilFuncSeparate') :todo: Requires wrapping, as WebGL has different face semantics https://www.khronos.org/registry/webgl/specs/latest/1.0/#STENCIL_SEPARATE_LIMIT
    // static function stencilFuncSeparate(face:GLenum, func:GLenum, ref:Int, mask:GLuint):Void;

    inline static function stencilMask(mask:GLuint):Void
        GL.glStencilMask(mask);

    inline static function stencilMaskSeparate(face:GLenum, mask:GLuint):Void
        GL.glStencilMaskSeparate(face, mask);

    inline static function stencilOp(fail:GLenum, zfail:GLenum, zpass:GLenum):Void
        GL.glStencilOp(fail, zfail, zpass);

    inline static function stencilOpSeparate(face:GLenum, fail:GLenum, zfail:GLenum, zpass:GLenum):Void
        GL.glStencilOpSeparate(face, fail, zfail, zpass);

    inline static function texParameterf(target:GLenum, pname:GLenum, param:Float):Void
        GL.glTexParameterf(target, pname, param);

    inline static function texParameteri(target:GLenum, pname:GLenum, param:Int):Void
        GL.glTexParameteri(target, pname, param);

    inline static function uniform1f(location:GLUniformLocation, x:Float):Void
        GL.glUniform1f(location, x);

    inline static function uniform1i(location:GLUniformLocation, x:Int):Void
        GL.glUniform1i(location, x);

    inline static function uniform2f(location:GLUniformLocation, x:Float, y:Float):Void
        GL.glUniform2f(location, x, y);

    inline static function uniform2i(location:GLUniformLocation, x:Int, y:Int):Void
        GL.glUniform2i(location, x, y);

    inline static function uniform3f(location:GLUniformLocation, x:Float, y:Float, z:Float):Void
        GL.glUniform3f(location, x, y, z);

    inline static function uniform3i(location:GLUniformLocation, x:Int, y:Int, z:Int):Void
        GL.glUniform3i(location, x, y, z);

    inline static function uniform4f(location:GLUniformLocation, x:Float, y:Float, z:Float, w:Float):Void
        GL.glUniform4f(location, x, y, z, w);

    inline static function uniform4i(location:GLUniformLocation, x:Int, y:Int, z:Int, w:Int):Void
        GL.glUniform4i(location, x, y, z, w);

    inline static function useProgram(program:GLProgram):Void
        GL.glUseProgram(program);

    inline static function validateProgram(program:GLProgram):Void
        GL.glValidateProgram(program);

    inline static function vertexAttrib1f(indx:GLuint, x:Float):Void
        GL.glVertexAttrib1f(indx, x);

    inline static function vertexAttrib2f(indx:GLuint, x:Float, y:Float):Void
        GL.glVertexAttrib2f(indx, x, y);

    inline static function vertexAttrib3f(indx:GLuint, x:Float, y:Float, z:Float):Void
        GL.glVertexAttrib3f(indx, x, y, z);

    inline static function vertexAttrib4f(indx:GLuint, x:Float, y:Float, z:Float, w:Float):Void
        GL.glVertexAttrib4f(indx, x, y, z, w);

    inline static function viewport(x:Int, y:Int, width:Int, height:Int):Void
        GL.glViewport(x, y, width, height);

    static inline function bufferData(target:GLenum, data:ArrayBufferView, usage:GLenum):Void {
        force_include;
        untyped __cpp__('glBufferData({0}, {1}->byteLength, (GLvoid*)(&{1}->buffer[0] + {1}->byteOffset), {2})', target, data, usage);
    }

    static inline function bufferSubData(target:GLenum, offset:Int, data:ArrayBufferView):Void {
        force_include;
        untyped __cpp__('glBufferSubData({0}, {1}, {2}->byteLength, (GLvoid*)(&{2}->buffer[0] + {2}->byteOffset))', target, offset, data);
    }

    static inline function compressedTexImage2D(target:GLenum, level:Int, internalformat:GLenum, width:Int, height:Int, border:Int, data:ArrayBufferView):Void {
        force_include;
        untyped __cpp__('glCompressedTexImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}->byteLength, (GLvoid*)(&{6}->buffer[0] + {6}->byteOffset))',target,level,internalformat, width, height, border, data);
    }

    static inline function compressedTexSubImage2D(target:GLenum, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:GLenum, data:ArrayBufferView):Void {
        force_include;
        untyped __cpp__('glCompressedTexSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}->byteLength, (GLvoid*)(&{7}->buffer[0] + {7}->byteOffset))',target,level,xoffset,yoffset,width,height,format,data);
    }

    static inline function readPixels(x:Int, y:Int, width:Int, height:Int, format:GLenum, type:GLenum, data:ArrayBufferView):Void {
        force_include;
        untyped __cpp__('glReadPixels({0}, {1}, {2}, {3}, {4}, {5}, (GLvoid*)(&{6}->buffer[0] + {6}->byteOffset))', x, y, width, height, format, type, data);
    }

    static inline function texImage2D(target:GLenum, level:Int, internalformat:GLenum, width:Int, height:Int, border:Int, format:GLenum, type:GLenum, data:ArrayBufferView):Void {
        force_include;
        untyped __cpp__('GLvoid* _data = (({0} != null()) ? (GLvoid*)(&{0}->buffer[0] + {0}->byteOffset) : NULL)',data);
        untyped __cpp__('glTexImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, _data)',target,level,internalformat,width,height,border,format,type);
    }

    static inline function texSubImage2D(target:GLenum, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:GLenum, type:GLenum, data:ArrayBufferView):Void {
        force_include;
        untyped __cpp__('glTexSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (GLvoid*)(&{8}->buffer[0] + {8}->byteOffset))',target,level,xoffset,yoffset,width,height,format,type,data);
    }

    static inline function uniform1fv(location:GLUniformLocation, data:Float32Array):Void {
        force_include;
        untyped __cpp__('glUniform1fv({0}, {1}->byteLength, (GLfloat*)(&{1}->buffer[0] + {1}->byteOffset))', location.id, data);
    }

    static inline function uniform1iv(location:GLUniformLocation, data:Int32Array):Void {
        force_include;
        untyped __cpp__('glUniform1iv({0}, {1}->byteLength, (GLint*)(&{1}->buffer[0] + {1}->byteOffset))', location.id, data);
    }

    static inline function uniform2fv(location:GLUniformLocation, data:Float32Array):Void {
        force_include;
        untyped __cpp__('glUniform2fv({0}, {1}->byteLength>>1, (GLfloat*)(&{1}->buffer[0] + {1}->byteOffset))', location.id, data);
    }

    static inline function uniform2iv(location:GLUniformLocation, data:Int32Array):Void {
        force_include;
        untyped __cpp__('glUniform2iv({0}, {1}->byteLength>>1, (GLint*)(&{1}->buffer[0] + {1}->byteOffset))', location.id, data);
    }

    static inline function uniform3fv(location:GLUniformLocation, data:Float32Array):Void {
        force_include;
        untyped __cpp__('glUniform3fv({0}, {1}->byteLength/3, (GLfloat*)(&{1}->buffer[0] + {1}->byteOffset))', location.id, data);
    }

    static inline function uniform3iv(location:GLUniformLocation, data:Int32Array):Void {
        force_include;
        untyped __cpp__('glUniform3iv({0}, {1}->byteLength/3, (GLint*)(&{1}->buffer[0] + {1}->byteOffset))', location.id, data);
    }

    static inline function uniform4fv(location:GLUniformLocation, data:Float32Array):Void {
        force_include;
        untyped __cpp__('glUniform4fv({0}, {1}->byteLength>>2, (GLfloat*)(&{1}->buffer[0] + {1}->byteOffset))', location.id, data);
    }

    static inline function uniform4iv(location:GLUniformLocation, data:Int32Array):Void {
        force_include;
        untyped __cpp__('glUniform4iv({0}, {1}->byteLength>>2, (GLint*)(&{1}->buffer[0] + {1}->byteOffset))', location.id, data);
    }

    static inline function uniformMatrix2fv(location:GLUniformLocation, transpose:Bool, data:Float32Array):Void {
        force_include;
        untyped __cpp__('glUniformMatrix2fv({0}, {1}->length>>2, {2}, (GLfloat*)(&{1}->buffer[0] + {1}->byteOffset))', location.id, data, transpose);
    }

    static inline function uniformMatrix3fv(location:GLUniformLocation, transpose:Bool, data:Float32Array):Void {
        force_include;
        untyped __cpp__('glUniformMatrix3fv({0}, {1}->length/9, {2}, (GLfloat*)(&{1}->buffer[0] + {1}->byteOffset))', location.id, data, transpose);
    }

    static inline function uniformMatrix4fv(location:GLUniformLocation, transpose:Bool, data:Float32Array):Void {
        force_include;
        untyped __cpp__('glUniformMatrix4fv({0}, {1}->length>>4, {2}, (GLfloat*)(&{1}->buffer[0] + {1}->byteOffset))', location.id, data, transpose);
    }

    static inline function vertexAttrib1fv(indx:GLuint, data:Float32Array):Void {
        force_include;
        untyped __cpp__('glVertexAttrib1fv({0}, (GLfloat*)(&{1}->buffer[0] + {1}->byteOffset))', indx, data);
    }

    static inline function vertexAttrib2fv(indx:GLuint, data:Float32Array):Void {
        force_include;
        untyped __cpp__('glVertexAttrib2fv({0}, (GLfloat*)(&{1}->buffer[0] + {1}->byteOffset))', indx, data);
    }

    static inline function vertexAttrib3fv(indx:GLuint, data:Float32Array):Void {
        force_include;
        untyped __cpp__('glVertexAttrib3fv({0}, (GLfloat*)(&{1}->buffer[0] + {1}->byteOffset))', indx, data);
    }

    static inline function vertexAttrib4fv(indx:GLuint, data:Float32Array):Void {
        force_include;
        untyped __cpp__('glVertexAttrib4fv({0}, (GLfloat*)(&{1}->buffer[0] + {1}->byteOffset))', indx, data);
    }

    static inline function vertexAttribPointer(indx:GLuint, size:Int, type:GLenum, normalized:Bool, stride:Int, offset:Int):Void {
        force_include;
        untyped __cpp__('glVertexAttribPointer({0}, {1}, {2}, {3}, {4}, (void *)(intptr_t){5})', indx, size, type, normalized, stride, offset);
    }


//Unofficial helpers

    @:native('linc::opengl::webgl::getVersionString')
    static function versionString():String;

        //For some reason, hxcpp is ignoring the @:include meta because there are no expressions (or inlined)
        //except for the untyped __cpp__, which is discards. This means if you use just one of those on their own,
        //say glReadPixels, it fails to add the @:include so you get unknown references to GL calls/types.
        //This adds a NOP statement to force it to include the header file until that is fixed or
        //until these externs are wrapped (the main issue with putting them in the extern cpp file is
        //included types (i.e snow.api.buffers.ArrayBufferView) being in there.
    @:native(';')
    static var force_include;

//Defines




    /* ClearBufferMask */
    static inline var DEPTH_BUFFER_BIT                   = 0x00000100;
    static inline var STENCIL_BUFFER_BIT                 = 0x00000400;
    static inline var COLOR_BUFFER_BIT                   = 0x00004000;

    /* BeginMode */
    static inline var POINTS                             = 0x0000;
    static inline var LINES                              = 0x0001;
    static inline var LINE_LOOP                          = 0x0002;
    static inline var LINE_STRIP                         = 0x0003;
    static inline var TRIANGLES                          = 0x0004;
    static inline var TRIANGLE_STRIP                     = 0x0005;
    static inline var TRIANGLE_FAN                       = 0x0006;

    /* AlphaFunction(not supported in ES20) */
    /*      NEVER */
    /*      LESS */
    /*      EQUAL */
    /*      LEQUAL */
    /*      GREATER */
    /*      NOTEQUAL */
    /*      GEQUAL */
    /*      ALWAYS */
    /* BlendingFactorDest */
    static inline var ZERO                               = 0;
    static inline var ONE                                = 1;
    static inline var SRC_COLOR                          = 0x0300;
    static inline var ONE_MINUS_SRC_COLOR                = 0x0301;
    static inline var SRC_ALPHA                          = 0x0302;
    static inline var ONE_MINUS_SRC_ALPHA                = 0x0303;
    static inline var DST_ALPHA                          = 0x0304;
    static inline var ONE_MINUS_DST_ALPHA                = 0x0305;

    /* BlendingFactorSrc */
    /*      ZERO */
    /*      ONE */
    static inline var DST_COLOR                          = 0x0306;
    static inline var ONE_MINUS_DST_COLOR                = 0x0307;
    static inline var SRC_ALPHA_SATURATE                 = 0x0308;
    /*      SRC_ALPHA */
    /*      ONE_MINUS_SRC_ALPHA */
    /*      DST_ALPHA */
    /*      ONE_MINUS_DST_ALPHA */
    /* BlendEquationSeparate */
    static inline var FUNC_ADD                           = 0x8006;
    static inline var BLEND_EQUATION                     = 0x8009;
    static inline var BLEND_EQUATION_RGB                 = 0x8009;  /* same as BLEND_EQUATION */
    static inline var BLEND_EQUATION_ALPHA               = 0x883D;

    /* BlendSubtract */
    static inline var FUNC_SUBTRACT                      = 0x800A;
    static inline var FUNC_REVERSE_SUBTRACT              = 0x800B;

    /* Separate Blend Functions */
    static inline var BLEND_DST_RGB                      = 0x80C8;
    static inline var BLEND_SRC_RGB                      = 0x80C9;
    static inline var BLEND_DST_ALPHA                    = 0x80CA;
    static inline var BLEND_SRC_ALPHA                    = 0x80CB;
    static inline var CONSTANT_COLOR                     = 0x8001;
    static inline var ONE_MINUS_CONSTANT_COLOR           = 0x8002;
    static inline var CONSTANT_ALPHA                     = 0x8003;
    static inline var ONE_MINUS_CONSTANT_ALPHA           = 0x8004;
    static inline var BLEND_COLOR                        = 0x8005;

    /* GLBuffer Objects */
    static inline var ARRAY_BUFFER                       = 0x8892;
    static inline var ELEMENT_ARRAY_BUFFER               = 0x8893;
    static inline var ARRAY_BUFFER_BINDING               = 0x8894;
    static inline var ELEMENT_ARRAY_BUFFER_BINDING       = 0x8895;

    static inline var STREAM_DRAW                        = 0x88E0;
    static inline var STATIC_DRAW                        = 0x88E4;
    static inline var DYNAMIC_DRAW                       = 0x88E8;

    static inline var BUFFER_SIZE                        = 0x8764;
    static inline var BUFFER_USAGE                       = 0x8765;

    static inline var CURRENT_VERTEX_ATTRIB              = 0x8626;

    /* CullFaceMode */
    static inline var FRONT                              = 0x0404;
    static inline var BACK                               = 0x0405;
    static inline var FRONT_AND_BACK                     = 0x0408;

    /* DepthFunction */
    /*      NEVER */
    /*      LESS */
    /*      EQUAL */
    /*      LEQUAL */
    /*      GREATER */
    /*      NOTEQUAL */
    /*      GEQUAL */
    /*      ALWAYS */
    /* EnableCap */
    /* TEXTURE_2D */
    static inline var CULL_FACE                          = 0x0B44;
    static inline var BLEND                              = 0x0BE2;
    static inline var DITHER                             = 0x0BD0;
    static inline var STENCIL_TEST                       = 0x0B90;
    static inline var DEPTH_TEST                         = 0x0B71;
    static inline var SCISSOR_TEST                       = 0x0C11;
    static inline var POLYGON_OFFSET_FILL                = 0x8037;
    static inline var SAMPLE_ALPHA_TO_COVERAGE           = 0x809E;
    static inline var SAMPLE_COVERAGE                    = 0x80A0;

    /* ErrorCode */
    static inline var NO_ERROR                           = 0;
    static inline var INVALID_ENUM                       = 0x0500;
    static inline var INVALID_VALUE                      = 0x0501;
    static inline var INVALID_OPERATION                  = 0x0502;
    static inline var OUT_OF_MEMORY                      = 0x0505;

    /* FrontFaceDirection */
    static inline var CW                                 = 0x0900;
    static inline var CCW                                = 0x0901;

    /* GetPName */
    static inline var LINE_WIDTH                         = 0x0B21;
    static inline var ALIASED_POINT_SIZE_RANGE           = 0x846D;
    static inline var ALIASED_LINE_WIDTH_RANGE           = 0x846E;
    static inline var CULL_FACE_MODE                     = 0x0B45;
    static inline var FRONT_FACE                         = 0x0B46;
    static inline var DEPTH_RANGE                        = 0x0B70;
    static inline var DEPTH_WRITEMASK                    = 0x0B72;
    static inline var DEPTH_CLEAR_VALUE                  = 0x0B73;
    static inline var DEPTH_FUNC                         = 0x0B74;
    static inline var STENCIL_CLEAR_VALUE                = 0x0B91;
    static inline var STENCIL_FUNC                       = 0x0B92;
    static inline var STENCIL_FAIL                       = 0x0B94;
    static inline var STENCIL_PASS_DEPTH_FAIL            = 0x0B95;
    static inline var STENCIL_PASS_DEPTH_PASS            = 0x0B96;
    static inline var STENCIL_REF                        = 0x0B97;
    static inline var STENCIL_VALUE_MASK                 = 0x0B93;
    static inline var STENCIL_WRITEMASK                  = 0x0B98;
    static inline var STENCIL_BACK_FUNC                  = 0x8800;
    static inline var STENCIL_BACK_FAIL                  = 0x8801;
    static inline var STENCIL_BACK_PASS_DEPTH_FAIL       = 0x8802;
    static inline var STENCIL_BACK_PASS_DEPTH_PASS       = 0x8803;
    static inline var STENCIL_BACK_REF                   = 0x8CA3;
    static inline var STENCIL_BACK_VALUE_MASK            = 0x8CA4;
    static inline var STENCIL_BACK_WRITEMASK             = 0x8CA5;
    static inline var VIEWPORT                           = 0x0BA2;
    static inline var SCISSOR_BOX                        = 0x0C10;
    /*      SCISSOR_TEST */
    static inline var COLOR_CLEAR_VALUE                  = 0x0C22;
    static inline var COLOR_WRITEMASK                    = 0x0C23;
    static inline var UNPACK_ALIGNMENT                   = 0x0CF5;
    static inline var PACK_ALIGNMENT                     = 0x0D05;
    static inline var MAX_TEXTURE_SIZE                   = 0x0D33;
    static inline var MAX_VIEWPORT_DIMS                  = 0x0D3A;
    static inline var SUBPIXEL_BITS                      = 0x0D50;
    static inline var RED_BITS                           = 0x0D52;
    static inline var GREEN_BITS                         = 0x0D53;
    static inline var BLUE_BITS                          = 0x0D54;
    static inline var ALPHA_BITS                         = 0x0D55;
    static inline var DEPTH_BITS                         = 0x0D56;
    static inline var STENCIL_BITS                       = 0x0D57;
    static inline var POLYGON_OFFSET_UNITS               = 0x2A00;
    /*      POLYGON_OFFSET_FILL */
    static inline var POLYGON_OFFSET_FACTOR              = 0x8038;
    static inline var TEXTURE_BINDING_2D                 = 0x8069;
    static inline var SAMPLE_BUFFERS                     = 0x80A8;
    static inline var SAMPLES                            = 0x80A9;
    static inline var SAMPLE_COVERAGE_VALUE              = 0x80AA;
    static inline var SAMPLE_COVERAGE_INVERT             = 0x80AB;

    /* GetTextureParameter */
    /*      TEXTURE_MAG_FILTER */
    /*      TEXTURE_MIN_FILTER */
    /*      TEXTURE_WRAP_S */
    /*      TEXTURE_WRAP_T */
    static inline var COMPRESSED_TEXTURE_FORMATS         = 0x86A3;

    /* HintMode */
    static inline var DONT_CARE                          = 0x1100;
    static inline var FASTEST                            = 0x1101;
    static inline var NICEST                             = 0x1102;

    /* HintTarget */
    static inline var GENERATE_MIPMAP_HINT               = 0x8192;

    /* DataType */
    static inline var BYTE                               = 0x1400;
    static inline var UNSIGNED_BYTE                      = 0x1401;
    static inline var SHORT                              = 0x1402;
    static inline var UNSIGNED_SHORT                     = 0x1403;
    static inline var INT                                = 0x1404;
    static inline var UNSIGNED_INT                       = 0x1405;
    static inline var FLOAT                              = 0x1406;

    /* PixelFormat */
    static inline var DEPTH_COMPONENT                    = 0x1902;
    static inline var ALPHA                              = 0x1906;
    static inline var RGB                                = 0x1907;
    static inline var RGBA                               = 0x1908;
    static inline var LUMINANCE                          = 0x1909;
    static inline var LUMINANCE_ALPHA                    = 0x190A;

    /* PixelType */
    /*      UNSIGNED_BYTE */
    static inline var UNSIGNED_SHORT_4_4_4_4             = 0x8033;
    static inline var UNSIGNED_SHORT_5_5_5_1             = 0x8034;
    static inline var UNSIGNED_SHORT_5_6_5               = 0x8363;

    /* Shaders */
    static inline var FRAGMENT_SHADER                    = 0x8B30;
    static inline var VERTEX_SHADER                      = 0x8B31;
    static inline var MAX_VERTEX_ATTRIBS                 = 0x8869;
    static inline var MAX_VERTEX_UNIFORM_VECTORS         = 0x8DFB;
    static inline var MAX_VARYING_VECTORS                = 0x8DFC;
    static inline var MAX_COMBINED_TEXTURE_IMAGE_UNITS   = 0x8B4D;
    static inline var MAX_VERTEX_TEXTURE_IMAGE_UNITS     = 0x8B4C;
    static inline var MAX_TEXTURE_IMAGE_UNITS            = 0x8872;
    static inline var MAX_FRAGMENT_UNIFORM_VECTORS       = 0x8DFD;
    static inline var SHADER_TYPE                        = 0x8B4F;
    static inline var DELETE_STATUS                      = 0x8B80;
    static inline var LINK_STATUS                        = 0x8B82;
    static inline var VALIDATE_STATUS                    = 0x8B83;
    static inline var ATTACHED_SHADERS                   = 0x8B85;
    static inline var ACTIVE_UNIFORMS                    = 0x8B86;
    static inline var ACTIVE_ATTRIBUTES                  = 0x8B89;
    static inline var SHADING_LANGUAGE_VERSION           = 0x8B8C;
    static inline var CURRENT_PROGRAM                    = 0x8B8D;

    /* StencilFunction */
    static inline var NEVER                              = 0x0200;
    static inline var LESS                               = 0x0201;
    static inline var EQUAL                              = 0x0202;
    static inline var LEQUAL                             = 0x0203;
    static inline var GREATER                            = 0x0204;
    static inline var NOTEQUAL                           = 0x0205;
    static inline var GEQUAL                             = 0x0206;
    static inline var ALWAYS                             = 0x0207;

    /* StencilOp */
    /*      ZERO */
    static inline var KEEP                               = 0x1E00;
    static inline var REPLACE                            = 0x1E01;
    static inline var INCR                               = 0x1E02;
    static inline var DECR                               = 0x1E03;
    static inline var INVERT                             = 0x150A;
    static inline var INCR_WRAP                          = 0x8507;
    static inline var DECR_WRAP                          = 0x8508;

    /* StringName */
    static inline var VENDOR                             = 0x1F00;
    static inline var RENDERER                           = 0x1F01;
    static inline var VERSION                            = 0x1F02;

    /* TextureMagFilter */
    static inline var NEAREST                            = 0x2600;
    static inline var LINEAR                             = 0x2601;

    /* TextureMinFilter */
    /*      NEAREST */
    /*      LINEAR */
    static inline var NEAREST_MIPMAP_NEAREST             = 0x2700;
    static inline var LINEAR_MIPMAP_NEAREST              = 0x2701;
    static inline var NEAREST_MIPMAP_LINEAR              = 0x2702;
    static inline var LINEAR_MIPMAP_LINEAR               = 0x2703;

    /* TextureParameterName */
    static inline var TEXTURE_MAG_FILTER                 = 0x2800;
    static inline var TEXTURE_MIN_FILTER                 = 0x2801;
    static inline var TEXTURE_WRAP_S                     = 0x2802;
    static inline var TEXTURE_WRAP_T                     = 0x2803;

    /* TextureTarget */
    static inline var TEXTURE_2D                         = 0x0DE1;
    static inline var TEXTURE                            = 0x1702;

    static inline var TEXTURE_CUBE_MAP                   = 0x8513;
    static inline var TEXTURE_BINDING_CUBE_MAP           = 0x8514;
    static inline var TEXTURE_CUBE_MAP_POSITIVE_X        = 0x8515;
    static inline var TEXTURE_CUBE_MAP_NEGATIVE_X        = 0x8516;
    static inline var TEXTURE_CUBE_MAP_POSITIVE_Y        = 0x8517;
    static inline var TEXTURE_CUBE_MAP_NEGATIVE_Y        = 0x8518;
    static inline var TEXTURE_CUBE_MAP_POSITIVE_Z        = 0x8519;
    static inline var TEXTURE_CUBE_MAP_NEGATIVE_Z        = 0x851A;
    static inline var MAX_CUBE_MAP_TEXTURE_SIZE          = 0x851C;

    /* TextureUnit */
    static inline var TEXTURE0                           = 0x84C0;
    static inline var TEXTURE1                           = 0x84C1;
    static inline var TEXTURE2                           = 0x84C2;
    static inline var TEXTURE3                           = 0x84C3;
    static inline var TEXTURE4                           = 0x84C4;
    static inline var TEXTURE5                           = 0x84C5;
    static inline var TEXTURE6                           = 0x84C6;
    static inline var TEXTURE7                           = 0x84C7;
    static inline var TEXTURE8                           = 0x84C8;
    static inline var TEXTURE9                           = 0x84C9;
    static inline var TEXTURE10                          = 0x84CA;
    static inline var TEXTURE11                          = 0x84CB;
    static inline var TEXTURE12                          = 0x84CC;
    static inline var TEXTURE13                          = 0x84CD;
    static inline var TEXTURE14                          = 0x84CE;
    static inline var TEXTURE15                          = 0x84CF;
    static inline var TEXTURE16                          = 0x84D0;
    static inline var TEXTURE17                          = 0x84D1;
    static inline var TEXTURE18                          = 0x84D2;
    static inline var TEXTURE19                          = 0x84D3;
    static inline var TEXTURE20                          = 0x84D4;
    static inline var TEXTURE21                          = 0x84D5;
    static inline var TEXTURE22                          = 0x84D6;
    static inline var TEXTURE23                          = 0x84D7;
    static inline var TEXTURE24                          = 0x84D8;
    static inline var TEXTURE25                          = 0x84D9;
    static inline var TEXTURE26                          = 0x84DA;
    static inline var TEXTURE27                          = 0x84DB;
    static inline var TEXTURE28                          = 0x84DC;
    static inline var TEXTURE29                          = 0x84DD;
    static inline var TEXTURE30                          = 0x84DE;
    static inline var TEXTURE31                          = 0x84DF;
    static inline var ACTIVE_TEXTURE                     = 0x84E0;

    /* TextureWrapMode */
    static inline var REPEAT                             = 0x2901;
    static inline var CLAMP_TO_EDGE                      = 0x812F;
    static inline var MIRRORED_REPEAT                    = 0x8370;

    /* Uniform Types */
    static inline var FLOAT_VEC2                         = 0x8B50;
    static inline var FLOAT_VEC3                         = 0x8B51;
    static inline var FLOAT_VEC4                         = 0x8B52;
    static inline var INT_VEC2                           = 0x8B53;
    static inline var INT_VEC3                           = 0x8B54;
    static inline var INT_VEC4                           = 0x8B55;
    static inline var BOOL                               = 0x8B56;
    static inline var BOOL_VEC2                          = 0x8B57;
    static inline var BOOL_VEC3                          = 0x8B58;
    static inline var BOOL_VEC4                          = 0x8B59;
    static inline var FLOAT_MAT2                         = 0x8B5A;
    static inline var FLOAT_MAT3                         = 0x8B5B;
    static inline var FLOAT_MAT4                         = 0x8B5C;
    static inline var SAMPLER_2D                         = 0x8B5E;
    static inline var SAMPLER_CUBE                       = 0x8B60;

    /* Vertex Arrays */
    static inline var VERTEX_ATTRIB_ARRAY_ENABLED        = 0x8622;
    static inline var VERTEX_ATTRIB_ARRAY_SIZE           = 0x8623;
    static inline var VERTEX_ATTRIB_ARRAY_STRIDE         = 0x8624;
    static inline var VERTEX_ATTRIB_ARRAY_TYPE           = 0x8625;
    static inline var VERTEX_ATTRIB_ARRAY_NORMALIZED     = 0x886A;
    static inline var VERTEX_ATTRIB_ARRAY_POINTER        = 0x8645;
    static inline var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

    /* Point Size */
    static inline var VERTEX_PROGRAM_POINT_SIZE          = 0x8642;
    static inline var POINT_SPRITE                       = 0x8861;

    /* GLShader Source */
    static inline var COMPILE_STATUS                     = 0x8B81;

    /* GLShader Precision-Specified Types */
    static inline var LOW_FLOAT                          = 0x8DF0;
    static inline var MEDIUM_FLOAT                       = 0x8DF1;
    static inline var HIGH_FLOAT                         = 0x8DF2;
    static inline var LOW_INT                            = 0x8DF3;
    static inline var MEDIUM_INT                         = 0x8DF4;
    static inline var HIGH_INT                           = 0x8DF5;

    /* GLFramebuffer Object. */
    static inline var FRAMEBUFFER                        = 0x8D40;
    static inline var RENDERBUFFER                       = 0x8D41;

    static inline var RGBA4                              = 0x8056;
    static inline var RGB5_A1                            = 0x8057;
    static inline var RGB565                             = 0x8D62;
    static inline var DEPTH_COMPONENT16                  = 0x81A5;
    static inline var STENCIL_INDEX                      = 0x1901;
    static inline var STENCIL_INDEX8                     = 0x8D48;
    static inline var DEPTH_STENCIL                      = 0x84F9;

    static inline var RENDERBUFFER_WIDTH                 = 0x8D42;
    static inline var RENDERBUFFER_HEIGHT                = 0x8D43;
    static inline var RENDERBUFFER_INTERNAL_FORMAT       = 0x8D44;
    static inline var RENDERBUFFER_RED_SIZE              = 0x8D50;
    static inline var RENDERBUFFER_GREEN_SIZE            = 0x8D51;
    static inline var RENDERBUFFER_BLUE_SIZE             = 0x8D52;
    static inline var RENDERBUFFER_ALPHA_SIZE            = 0x8D53;
    static inline var RENDERBUFFER_DEPTH_SIZE            = 0x8D54;
    static inline var RENDERBUFFER_STENCIL_SIZE          = 0x8D55;

    static inline var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE             = 0x8CD0;
    static inline var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME             = 0x8CD1;
    static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL           = 0x8CD2;
    static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE   = 0x8CD3;

    static inline var COLOR_ATTACHMENT0                  = 0x8CE0;
    static inline var DEPTH_ATTACHMENT                   = 0x8D00;
    static inline var STENCIL_ATTACHMENT                 = 0x8D20;
    static inline var DEPTH_STENCIL_ATTACHMENT           = 0x821A;

    static inline var NONE                               = 0;

    static inline var FRAMEBUFFER_COMPLETE                       = 0x8CD5;
    static inline var FRAMEBUFFER_INCOMPLETE_ATTACHMENT          = 0x8CD6;
    static inline var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT  = 0x8CD7;
    static inline var FRAMEBUFFER_INCOMPLETE_DIMENSIONS          = 0x8CD9;
    static inline var FRAMEBUFFER_UNSUPPORTED                    = 0x8CDD;

    static inline var FRAMEBUFFER_BINDING                = 0x8CA6;
    static inline var RENDERBUFFER_BINDING               = 0x8CA7;
    static inline var MAX_RENDERBUFFER_SIZE              = 0x84E8;

    static inline var INVALID_FRAMEBUFFER_OPERATION      = 0x0506;

    /* WebGL-specific enums */
    static inline var UNPACK_FLIP_Y_WEBGL                = 0x9240;
    static inline var UNPACK_PREMULTIPLY_ALPHA_WEBGL     = 0x9241;
    static inline var CONTEXT_LOST_WEBGL                 = 0x9242;
    static inline var UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;
    static inline var BROWSER_DEFAULT_WEBGL              = 0x9244;

//Internal wrappers
// note that these inline wrappers are needed for ideal Int cast to native side 
// i.e instead of Dynamic on c++ side, with (int) cast, let the haxe abstract type pass the int directly

    @:native('linc::opengl::webgl::createBuffer')        private static function _createBuffer():Int;
    @:native('linc::opengl::webgl::createFramebuffer')   private static function _createFramebuffer():Int;
    @:native('linc::opengl::webgl::createRenderbuffer')  private static function _createRenderbuffer():Int;
    @:native('linc::opengl::webgl::createTexture')       private static function _createTexture():Int;
    @:native('linc::opengl::webgl::deleteBuffer')        private static function _deleteBuffer(buffer:Int):Void;
    @:native('linc::opengl::webgl::deleteFramebuffer')   private static function _deleteFramebuffer(framebuffer:Int):Void;
    @:native('linc::opengl::webgl::deleteRenderbuffer')  private static function _deleteRenderbuffer(renderbuffer:Int):Void;    
    @:native('linc::opengl::webgl::deleteTexture')       private static function _deleteTexture(texture:Int):Void;
    @:native('linc::opengl::webgl::getProgramInfoLog')   private static function _getProgramInfoLog(program:Int):String;
    @:native('linc::opengl::webgl::getProgramParameter') private static function _getProgramParameter(program:Int, pname:GLenum):Int;
    @:native('linc::opengl::webgl::getShaderInfoLog')    private static function _getShaderInfoLog(shader:Int):String;
    @:native('linc::opengl::webgl::getShaderParameter')  private static function _getShaderParameter(shader:Int, pname:GLenum):Int;
    @:native('linc::opengl::webgl::getShaderSource')     private static function _getShaderSource(shader:Int):String;
    @:native('linc::opengl::webgl::shaderSource')        private static function _shaderSource(shader:Int, source:String):Void;



} //WebGL


typedef GLActiveInfo = {

    size : Int,
    type : Int,
    name : String

} //GLActiveInfo


typedef GLShaderPrecisionFormat = {

    rangeMin : Int,
    rangeMax : Int,
    precision : Int,

} //GLShaderPrecisionFormat

typedef GLContextAttributes = {

    alpha:Bool,
    depth:Bool,
    stencil:Bool,
    antialias:Bool,
    premultipliedAlpha:Bool,
    preserveDrawingBuffer:Bool

} //WebGLContextAttributes


class GLObject {

    public var id: Int = 0;
    public var invalidated (get,set) : Bool;

    inline public function new(_id:Int) id = _id;
    inline function toString() : String return 'GLObject($id)';
    inline function get_invalidated() : Bool return id == 0;
    inline function set_invalidated(value:Bool) : Bool { id = 0; return value; }

} //GLObject

@:forward abstract GLBuffer(GLObject) {
    inline public function new(_id:Int) this = new GLObject(_id);
    @:to inline public function toInt() : Int return this == null ? 0 : this.id;
    @:from inline static public function fromInt(_id:Int) return new GLBuffer(_id);
    @:to inline public function toDynamic() : Dynamic return this == null ? 0 : this.id;
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLBuffer(_id);
    inline function toString() : String return 'GLBuffer(${this == null ? 0 : this.id})';
}

@:forward abstract GLFramebuffer(GLObject) {
    inline public function new(_id:Int) this = new GLObject(_id);
    @:to inline public function toInt() : Int return this == null ? 0 : this.id;
    @:from inline static public function fromInt(_id:Int) return new GLFramebuffer(_id);
    @:to inline public function toDynamic() : Dynamic return this == null ? 0 : this.id;
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLFramebuffer(_id);
    inline function toString() : String return 'GLFramebuffer(${this == null ? 0 : this.id})';
}

@:forward abstract GLProgram(GLObject) {
    inline public function new(_id:Int) this = new GLObject(_id);
    @:to inline public function toInt() : Int return this == null ? 0 : this.id;
    @:from inline static public function fromInt(_id:Int) return new GLProgram(_id);
    @:to inline public function toDynamic() : Dynamic return this == null ? 0 : this.id;
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLProgram(_id);
    inline function toString() : String return 'GLProgram(${this == null ? 0 : this.id})';
}

@:forward abstract GLRenderbuffer(GLObject) {
    inline public function new(_id:Int) this = new GLObject(_id);
    @:to inline public function toInt() : Int return this == null ? 0 : this.id;
    @:from inline static public function fromInt(_id:Int) return new GLRenderbuffer(_id);
    @:to inline public function toDynamic() : Dynamic return this == null ? 0 : this.id;
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLRenderbuffer(_id);
    inline function toString() : String return 'GLRenderbuffer(${this == null ? 0 : this.id})';
}

@:forward abstract GLShader(GLObject) {
    inline public function new(_id:Int) this = new GLObject(_id);
    @:to inline public function toInt() : Int return this == null ? 0 : this.id;
    @:from inline static public function fromInt(_id:Int) return new GLShader(_id);
    @:to inline public function toDynamic() : Dynamic return this == null ? 0 : this.id;
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLShader(_id);
    inline function toString() : String return 'GLShader(${this == null ? 0 : this.id})';
}

@:forward abstract GLTexture(GLObject) {
    inline public function new(_id:Int) this = new GLObject(_id);
    @:to inline public function toInt() : Int return this == null ? 0 : this.id;
    @:from inline static public function fromInt(_id:Int) return new GLTexture(_id);
    @:to inline public function toDynamic() : Dynamic return this == null ? 0 : this.id;
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLTexture(_id);
    inline function toString() : String return 'GLTexture(${this == null ? 0 : this.id})';
}

@:forward abstract GLUniformLocation(GLObject) {
    inline public function new(_id:Int) this = new GLObject(_id);
    @:to inline public function toInt() : Int return this == null ? 0 : this.id;
    @:from inline static public function fromInt(_id:Int) return new GLUniformLocation(_id);
    @:to inline public function toDynamic() : Dynamic return this == null ? 0 : this.id;
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLUniformLocation(_id);
    inline function toString() : String return 'GLUniformLocation(${this == null ? 0 : this.id})';
}
