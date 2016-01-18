using StringTools;

typedef GLDefine = { name:String, value:Int, string:String }
typedef GLFunction = { name:String, ret:String, string:String, args_str:String, args:Array<GLFunctionArg> }
typedef GLFunctionArg = { name:String, type:String, gltype:String }


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

    static var ignored = [
        'glEdgeFlagv'
    ];

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
            case 'GLsync': 'GLSync';
            case 'GLbyte': 'cpp.Int8';
            case 'GLubyte': 'cpp.UInt8';
            case 'GLdouble','GLclampd','const GLdouble': 'cpp.Float64';
            case 'GLfloat','GLclampf','const GLfloat', 'const GLclampf': 'cpp.Float32';
            case 'const GLint','GLint','GLshort','GLsizei','GLenum','GLbitfield','GLclampx','GLfixed','GLsizeiptr','GLsizeiptrARB','GLintptr','GLintptrARB': 'Int';
            case 'GLchar','const GLchar*','GLchar*', 'const GLubyte *','const GLchar* const*','const GLubyte*','const GLchar *','const GLcharARB*','GLcharARB','const GLchar * const *' : 'String';
            case 'GLushort','GLhalf','GLhandleARB': 'UInt';
            case 'GLuint': 'Int';
            case 'GLboolean': 'Bool';
            case 'GLint64EXT','GLint64': 'cpp.Int64';
            case 'GLuint64','GLuint64EXT': 'cpp.UInt64';
            case 'GLsizei*' : 'IntRef';
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
        return n.indexOf(val) != -1;
    }

    static function chktype(a:String) {
        var r = false;
        for(n in [
            '*',
            'GLvdpauSurfaceNV',
            'GLLOGPROCREGAL',
            'GLDEBUGPROC',
            'GLbyte',
            'GLubyte'
            ]
        ) r = r || chkname(a,n);
        return r;
    }

    static var dcount = 0;
    static var hcount = 0;
    static var ncount = 0;

    static var explicit = [
        'glGetString',
        'glGetStringi',
        'glGetObjectLabelEXT'
    ];

    static function explicit_function(_fname:String, _fret:String, args:Array<GLFunctionArg>) {
        var outargs = [];
        for(a in args) {
            outargs.push({ name:a.name, type:to_haxe_type(a.type), gltype:a.type });
        }
        var ret = {
            native:null,
            body:[],
            args:outargs,
            hidden:false,
            wrap:true
        };

        inline function ut(val:String,?ns:Array<String>,_ret:Bool=false) {
            if(ns == null) ns = [];
            var nsval = ns.length>0 ? ', '+ns.join(',') : '';
            return (_ret ? 'return ':'') + 'untyped __cpp__("$val"$nsval);';
        }
        inline function bc(val:String,?ns:Array<String>,_ret:Bool=false) ret.body.push(ut(val,ns,_ret));

        switch(_fname) {
            case 'glGetString':
                bc('const char* __val = (const char*)glGetString({0}); if(!__val)__val=\\"\\"',['name']);
                bc('::String(__val)', true);
            case 'glGetStringi':
                bc('const char* __val = (const char*)glGetStringi({0},{1}); if(!__val)__val=\\"\\"',['name','index']);
                bc('::String(__val)', true);
            case 'glGetObjectLabelEXT':
                bc('char __dest[{0}]', ['bufSize']);
                bc('glGetObjectLabelEXT({0},{1},{2},{3},__dest)', ['type', 'object', 'bufSize', 'length']);
                bc('{0} = ::String(__dest)',['label']);
            case _: ret = null;
        }        

        return ret;
    }

    static function process_function(_fname:String, _fret:String, args:Array<GLFunctionArg>) {

        if(explicit.indexOf(_fname) != -1) {
            return explicit_function(_fname, _fret, args);
        }

        var _wrap = false;
        var _hidden = false;
        var _genbody = false;
        var _native = '$_fname';
        var _body:Array<String> = null;
        var outargs = [];

        var _datatypes = [
            'GLint*',
            'GLuint*',
            'GLbyte*',
            'GLfixed*',
            'GLshort*',
            'GLubyte*',
            'GLushort*',
            'GLfloat*',
            'GLdouble*',
            'GLboolean*',
            'GLint64EXT*',
            'GLuint64EXT*',
            'GLint64*',
            'GLuint64*',
            'GLsizei*',
            'const GLsizei*',
            'const GLclampd *',
            'const GLint *',
            'const GLfloat *',
            'const GLint64*',
            'const GLuint64*',
            'const GLboolean*',
            'const GLint64EXT*',
            'const GLuint64EXT*',
            'const GLclampf*',
            'const GLhalf*',
            'const GLenum*',
            'const GLint*',
            'const GLfloat*',
            'const GLuint*',
            'const GLuint *',
            'const GLushort*',
            'const GLubyte*',
            'const GLdouble*',
            'const GLbyte*',
            'const GLshort*',
            'const GLfixed*',
            'const GLintptr*',
            'const GLsizeiptr*',
            'const GLchar * const *',
            'const GLcharARB **',
            'const GLchar* const *'
        ];

        var _datafunc = [
            'glBitmap',
            'glCallLists',
            'glMultiDrawElements',
            'glGetObjectLabelEXT'
        ];

        var _notdatafunc = [
        ];

        for(a in args) {
            var _gltype = a.type;
            if(a.name == 'void') continue;

            var _skip = false;
            var _aname = a.name;
            var _atype = a.type;

            if(_aname == '*v') {
                _genbody = true;
                // outargs.push({ name:'?bOffset', type:'Int=0', gltype:'int' });
                _aname = 'v';
                _atype = 'BytesData';
                _native = null;
                _wrap = true;
            } else if(_atype == 'const void*' || _atype == 'void*' || _atype == 'const void *const*') {
                _genbody = true;
                _native = null;
                _wrap = true;
                // outargs.push({ name:'?bOffset', type:'Int=0', gltype:'int' });
                _atype = 'BytesData';

            } else if(_datatypes.indexOf(_atype) != -1) {
                _genbody = true;
                _native = null;
                _wrap = true;
                var l = _fname.length;
                var _is_data = _datafunc.indexOf(_fname) != -1;
                if(_is_data) {
                    // outargs.push({ name:'?bOffset', type:'Int=0', gltype:'int' });
                    _atype = 'BytesData';
                } else {
                    _atype = 'Array';
                }
            }

            var log_hidden = false;
            var log_hidden_force = ['glLoadTransposeMatrixdARB'];

            inline function show_name() return log_hidden_force.indexOf(_fname) != -1;

            if(chkname(_aname,'*')) {
                if(log_hidden || show_name()) trace('hidden: $_fname  reason: pointer in argument name');
                _hidden = true;
            }
                //convert known types
            _atype = to_haxe_type(_atype);
                //any complex types after convert?
            if(chktype(_atype)) {
                _hidden = true;
                if(log_hidden || show_name()) trace('hidden: $_fname  reason: typecheck');
            }
                //first letter lower case?
            var _first = _atype.charAt(0);
            if(_first == '$_first'.toLowerCase()) {
                if(_atype.indexOf('cpp.') == -1) {
                    _hidden = true;
                    if(log_hidden || show_name()) trace('hidden: $_fname  reason: lowercase type names');
                }
            }
            
            var _p = _aname.indexOf('[');
            if(_p != -1) {
                _aname = _aname.substr(0, _p);
                _atype = 'Array<$_atype>';
                // _hidden = true;
                // if(log_hidden || show_name()) trace('hidden: $_fname  reason: arrays in args');
                _wrap = true;
            }

            _aname = sanitize_name(_aname);

            if(!_skip) {
                outargs.push({ name:_aname, type:_atype, gltype:_gltype });
            }

        } //each args

        if(_genbody) {
            _body = [];
            var _arg_names = [];
            var _arg_items = [];
            for(a in outargs) {
                if(a.type == 'BytesData') {
                    var p = (a.gltype.indexOf('*') == -1) ? '*' : '';
                    var _bfid = _arg_items.length;
                    // var _bfid = _bid+1;
                    _arg_names.push('(${a.gltype}$p)&({$_bfid}[0])');
                    // _arg_items.push('bOffset');
                    _arg_items.push('${a.name}');
                }  

                else if(a.type == 'Array') {
                    var _tb = a.gltype;
                        _tb = _tb.replace('const ','');
                        _tb = _tb.replace('const','');
                        _tb = _tb.replace('*','');
                        _tb = _tb.trim();
                    var _ta = to_haxe_type(_tb);

                    if(_fname == 'glShaderSourceARB')trace('$_fname $_ta $_tb');
                    if(_ta != _tb) {
                        a.type = 'Array<$_ta>';
                        var p = (a.gltype.indexOf('*') == -1) ? '*' : '';
                        _arg_names.push('(${a.gltype}$p)&({${_arg_items.length}}[0])');
                        _arg_items.push(a.name);
                    }
                } else 
                // if(a.name != '?bOffset') 
                {
                    _arg_names.push('{${_arg_items.length}}');
                    _arg_items.push(a.name);
                }

            }
            var _arg_parts = '';
            var _arg_body = _arg_names.join(', ');
            for(_ar in _arg_items) _arg_parts += ', ' + _ar;

            var _ret = '';
            if(_fret != 'Void' && _fret != 'void') {
                _ret = 'return ';
            }

            _body.push('${_ret}untyped __cpp__("$_fname($_arg_body)"$_arg_parts);');
        }

        return {
            native:_native,
            body:_body,
            args:outargs,
            hidden:_hidden,
            wrap:_wrap
        }
    }

    static function get_function(functions:Array<GLFunction>) {
        var out = '';

        var _list = [];
        var _wrap = [];
        var _hidden = [];
        var _ignored = [];

        for(f in functions) {
            var _name = f.name;

            if( ignored.indexOf(_name) != -1 ) {
                _ignored.push( f.string );
                continue;
            }

            var _args = '';
            var _idx = 0;
            var _fret = to_haxe_type(f.ret);
            var _ishidden = chktype(_fret);
            var _inf = process_function(_name, _fret, f.args);
            for(a in _inf.args) {
                _args += '${a.name}:${a.type}'; 
                if(_idx < _inf.args.length-1) _args+=', ';
                _idx++;
            }

            var _inline = (_inf.body==null) ? '' : 'inline ';
            var _endl = (_inf.body==null) ? ';' : '\n';
            var s = '${_inline}static function $_name($_args) : ${to_haxe_type(f.ret)}$_endl';
            var n =  (_inf.native==null) ? '' : '@:native(\'${_inf.native}\')\n        ';

            s = '$n$s';
            if(_inf.body != null) { s += tb(10)+ '{ ${_inf.body.join('\n            ')} }'; }

            if(_ishidden || _inf.hidden) {
                _hidden.push(s.split('\n').map(function(_f){ return '\n        // ' + _f.trim(); }).join(''));
            } else {
                if(_inf.wrap) { _wrap.push(s); } 
                else { _list.push(s); }
            }
        } //each function

        for(_i in _list) {
            out += tb(8) + '$_i\n\n';
            ncount++;
        }
        out+='\n';
        for(_i in _wrap) {
            out += tb(8) + '$_i\n\n';
            ncount++;
        }

        out+='\n';
        if(_hidden.length > 0) {
            out+='\n    // TODO functions\n\n';
            for(_i in _hidden) {
                out += tb(12) + '$_i\n';
                hcount++;
            }
        }

        if(_ignored.length > 0) {
            out+='\n    // ignored functions\n\n';
            for(_i in _ignored) {
                out += tb(12) + '// $_i\n';
                hcount++;
            }
        }
        return out;
    }
    static function write_file() {

        var out = '';
        //package
        out += 'package opengl;\n\n';
        //imports
        out += 'import haxe.io.BytesData;\n\n';

        out += '@:keep\n@:include(\'linc_opengl.h\')\n@:native(\'GLsync\')\nextern class GLSync {}\n\n';

        out += '@:keep\nabstract IntRef(cpp.Pointer<Int>) {\n';
        out += '    @:from static inline function fromInt(_val:Int) : IntRef return cast cpp.Pointer.addressOf(_val);\n';
        out += '}\n\n';

        //extern GL
        out += '@:keep\n@:include(\'linc_opengl.h\')\n#if !display\n@:build(linc.Linc.touch())\n@:build(linc.Linc.xml(\'opengl\'))\n#end\nextern class GL {\n\n';

        var written_defines = [];


        for(v in glew.versions) {
            out += '//GL ${v.major}.${v.minor}\n\n';

            if(v.defines.length > 0) {
                out += '    //GL ${v.major}.${v.minor} defines\n\n';
                for(d in v.defines) {
                    if(written_defines.indexOf(d.name) == -1) {
                        dcount++;
                        written_defines.push(d.name);
                        var s = 'inline static var ${d.name}';
                        var skip = ['0xFFFFFFFFFFFFFFFF'];
                        var _sk = skip.indexOf(d.string) != -1;
                        out += tb(8) + (_sk?'// ':'') + '$s ${tb(80-s.length)} = ${d.string};\n';
                    }
                } //each define
            } //any defines

            if(v.functions.length > 0) {
                out += '\n\n';
                out += '    //GL ${v.major}.${v.minor} functions\n\n';
                out += get_function(v.functions);
                out += '\n\n';
            }
        }

        out += '\n\n';

        for(e in glew.exts) {
            // if(e.name.indexOf('ARB') == -1) continue;
            out += '//${e.name}\n\n';

            if(e.defines.length>0) {
                out += '    // ${e.name} defines\n\n';
                for(d in e.defines) {
                    if(written_defines.indexOf(d.name) == -1) {
                        dcount++;
                        written_defines.push(d.name);
                        var s = 'inline static var ${d.name}';
                        var skip = ['0xFFFFFFFFFFFFFFFF'];
                        var _sk = skip.indexOf(d.string) != -1;
                        out += tb(8) + (_sk?'// ':'') + '$s ${tb(80-s.length)} = ${d.string};\n';
                    }
                } //each define
            } //any define

            out += '\n\n';

            if(e.functions.length > 0) {
                out += '\n\n';
                out += '    // ${e.name} functions\n\n';
                out += get_function(e.functions);
                out += '\n\n';
            }
        }

        out += '\n\n}';

        sys.io.File.saveContent('../opengl/GL.hx', out);

        trace('defines - done: $dcount   total: $dcount');
        trace('functions - done: $ncount  todo: $hcount  total: ${ncount+hcount}');

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

        var log_versions = false;
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

        var log_ext = false;
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
        var log_defines = false;
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

                if(_name.charAt(0) == '*') {
                    _name = _name.substr(1);
                    var _p = _type.split(' ');
                    _p[_p.length-1] += '*';
                    _type = _p.join(' ');
                }
                args.push({ name:_name, type:_type, gltype:_type });
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

        var log_functions = false;

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