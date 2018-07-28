
import hx.strings.StringBuilder;

class Main
{
    static var builder : StringBuilder;

    public static function main()
    {
        builder = new StringBuilder();

        build(sys.io.File.getContent('gl.xml'));
    }

    static function build(_xml : String)
    {
        var xml = Xml.parse(_xml);
        var reg = xml.firstElement();

        writeEnums(reg);
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

        sys.io.File.saveContent('GL.hx', builder.toString());
    }
}
