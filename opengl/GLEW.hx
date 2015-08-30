package opengl;

@:keep
@:include('linc_opengl.h')
@:build(linc.Linc.touch())
extern class GLEW {

    static inline var GLEW_OK = 0;
    static inline var GLEW_NO_ERROR = 0;
    static inline var GLEW_ERROR_NO_GL_VERSION = 1;
    static inline var GLEW_ERROR_GL_VERSION_10_ONLY = 2;
    static inline var GLEW_ERROR_GLX_VERSION_11_ONLY = 3;

    inline static function error(val:Int) : String {
        return switch(val) {
            case GLEW_OK: 'No Error';
            case GLEW_ERROR_NO_GL_VERSION: 'Missing GL version';
            case GLEW_ERROR_GL_VERSION_10_ONLY: 'Need at least OpenGL 1.1';
            case GLEW_ERROR_GLX_VERSION_11_ONLY: 'Need at least GLX 1.2';
            case _: return 'Unknown error';
        }
    }

    inline static function init() : Int {
        untyped glewExperimental = GL_TRUE;
        return untyped __cpp__('(int)glewInit()');
    }

    @:native('glewIsSupported')
    static function isSupported(name:String):Bool;

}