using StringTools;

typedef GLDefine = { name:String, value:Int, string:String }
typedef GLFunction = { name:String, ret:String, string:String, args_str:String, args:Array<GLFunctionArg> }
typedef GLFunctionArg = { name:String, type:String }


typedef GLVersion = {
    major:Int,
    minor:Int,
    content: String,
    defines: Array<GLDefine>,
    functions: Array<GLFunction>
}

typedef GLExt = {
    name:String,
    content:String,
    defines: Array<GLDefine>,
    functions: Array<GLFunction>
}

typedef GLEW = {
    var versions:Array<GLVersion>;
    var version_names:Array<String>;
    var exts:Array<GLExt>;
    var ext_names:Array<String>;
}

class Main {

    static var glew:GLEW;
    static var content:String;

    static function main() {


        glew = {
            versions:[],
            version_names:[],
            exts:[],
            ext_names:[]
        };

        content = sys.io.File.getContent('glew.h');

        collect_versions();
        collect_exts();
        collect_defines();
        collect_functions();

        write_file();

    } //main

    static function tb(c:Int) return ''.rpad(' ', c);

    static function to_haxe_type(t:String) {
        return switch(t) {
            case 'void': 'Void';
            case 'GLfloat','GLdouble','GLclampf','GLclampd': 'Float';
            case 'GLint','GLshort','GLsizei','GLubyte','GLenum','GLbitfield','GLbyte': 'Int';
            case 'GLuint','GLushort','GLhandleARB': 'UInt';
            case 'GLboolean': 'Bool';
            case 'GLuint64','GLuint64EXT': 'cpp.UInt64';
            case _: return t;
        }
    }

    static function sanitize_name(n:String) {
        return switch(n) {
            case 'in': return 'inval';
            case _: return n;
        }
    }

    static function chkname(n:String, val:String) {
        return n.indexOf(val) == -1;
    }

    static function get_function(functions:Array<GLFunction>) {

        var out = '';
        var _list = [];
        var _comp_list = [];
        for(f in functions) {
            var _args = '';
            var _idx = 0;
            var _comp =
                chkname(f.ret,'*') ||
                chkname(f.ret,'GLsync') ||
                chkname(f.ret,'GLintptr');
            for(a in f.args) {
                var _aname = a.name;
                if(_aname == 'void') continue;
                if(chkname(_aname,'*')) _comp = true;
                if(chkname(a.type,'*')) _comp = true;
                if(chkname(a.type,'GLintptr')) _comp = true;
                if(chkname(a.type,'GLsync')) _comp = true;
                var _first = a.type.charAt(0);
                if(_first == '$_first'.toLowerCase()) _comp = true;
                var _t = to_haxe_type(a.type);
                var _p = _aname.indexOf('[');
                if(_p != -1) {
                    _aname = _aname.substr(0, _p);
                    _t = 'Array<$_t>';
                }

                _aname = sanitize_name(_aname);
                _args += '$_aname:$_t'; 
                if(_idx < f.args.length-1) _args+=', ';
                _idx++;
            }
            var _name = f.name;
            var s = 'inline static function $_name($_args) : ${to_haxe_type(f.ret)} {}\n';
            if(_comp) _comp_list.push(s); else _list.push(s); 
        }

        for(_i in _list) out += tb(4) + '$_i';
        out+='\n';
        for(_i in _comp_list) out += tb(4) + '// $_i';
        return out;
    }
    static function write_file() {

        var out = '@:publicFields\nclass GL {\n\n';

        var written_defines = [];

        trace(GL.GL_CURRENT_FOG_COORD);

        for(v in glew.versions) {
            out += '//GL ${v.major}.${v.minor}\n';
            for(d in v.defines) {
                if(written_defines.indexOf(d.name) == -1) {
                    written_defines.push(d.name);
                    var s = 'inline static var ${d.name}';
                    var skip = ['0xFFFFFFFFFFFFFFFF'];
                    var _sk = skip.indexOf(d.string) != -1;
                    out += tb(4) + (_sk?'// ':'') + '$s ${tb(80-s.length)} = ${d.string};\n';
                }
            }

            out += '\n\n';
            out += get_function(v.functions);
            out += '\n\n';
        }

        out += '\n\n';

        for(e in glew.exts) {
            out += '//${e.name}\n';
            for(d in e.defines) {
                if(written_defines.indexOf(d.name) == -1) {
                    written_defines.push(d.name);
                    var s = 'inline static var ${d.name}';
                    var skip = ['0xFFFFFFFFFFFFFFFF'];
                    var _sk = skip.indexOf(d.string) != -1;
                    out += tb(4) + (_sk?'// ':'') + '$s ${tb(80-s.length)} = ${d.string};\n';
                }
            }

            out += '\n\n';

            out += '\n\n';
            out += get_function(e.functions);
            out += '\n\n';
        }

        out += '\n\n}';

        sys.io.File.saveContent('GL.hx', out);

    } //write_file

    static function collect_versions() {

        var r = new EReg('#ifndef GL_VERSION_(\\d)_(\\d)([\\S\\s]+?)#endif \\/\\* GL_VERSION_\\d_\\d \\*\\/', 'g');
        var s = content;

        while(r.match(s)) {
            var major = Std.parseInt(r.matched(1));
            var minor = Std.parseInt(r.matched(2));
            glew.versions.push({ major:major, minor:minor, content:r.matched(3), defines:[], functions:[] });
            glew.version_names.push('$major.$minor');
            s = r.matchedRight();
        }

        var log_versions = true;
        if(log_versions)
        for( n in glew.version_names ) trace('Found GL $n');

    } //collect_versions

    static function collect_exts() {

// #ifndef GL_ARB_ES2_compatibility
// #define GL_ARB_ES2_compatibility 1
// #endif /* GL_ARB_ES2_compatibility */

        var r = new EReg('#ifndef (?!GL_VERSION_)(GL_.+)([\\S\\s]+?)#endif \\/\\* GL_.+ \\*\\/', 'g');
        var s = content;

        while(r.match(s)) {
            var _name = r.matched(1);
            var _content = r.matched(2);
            glew.exts.push({ name:_name, content:_content, defines:[], functions:[] });
            glew.ext_names.push('$_name');
            s = r.matchedRight();
        }

        var log_ext = true;
        if(log_ext)
        for( n in glew.ext_names ) trace('Found GL ext $n');
    
    } //collect_exts

    static function find_defines<T>(_r:EReg, _s:String, _into:Array<T>, _info:String, _log_defines:Bool=true) {
        if(_log_defines) trace('parsing defines for $_info');
        while(_r.match(_s)) {
            var def = { name:_r.matched(2), value:Std.parseInt(_r.matched(3)), string:_r.matched(3) };
            _into.push(cast def);
            if(_log_defines) trace('    ${def.name} ${def.string}');
            _s = _r.matchedRight();
        } //while match
    }

    static function collect_defines() {

        var r = new EReg('(?!#define GL_VERSION_)(#define )(GL_.+) (.+)', 'g');
        var log_defines = true;
        for(v in glew.versions) {
            find_defines(r, v.content, v.defines, 'version ${v.major}.${v.minor}', log_defines);
        } //each version

        for(e in glew.exts) {
            find_defines(r, e.content, e.defines, 'ext ${e.name}', log_defines);
        } //each ext
        
    } //collect_defines

    static function split_args(_arg_str:String) : Array<GLFunctionArg> {
        var args = [];
        _arg_str = _arg_str.trim();
        if(_arg_str != '') {
            var _name = '??';
            var _type = '??';
            var parts = _arg_str.split(',');
            for(p in parts) {
                p = p.trim();
                var argparts = p.split(' ');
                _name = argparts.pop();
                _type = argparts.join(' ');
                _type = _type.replace('const ','');
                _type = _type.replace('const*','');
                args.push({ name:_name, type:_type });
            }
        }
        return args;
    }

    static function find_functions<T>(r:EReg, _s:String, _into:Array<T>, _info:String, _log_functions:Bool=true) {
        var s = _s;
        while(r.match(s)) {
            if(r.matched(1) != null) {

                var args = [];
                var _name = r.matched(1);
                var _arg_str = '';
                var _ret_str = 'void';
                //find the args
                var reg = 'typedef (.+) \\(GLAPIENTRY \\* PFN${_name.toUpperCase()}PROC\\) \\((.*)\\)';
                var fnr = new EReg(reg,'gi');
                if(fnr.match(_s)){
                    _ret_str = fnr.matched(1);
                    _arg_str = fnr.matched(2);
                    args = split_args(_arg_str);
                }

                _into.push(cast { name:_name, args:args, args_str:_arg_str, ret:_ret_str, string:r.matched(0) });

                if(_log_functions) trace('    $_ret_str ${r.matched(1)}($_arg_str)');

            } else if(r.matched(2) != null && r.matched(3) != null && r.matched(4) != null) {
                var _arg_str = r.matched(4);
                var args = split_args(_arg_str);
                if(_log_functions) trace('    ${r.matched(3)}($_arg_str)');
                _into.push(cast { name:r.matched(3), args_str:_arg_str, args:args, ret:r.matched(2), string:r.matched(0) });
            }

            s = r.matchedRight();

        } //while match

    }

    static function collect_functions() {

        var r = new EReg('#define (gl.*) GLEW_GET_FUN.*|GLAPI (.*) GLAPIENTRY (.*) [(](.*)[)]', 'g');

        var log_functions = true;

        for(v in glew.versions) {
            if(log_functions) trace('parsing functions for version ${v.major}.${v.minor}');
            find_functions(r, v.content, v.functions, 'version ${v.major}.${v.minor}', log_functions);
        } //each version

        for(e in glew.exts) {
            if(log_functions) trace('parsing functions for ext ${e.name}');
            find_functions(r, e.content, e.functions, 'ext ${e.name}', log_functions);
        } //each ext

    } //collect_functions


} //Main