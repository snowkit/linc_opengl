package glew;

@:keep
@:include('linc_glew.h')
@:build(linc.Linc.touch())
extern class GLEW {

    static inline var OK = 0;
    static inline var NO_ERROR = 0;
    static inline var ERROR_NO_GL_VERSION = 1;
    static inline var ERROR_GL_VERSION_10_ONLY = 2;
    static inline var ERROR_GLX_VERSION_11_ONLY = 3;

    inline static function error(val:Int) : String {
        return switch(val) {
            case OK: 'No Error';
            case ERROR_NO_GL_VERSION: 'Missing GL version';
            case ERROR_GL_VERSION_10_ONLY: 'Need at least OpenGL 1.1';
            case ERROR_GLX_VERSION_11_ONLY: 'Need at least GLX 1.2';
            case _: return 'Unknown error';
        }
    }

    @:native('linc::glew::init')
    static function init() : Int;

    @:native('(bool)glewIsSupported')
    static function isSupported(name:String):Bool;

    static var VERSION_1_1 (get, never) : Bool;
    static inline function get_VERSION_1_1() : Bool return untyped __cpp__('GLEW_VERSION_1_1');

    static var VERSION_1_2 (get, never) : Bool;
    static inline function get_VERSION_1_2() : Bool return untyped __cpp__('GLEW_VERSION_1_2');

    static var VERSION_1_2_1 (get, never) : Bool;
    static inline function get_VERSION_1_2_1() : Bool return untyped __cpp__('GLEW_VERSION_1_2_1');

    static var VERSION_1_3 (get, never) : Bool;
    static inline function get_VERSION_1_3() : Bool return untyped __cpp__('GLEW_VERSION_1_3');

    static var VERSION_1_4 (get, never) : Bool;
    static inline function get_VERSION_1_4() : Bool return untyped __cpp__('GLEW_VERSION_1_4');

    static var VERSION_1_5 (get, never) : Bool;
    static inline function get_VERSION_1_5() : Bool return untyped __cpp__('GLEW_VERSION_1_5');

    static var VERSION_2_0 (get, never) : Bool;
    static inline function get_VERSION_2_0() : Bool return untyped __cpp__('GLEW_VERSION_2_0');

    static var VERSION_2_1 (get, never) : Bool;
    static inline function get_VERSION_2_1() : Bool return untyped __cpp__('GLEW_VERSION_2_1');

    static var VERSION_3_0 (get, never) : Bool;
    static inline function get_VERSION_3_0() : Bool return untyped __cpp__('GLEW_VERSION_3_0');

    static var VERSION_3_1 (get, never) : Bool;
    static inline function get_VERSION_3_1() : Bool return untyped __cpp__('GLEW_VERSION_3_1');

    static var VERSION_3_2 (get, never) : Bool;
    static inline function get_VERSION_3_2() : Bool return untyped __cpp__('GLEW_VERSION_3_2');

    static var VERSION_3_3 (get, never) : Bool;
    static inline function get_VERSION_3_3() : Bool return untyped __cpp__('GLEW_VERSION_3_3');

    static var VERSION_4_0 (get, never) : Bool;
    static inline function get_VERSION_4_0() : Bool return untyped __cpp__('GLEW_VERSION_4_0');

    static var VERSION_4_1 (get, never) : Bool;
    static inline function get_VERSION_4_1() : Bool return untyped __cpp__('GLEW_VERSION_4_1');

    static var VERSION_4_2 (get, never) : Bool;
    static inline function get_VERSION_4_2() : Bool return untyped __cpp__('GLEW_VERSION_4_2');

    static var VERSION_4_3 (get, never) : Bool;
    static inline function get_VERSION_4_3() : Bool return untyped __cpp__('GLEW_VERSION_4_3');

    static var VERSION_4_4 (get, never) : Bool;
    static inline function get_VERSION_4_4() : Bool return untyped __cpp__('GLEW_VERSION_4_4');

    static var VERSION_4_5 (get, never) : Bool;
    static inline function get_VERSION_4_5() : Bool return untyped __cpp__('GLEW_VERSION_4_5');

}