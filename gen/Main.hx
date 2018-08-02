
using StringTools;
using Main;

typedef CommandProto = {

    /**
     * Name of the function.
     */
    var name : String;

    /**
     * Return type of the function.
     * Native cpp type (e.g. void, GLint, const void *).
     */
    var type : String;
}

typedef CommandParam = {

    /**
     * The name of the parameter.
     */
    var name : String;

    /**
     * Parameters native cpp type (e.g. GLenum, const GLchar *).
     */
    var type : String;
}

typedef Command = {

    /**
     * The prototype for this command.
     */
    var proto : CommandProto;

    /**
     * All of this commands parameters.
     */
    var param : Array<CommandParam>;
}

class Main
{
    /**
     * String builder to store GL.hx contents.
     */
    static var builder : StringBuf;

    /**
     * Map of all enums found in the gl registry.
     */
    static var enums : Map<String, Xml>;

    /**
     * Map of all commands found in the gl registry.
     */
    static var commands : Map<String, Xml>;

    /**
     * All enums required by the requested openGL feature level.
     */
    static var featureEnums : Array<String>;

    /**
     * All commands required by the requested openGL feature level.
     */
    static var featureCommands : Array<String>;

    /**
     * Map of openGL types to haxe types.
     */
    static var glTypes = [

        // Core openGL types
        'GLboolean'  => 'Bool',
        'GLchar'     => 'cpp.UInt8',
        'GLbyte'     => 'cpp.Int8',
        'GLubyte'    => 'cpp.UInt8',
        'GLshort'    => 'Int',
        'GLushort'   => 'Int',
        'GLint'      => 'Int',
        'GLuint'     => 'Int',
        'GLfixed'    => 'Int',
        'GLint64'    => 'cpp.Int64',
        'GLuint64'   => 'cpp.UInt64',
        'GLsizei'    => 'Int',
        'GLenum'     => 'Int',
        'GLintptr'   => 'Int',
        'GLsizeiptr' => 'Int',
        'GLbitfield' => 'Int',
        'GLfloat'    => 'Float',
        'GLhalf'     => 'Float',
        'GLclampf'   => 'Float',
        'GLdouble'   => 'cpp.Float64',
        'GLclampd'   => 'cpp.Float64',
        'GLsync'     => 'GLSync',

        // Extension types
        'GLDEBUGPROC'          => 'cpp.Callable<Int->Int->Int->Int->Int->cpp.ConstCharStar->cpp.RawPointer<cpp.Void>->Void>',
        'GLeglClientBufferEXT' => 'BytesData',
        'GLeglImageOES'        => 'BytesData',
        'GLhandleARB'          => 'cpp.UInt32',
        'GLcharARB'            => 'cpp.UInt8',
        'GLhalfARB'            => 'cpp.Float32',
        'GLintptrARB'          => 'Int',
        'GLsizeiptrARB'        => 'Int',
        'GLint64EXT'           => 'cpp.Int64',
        'GLuint64EXT'          => 'cpp.UInt64',
        'GLhalfNV'             => 'cpp.Float32',
        'GLvdpauSurfaceNV'     => 'Int',
        'GLVULKANPROCNV'       => 'Int'
    ];

    public static function main() {
        // get the gl feature info to build.
        // profile is optional for certain apis.
        var args = Sys.args();
        var api     = args[0];
        var major   = args[1];
        var minor   = args[2];
        var profile = args.length > 3 ? args[3] : '';

        // Setup builder and feature structures.
        builder         = new StringBuf();
        enums           = new Map();
        commands        = new Map();
        featureEnums    = [];
        featureCommands = [];

        // Load gl registry.
        var xml = Xml.parse(sys.io.File.getContent('gl.xml'));
        var reg = xml.firstElement();

        // Gather all enums and commands then write them into the string builder.
        fetch(reg, api, major, minor, profile);
        write();

        // Save the files content.
        sys.io.File.saveContent('${api.toUpperCase()}_$major$minor$profile.hx', builder.toString());

        trace('${api.toUpperCase()}_$major$minor$profile.hx generated');
        trace('enums    : ${featureEnums.length}');
        trace('commands : ${featureCommands.length}');
    }

    /**
     * Reads all enums and commands from the gl registry then collect (and remove) enums and commands required by the requested gl feature.
     * @param _registry The xml registry to search.
     * @param _profile  The requested opengl profile (core or compatibility).
     * @param _major    The requested opengl major version.
     * @param _minor    The requested opengl minor version.
     */
    static function fetch(_registry : Xml, _api : String, _major : String, _minor : String, _profile : String) {
        // Fetch all the enums with no api attribute or the 'gl' api attribute (skipping any gles stuff)
        for(glEnums in _registry.elementsNamed('enums')) {

            for(glEnum in glEnums.elementsNamed('enum')) {

                if(!glEnum.exists('api') || glEnum.get('api') == _api) {
                    enums.set(glEnum.get('name'), glEnum);
                }
            }
        }

        // Fetch all the commands.
        for(glCommands in _registry.elementsNamed('commands')) {
            for(glCommand in glCommands.elementsNamed('command')) {

                // Find the proto then name element.
                // Break after the first proto and name element.
                // There should only even be one per command but you never know.
                for(proto in glCommand.elementsNamed('proto')) {
                    for(name in proto.elementsNamed('name')) {
                        commands.set(name.firstChild().nodeValue, glCommand);

                        break;
                    }

                    break;
                }
            }
        }

        // Fetch all the enums and commands for the requested gl version and profile.
        for(glFeature in _registry.elementsNamed('feature')) {

            // Only read features which are in the requested api.
            if(glFeature.get('api') != _api) continue;

            // Split feature version to make sure its lower or equal to our target feature.
            var version = glFeature.get('number').split('.');
            if(version[0] < _major || (version[0] == _major && version[1] <= _minor)) {

                // Each feature will have several 'require' tags
                // They are new enum and commands added in this version.
                for(glRequire in glFeature.elementsNamed('require')) {

                    for(glEnum in glRequire.elementsNamed('enum')) {
                        if(!Lambda.has(featureEnums, glEnum.get('name'))) {
                            featureEnums.push(glEnum.get('name'));
                        }
                    }

                    for(glCommand in glRequire.elementsNamed('command')) {
                        if(!Lambda.has(featureCommands, glCommand.get('name'))) {
                            featureCommands.push(glCommand.get('name'));
                        }
                    }
                }

                // Some features will have several 'remove' tags for 'core' profiles
                // These are enums and commands which are to be removed for core profiles.
                for(glRemove in glFeature.elementsNamed('remove')) {

                    // Only do stuff for a remove element if the profiles match.
                    if (glRemove.get('profile') != _profile) continue;

                    for(glEnum in glRemove.elementsNamed('enum')) {
                        featureEnums.remove(glEnum.get('name'));
                    }
                    for(glCommand in glRemove.elementsNamed('command')) {
                        featureCommands.remove(glCommand.get('name'));
                    }
                }
            }
        }
    }

    /**
     * Write the GL.hx file with the enums and commands required by the requested gl feature.
     */
    static function write() {
        writeHeader();

        // Write this profiles enums
        for(glEnum in featureEnums) {
            writeEnum(enums.get(glEnum));
        }

        // Write this profiles
        for(glCommand in featureCommands) {
            writeCommand(commands.get(glCommand));
        }

        writeFooter();
    }

    /**
     * Writes the header for the class.
     * Includes the package, GLsync extern, linc build meta data, and GL extern.
     */
    static function writeHeader() {
        builder.append('package opengl;').newline();
        builder.newline();
        builder.append('import haxe.io.BytesData;').newline();
        builder.newline();
        builder.append('@:keep').newline();
        builder.append('@:unreflective').newline();
        builder.append('@:include("linc_opengl.h")').newline();
        builder.append('@:native("GLsync")').newline();
        builder.append('extern class GLSync {}').newline();

        builder.newline();
        builder.append('@:keep').newline();
        builder.append('@:include("linc_opengl.h")').newline();
        builder.append('#if !display').newline();
        builder.append('@:build(linc.Linc.touch())').newline();
        builder.append('@:build(linc.Linc.xml("opengl"))').newline();
        builder.append('#end').newline();
        builder.append('extern class GL').newline();
        builder.append('{').newline();
        builder.newline();
    }

    /**
     * Writes the haxe equivalent of a openGL enum.
     * If the enum xml contains a comment that is included as well.
     * 
     * @param _enum gl registry <enum> xml element.
     */
    static function writeEnum(_enum : Xml) {
        var name    = _enum.get('name');
        var value   = _enum.get('value');
        var comment = _enum.get('comment');

        // All enums are in hex values.
        // If this hex value is a 64bit literal then truncate it as haxe doesn't support 64bit literals
        // https://github.com/HaxeFoundation/haxe/issues/5150
        // Only a few enums have 64 bit literals and they're 0xFFFFFFFFFFFF based
        if(value.length >= 14) value = value.substr(0, 8);

        // If this enum has a comment add it so auto completion will show it.
        if(comment != null) {
            builder.append('\t').append('/**'        ).newline();
            builder.append('\t').append(' * $comment').newline();
            builder.append('\t').append(' */'        ).newline();
        }

        builder.append('\t').append('inline static var $name = $value;').newline();
        builder.newline();
    }

    /**
     * Writes the haxe inline untyped function for a openGL command.
     * Converts the parameter and return types to appropriate haxe types.
     * 
     * @param _command gl registry <command> xml element.
     */
    static function writeCommand(_command : Xml) {
        var definition = parseCommand(_command);

        // First write out the inline function part.
        builder.newline();
        builder.append('\t').append('inline static function ${definition.proto.name}(');

        for(i in 0...definition.param.length) {
            builder.append('_').append(definition.param[i].name).append(' : ').append(toHaxeParamType(definition.param[i].type));

            if(i != definition.param.length - 1) builder.append(', ');
        }

        builder.append(') : ${ toHaxeReturnType(definition.proto.type) }');

        // Then write the untyped cpp section
        builder.newline();
        builder.append('\t\t').append('{ return untyped __cpp__("${definition.proto.name}(');

        for(i in 0...definition.param.length) {
            builder.append(toCppUntyped(definition.param[i].type, i));

            if(i != definition.param.length - 1) builder.append(', ');
        }

        builder.append(')"');

        // Then finally write the haxe argument names into the untyped section.
        if(definition.param.length > 0) {
            builder.append(', ');

            for(i in 0...definition.param.length) {
                builder.append('_').append(definition.param[i].name);

                if(i != definition.param.length - 1) builder.append(', ');
            }
        }

        // Close the untyped function
        builder.append('); }');
        builder.newline();
    }

    /**
     * Writes the footer for the GL class.
     * Simply writes a closing curly bracket.
     */
    static function writeFooter() {
        builder.newline();
        builder.append('}').newline();
    }

    /**
     * Takes a XML structure defining an openGL function and reads all data from it.
     * The returned anonymouse structure contains a command proto (name and return value) and an array of parameters (name and type).
     * 
     * @param _xml Xml to parse.
     * @return Command
     */
    static function parseCommand(_xml : Xml) : Command {
        var proto : CommandProto = null;
        var param = new Array<CommandParam>();

        for(element in _xml.elements()) {
            switch(element.nodeName) {
                case 'proto': proto = parseCommandProto(element);
                case 'param': param.push(parseCommandParam(element));
            }
        }

        return {
            proto : proto,
            param : param
        };
    }

    /**
     * Parses the proto element of a command.
     * Reads the function name and its return type.
     * 
     * @param _xml Xml to parse.
     * @return CommandProto
     */
    static function parseCommandProto(_xml : Xml) : CommandProto {
        var name = '';
        var type = '';

        for(child in _xml) {
            switch(child.nodeType) {
                case Element, Document:
                    switch(child.nodeName) {
                        case 'name' : name = child.firstChild().nodeValue;
                        case 'ptype': type = child.firstChild().nodeValue;
                    }
                case _:
                    type += child.nodeValue.trim();
            }
        }

        return {
            name : name,
            type : type
        };
    }

    /**
     * Parses a param element of a command.
     * Reads the param name and its type.
     * 
     * @param _xml Xml to parse.
     * @return CommandParam
     */
    static function parseCommandParam(_xml : Xml) : CommandParam {
        var name = '';
        var type = '';

        for(child in _xml) {
            switch(child.nodeType) {
                // Name or GL Type element.
                case Element, Document:
                    switch(child.nodeName) {
                        case 'name' : name = child.firstChild().nodeValue;
                        case 'ptype': type += child.firstChild().nodeValue;
                    }

                // pointer attributes
                case _:
                    type += child.nodeValue;
            }
        }
        
        return {
            name : name,
            type : type
        };
    }

    /**
     * Converts a native cpp type into a haxe type for a command parameter.
     * Handles several pointer types differently for user convenience on the haxe side.
     * Will convert pointers into a Array<?> for haxe.
     * 
     * @param _native Native cpp type to convert.
     * @return Haxe parameter type for the native cpp type.
     */
    static function toHaxeParamType(_native : String) : String {
        // Special check for 'const char *' and various other similar ones.
        // These can be converted to a haxe 'String'
        if(_native == 'const GLchar *' || _native == 'const GLcharARB *') return 'String';

        // Special check for array of strings
        // Used for shader source functions.
        if(_native == 'const GLchar *const*' || _native == 'const GLcharARB **') return 'Array<String>';

        // Special check for non GL types.
        // These are all void pointers of some sorts
        if(_native == 'const void *' || _native == 'void *') return 'BytesData';

        // Special check for const UInt8 pointer.
        // This will be image data so have the haxe type be bytes data.
        if(_native == 'const GLbyte *') return 'BytesData';

        // Then check normal GL types and pointer wrappers

        // Split parts by space to separate any GL types from pointer modifiers
        // We cannot check if a string contains a string equivilent of a GL types due to ARB, and other extension types being named the same with different postfixes.
        var typeParts = _native.split(' ');

        for(part in typeParts) {
            for(type in glTypes.keys()) {
                if(part == type) {

                    // Remove the GL type so we only have the pointer stuff remaining
                    typeParts.remove(type);

                    var remaining = typeParts.join('').replace(' ', '');
                    if(remaining == '') {

                        // If there is no remaining type data then we pass a haxe type back.
                        if (glTypes.exists(type)) {
                            return glTypes.get(type);
                        } else {
                            throw 'unknown openGL type $type';
                        }
                    } else {

                        // If there is still data left that means the type is wrapped as a pointer
                        return switch (remaining) {
                            case '*', '[2]', 'const*' : 'Array<${ glTypes.get(type) }>';
                            case 'const**', 'const*const*' : 'Array<Array<${ glTypes.get(type) }>>';
                            case unknown: throw 'unknown pointer type "$unknown"';
                        }
                    }
                }
            }
        }

        return 'Void';
    }

    /**
     * Converts a native cpp type into a haxe function return type.
     * largely the same to the parameter type except void* pointers are converted to haxe cpp.RawPointers instead of bytes data.
     * 
     * @param _native Native cpp type to convert.
     * @return Haxe return type for the native cpp type.
     */
    static function toHaxeReturnType(_native : String) : String {
        // Special check for 'const char *' and various other similar ones.
        // These can be converted to a haxe 'String'
        if(_native == 'const GLchar *' || _native == 'const GLcharARB *') return 'String';

        // Special check for non GL types.
        // These are all void pointers of some sorts
        if(_native == 'const void *') return 'cpp.RawConstPointer<cpp.Void>';
        if(_native == 'void *') return 'cpp.RawPointer<cpp.Void>';

        // Then check normal GL types and pointer wrappers

        // Split parts by space to separate any GL types from pointer modifiers
        // We cannot check if a string contains a string equivilent of a GL types due to ARB, and other extension types being named the same with different postfixes.
        var typeParts = _native.split(' ');

        for(part in typeParts) {
            for(type in glTypes.keys()) {
                if(part == type) {

                    // Remove the GL type so we only have the pointer stuff remaining
                    typeParts.remove(type);

                    var remaining = typeParts.join('').replace(' ', '');
                    if (remaining == '') {

                        // If there is no remaining type data then we pass a haxe type back.
                        if (glTypes.exists(type)) {
                            return glTypes.get(type);
                        } else {
                            throw 'unknown openGL type $type';
                        }
                    } else {

                        // If there is still data left that means the type is wrapped as a pointer
                        return switch (remaining) {
                            case '*', '[2]'    : 'cpp.RawPointer<${ glTypes.get(type) }>';
                            case 'const*'      : 'cpp.RawConstPointer<${ glTypes.get(type) }>';
                            case 'const**'     : 'cpp.RawPointer<cpp.RawConstPointer<${ glTypes.get(type) }>>';
                            case 'const*const*': 'cpp.RawConstPointer<cpp.RawConstPointer<${ glTypes.get(type) }>>';
                            case unknown: throw 'unknown pointer type "$unknown"';
                        }
                    }
                }
            }
        }

        return 'Void';
    }

    /**
     * Converts a native cpp type to a haxe untyped equivalent.
     * For basic types the untyped can just pass that type through.
     * For pointers the bytes data / string needs to be index and converted.
     * 
     * @param _native   Native cpp type to convert.
     * @param _argCount Argument index number.
     * @return Untyped string for the provided native type.
     */
    static function toCppUntyped(_native : String, _argCount : Int) : String {
        // Special check for 'const char *' and various other similar ones.
        // These can be converted to a haxe 'String'
        if(_native == 'const GLchar *' || _native == 'const GLcharARB *') return '{$_argCount}';

        // Special check for array of strings.
        if(_native == 'const GLchar *const*' || _native == 'const GLcharARB **') return '(const GLint *)&({$_argCount}[0])';

        // Special check for non GL types.
        // These are all void pointers of some sorts
        if(_native == 'const void *' || _native == 'void *' || _native == 'GLeglImageOES' || _native == 'GLeglClientBufferEXT') return '($_native)&({$_argCount}[0])';

        // Split parts by space to separate any GL types from pointer modifiers
        // We cannot check if a string contains a string equivilent of a GL types due to ARB, and other extension types being named the same with different postfixes.
        var typeParts = _native.split(' ');

        for(part in typeParts) {
            for(type in glTypes.keys()) {
                if(part == type) {
                    // Remove the GL type so we only have the pointer stuff remaining
                    typeParts.remove(type);

                    var remaining = typeParts.join('').replace(' ', '');
                    if (remaining == '') {
                        return '{$_argCount}';
                    } else {
                        return '($_native)&({$_argCount}[0])';
                    }
                }
            }
        }

        return '{$_argCount}';
    }

    // Static extension helpers for string buffers
    // both allow the functions to be chained.

    static function append(_buffer : StringBuf, _text : String) : StringBuf {
        _buffer.add(_text);

        return _buffer;
    }

    static function newline(_buffer : StringBuf) : StringBuf {
        _buffer.add('\r\n');

        return _buffer;
    }
}
