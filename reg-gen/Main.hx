
import hx.strings.StringBuilder;

class Main
{
    static var builder : StringBuilder;

    public static function main()
    {
        builder = new StringBuilder();

        build(sys.io.File.getContent('gl.xml'));

        sys.io.File.saveContent('GL.hx', builder.toString());
    }

    static function build(_xml : String)
    {
        var xml = Xml.parse(_xml);
        var reg = xml.firstElement();

        writeEnums(reg);
        writeCommands(reg);
    }

    /**
     * Parses the openGL registry XML for 'enums' elements.
     * Each 'enums' elements contains one or more 'enum' element which contains a name, value, and maybe a comment.
     * 
     * This function converts writes all enums as 'inline static var' or 'inline static final' to the beginning of the GL.hx file.
     * Comments are copied over and enums are grouped by their block with a comment header giving the group name, vendor, and any comment.
     * 
     * @param _reg XML structure to parse.
     */
    static function writeEnums(_reg : Xml)
    {
        for (element in _reg.elementsNamed('enums'))
        {
            // Add a block header with details about the follow enum values.
            var group   = element.get('group');
            var comment = element.get('comment');
            var vendor  = element.get('vendor');
            var type    = element.get('type');

            builder.newLine();
            builder.add('\t').add('/**').newLine();
            if (group   != null) builder.add('\t').add(' * $group'         ).newLine();
            if (comment != null) builder.add('\t').add(' * $comment'       ).newLine();
            if (vendor  != null) builder.add('\t').add(' * @vendor $vendor').newLine();
            if (type    != null) builder.add('\t').add(' * @type   $type'  ).newLine();
            builder.add('\t').add(' */').newLine();
            builder.newLine();

            // For each 'enums' block read all the sub enums
            for (glEnum in element.elementsNamed('enum'))
            {
                var name    = glEnum.get('name');
                var value   = glEnum.get('value');
                var comment = glEnum.get('comment');

                // If this enum has a comment add it so auto completion will show it.
                if (comment != null)
                {
                    builder.add('\t').add('/**'        ).newLine();
                    builder.add('\t').add(' * $comment').newLine();
                    builder.add('\t').add(' */'        ).newLine();
                }

                builder.add('\t').add('inline static var $name = $value').newLine();
            }
        }
    }

    /**
     * Parses the openGL XML for 'commands' elements.
     * Each 'commands' element contains one or more 'command' element which is a openGL function.
     * 
     * These 'command' elements contain the command name, return type, and all parameters and their types.
     * The GL types are converted into the equivilent Haxe types and written as an extern function.
     * 
     * @param _reg XML registry to parse.
     */
    static function writeCommands(_reg : Xml)
    {
        builder.newLine();

        for (element in _reg.elementsNamed('commands'))
        {
            for (glCommand in element.elementsNamed('command'))
            {
                var proto : Xml = null;
                var params = new Array<Xml>();

                // Find the proto element and all param elements
                for (part in glCommand.elements())
                {
                    switch (part.nodeName)
                    {
                        case 'proto': proto = part;
                        case 'param': params.push(part);
                    }
                }

                // Get the function name, return type, and setup params.
                var funcReturn = '';
                var funcName   = '';
                var funcParams = new Array<{ name : String, type : String }>();

                // Find the function name and return type.
                // If there is no ptype element in proto then proto's first child value has a non GL return type (Void or Void*).
                for (element in proto.elements())
                {
                    switch (element.nodeName)
                    {
                        case 'name' : funcName   = element.firstChild().nodeValue;
                        case 'ptype': funcReturn = element.firstChild().nodeValue;
                    }
                }
                if (funcReturn == '') funcReturn = proto.firstChild().nodeValue;

                // Convert the param elements into haxe parameters
                for (glParam in params)
                {
                    var name = '';
                    var type = '';

                    for (element in glParam.elements())
                    {
                        switch (element.nodeName)
                        {
                            case 'ptype' : type = element.firstChild().nodeValue;
                            case 'name'  : name = element.firstChild().nodeValue;
                        }
                    }

                    funcParams.push({ name : name, type : type });
                }

                // Write the haxe equivilent function
                builder.newLine();
                builder.add('\t').add('@:native(\'$funcName\')').newLine();
                builder.add('\t').add('static function $funcName(');

                for (i in 0...funcParams.length)
                {
                    builder.add(funcParams[i].name).add(' : ').add(funcParams[i].type);

                    if (i != funcParams.length - 1) builder.add(', ');
                }

                builder.add(') : $funcReturn;').newLine();
            }
        }
    }
}
