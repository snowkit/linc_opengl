package opengl;

import haxe.io.BytesData;
import haxe.io.Bytes;

@:keep
@:unreflective
@:include("linc_opengl.h")
@:native("GLsync")
extern class GLSync {}

@:keep
@:allow(opengl.GL)
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml("opengl"))
#end
extern class GL_linc {
	private inline static var LINC = 1;
	@:keep private static inline var force_bytes_include:haxe.io.Bytes = null;
}

@:keep
@:include("linc_opengl.h")
extern class GL {
	private inline static var LINC = GL_linc.LINC;

	inline static var GL_DEPTH_BUFFER_BIT = 0x00000100;

	inline static var GL_STENCIL_BUFFER_BIT = 0x00000400;

	inline static var GL_COLOR_BUFFER_BIT = 0x00004000;

	inline static var GL_FALSE = 0;

	inline static var GL_TRUE = 1;

	inline static var GL_POINTS = 0x0000;

	inline static var GL_LINES = 0x0001;

	inline static var GL_LINE_LOOP = 0x0002;

	inline static var GL_LINE_STRIP = 0x0003;

	inline static var GL_TRIANGLES = 0x0004;

	inline static var GL_TRIANGLE_STRIP = 0x0005;

	inline static var GL_TRIANGLE_FAN = 0x0006;

	inline static var GL_NEVER = 0x0200;

	inline static var GL_LESS = 0x0201;

	inline static var GL_EQUAL = 0x0202;

	inline static var GL_LEQUAL = 0x0203;

	inline static var GL_GREATER = 0x0204;

	inline static var GL_NOTEQUAL = 0x0205;

	inline static var GL_GEQUAL = 0x0206;

	inline static var GL_ALWAYS = 0x0207;

	inline static var GL_ZERO = 0;

	inline static var GL_ONE = 1;

	inline static var GL_SRC_COLOR = 0x0300;

	inline static var GL_ONE_MINUS_SRC_COLOR = 0x0301;

	inline static var GL_SRC_ALPHA = 0x0302;

	inline static var GL_ONE_MINUS_SRC_ALPHA = 0x0303;

	inline static var GL_DST_ALPHA = 0x0304;

	inline static var GL_ONE_MINUS_DST_ALPHA = 0x0305;

	inline static var GL_DST_COLOR = 0x0306;

	inline static var GL_ONE_MINUS_DST_COLOR = 0x0307;

	inline static var GL_SRC_ALPHA_SATURATE = 0x0308;

	inline static var GL_NONE = 0;

	inline static var GL_FRONT_LEFT = 0x0400;

	inline static var GL_FRONT_RIGHT = 0x0401;

	inline static var GL_BACK_LEFT = 0x0402;

	inline static var GL_BACK_RIGHT = 0x0403;

	inline static var GL_FRONT = 0x0404;

	inline static var GL_BACK = 0x0405;

	inline static var GL_LEFT = 0x0406;

	inline static var GL_RIGHT = 0x0407;

	inline static var GL_FRONT_AND_BACK = 0x0408;

	inline static var GL_NO_ERROR = 0;

	inline static var GL_INVALID_ENUM = 0x0500;

	inline static var GL_INVALID_VALUE = 0x0501;

	inline static var GL_INVALID_OPERATION = 0x0502;

	inline static var GL_OUT_OF_MEMORY = 0x0505;

	inline static var GL_CW = 0x0900;

	inline static var GL_CCW = 0x0901;

	inline static var GL_POINT_SIZE = 0x0B11;

	inline static var GL_POINT_SIZE_RANGE = 0x0B12;

	inline static var GL_POINT_SIZE_GRANULARITY = 0x0B13;

	inline static var GL_LINE_SMOOTH = 0x0B20;

	inline static var GL_LINE_WIDTH = 0x0B21;

	inline static var GL_LINE_WIDTH_RANGE = 0x0B22;

	inline static var GL_LINE_WIDTH_GRANULARITY = 0x0B23;

	inline static var GL_POLYGON_MODE = 0x0B40;

	inline static var GL_POLYGON_SMOOTH = 0x0B41;

	inline static var GL_CULL_FACE = 0x0B44;

	inline static var GL_CULL_FACE_MODE = 0x0B45;

	inline static var GL_FRONT_FACE = 0x0B46;

	inline static var GL_DEPTH_RANGE = 0x0B70;

	inline static var GL_DEPTH_TEST = 0x0B71;

	inline static var GL_DEPTH_WRITEMASK = 0x0B72;

	inline static var GL_DEPTH_CLEAR_VALUE = 0x0B73;

	inline static var GL_DEPTH_FUNC = 0x0B74;

	inline static var GL_STENCIL_TEST = 0x0B90;

	inline static var GL_STENCIL_CLEAR_VALUE = 0x0B91;

	inline static var GL_STENCIL_FUNC = 0x0B92;

	inline static var GL_STENCIL_VALUE_MASK = 0x0B93;

	inline static var GL_STENCIL_FAIL = 0x0B94;

	inline static var GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95;

	inline static var GL_STENCIL_PASS_DEPTH_PASS = 0x0B96;

	inline static var GL_STENCIL_REF = 0x0B97;

	inline static var GL_STENCIL_WRITEMASK = 0x0B98;

	inline static var GL_VIEWPORT = 0x0BA2;

	inline static var GL_DITHER = 0x0BD0;

	inline static var GL_BLEND_DST = 0x0BE0;

	inline static var GL_BLEND_SRC = 0x0BE1;

	inline static var GL_BLEND = 0x0BE2;

	inline static var GL_LOGIC_OP_MODE = 0x0BF0;

	inline static var GL_DRAW_BUFFER = 0x0C01;

	inline static var GL_READ_BUFFER = 0x0C02;

	inline static var GL_SCISSOR_BOX = 0x0C10;

	inline static var GL_SCISSOR_TEST = 0x0C11;

	inline static var GL_COLOR_CLEAR_VALUE = 0x0C22;

	inline static var GL_COLOR_WRITEMASK = 0x0C23;

	inline static var GL_DOUBLEBUFFER = 0x0C32;

	inline static var GL_STEREO = 0x0C33;

	inline static var GL_LINE_SMOOTH_HINT = 0x0C52;

	inline static var GL_POLYGON_SMOOTH_HINT = 0x0C53;

	inline static var GL_UNPACK_SWAP_BYTES = 0x0CF0;

	inline static var GL_UNPACK_LSB_FIRST = 0x0CF1;

	inline static var GL_UNPACK_ROW_LENGTH = 0x0CF2;

	inline static var GL_UNPACK_SKIP_ROWS = 0x0CF3;

	inline static var GL_UNPACK_SKIP_PIXELS = 0x0CF4;

	inline static var GL_UNPACK_ALIGNMENT = 0x0CF5;

	inline static var GL_PACK_SWAP_BYTES = 0x0D00;

	inline static var GL_PACK_LSB_FIRST = 0x0D01;

	inline static var GL_PACK_ROW_LENGTH = 0x0D02;

	inline static var GL_PACK_SKIP_ROWS = 0x0D03;

	inline static var GL_PACK_SKIP_PIXELS = 0x0D04;

	inline static var GL_PACK_ALIGNMENT = 0x0D05;

	inline static var GL_MAX_TEXTURE_SIZE = 0x0D33;

	inline static var GL_MAX_VIEWPORT_DIMS = 0x0D3A;

	inline static var GL_SUBPIXEL_BITS = 0x0D50;

	inline static var GL_TEXTURE_1D = 0x0DE0;

	inline static var GL_TEXTURE_2D = 0x0DE1;

	inline static var GL_TEXTURE_WIDTH = 0x1000;

	inline static var GL_TEXTURE_HEIGHT = 0x1001;

	inline static var GL_TEXTURE_BORDER_COLOR = 0x1004;

	inline static var GL_DONT_CARE = 0x1100;

	inline static var GL_FASTEST = 0x1101;

	inline static var GL_NICEST = 0x1102;

	inline static var GL_BYTE = 0x1400;

	inline static var GL_UNSIGNED_BYTE = 0x1401;

	inline static var GL_SHORT = 0x1402;

	inline static var GL_UNSIGNED_SHORT = 0x1403;

	inline static var GL_INT = 0x1404;

	inline static var GL_UNSIGNED_INT = 0x1405;

	inline static var GL_FLOAT = 0x1406;

	inline static var GL_CLEAR = 0x1500;

	inline static var GL_AND = 0x1501;

	inline static var GL_AND_REVERSE = 0x1502;

	inline static var GL_COPY = 0x1503;

	inline static var GL_AND_INVERTED = 0x1504;

	inline static var GL_NOOP = 0x1505;

	inline static var GL_XOR = 0x1506;

	inline static var GL_OR = 0x1507;

	inline static var GL_NOR = 0x1508;

	inline static var GL_EQUIV = 0x1509;

	inline static var GL_INVERT = 0x150A;

	inline static var GL_OR_REVERSE = 0x150B;

	inline static var GL_COPY_INVERTED = 0x150C;

	inline static var GL_OR_INVERTED = 0x150D;

	inline static var GL_NAND = 0x150E;

	inline static var GL_SET = 0x150F;

	inline static var GL_TEXTURE = 0x1702;

	inline static var GL_COLOR = 0x1800;

	inline static var GL_DEPTH = 0x1801;

	inline static var GL_STENCIL = 0x1802;

	inline static var GL_STENCIL_INDEX = 0x1901;

	inline static var GL_DEPTH_COMPONENT = 0x1902;

	inline static var GL_RED = 0x1903;

	inline static var GL_GREEN = 0x1904;

	inline static var GL_BLUE = 0x1905;

	inline static var GL_ALPHA = 0x1906;

	inline static var GL_RGB = 0x1907;

	inline static var GL_RGBA = 0x1908;

	inline static var GL_POINT = 0x1B00;

	inline static var GL_LINE = 0x1B01;

	inline static var GL_FILL = 0x1B02;

	inline static var GL_KEEP = 0x1E00;

	inline static var GL_REPLACE = 0x1E01;

	inline static var GL_INCR = 0x1E02;

	inline static var GL_DECR = 0x1E03;

	inline static var GL_VENDOR = 0x1F00;

	inline static var GL_RENDERER = 0x1F01;

	inline static var GL_VERSION = 0x1F02;

	inline static var GL_EXTENSIONS = 0x1F03;

	inline static var GL_NEAREST = 0x2600;

	inline static var GL_LINEAR = 0x2601;

	inline static var GL_NEAREST_MIPMAP_NEAREST = 0x2700;

	inline static var GL_LINEAR_MIPMAP_NEAREST = 0x2701;

	inline static var GL_NEAREST_MIPMAP_LINEAR = 0x2702;

	inline static var GL_LINEAR_MIPMAP_LINEAR = 0x2703;

	inline static var GL_TEXTURE_MAG_FILTER = 0x2800;

	inline static var GL_TEXTURE_MIN_FILTER = 0x2801;

	inline static var GL_TEXTURE_WRAP_S = 0x2802;

	inline static var GL_TEXTURE_WRAP_T = 0x2803;

	inline static var GL_REPEAT = 0x2901;

	inline static var GL_COLOR_LOGIC_OP = 0x0BF2;

	inline static var GL_POLYGON_OFFSET_UNITS = 0x2A00;

	inline static var GL_POLYGON_OFFSET_POINT = 0x2A01;

	inline static var GL_POLYGON_OFFSET_LINE = 0x2A02;

	inline static var GL_POLYGON_OFFSET_FILL = 0x8037;

	inline static var GL_POLYGON_OFFSET_FACTOR = 0x8038;

	inline static var GL_TEXTURE_BINDING_1D = 0x8068;

	inline static var GL_TEXTURE_BINDING_2D = 0x8069;

	inline static var GL_TEXTURE_INTERNAL_FORMAT = 0x1003;

	inline static var GL_TEXTURE_RED_SIZE = 0x805C;

	inline static var GL_TEXTURE_GREEN_SIZE = 0x805D;

	inline static var GL_TEXTURE_BLUE_SIZE = 0x805E;

	inline static var GL_TEXTURE_ALPHA_SIZE = 0x805F;

	inline static var GL_DOUBLE = 0x140A;

	inline static var GL_PROXY_TEXTURE_1D = 0x8063;

	inline static var GL_PROXY_TEXTURE_2D = 0x8064;

	inline static var GL_R3_G3_B2 = 0x2A10;

	inline static var GL_RGB4 = 0x804F;

	inline static var GL_RGB5 = 0x8050;

	inline static var GL_RGB8 = 0x8051;

	inline static var GL_RGB10 = 0x8052;

	inline static var GL_RGB12 = 0x8053;

	inline static var GL_RGB16 = 0x8054;

	inline static var GL_RGBA2 = 0x8055;

	inline static var GL_RGBA4 = 0x8056;

	inline static var GL_RGB5_A1 = 0x8057;

	inline static var GL_RGBA8 = 0x8058;

	inline static var GL_RGB10_A2 = 0x8059;

	inline static var GL_RGBA12 = 0x805A;

	inline static var GL_RGBA16 = 0x805B;

	inline static var GL_UNSIGNED_BYTE_3_3_2 = 0x8032;

	inline static var GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033;

	inline static var GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034;

	inline static var GL_UNSIGNED_INT_8_8_8_8 = 0x8035;

	inline static var GL_UNSIGNED_INT_10_10_10_2 = 0x8036;

	inline static var GL_TEXTURE_BINDING_3D = 0x806A;

	inline static var GL_PACK_SKIP_IMAGES = 0x806B;

	inline static var GL_PACK_IMAGE_HEIGHT = 0x806C;

	inline static var GL_UNPACK_SKIP_IMAGES = 0x806D;

	inline static var GL_UNPACK_IMAGE_HEIGHT = 0x806E;

	inline static var GL_TEXTURE_3D = 0x806F;

	inline static var GL_PROXY_TEXTURE_3D = 0x8070;

	inline static var GL_TEXTURE_DEPTH = 0x8071;

	inline static var GL_TEXTURE_WRAP_R = 0x8072;

	inline static var GL_MAX_3D_TEXTURE_SIZE = 0x8073;

	inline static var GL_UNSIGNED_BYTE_2_3_3_REV = 0x8362;

	inline static var GL_UNSIGNED_SHORT_5_6_5 = 0x8363;

	inline static var GL_UNSIGNED_SHORT_5_6_5_REV = 0x8364;

	inline static var GL_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365;

	inline static var GL_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366;

	inline static var GL_UNSIGNED_INT_8_8_8_8_REV = 0x8367;

	inline static var GL_UNSIGNED_INT_2_10_10_10_REV = 0x8368;

	inline static var GL_BGR = 0x80E0;

	inline static var GL_BGRA = 0x80E1;

	inline static var GL_MAX_ELEMENTS_VERTICES = 0x80E8;

	inline static var GL_MAX_ELEMENTS_INDICES = 0x80E9;

	inline static var GL_CLAMP_TO_EDGE = 0x812F;

	inline static var GL_TEXTURE_MIN_LOD = 0x813A;

	inline static var GL_TEXTURE_MAX_LOD = 0x813B;

	inline static var GL_TEXTURE_BASE_LEVEL = 0x813C;

	inline static var GL_TEXTURE_MAX_LEVEL = 0x813D;

	inline static var GL_SMOOTH_POINT_SIZE_RANGE = 0x0B12;

	inline static var GL_SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13;

	inline static var GL_SMOOTH_LINE_WIDTH_RANGE = 0x0B22;

	inline static var GL_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23;

	inline static var GL_ALIASED_LINE_WIDTH_RANGE = 0x846E;

	inline static var GL_TEXTURE0 = 0x84C0;

	inline static var GL_TEXTURE1 = 0x84C1;

	inline static var GL_TEXTURE2 = 0x84C2;

	inline static var GL_TEXTURE3 = 0x84C3;

	inline static var GL_TEXTURE4 = 0x84C4;

	inline static var GL_TEXTURE5 = 0x84C5;

	inline static var GL_TEXTURE6 = 0x84C6;

	inline static var GL_TEXTURE7 = 0x84C7;

	inline static var GL_TEXTURE8 = 0x84C8;

	inline static var GL_TEXTURE9 = 0x84C9;

	inline static var GL_TEXTURE10 = 0x84CA;

	inline static var GL_TEXTURE11 = 0x84CB;

	inline static var GL_TEXTURE12 = 0x84CC;

	inline static var GL_TEXTURE13 = 0x84CD;

	inline static var GL_TEXTURE14 = 0x84CE;

	inline static var GL_TEXTURE15 = 0x84CF;

	inline static var GL_TEXTURE16 = 0x84D0;

	inline static var GL_TEXTURE17 = 0x84D1;

	inline static var GL_TEXTURE18 = 0x84D2;

	inline static var GL_TEXTURE19 = 0x84D3;

	inline static var GL_TEXTURE20 = 0x84D4;

	inline static var GL_TEXTURE21 = 0x84D5;

	inline static var GL_TEXTURE22 = 0x84D6;

	inline static var GL_TEXTURE23 = 0x84D7;

	inline static var GL_TEXTURE24 = 0x84D8;

	inline static var GL_TEXTURE25 = 0x84D9;

	inline static var GL_TEXTURE26 = 0x84DA;

	inline static var GL_TEXTURE27 = 0x84DB;

	inline static var GL_TEXTURE28 = 0x84DC;

	inline static var GL_TEXTURE29 = 0x84DD;

	inline static var GL_TEXTURE30 = 0x84DE;

	inline static var GL_TEXTURE31 = 0x84DF;

	inline static var GL_ACTIVE_TEXTURE = 0x84E0;

	inline static var GL_MULTISAMPLE = 0x809D;

	inline static var GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809E;

	inline static var GL_SAMPLE_ALPHA_TO_ONE = 0x809F;

	inline static var GL_SAMPLE_COVERAGE = 0x80A0;

	inline static var GL_SAMPLE_BUFFERS = 0x80A8;

	inline static var GL_SAMPLES = 0x80A9;

	inline static var GL_SAMPLE_COVERAGE_VALUE = 0x80AA;

	inline static var GL_SAMPLE_COVERAGE_INVERT = 0x80AB;

	inline static var GL_TEXTURE_CUBE_MAP = 0x8513;

	inline static var GL_TEXTURE_BINDING_CUBE_MAP = 0x8514;

	inline static var GL_TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;

	inline static var GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;

	inline static var GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;

	inline static var GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;

	inline static var GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;

	inline static var GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;

	inline static var GL_PROXY_TEXTURE_CUBE_MAP = 0x851B;

	inline static var GL_MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;

	inline static var GL_COMPRESSED_RGB = 0x84ED;

	inline static var GL_COMPRESSED_RGBA = 0x84EE;

	inline static var GL_TEXTURE_COMPRESSION_HINT = 0x84EF;

	inline static var GL_TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0;

	inline static var GL_TEXTURE_COMPRESSED = 0x86A1;

	inline static var GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;

	inline static var GL_COMPRESSED_TEXTURE_FORMATS = 0x86A3;

	inline static var GL_CLAMP_TO_BORDER = 0x812D;

	inline static var GL_BLEND_DST_RGB = 0x80C8;

	inline static var GL_BLEND_SRC_RGB = 0x80C9;

	inline static var GL_BLEND_DST_ALPHA = 0x80CA;

	inline static var GL_BLEND_SRC_ALPHA = 0x80CB;

	inline static var GL_POINT_FADE_THRESHOLD_SIZE = 0x8128;

	inline static var GL_DEPTH_COMPONENT16 = 0x81A5;

	inline static var GL_DEPTH_COMPONENT24 = 0x81A6;

	inline static var GL_DEPTH_COMPONENT32 = 0x81A7;

	inline static var GL_MIRRORED_REPEAT = 0x8370;

	inline static var GL_MAX_TEXTURE_LOD_BIAS = 0x84FD;

	inline static var GL_TEXTURE_LOD_BIAS = 0x8501;

	inline static var GL_INCR_WRAP = 0x8507;

	inline static var GL_DECR_WRAP = 0x8508;

	inline static var GL_TEXTURE_DEPTH_SIZE = 0x884A;

	inline static var GL_TEXTURE_COMPARE_MODE = 0x884C;

	inline static var GL_TEXTURE_COMPARE_FUNC = 0x884D;

	inline static var GL_BLEND_COLOR = 0x8005;

	inline static var GL_BLEND_EQUATION = 0x8009;

	inline static var GL_CONSTANT_COLOR = 0x8001;

	inline static var GL_ONE_MINUS_CONSTANT_COLOR = 0x8002;

	inline static var GL_CONSTANT_ALPHA = 0x8003;

	inline static var GL_ONE_MINUS_CONSTANT_ALPHA = 0x8004;

	inline static var GL_FUNC_ADD = 0x8006;

	inline static var GL_FUNC_REVERSE_SUBTRACT = 0x800B;

	inline static var GL_FUNC_SUBTRACT = 0x800A;

	inline static var GL_MIN = 0x8007;

	inline static var GL_MAX = 0x8008;

	inline static var GL_BUFFER_SIZE = 0x8764;

	inline static var GL_BUFFER_USAGE = 0x8765;

	inline static var GL_QUERY_COUNTER_BITS = 0x8864;

	inline static var GL_CURRENT_QUERY = 0x8865;

	inline static var GL_QUERY_RESULT = 0x8866;

	inline static var GL_QUERY_RESULT_AVAILABLE = 0x8867;

	inline static var GL_ARRAY_BUFFER = 0x8892;

	inline static var GL_ELEMENT_ARRAY_BUFFER = 0x8893;

	inline static var GL_ARRAY_BUFFER_BINDING = 0x8894;

	inline static var GL_ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;

	inline static var GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

	inline static var GL_READ_ONLY = 0x88B8;

	inline static var GL_WRITE_ONLY = 0x88B9;

	inline static var GL_READ_WRITE = 0x88BA;

	inline static var GL_BUFFER_ACCESS = 0x88BB;

	inline static var GL_BUFFER_MAPPED = 0x88BC;

	inline static var GL_BUFFER_MAP_POINTER = 0x88BD;

	inline static var GL_STREAM_DRAW = 0x88E0;

	inline static var GL_STREAM_READ = 0x88E1;

	inline static var GL_STREAM_COPY = 0x88E2;

	inline static var GL_STATIC_DRAW = 0x88E4;

	inline static var GL_STATIC_READ = 0x88E5;

	inline static var GL_STATIC_COPY = 0x88E6;

	inline static var GL_DYNAMIC_DRAW = 0x88E8;

	inline static var GL_DYNAMIC_READ = 0x88E9;

	inline static var GL_DYNAMIC_COPY = 0x88EA;

	inline static var GL_SAMPLES_PASSED = 0x8914;

	inline static var GL_SRC1_ALPHA = 0x8589;

	inline static var GL_BLEND_EQUATION_RGB = 0x8009;

	inline static var GL_VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;

	inline static var GL_VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;

	inline static var GL_VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;

	inline static var GL_VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;

	inline static var GL_CURRENT_VERTEX_ATTRIB = 0x8626;

	inline static var GL_VERTEX_PROGRAM_POINT_SIZE = 0x8642;

	inline static var GL_VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;

	inline static var GL_STENCIL_BACK_FUNC = 0x8800;

	inline static var GL_STENCIL_BACK_FAIL = 0x8801;

	inline static var GL_STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;

	inline static var GL_STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;

	inline static var GL_MAX_DRAW_BUFFERS = 0x8824;

	inline static var GL_DRAW_BUFFER0 = 0x8825;

	inline static var GL_DRAW_BUFFER1 = 0x8826;

	inline static var GL_DRAW_BUFFER2 = 0x8827;

	inline static var GL_DRAW_BUFFER3 = 0x8828;

	inline static var GL_DRAW_BUFFER4 = 0x8829;

	inline static var GL_DRAW_BUFFER5 = 0x882A;

	inline static var GL_DRAW_BUFFER6 = 0x882B;

	inline static var GL_DRAW_BUFFER7 = 0x882C;

	inline static var GL_DRAW_BUFFER8 = 0x882D;

	inline static var GL_DRAW_BUFFER9 = 0x882E;

	inline static var GL_DRAW_BUFFER10 = 0x882F;

	inline static var GL_DRAW_BUFFER11 = 0x8830;

	inline static var GL_DRAW_BUFFER12 = 0x8831;

	inline static var GL_DRAW_BUFFER13 = 0x8832;

	inline static var GL_DRAW_BUFFER14 = 0x8833;

	inline static var GL_DRAW_BUFFER15 = 0x8834;

	inline static var GL_BLEND_EQUATION_ALPHA = 0x883D;

	inline static var GL_MAX_VERTEX_ATTRIBS = 0x8869;

	inline static var GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;

	inline static var GL_MAX_TEXTURE_IMAGE_UNITS = 0x8872;

	inline static var GL_FRAGMENT_SHADER = 0x8B30;

	inline static var GL_VERTEX_SHADER = 0x8B31;

	inline static var GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49;

	inline static var GL_MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A;

	inline static var GL_MAX_VARYING_FLOATS = 0x8B4B;

	inline static var GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;

	inline static var GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;

	inline static var GL_SHADER_TYPE = 0x8B4F;

	inline static var GL_FLOAT_VEC2 = 0x8B50;

	inline static var GL_FLOAT_VEC3 = 0x8B51;

	inline static var GL_FLOAT_VEC4 = 0x8B52;

	inline static var GL_INT_VEC2 = 0x8B53;

	inline static var GL_INT_VEC3 = 0x8B54;

	inline static var GL_INT_VEC4 = 0x8B55;

	inline static var GL_BOOL = 0x8B56;

	inline static var GL_BOOL_VEC2 = 0x8B57;

	inline static var GL_BOOL_VEC3 = 0x8B58;

	inline static var GL_BOOL_VEC4 = 0x8B59;

	inline static var GL_FLOAT_MAT2 = 0x8B5A;

	inline static var GL_FLOAT_MAT3 = 0x8B5B;

	inline static var GL_FLOAT_MAT4 = 0x8B5C;

	inline static var GL_SAMPLER_1D = 0x8B5D;

	inline static var GL_SAMPLER_2D = 0x8B5E;

	inline static var GL_SAMPLER_3D = 0x8B5F;

	inline static var GL_SAMPLER_CUBE = 0x8B60;

	inline static var GL_SAMPLER_1D_SHADOW = 0x8B61;

	inline static var GL_SAMPLER_2D_SHADOW = 0x8B62;

	inline static var GL_DELETE_STATUS = 0x8B80;

	inline static var GL_COMPILE_STATUS = 0x8B81;

	inline static var GL_LINK_STATUS = 0x8B82;

	inline static var GL_VALIDATE_STATUS = 0x8B83;

	inline static var GL_INFO_LOG_LENGTH = 0x8B84;

	inline static var GL_ATTACHED_SHADERS = 0x8B85;

	inline static var GL_ACTIVE_UNIFORMS = 0x8B86;

	inline static var GL_ACTIVE_UNIFORM_MAX_LENGTH = 0x8B87;

	inline static var GL_SHADER_SOURCE_LENGTH = 0x8B88;

	inline static var GL_ACTIVE_ATTRIBUTES = 0x8B89;

	inline static var GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = 0x8B8A;

	inline static var GL_FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B;

	inline static var GL_SHADING_LANGUAGE_VERSION = 0x8B8C;

	inline static var GL_CURRENT_PROGRAM = 0x8B8D;

	inline static var GL_POINT_SPRITE_COORD_ORIGIN = 0x8CA0;

	inline static var GL_LOWER_LEFT = 0x8CA1;

	inline static var GL_UPPER_LEFT = 0x8CA2;

	inline static var GL_STENCIL_BACK_REF = 0x8CA3;

	inline static var GL_STENCIL_BACK_VALUE_MASK = 0x8CA4;

	inline static var GL_STENCIL_BACK_WRITEMASK = 0x8CA5;

	inline static var GL_PIXEL_PACK_BUFFER = 0x88EB;

	inline static var GL_PIXEL_UNPACK_BUFFER = 0x88EC;

	inline static var GL_PIXEL_PACK_BUFFER_BINDING = 0x88ED;

	inline static var GL_PIXEL_UNPACK_BUFFER_BINDING = 0x88EF;

	inline static var GL_FLOAT_MAT2x3 = 0x8B65;

	inline static var GL_FLOAT_MAT2x4 = 0x8B66;

	inline static var GL_FLOAT_MAT3x2 = 0x8B67;

	inline static var GL_FLOAT_MAT3x4 = 0x8B68;

	inline static var GL_FLOAT_MAT4x2 = 0x8B69;

	inline static var GL_FLOAT_MAT4x3 = 0x8B6A;

	inline static var GL_SRGB = 0x8C40;

	inline static var GL_SRGB8 = 0x8C41;

	inline static var GL_SRGB_ALPHA = 0x8C42;

	inline static var GL_SRGB8_ALPHA8 = 0x8C43;

	inline static var GL_COMPRESSED_SRGB = 0x8C48;

	inline static var GL_COMPRESSED_SRGB_ALPHA = 0x8C49;

	inline static var GL_COMPARE_REF_TO_TEXTURE = 0x884E;

	inline static var GL_CLIP_DISTANCE0 = 0x3000;

	inline static var GL_CLIP_DISTANCE1 = 0x3001;

	inline static var GL_CLIP_DISTANCE2 = 0x3002;

	inline static var GL_CLIP_DISTANCE3 = 0x3003;

	inline static var GL_CLIP_DISTANCE4 = 0x3004;

	inline static var GL_CLIP_DISTANCE5 = 0x3005;

	inline static var GL_CLIP_DISTANCE6 = 0x3006;

	inline static var GL_CLIP_DISTANCE7 = 0x3007;

	inline static var GL_MAX_CLIP_DISTANCES = 0x0D32;

	inline static var GL_MAJOR_VERSION = 0x821B;

	inline static var GL_MINOR_VERSION = 0x821C;

	inline static var GL_NUM_EXTENSIONS = 0x821D;

	inline static var GL_CONTEXT_FLAGS = 0x821E;

	inline static var GL_COMPRESSED_RED = 0x8225;

	inline static var GL_COMPRESSED_RG = 0x8226;

	inline static var GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 0x00000001;

	inline static var GL_RGBA32F = 0x8814;

	inline static var GL_RGB32F = 0x8815;

	inline static var GL_RGBA16F = 0x881A;

	inline static var GL_RGB16F = 0x881B;

	inline static var GL_VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD;

	inline static var GL_MAX_ARRAY_TEXTURE_LAYERS = 0x88FF;

	inline static var GL_MIN_PROGRAM_TEXEL_OFFSET = 0x8904;

	inline static var GL_MAX_PROGRAM_TEXEL_OFFSET = 0x8905;

	inline static var GL_CLAMP_READ_COLOR = 0x891C;

	inline static var GL_FIXED_ONLY = 0x891D;

	inline static var GL_MAX_VARYING_COMPONENTS = 0x8B4B;

	inline static var GL_TEXTURE_1D_ARRAY = 0x8C18;

	inline static var GL_PROXY_TEXTURE_1D_ARRAY = 0x8C19;

	inline static var GL_TEXTURE_2D_ARRAY = 0x8C1A;

	inline static var GL_PROXY_TEXTURE_2D_ARRAY = 0x8C1B;

	inline static var GL_TEXTURE_BINDING_1D_ARRAY = 0x8C1C;

	inline static var GL_TEXTURE_BINDING_2D_ARRAY = 0x8C1D;

	inline static var GL_R11F_G11F_B10F = 0x8C3A;

	inline static var GL_UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B;

	inline static var GL_RGB9_E5 = 0x8C3D;

	inline static var GL_UNSIGNED_INT_5_9_9_9_REV = 0x8C3E;

	inline static var GL_TEXTURE_SHARED_SIZE = 0x8C3F;

	inline static var GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 0x8C76;

	inline static var GL_TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F;

	inline static var GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80;

	inline static var GL_TRANSFORM_FEEDBACK_VARYINGS = 0x8C83;

	inline static var GL_TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84;

	inline static var GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85;

	inline static var GL_PRIMITIVES_GENERATED = 0x8C87;

	inline static var GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88;

	inline static var GL_RASTERIZER_DISCARD = 0x8C89;

	inline static var GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A;

	inline static var GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B;

	inline static var GL_INTERLEAVED_ATTRIBS = 0x8C8C;

	inline static var GL_SEPARATE_ATTRIBS = 0x8C8D;

	inline static var GL_TRANSFORM_FEEDBACK_BUFFER = 0x8C8E;

	inline static var GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F;

	inline static var GL_RGBA32UI = 0x8D70;

	inline static var GL_RGB32UI = 0x8D71;

	inline static var GL_RGBA16UI = 0x8D76;

	inline static var GL_RGB16UI = 0x8D77;

	inline static var GL_RGBA8UI = 0x8D7C;

	inline static var GL_RGB8UI = 0x8D7D;

	inline static var GL_RGBA32I = 0x8D82;

	inline static var GL_RGB32I = 0x8D83;

	inline static var GL_RGBA16I = 0x8D88;

	inline static var GL_RGB16I = 0x8D89;

	inline static var GL_RGBA8I = 0x8D8E;

	inline static var GL_RGB8I = 0x8D8F;

	inline static var GL_RED_INTEGER = 0x8D94;

	inline static var GL_GREEN_INTEGER = 0x8D95;

	inline static var GL_BLUE_INTEGER = 0x8D96;

	inline static var GL_RGB_INTEGER = 0x8D98;

	inline static var GL_RGBA_INTEGER = 0x8D99;

	inline static var GL_BGR_INTEGER = 0x8D9A;

	inline static var GL_BGRA_INTEGER = 0x8D9B;

	inline static var GL_SAMPLER_1D_ARRAY = 0x8DC0;

	inline static var GL_SAMPLER_2D_ARRAY = 0x8DC1;

	inline static var GL_SAMPLER_1D_ARRAY_SHADOW = 0x8DC3;

	inline static var GL_SAMPLER_2D_ARRAY_SHADOW = 0x8DC4;

	inline static var GL_SAMPLER_CUBE_SHADOW = 0x8DC5;

	inline static var GL_UNSIGNED_INT_VEC2 = 0x8DC6;

	inline static var GL_UNSIGNED_INT_VEC3 = 0x8DC7;

	inline static var GL_UNSIGNED_INT_VEC4 = 0x8DC8;

	inline static var GL_INT_SAMPLER_1D = 0x8DC9;

	inline static var GL_INT_SAMPLER_2D = 0x8DCA;

	inline static var GL_INT_SAMPLER_3D = 0x8DCB;

	inline static var GL_INT_SAMPLER_CUBE = 0x8DCC;

	inline static var GL_INT_SAMPLER_1D_ARRAY = 0x8DCE;

	inline static var GL_INT_SAMPLER_2D_ARRAY = 0x8DCF;

	inline static var GL_UNSIGNED_INT_SAMPLER_1D = 0x8DD1;

	inline static var GL_UNSIGNED_INT_SAMPLER_2D = 0x8DD2;

	inline static var GL_UNSIGNED_INT_SAMPLER_3D = 0x8DD3;

	inline static var GL_UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4;

	inline static var GL_UNSIGNED_INT_SAMPLER_1D_ARRAY = 0x8DD6;

	inline static var GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7;

	inline static var GL_QUERY_WAIT = 0x8E13;

	inline static var GL_QUERY_NO_WAIT = 0x8E14;

	inline static var GL_QUERY_BY_REGION_WAIT = 0x8E15;

	inline static var GL_QUERY_BY_REGION_NO_WAIT = 0x8E16;

	inline static var GL_BUFFER_ACCESS_FLAGS = 0x911F;

	inline static var GL_BUFFER_MAP_LENGTH = 0x9120;

	inline static var GL_BUFFER_MAP_OFFSET = 0x9121;

	inline static var GL_DEPTH_COMPONENT32F = 0x8CAC;

	inline static var GL_DEPTH32F_STENCIL8 = 0x8CAD;

	inline static var GL_FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD;

	inline static var GL_INVALID_FRAMEBUFFER_OPERATION = 0x0506;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217;

	inline static var GL_FRAMEBUFFER_DEFAULT = 0x8218;

	inline static var GL_FRAMEBUFFER_UNDEFINED = 0x8219;

	inline static var GL_DEPTH_STENCIL_ATTACHMENT = 0x821A;

	inline static var GL_MAX_RENDERBUFFER_SIZE = 0x84E8;

	inline static var GL_DEPTH_STENCIL = 0x84F9;

	inline static var GL_UNSIGNED_INT_24_8 = 0x84FA;

	inline static var GL_DEPTH24_STENCIL8 = 0x88F0;

	inline static var GL_TEXTURE_STENCIL_SIZE = 0x88F1;

	inline static var GL_TEXTURE_RED_TYPE = 0x8C10;

	inline static var GL_TEXTURE_GREEN_TYPE = 0x8C11;

	inline static var GL_TEXTURE_BLUE_TYPE = 0x8C12;

	inline static var GL_TEXTURE_ALPHA_TYPE = 0x8C13;

	inline static var GL_TEXTURE_DEPTH_TYPE = 0x8C16;

	inline static var GL_UNSIGNED_NORMALIZED = 0x8C17;

	inline static var GL_FRAMEBUFFER_BINDING = 0x8CA6;

	inline static var GL_DRAW_FRAMEBUFFER_BINDING = 0x8CA6;

	inline static var GL_RENDERBUFFER_BINDING = 0x8CA7;

	inline static var GL_READ_FRAMEBUFFER = 0x8CA8;

	inline static var GL_DRAW_FRAMEBUFFER = 0x8CA9;

	inline static var GL_READ_FRAMEBUFFER_BINDING = 0x8CAA;

	inline static var GL_RENDERBUFFER_SAMPLES = 0x8CAB;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4;

	inline static var GL_FRAMEBUFFER_COMPLETE = 0x8CD5;

	inline static var GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;

	inline static var GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;

	inline static var GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 0x8CDB;

	inline static var GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 0x8CDC;

	inline static var GL_FRAMEBUFFER_UNSUPPORTED = 0x8CDD;

	inline static var GL_MAX_COLOR_ATTACHMENTS = 0x8CDF;

	inline static var GL_COLOR_ATTACHMENT0 = 0x8CE0;

	inline static var GL_COLOR_ATTACHMENT1 = 0x8CE1;

	inline static var GL_COLOR_ATTACHMENT2 = 0x8CE2;

	inline static var GL_COLOR_ATTACHMENT3 = 0x8CE3;

	inline static var GL_COLOR_ATTACHMENT4 = 0x8CE4;

	inline static var GL_COLOR_ATTACHMENT5 = 0x8CE5;

	inline static var GL_COLOR_ATTACHMENT6 = 0x8CE6;

	inline static var GL_COLOR_ATTACHMENT7 = 0x8CE7;

	inline static var GL_COLOR_ATTACHMENT8 = 0x8CE8;

	inline static var GL_COLOR_ATTACHMENT9 = 0x8CE9;

	inline static var GL_COLOR_ATTACHMENT10 = 0x8CEA;

	inline static var GL_COLOR_ATTACHMENT11 = 0x8CEB;

	inline static var GL_COLOR_ATTACHMENT12 = 0x8CEC;

	inline static var GL_COLOR_ATTACHMENT13 = 0x8CED;

	inline static var GL_COLOR_ATTACHMENT14 = 0x8CEE;

	inline static var GL_COLOR_ATTACHMENT15 = 0x8CEF;

	inline static var GL_COLOR_ATTACHMENT16 = 0x8CF0;

	inline static var GL_COLOR_ATTACHMENT17 = 0x8CF1;

	inline static var GL_COLOR_ATTACHMENT18 = 0x8CF2;

	inline static var GL_COLOR_ATTACHMENT19 = 0x8CF3;

	inline static var GL_COLOR_ATTACHMENT20 = 0x8CF4;

	inline static var GL_COLOR_ATTACHMENT21 = 0x8CF5;

	inline static var GL_COLOR_ATTACHMENT22 = 0x8CF6;

	inline static var GL_COLOR_ATTACHMENT23 = 0x8CF7;

	inline static var GL_COLOR_ATTACHMENT24 = 0x8CF8;

	inline static var GL_COLOR_ATTACHMENT25 = 0x8CF9;

	inline static var GL_COLOR_ATTACHMENT26 = 0x8CFA;

	inline static var GL_COLOR_ATTACHMENT27 = 0x8CFB;

	inline static var GL_COLOR_ATTACHMENT28 = 0x8CFC;

	inline static var GL_COLOR_ATTACHMENT29 = 0x8CFD;

	inline static var GL_COLOR_ATTACHMENT30 = 0x8CFE;

	inline static var GL_COLOR_ATTACHMENT31 = 0x8CFF;

	inline static var GL_DEPTH_ATTACHMENT = 0x8D00;

	inline static var GL_STENCIL_ATTACHMENT = 0x8D20;

	inline static var GL_FRAMEBUFFER = 0x8D40;

	inline static var GL_RENDERBUFFER = 0x8D41;

	inline static var GL_RENDERBUFFER_WIDTH = 0x8D42;

	inline static var GL_RENDERBUFFER_HEIGHT = 0x8D43;

	inline static var GL_RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;

	inline static var GL_STENCIL_INDEX1 = 0x8D46;

	inline static var GL_STENCIL_INDEX4 = 0x8D47;

	inline static var GL_STENCIL_INDEX8 = 0x8D48;

	inline static var GL_STENCIL_INDEX16 = 0x8D49;

	inline static var GL_RENDERBUFFER_RED_SIZE = 0x8D50;

	inline static var GL_RENDERBUFFER_GREEN_SIZE = 0x8D51;

	inline static var GL_RENDERBUFFER_BLUE_SIZE = 0x8D52;

	inline static var GL_RENDERBUFFER_ALPHA_SIZE = 0x8D53;

	inline static var GL_RENDERBUFFER_DEPTH_SIZE = 0x8D54;

	inline static var GL_RENDERBUFFER_STENCIL_SIZE = 0x8D55;

	inline static var GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56;

	inline static var GL_MAX_SAMPLES = 0x8D57;

	inline static var GL_FRAMEBUFFER_SRGB = 0x8DB9;

	inline static var GL_HALF_FLOAT = 0x140B;

	inline static var GL_MAP_READ_BIT = 0x0001;

	inline static var GL_MAP_WRITE_BIT = 0x0002;

	inline static var GL_MAP_INVALIDATE_RANGE_BIT = 0x0004;

	inline static var GL_MAP_INVALIDATE_BUFFER_BIT = 0x0008;

	inline static var GL_MAP_FLUSH_EXPLICIT_BIT = 0x0010;

	inline static var GL_MAP_UNSYNCHRONIZED_BIT = 0x0020;

	inline static var GL_COMPRESSED_RED_RGTC1 = 0x8DBB;

	inline static var GL_COMPRESSED_SIGNED_RED_RGTC1 = 0x8DBC;

	inline static var GL_COMPRESSED_RG_RGTC2 = 0x8DBD;

	inline static var GL_COMPRESSED_SIGNED_RG_RGTC2 = 0x8DBE;

	inline static var GL_RG = 0x8227;

	inline static var GL_RG_INTEGER = 0x8228;

	inline static var GL_R8 = 0x8229;

	inline static var GL_R16 = 0x822A;

	inline static var GL_RG8 = 0x822B;

	inline static var GL_RG16 = 0x822C;

	inline static var GL_R16F = 0x822D;

	inline static var GL_R32F = 0x822E;

	inline static var GL_RG16F = 0x822F;

	inline static var GL_RG32F = 0x8230;

	inline static var GL_R8I = 0x8231;

	inline static var GL_R8UI = 0x8232;

	inline static var GL_R16I = 0x8233;

	inline static var GL_R16UI = 0x8234;

	inline static var GL_R32I = 0x8235;

	inline static var GL_R32UI = 0x8236;

	inline static var GL_RG8I = 0x8237;

	inline static var GL_RG8UI = 0x8238;

	inline static var GL_RG16I = 0x8239;

	inline static var GL_RG16UI = 0x823A;

	inline static var GL_RG32I = 0x823B;

	inline static var GL_RG32UI = 0x823C;

	inline static var GL_VERTEX_ARRAY_BINDING = 0x85B5;

	inline static var GL_SAMPLER_2D_RECT = 0x8B63;

	inline static var GL_SAMPLER_2D_RECT_SHADOW = 0x8B64;

	inline static var GL_SAMPLER_BUFFER = 0x8DC2;

	inline static var GL_INT_SAMPLER_2D_RECT = 0x8DCD;

	inline static var GL_INT_SAMPLER_BUFFER = 0x8DD0;

	inline static var GL_UNSIGNED_INT_SAMPLER_2D_RECT = 0x8DD5;

	inline static var GL_UNSIGNED_INT_SAMPLER_BUFFER = 0x8DD8;

	inline static var GL_TEXTURE_BUFFER = 0x8C2A;

	inline static var GL_MAX_TEXTURE_BUFFER_SIZE = 0x8C2B;

	inline static var GL_TEXTURE_BINDING_BUFFER = 0x8C2C;

	inline static var GL_TEXTURE_BUFFER_DATA_STORE_BINDING = 0x8C2D;

	inline static var GL_TEXTURE_RECTANGLE = 0x84F5;

	inline static var GL_TEXTURE_BINDING_RECTANGLE = 0x84F6;

	inline static var GL_PROXY_TEXTURE_RECTANGLE = 0x84F7;

	inline static var GL_MAX_RECTANGLE_TEXTURE_SIZE = 0x84F8;

	inline static var GL_R8_SNORM = 0x8F94;

	inline static var GL_RG8_SNORM = 0x8F95;

	inline static var GL_RGB8_SNORM = 0x8F96;

	inline static var GL_RGBA8_SNORM = 0x8F97;

	inline static var GL_R16_SNORM = 0x8F98;

	inline static var GL_RG16_SNORM = 0x8F99;

	inline static var GL_RGB16_SNORM = 0x8F9A;

	inline static var GL_RGBA16_SNORM = 0x8F9B;

	inline static var GL_SIGNED_NORMALIZED = 0x8F9C;

	inline static var GL_PRIMITIVE_RESTART = 0x8F9D;

	inline static var GL_PRIMITIVE_RESTART_INDEX = 0x8F9E;

	inline static var GL_COPY_READ_BUFFER = 0x8F36;

	inline static var GL_COPY_WRITE_BUFFER = 0x8F37;

	inline static var GL_UNIFORM_BUFFER = 0x8A11;

	inline static var GL_UNIFORM_BUFFER_BINDING = 0x8A28;

	inline static var GL_UNIFORM_BUFFER_START = 0x8A29;

	inline static var GL_UNIFORM_BUFFER_SIZE = 0x8A2A;

	inline static var GL_MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B;

	inline static var GL_MAX_GEOMETRY_UNIFORM_BLOCKS = 0x8A2C;

	inline static var GL_MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D;

	inline static var GL_MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E;

	inline static var GL_MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F;

	inline static var GL_MAX_UNIFORM_BLOCK_SIZE = 0x8A30;

	inline static var GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31;

	inline static var GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 0x8A32;

	inline static var GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33;

	inline static var GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34;

	inline static var GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 0x8A35;

	inline static var GL_ACTIVE_UNIFORM_BLOCKS = 0x8A36;

	inline static var GL_UNIFORM_TYPE = 0x8A37;

	inline static var GL_UNIFORM_SIZE = 0x8A38;

	inline static var GL_UNIFORM_NAME_LENGTH = 0x8A39;

	inline static var GL_UNIFORM_BLOCK_INDEX = 0x8A3A;

	inline static var GL_UNIFORM_OFFSET = 0x8A3B;

	inline static var GL_UNIFORM_ARRAY_STRIDE = 0x8A3C;

	inline static var GL_UNIFORM_MATRIX_STRIDE = 0x8A3D;

	inline static var GL_UNIFORM_IS_ROW_MAJOR = 0x8A3E;

	inline static var GL_UNIFORM_BLOCK_BINDING = 0x8A3F;

	inline static var GL_UNIFORM_BLOCK_DATA_SIZE = 0x8A40;

	inline static var GL_UNIFORM_BLOCK_NAME_LENGTH = 0x8A41;

	inline static var GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8A42;

	inline static var GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43;

	inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44;

	inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 0x8A45;

	inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46;

	/**
	 * Tagged as uint
	 */
	inline static var GL_INVALID_INDEX = 0xFFFFFFFF;

	inline static var GL_CONTEXT_CORE_PROFILE_BIT = 0x00000001;

	inline static var GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = 0x00000002;

	inline static var GL_LINES_ADJACENCY = 0x000A;

	inline static var GL_LINE_STRIP_ADJACENCY = 0x000B;

	inline static var GL_TRIANGLES_ADJACENCY = 0x000C;

	inline static var GL_TRIANGLE_STRIP_ADJACENCY = 0x000D;

	inline static var GL_PROGRAM_POINT_SIZE = 0x8642;

	inline static var GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 0x8C29;

	inline static var GL_FRAMEBUFFER_ATTACHMENT_LAYERED = 0x8DA7;

	inline static var GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 0x8DA8;

	inline static var GL_GEOMETRY_SHADER = 0x8DD9;

	inline static var GL_GEOMETRY_VERTICES_OUT = 0x8916;

	inline static var GL_GEOMETRY_INPUT_TYPE = 0x8917;

	inline static var GL_GEOMETRY_OUTPUT_TYPE = 0x8918;

	inline static var GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = 0x8DDF;

	inline static var GL_MAX_GEOMETRY_OUTPUT_VERTICES = 0x8DE0;

	inline static var GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 0x8DE1;

	inline static var GL_MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122;

	inline static var GL_MAX_GEOMETRY_INPUT_COMPONENTS = 0x9123;

	inline static var GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = 0x9124;

	inline static var GL_MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125;

	inline static var GL_CONTEXT_PROFILE_MASK = 0x9126;

	inline static var GL_DEPTH_CLAMP = 0x864F;

	inline static var GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 0x8E4C;

	inline static var GL_FIRST_VERTEX_CONVENTION = 0x8E4D;

	inline static var GL_LAST_VERTEX_CONVENTION = 0x8E4E;

	inline static var GL_PROVOKING_VERTEX = 0x8E4F;

	inline static var GL_TEXTURE_CUBE_MAP_SEAMLESS = 0x884F;

	inline static var GL_MAX_SERVER_WAIT_TIMEOUT = 0x9111;

	inline static var GL_OBJECT_TYPE = 0x9112;

	inline static var GL_SYNC_CONDITION = 0x9113;

	inline static var GL_SYNC_STATUS = 0x9114;

	inline static var GL_SYNC_FLAGS = 0x9115;

	inline static var GL_SYNC_FENCE = 0x9116;

	inline static var GL_SYNC_GPU_COMMANDS_COMPLETE = 0x9117;

	inline static var GL_UNSIGNALED = 0x9118;

	inline static var GL_SIGNALED = 0x9119;

	inline static var GL_ALREADY_SIGNALED = 0x911A;

	inline static var GL_TIMEOUT_EXPIRED = 0x911B;

	inline static var GL_CONDITION_SATISFIED = 0x911C;

	inline static var GL_WAIT_FAILED = 0x911D;

	/**
	 * Tagged as uint64
	 */
	inline static var GL_TIMEOUT_IGNORED = 0xFFFFFF;

	inline static var GL_SYNC_FLUSH_COMMANDS_BIT = 0x00000001;

	inline static var GL_SAMPLE_POSITION = 0x8E50;

	inline static var GL_SAMPLE_MASK = 0x8E51;

	inline static var GL_SAMPLE_MASK_VALUE = 0x8E52;

	inline static var GL_MAX_SAMPLE_MASK_WORDS = 0x8E59;

	inline static var GL_TEXTURE_2D_MULTISAMPLE = 0x9100;

	inline static var GL_PROXY_TEXTURE_2D_MULTISAMPLE = 0x9101;

	inline static var GL_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9102;

	inline static var GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9103;

	inline static var GL_TEXTURE_BINDING_2D_MULTISAMPLE = 0x9104;

	inline static var GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 0x9105;

	inline static var GL_TEXTURE_SAMPLES = 0x9106;

	inline static var GL_TEXTURE_FIXED_SAMPLE_LOCATIONS = 0x9107;

	inline static var GL_SAMPLER_2D_MULTISAMPLE = 0x9108;

	inline static var GL_INT_SAMPLER_2D_MULTISAMPLE = 0x9109;

	inline static var GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 0x910A;

	inline static var GL_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910B;

	inline static var GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910C;

	inline static var GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910D;

	inline static var GL_MAX_COLOR_TEXTURE_SAMPLES = 0x910E;

	inline static var GL_MAX_DEPTH_TEXTURE_SAMPLES = 0x910F;

	inline static var GL_MAX_INTEGER_SAMPLES = 0x9110;

	inline static var GL_VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE;

	inline static var GL_SRC1_COLOR = 0x88F9;

	inline static var GL_ONE_MINUS_SRC1_COLOR = 0x88FA;

	inline static var GL_ONE_MINUS_SRC1_ALPHA = 0x88FB;

	inline static var GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = 0x88FC;

	inline static var GL_ANY_SAMPLES_PASSED = 0x8C2F;

	inline static var GL_SAMPLER_BINDING = 0x8919;

	inline static var GL_RGB10_A2UI = 0x906F;

	inline static var GL_TEXTURE_SWIZZLE_R = 0x8E42;

	inline static var GL_TEXTURE_SWIZZLE_G = 0x8E43;

	inline static var GL_TEXTURE_SWIZZLE_B = 0x8E44;

	inline static var GL_TEXTURE_SWIZZLE_A = 0x8E45;

	inline static var GL_TEXTURE_SWIZZLE_RGBA = 0x8E46;

	inline static var GL_TIME_ELAPSED = 0x88BF;

	inline static var GL_TIMESTAMP = 0x8E28;

	inline static var GL_INT_2_10_10_10_REV = 0x8D9F;

	inline static var GL_SAMPLE_SHADING = 0x8C36;

	inline static var GL_MIN_SAMPLE_SHADING_VALUE = 0x8C37;

	inline static var GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5E;

	inline static var GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5F;

	inline static var GL_TEXTURE_CUBE_MAP_ARRAY = 0x9009;

	inline static var GL_TEXTURE_BINDING_CUBE_MAP_ARRAY = 0x900A;

	inline static var GL_PROXY_TEXTURE_CUBE_MAP_ARRAY = 0x900B;

	inline static var GL_SAMPLER_CUBE_MAP_ARRAY = 0x900C;

	inline static var GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = 0x900D;

	inline static var GL_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900E;

	inline static var GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900F;

	inline static var GL_DRAW_INDIRECT_BUFFER = 0x8F3F;

	inline static var GL_DRAW_INDIRECT_BUFFER_BINDING = 0x8F43;

	inline static var GL_GEOMETRY_SHADER_INVOCATIONS = 0x887F;

	inline static var GL_MAX_GEOMETRY_SHADER_INVOCATIONS = 0x8E5A;

	inline static var GL_MIN_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5B;

	inline static var GL_MAX_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5C;

	inline static var GL_FRAGMENT_INTERPOLATION_OFFSET_BITS = 0x8E5D;

	inline static var GL_MAX_VERTEX_STREAMS = 0x8E71;

	inline static var GL_DOUBLE_VEC2 = 0x8FFC;

	inline static var GL_DOUBLE_VEC3 = 0x8FFD;

	inline static var GL_DOUBLE_VEC4 = 0x8FFE;

	inline static var GL_DOUBLE_MAT2 = 0x8F46;

	inline static var GL_DOUBLE_MAT3 = 0x8F47;

	inline static var GL_DOUBLE_MAT4 = 0x8F48;

	inline static var GL_DOUBLE_MAT2x3 = 0x8F49;

	inline static var GL_DOUBLE_MAT2x4 = 0x8F4A;

	inline static var GL_DOUBLE_MAT3x2 = 0x8F4B;

	inline static var GL_DOUBLE_MAT3x4 = 0x8F4C;

	inline static var GL_DOUBLE_MAT4x2 = 0x8F4D;

	inline static var GL_DOUBLE_MAT4x3 = 0x8F4E;

	inline static var GL_ACTIVE_SUBROUTINES = 0x8DE5;

	inline static var GL_ACTIVE_SUBROUTINE_UNIFORMS = 0x8DE6;

	inline static var GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = 0x8E47;

	inline static var GL_ACTIVE_SUBROUTINE_MAX_LENGTH = 0x8E48;

	inline static var GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = 0x8E49;

	inline static var GL_MAX_SUBROUTINES = 0x8DE7;

	inline static var GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS = 0x8DE8;

	inline static var GL_NUM_COMPATIBLE_SUBROUTINES = 0x8E4A;

	inline static var GL_COMPATIBLE_SUBROUTINES = 0x8E4B;

	inline static var GL_PATCHES = 0x000E;

	inline static var GL_PATCH_VERTICES = 0x8E72;

	inline static var GL_PATCH_DEFAULT_INNER_LEVEL = 0x8E73;

	inline static var GL_PATCH_DEFAULT_OUTER_LEVEL = 0x8E74;

	inline static var GL_TESS_CONTROL_OUTPUT_VERTICES = 0x8E75;

	inline static var GL_TESS_GEN_MODE = 0x8E76;

	inline static var GL_TESS_GEN_SPACING = 0x8E77;

	inline static var GL_TESS_GEN_VERTEX_ORDER = 0x8E78;

	inline static var GL_TESS_GEN_POINT_MODE = 0x8E79;

	inline static var GL_ISOLINES = 0x8E7A;

	inline static var GL_QUADS = 0x0007;

	inline static var GL_FRACTIONAL_ODD = 0x8E7B;

	inline static var GL_FRACTIONAL_EVEN = 0x8E7C;

	inline static var GL_MAX_PATCH_VERTICES = 0x8E7D;

	inline static var GL_MAX_TESS_GEN_LEVEL = 0x8E7E;

	inline static var GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E7F;

	inline static var GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E80;

	inline static var GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = 0x8E81;

	inline static var GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = 0x8E82;

	inline static var GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS = 0x8E83;

	inline static var GL_MAX_TESS_PATCH_COMPONENTS = 0x8E84;

	inline static var GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = 0x8E85;

	inline static var GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = 0x8E86;

	inline static var GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS = 0x8E89;

	inline static var GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = 0x8E8A;

	inline static var GL_MAX_TESS_CONTROL_INPUT_COMPONENTS = 0x886C;

	inline static var GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS = 0x886D;

	inline static var GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E1E;

	inline static var GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E1F;

	inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = 0x84F0;

	inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x84F1;

	inline static var GL_TESS_EVALUATION_SHADER = 0x8E87;

	inline static var GL_TESS_CONTROL_SHADER = 0x8E88;

	inline static var GL_TRANSFORM_FEEDBACK = 0x8E22;

	inline static var GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED = 0x8E23;

	inline static var GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = 0x8E24;

	inline static var GL_TRANSFORM_FEEDBACK_BINDING = 0x8E25;

	inline static var GL_MAX_TRANSFORM_FEEDBACK_BUFFERS = 0x8E70;

	inline static var GL_FIXED = 0x140C;

	inline static var GL_IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;

	inline static var GL_IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;

	inline static var GL_LOW_FLOAT = 0x8DF0;

	inline static var GL_MEDIUM_FLOAT = 0x8DF1;

	inline static var GL_HIGH_FLOAT = 0x8DF2;

	inline static var GL_LOW_INT = 0x8DF3;

	inline static var GL_MEDIUM_INT = 0x8DF4;

	inline static var GL_HIGH_INT = 0x8DF5;

	inline static var GL_SHADER_COMPILER = 0x8DFA;

	inline static var GL_SHADER_BINARY_FORMATS = 0x8DF8;

	inline static var GL_NUM_SHADER_BINARY_FORMATS = 0x8DF9;

	inline static var GL_MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;

	inline static var GL_MAX_VARYING_VECTORS = 0x8DFC;

	inline static var GL_MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;

	inline static var GL_RGB565 = 0x8D62;

	inline static var GL_PROGRAM_BINARY_RETRIEVABLE_HINT = 0x8257;

	inline static var GL_PROGRAM_BINARY_LENGTH = 0x8741;

	inline static var GL_NUM_PROGRAM_BINARY_FORMATS = 0x87FE;

	inline static var GL_PROGRAM_BINARY_FORMATS = 0x87FF;

	inline static var GL_VERTEX_SHADER_BIT = 0x00000001;

	inline static var GL_FRAGMENT_SHADER_BIT = 0x00000002;

	inline static var GL_GEOMETRY_SHADER_BIT = 0x00000004;

	inline static var GL_TESS_CONTROL_SHADER_BIT = 0x00000008;

	inline static var GL_TESS_EVALUATION_SHADER_BIT = 0x00000010;

	inline static var GL_ALL_SHADER_BITS = 0xFFFFFFFF;

	inline static var GL_PROGRAM_SEPARABLE = 0x8258;

	inline static var GL_ACTIVE_PROGRAM = 0x8259;

	inline static var GL_PROGRAM_PIPELINE_BINDING = 0x825A;

	inline static var GL_MAX_VIEWPORTS = 0x825B;

	inline static var GL_VIEWPORT_SUBPIXEL_BITS = 0x825C;

	inline static var GL_VIEWPORT_BOUNDS_RANGE = 0x825D;

	inline static var GL_LAYER_PROVOKING_VERTEX = 0x825E;

	inline static var GL_VIEWPORT_INDEX_PROVOKING_VERTEX = 0x825F;

	inline static var GL_UNDEFINED_VERTEX = 0x8260;

	inline static var GL_COPY_READ_BUFFER_BINDING = 0x8F36;

	inline static var GL_COPY_WRITE_BUFFER_BINDING = 0x8F37;

	inline static var GL_TRANSFORM_FEEDBACK_ACTIVE = 0x8E24;

	inline static var GL_TRANSFORM_FEEDBACK_PAUSED = 0x8E23;

	inline static var GL_UNPACK_COMPRESSED_BLOCK_WIDTH = 0x9127;

	inline static var GL_UNPACK_COMPRESSED_BLOCK_HEIGHT = 0x9128;

	inline static var GL_UNPACK_COMPRESSED_BLOCK_DEPTH = 0x9129;

	inline static var GL_UNPACK_COMPRESSED_BLOCK_SIZE = 0x912A;

	inline static var GL_PACK_COMPRESSED_BLOCK_WIDTH = 0x912B;

	inline static var GL_PACK_COMPRESSED_BLOCK_HEIGHT = 0x912C;

	inline static var GL_PACK_COMPRESSED_BLOCK_DEPTH = 0x912D;

	inline static var GL_PACK_COMPRESSED_BLOCK_SIZE = 0x912E;

	inline static var GL_NUM_SAMPLE_COUNTS = 0x9380;

	inline static var GL_MIN_MAP_BUFFER_ALIGNMENT = 0x90BC;

	inline static var GL_ATOMIC_COUNTER_BUFFER = 0x92C0;

	inline static var GL_ATOMIC_COUNTER_BUFFER_BINDING = 0x92C1;

	inline static var GL_ATOMIC_COUNTER_BUFFER_START = 0x92C2;

	inline static var GL_ATOMIC_COUNTER_BUFFER_SIZE = 0x92C3;

	inline static var GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE = 0x92C4;

	inline static var GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = 0x92C5;

	inline static var GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = 0x92C6;

	inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = 0x92C7;

	inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = 0x92C8;

	inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x92C9;

	inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = 0x92CA;

	inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = 0x92CB;

	inline static var GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 0x92CC;

	inline static var GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 0x92CD;

	inline static var GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 0x92CE;

	inline static var GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = 0x92CF;

	inline static var GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 0x92D0;

	inline static var GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 0x92D1;

	inline static var GL_MAX_VERTEX_ATOMIC_COUNTERS = 0x92D2;

	inline static var GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = 0x92D3;

	inline static var GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 0x92D4;

	inline static var GL_MAX_GEOMETRY_ATOMIC_COUNTERS = 0x92D5;

	inline static var GL_MAX_FRAGMENT_ATOMIC_COUNTERS = 0x92D6;

	inline static var GL_MAX_COMBINED_ATOMIC_COUNTERS = 0x92D7;

	inline static var GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE = 0x92D8;

	inline static var GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 0x92DC;

	inline static var GL_ACTIVE_ATOMIC_COUNTER_BUFFERS = 0x92D9;

	inline static var GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = 0x92DA;

	inline static var GL_UNSIGNED_INT_ATOMIC_COUNTER = 0x92DB;

	inline static var GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = 0x00000001;

	inline static var GL_ELEMENT_ARRAY_BARRIER_BIT = 0x00000002;

	inline static var GL_UNIFORM_BARRIER_BIT = 0x00000004;

	inline static var GL_TEXTURE_FETCH_BARRIER_BIT = 0x00000008;

	inline static var GL_SHADER_IMAGE_ACCESS_BARRIER_BIT = 0x00000020;

	inline static var GL_COMMAND_BARRIER_BIT = 0x00000040;

	inline static var GL_PIXEL_BUFFER_BARRIER_BIT = 0x00000080;

	inline static var GL_TEXTURE_UPDATE_BARRIER_BIT = 0x00000100;

	inline static var GL_BUFFER_UPDATE_BARRIER_BIT = 0x00000200;

	inline static var GL_FRAMEBUFFER_BARRIER_BIT = 0x00000400;

	inline static var GL_TRANSFORM_FEEDBACK_BARRIER_BIT = 0x00000800;

	inline static var GL_ATOMIC_COUNTER_BARRIER_BIT = 0x00001000;

	inline static var GL_ALL_BARRIER_BITS = 0xFFFFFFFF;

	inline static var GL_MAX_IMAGE_UNITS = 0x8F38;

	inline static var GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = 0x8F39;

	inline static var GL_IMAGE_BINDING_NAME = 0x8F3A;

	inline static var GL_IMAGE_BINDING_LEVEL = 0x8F3B;

	inline static var GL_IMAGE_BINDING_LAYERED = 0x8F3C;

	inline static var GL_IMAGE_BINDING_LAYER = 0x8F3D;

	inline static var GL_IMAGE_BINDING_ACCESS = 0x8F3E;

	inline static var GL_IMAGE_1D = 0x904C;

	inline static var GL_IMAGE_2D = 0x904D;

	inline static var GL_IMAGE_3D = 0x904E;

	inline static var GL_IMAGE_2D_RECT = 0x904F;

	inline static var GL_IMAGE_CUBE = 0x9050;

	inline static var GL_IMAGE_BUFFER = 0x9051;

	inline static var GL_IMAGE_1D_ARRAY = 0x9052;

	inline static var GL_IMAGE_2D_ARRAY = 0x9053;

	inline static var GL_IMAGE_CUBE_MAP_ARRAY = 0x9054;

	inline static var GL_IMAGE_2D_MULTISAMPLE = 0x9055;

	inline static var GL_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9056;

	inline static var GL_INT_IMAGE_1D = 0x9057;

	inline static var GL_INT_IMAGE_2D = 0x9058;

	inline static var GL_INT_IMAGE_3D = 0x9059;

	inline static var GL_INT_IMAGE_2D_RECT = 0x905A;

	inline static var GL_INT_IMAGE_CUBE = 0x905B;

	inline static var GL_INT_IMAGE_BUFFER = 0x905C;

	inline static var GL_INT_IMAGE_1D_ARRAY = 0x905D;

	inline static var GL_INT_IMAGE_2D_ARRAY = 0x905E;

	inline static var GL_INT_IMAGE_CUBE_MAP_ARRAY = 0x905F;

	inline static var GL_INT_IMAGE_2D_MULTISAMPLE = 0x9060;

	inline static var GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9061;

	inline static var GL_UNSIGNED_INT_IMAGE_1D = 0x9062;

	inline static var GL_UNSIGNED_INT_IMAGE_2D = 0x9063;

	inline static var GL_UNSIGNED_INT_IMAGE_3D = 0x9064;

	inline static var GL_UNSIGNED_INT_IMAGE_2D_RECT = 0x9065;

	inline static var GL_UNSIGNED_INT_IMAGE_CUBE = 0x9066;

	inline static var GL_UNSIGNED_INT_IMAGE_BUFFER = 0x9067;

	inline static var GL_UNSIGNED_INT_IMAGE_1D_ARRAY = 0x9068;

	inline static var GL_UNSIGNED_INT_IMAGE_2D_ARRAY = 0x9069;

	inline static var GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 0x906A;

	inline static var GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = 0x906B;

	inline static var GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x906C;

	inline static var GL_MAX_IMAGE_SAMPLES = 0x906D;

	inline static var GL_IMAGE_BINDING_FORMAT = 0x906E;

	inline static var GL_IMAGE_FORMAT_COMPATIBILITY_TYPE = 0x90C7;

	inline static var GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = 0x90C8;

	inline static var GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = 0x90C9;

	inline static var GL_MAX_VERTEX_IMAGE_UNIFORMS = 0x90CA;

	inline static var GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS = 0x90CB;

	inline static var GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS = 0x90CC;

	inline static var GL_MAX_GEOMETRY_IMAGE_UNIFORMS = 0x90CD;

	inline static var GL_MAX_FRAGMENT_IMAGE_UNIFORMS = 0x90CE;

	inline static var GL_MAX_COMBINED_IMAGE_UNIFORMS = 0x90CF;

	inline static var GL_COMPRESSED_RGBA_BPTC_UNORM = 0x8E8C;

	inline static var GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM = 0x8E8D;

	inline static var GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT = 0x8E8E;

	inline static var GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = 0x8E8F;

	inline static var GL_TEXTURE_IMMUTABLE_FORMAT = 0x912F;

	inline static var GL_NUM_SHADING_LANGUAGE_VERSIONS = 0x82E9;

	inline static var GL_VERTEX_ATTRIB_ARRAY_LONG = 0x874E;

	inline static var GL_COMPRESSED_RGB8_ETC2 = 0x9274;

	inline static var GL_COMPRESSED_SRGB8_ETC2 = 0x9275;

	inline static var GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9276;

	inline static var GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9277;

	inline static var GL_COMPRESSED_RGBA8_ETC2_EAC = 0x9278;

	inline static var GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 0x9279;

	inline static var GL_COMPRESSED_R11_EAC = 0x9270;

	inline static var GL_COMPRESSED_SIGNED_R11_EAC = 0x9271;

	inline static var GL_COMPRESSED_RG11_EAC = 0x9272;

	inline static var GL_COMPRESSED_SIGNED_RG11_EAC = 0x9273;

	inline static var GL_PRIMITIVE_RESTART_FIXED_INDEX = 0x8D69;

	inline static var GL_ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A;

	inline static var GL_MAX_ELEMENT_INDEX = 0x8D6B;

	inline static var GL_COMPUTE_SHADER = 0x91B9;

	inline static var GL_MAX_COMPUTE_UNIFORM_BLOCKS = 0x91BB;

	inline static var GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 0x91BC;

	inline static var GL_MAX_COMPUTE_IMAGE_UNIFORMS = 0x91BD;

	inline static var GL_MAX_COMPUTE_SHARED_MEMORY_SIZE = 0x8262;

	inline static var GL_MAX_COMPUTE_UNIFORM_COMPONENTS = 0x8263;

	inline static var GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 0x8264;

	inline static var GL_MAX_COMPUTE_ATOMIC_COUNTERS = 0x8265;

	inline static var GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 0x8266;

	inline static var GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS = 0x90EB;

	inline static var GL_MAX_COMPUTE_WORK_GROUP_COUNT = 0x91BE;

	inline static var GL_MAX_COMPUTE_WORK_GROUP_SIZE = 0x91BF;

	inline static var GL_COMPUTE_WORK_GROUP_SIZE = 0x8267;

	inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = 0x90EC;

	inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 0x90ED;

	inline static var GL_DISPATCH_INDIRECT_BUFFER = 0x90EE;

	inline static var GL_DISPATCH_INDIRECT_BUFFER_BINDING = 0x90EF;

	inline static var GL_COMPUTE_SHADER_BIT = 0x00000020;

	inline static var GL_DEBUG_OUTPUT_SYNCHRONOUS = 0x8242;

	inline static var GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 0x8243;

	inline static var GL_DEBUG_CALLBACK_FUNCTION = 0x8244;

	inline static var GL_DEBUG_CALLBACK_USER_PARAM = 0x8245;

	inline static var GL_DEBUG_SOURCE_API = 0x8246;

	inline static var GL_DEBUG_SOURCE_WINDOW_SYSTEM = 0x8247;

	inline static var GL_DEBUG_SOURCE_SHADER_COMPILER = 0x8248;

	inline static var GL_DEBUG_SOURCE_THIRD_PARTY = 0x8249;

	inline static var GL_DEBUG_SOURCE_APPLICATION = 0x824A;

	inline static var GL_DEBUG_SOURCE_OTHER = 0x824B;

	inline static var GL_DEBUG_TYPE_ERROR = 0x824C;

	inline static var GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR = 0x824D;

	inline static var GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR = 0x824E;

	inline static var GL_DEBUG_TYPE_PORTABILITY = 0x824F;

	inline static var GL_DEBUG_TYPE_PERFORMANCE = 0x8250;

	inline static var GL_DEBUG_TYPE_OTHER = 0x8251;

	inline static var GL_MAX_DEBUG_MESSAGE_LENGTH = 0x9143;

	inline static var GL_MAX_DEBUG_LOGGED_MESSAGES = 0x9144;

	inline static var GL_DEBUG_LOGGED_MESSAGES = 0x9145;

	inline static var GL_DEBUG_SEVERITY_HIGH = 0x9146;

	inline static var GL_DEBUG_SEVERITY_MEDIUM = 0x9147;

	inline static var GL_DEBUG_SEVERITY_LOW = 0x9148;

	inline static var GL_DEBUG_TYPE_MARKER = 0x8268;

	inline static var GL_DEBUG_TYPE_PUSH_GROUP = 0x8269;

	inline static var GL_DEBUG_TYPE_POP_GROUP = 0x826A;

	inline static var GL_DEBUG_SEVERITY_NOTIFICATION = 0x826B;

	inline static var GL_MAX_DEBUG_GROUP_STACK_DEPTH = 0x826C;

	inline static var GL_DEBUG_GROUP_STACK_DEPTH = 0x826D;

	inline static var GL_BUFFER = 0x82E0;

	inline static var GL_SHADER = 0x82E1;

	inline static var GL_PROGRAM = 0x82E2;

	inline static var GL_VERTEX_ARRAY = 0x8074;

	inline static var GL_QUERY = 0x82E3;

	inline static var GL_PROGRAM_PIPELINE = 0x82E4;

	inline static var GL_SAMPLER = 0x82E6;

	inline static var GL_MAX_LABEL_LENGTH = 0x82E8;

	inline static var GL_DEBUG_OUTPUT = 0x92E0;

	inline static var GL_CONTEXT_FLAG_DEBUG_BIT = 0x00000002;

	inline static var GL_MAX_UNIFORM_LOCATIONS = 0x826E;

	inline static var GL_FRAMEBUFFER_DEFAULT_WIDTH = 0x9310;

	inline static var GL_FRAMEBUFFER_DEFAULT_HEIGHT = 0x9311;

	inline static var GL_FRAMEBUFFER_DEFAULT_LAYERS = 0x9312;

	inline static var GL_FRAMEBUFFER_DEFAULT_SAMPLES = 0x9313;

	inline static var GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 0x9314;

	inline static var GL_MAX_FRAMEBUFFER_WIDTH = 0x9315;

	inline static var GL_MAX_FRAMEBUFFER_HEIGHT = 0x9316;

	inline static var GL_MAX_FRAMEBUFFER_LAYERS = 0x9317;

	inline static var GL_MAX_FRAMEBUFFER_SAMPLES = 0x9318;

	inline static var GL_INTERNALFORMAT_SUPPORTED = 0x826F;

	inline static var GL_INTERNALFORMAT_PREFERRED = 0x8270;

	inline static var GL_INTERNALFORMAT_RED_SIZE = 0x8271;

	inline static var GL_INTERNALFORMAT_GREEN_SIZE = 0x8272;

	inline static var GL_INTERNALFORMAT_BLUE_SIZE = 0x8273;

	inline static var GL_INTERNALFORMAT_ALPHA_SIZE = 0x8274;

	inline static var GL_INTERNALFORMAT_DEPTH_SIZE = 0x8275;

	inline static var GL_INTERNALFORMAT_STENCIL_SIZE = 0x8276;

	inline static var GL_INTERNALFORMAT_SHARED_SIZE = 0x8277;

	inline static var GL_INTERNALFORMAT_RED_TYPE = 0x8278;

	inline static var GL_INTERNALFORMAT_GREEN_TYPE = 0x8279;

	inline static var GL_INTERNALFORMAT_BLUE_TYPE = 0x827A;

	inline static var GL_INTERNALFORMAT_ALPHA_TYPE = 0x827B;

	inline static var GL_INTERNALFORMAT_DEPTH_TYPE = 0x827C;

	inline static var GL_INTERNALFORMAT_STENCIL_TYPE = 0x827D;

	inline static var GL_MAX_WIDTH = 0x827E;

	inline static var GL_MAX_HEIGHT = 0x827F;

	inline static var GL_MAX_DEPTH = 0x8280;

	inline static var GL_MAX_LAYERS = 0x8281;

	inline static var GL_MAX_COMBINED_DIMENSIONS = 0x8282;

	inline static var GL_COLOR_COMPONENTS = 0x8283;

	inline static var GL_DEPTH_COMPONENTS = 0x8284;

	inline static var GL_STENCIL_COMPONENTS = 0x8285;

	inline static var GL_COLOR_RENDERABLE = 0x8286;

	inline static var GL_DEPTH_RENDERABLE = 0x8287;

	inline static var GL_STENCIL_RENDERABLE = 0x8288;

	inline static var GL_FRAMEBUFFER_RENDERABLE = 0x8289;

	inline static var GL_FRAMEBUFFER_RENDERABLE_LAYERED = 0x828A;

	inline static var GL_FRAMEBUFFER_BLEND = 0x828B;

	inline static var GL_READ_PIXELS = 0x828C;

	inline static var GL_READ_PIXELS_FORMAT = 0x828D;

	inline static var GL_READ_PIXELS_TYPE = 0x828E;

	inline static var GL_TEXTURE_IMAGE_FORMAT = 0x828F;

	inline static var GL_TEXTURE_IMAGE_TYPE = 0x8290;

	inline static var GL_GET_TEXTURE_IMAGE_FORMAT = 0x8291;

	inline static var GL_GET_TEXTURE_IMAGE_TYPE = 0x8292;

	inline static var GL_MIPMAP = 0x8293;

	inline static var GL_MANUAL_GENERATE_MIPMAP = 0x8294;

	/**
	 * Should be deprecated
	 */
	inline static var GL_AUTO_GENERATE_MIPMAP = 0x8295;

	inline static var GL_COLOR_ENCODING = 0x8296;

	inline static var GL_SRGB_READ = 0x8297;

	inline static var GL_SRGB_WRITE = 0x8298;

	inline static var GL_FILTER = 0x829A;

	inline static var GL_VERTEX_TEXTURE = 0x829B;

	inline static var GL_TESS_CONTROL_TEXTURE = 0x829C;

	inline static var GL_TESS_EVALUATION_TEXTURE = 0x829D;

	inline static var GL_GEOMETRY_TEXTURE = 0x829E;

	inline static var GL_FRAGMENT_TEXTURE = 0x829F;

	inline static var GL_COMPUTE_TEXTURE = 0x82A0;

	inline static var GL_TEXTURE_SHADOW = 0x82A1;

	inline static var GL_TEXTURE_GATHER = 0x82A2;

	inline static var GL_TEXTURE_GATHER_SHADOW = 0x82A3;

	inline static var GL_SHADER_IMAGE_LOAD = 0x82A4;

	inline static var GL_SHADER_IMAGE_STORE = 0x82A5;

	inline static var GL_SHADER_IMAGE_ATOMIC = 0x82A6;

	inline static var GL_IMAGE_TEXEL_SIZE = 0x82A7;

	inline static var GL_IMAGE_COMPATIBILITY_CLASS = 0x82A8;

	inline static var GL_IMAGE_PIXEL_FORMAT = 0x82A9;

	inline static var GL_IMAGE_PIXEL_TYPE = 0x82AA;

	inline static var GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = 0x82AC;

	inline static var GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = 0x82AD;

	inline static var GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = 0x82AE;

	inline static var GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = 0x82AF;

	inline static var GL_TEXTURE_COMPRESSED_BLOCK_WIDTH = 0x82B1;

	inline static var GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT = 0x82B2;

	inline static var GL_TEXTURE_COMPRESSED_BLOCK_SIZE = 0x82B3;

	inline static var GL_CLEAR_BUFFER = 0x82B4;

	inline static var GL_TEXTURE_VIEW = 0x82B5;

	inline static var GL_VIEW_COMPATIBILITY_CLASS = 0x82B6;

	inline static var GL_FULL_SUPPORT = 0x82B7;

	inline static var GL_CAVEAT_SUPPORT = 0x82B8;

	inline static var GL_IMAGE_CLASS_4_X_32 = 0x82B9;

	inline static var GL_IMAGE_CLASS_2_X_32 = 0x82BA;

	inline static var GL_IMAGE_CLASS_1_X_32 = 0x82BB;

	inline static var GL_IMAGE_CLASS_4_X_16 = 0x82BC;

	inline static var GL_IMAGE_CLASS_2_X_16 = 0x82BD;

	inline static var GL_IMAGE_CLASS_1_X_16 = 0x82BE;

	inline static var GL_IMAGE_CLASS_4_X_8 = 0x82BF;

	inline static var GL_IMAGE_CLASS_2_X_8 = 0x82C0;

	inline static var GL_IMAGE_CLASS_1_X_8 = 0x82C1;

	inline static var GL_IMAGE_CLASS_11_11_10 = 0x82C2;

	inline static var GL_IMAGE_CLASS_10_10_10_2 = 0x82C3;

	inline static var GL_VIEW_CLASS_128_BITS = 0x82C4;

	inline static var GL_VIEW_CLASS_96_BITS = 0x82C5;

	inline static var GL_VIEW_CLASS_64_BITS = 0x82C6;

	inline static var GL_VIEW_CLASS_48_BITS = 0x82C7;

	inline static var GL_VIEW_CLASS_32_BITS = 0x82C8;

	inline static var GL_VIEW_CLASS_24_BITS = 0x82C9;

	inline static var GL_VIEW_CLASS_16_BITS = 0x82CA;

	inline static var GL_VIEW_CLASS_8_BITS = 0x82CB;

	inline static var GL_VIEW_CLASS_S3TC_DXT1_RGB = 0x82CC;

	inline static var GL_VIEW_CLASS_S3TC_DXT1_RGBA = 0x82CD;

	inline static var GL_VIEW_CLASS_S3TC_DXT3_RGBA = 0x82CE;

	inline static var GL_VIEW_CLASS_S3TC_DXT5_RGBA = 0x82CF;

	inline static var GL_VIEW_CLASS_RGTC1_RED = 0x82D0;

	inline static var GL_VIEW_CLASS_RGTC2_RG = 0x82D1;

	inline static var GL_VIEW_CLASS_BPTC_UNORM = 0x82D2;

	inline static var GL_VIEW_CLASS_BPTC_FLOAT = 0x82D3;

	inline static var GL_UNIFORM = 0x92E1;

	inline static var GL_UNIFORM_BLOCK = 0x92E2;

	inline static var GL_PROGRAM_INPUT = 0x92E3;

	inline static var GL_PROGRAM_OUTPUT = 0x92E4;

	inline static var GL_BUFFER_VARIABLE = 0x92E5;

	inline static var GL_SHADER_STORAGE_BLOCK = 0x92E6;

	inline static var GL_VERTEX_SUBROUTINE = 0x92E8;

	inline static var GL_TESS_CONTROL_SUBROUTINE = 0x92E9;

	inline static var GL_TESS_EVALUATION_SUBROUTINE = 0x92EA;

	inline static var GL_GEOMETRY_SUBROUTINE = 0x92EB;

	inline static var GL_FRAGMENT_SUBROUTINE = 0x92EC;

	inline static var GL_COMPUTE_SUBROUTINE = 0x92ED;

	inline static var GL_VERTEX_SUBROUTINE_UNIFORM = 0x92EE;

	inline static var GL_TESS_CONTROL_SUBROUTINE_UNIFORM = 0x92EF;

	inline static var GL_TESS_EVALUATION_SUBROUTINE_UNIFORM = 0x92F0;

	inline static var GL_GEOMETRY_SUBROUTINE_UNIFORM = 0x92F1;

	inline static var GL_FRAGMENT_SUBROUTINE_UNIFORM = 0x92F2;

	inline static var GL_COMPUTE_SUBROUTINE_UNIFORM = 0x92F3;

	inline static var GL_TRANSFORM_FEEDBACK_VARYING = 0x92F4;

	inline static var GL_ACTIVE_RESOURCES = 0x92F5;

	inline static var GL_MAX_NAME_LENGTH = 0x92F6;

	inline static var GL_MAX_NUM_ACTIVE_VARIABLES = 0x92F7;

	inline static var GL_MAX_NUM_COMPATIBLE_SUBROUTINES = 0x92F8;

	inline static var GL_NAME_LENGTH = 0x92F9;

	inline static var GL_TYPE = 0x92FA;

	inline static var GL_ARRAY_SIZE = 0x92FB;

	inline static var GL_OFFSET = 0x92FC;

	inline static var GL_BLOCK_INDEX = 0x92FD;

	inline static var GL_ARRAY_STRIDE = 0x92FE;

	inline static var GL_MATRIX_STRIDE = 0x92FF;

	inline static var GL_IS_ROW_MAJOR = 0x9300;

	inline static var GL_ATOMIC_COUNTER_BUFFER_INDEX = 0x9301;

	inline static var GL_BUFFER_BINDING = 0x9302;

	inline static var GL_BUFFER_DATA_SIZE = 0x9303;

	inline static var GL_NUM_ACTIVE_VARIABLES = 0x9304;

	inline static var GL_ACTIVE_VARIABLES = 0x9305;

	inline static var GL_REFERENCED_BY_VERTEX_SHADER = 0x9306;

	inline static var GL_REFERENCED_BY_TESS_CONTROL_SHADER = 0x9307;

	inline static var GL_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x9308;

	inline static var GL_REFERENCED_BY_GEOMETRY_SHADER = 0x9309;

	inline static var GL_REFERENCED_BY_FRAGMENT_SHADER = 0x930A;

	inline static var GL_REFERENCED_BY_COMPUTE_SHADER = 0x930B;

	inline static var GL_TOP_LEVEL_ARRAY_SIZE = 0x930C;

	inline static var GL_TOP_LEVEL_ARRAY_STRIDE = 0x930D;

	inline static var GL_LOCATION = 0x930E;

	inline static var GL_LOCATION_INDEX = 0x930F;

	inline static var GL_IS_PER_PATCH = 0x92E7;

	inline static var GL_SHADER_STORAGE_BUFFER = 0x90D2;

	inline static var GL_SHADER_STORAGE_BUFFER_BINDING = 0x90D3;

	inline static var GL_SHADER_STORAGE_BUFFER_START = 0x90D4;

	inline static var GL_SHADER_STORAGE_BUFFER_SIZE = 0x90D5;

	inline static var GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = 0x90D6;

	inline static var GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 0x90D7;

	inline static var GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 0x90D8;

	inline static var GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 0x90D9;

	inline static var GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 0x90DA;

	inline static var GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 0x90DB;

	inline static var GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = 0x90DC;

	inline static var GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = 0x90DD;

	inline static var GL_MAX_SHADER_STORAGE_BLOCK_SIZE = 0x90DE;

	inline static var GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = 0x90DF;

	inline static var GL_SHADER_STORAGE_BARRIER_BIT = 0x00002000;

	inline static var GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES = 0x8F39;

	inline static var GL_DEPTH_STENCIL_TEXTURE_MODE = 0x90EA;

	inline static var GL_TEXTURE_BUFFER_OFFSET = 0x919D;

	inline static var GL_TEXTURE_BUFFER_SIZE = 0x919E;

	inline static var GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT = 0x919F;

	inline static var GL_TEXTURE_VIEW_MIN_LEVEL = 0x82DB;

	inline static var GL_TEXTURE_VIEW_NUM_LEVELS = 0x82DC;

	inline static var GL_TEXTURE_VIEW_MIN_LAYER = 0x82DD;

	inline static var GL_TEXTURE_VIEW_NUM_LAYERS = 0x82DE;

	inline static var GL_TEXTURE_IMMUTABLE_LEVELS = 0x82DF;

	inline static var GL_VERTEX_ATTRIB_BINDING = 0x82D4;

	inline static var GL_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D5;

	inline static var GL_VERTEX_BINDING_DIVISOR = 0x82D6;

	inline static var GL_VERTEX_BINDING_OFFSET = 0x82D7;

	inline static var GL_VERTEX_BINDING_STRIDE = 0x82D8;

	inline static var GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D9;

	inline static var GL_MAX_VERTEX_ATTRIB_BINDINGS = 0x82DA;

	inline static var GL_VERTEX_BINDING_BUFFER = 0x8F4F;

	inline static var GL_DISPLAY_LIST = 0x82E7;

	inline static var GL_STACK_UNDERFLOW = 0x0504;

	inline static var GL_STACK_OVERFLOW = 0x0503;

	inline static var GL_MAX_VERTEX_ATTRIB_STRIDE = 0x82E5;

	inline static var GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = 0x8221;

	/**
	 * Equivalent to GL_TEXTURE_BUFFER_ARB query, but named more consistently
	 */
	inline static var GL_TEXTURE_BUFFER_BINDING = 0x8C2A;

	inline static var GL_MAP_PERSISTENT_BIT = 0x0040;

	inline static var GL_MAP_COHERENT_BIT = 0x0080;

	inline static var GL_DYNAMIC_STORAGE_BIT = 0x0100;

	inline static var GL_CLIENT_STORAGE_BIT = 0x0200;

	inline static var GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT = 0x00004000;

	inline static var GL_BUFFER_IMMUTABLE_STORAGE = 0x821F;

	inline static var GL_BUFFER_STORAGE_FLAGS = 0x8220;

	inline static var GL_CLEAR_TEXTURE = 0x9365;

	inline static var GL_LOCATION_COMPONENT = 0x934A;

	inline static var GL_TRANSFORM_FEEDBACK_BUFFER_INDEX = 0x934B;

	inline static var GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE = 0x934C;

	inline static var GL_QUERY_BUFFER = 0x9192;

	inline static var GL_QUERY_BUFFER_BARRIER_BIT = 0x00008000;

	inline static var GL_QUERY_BUFFER_BINDING = 0x9193;

	inline static var GL_QUERY_RESULT_NO_WAIT = 0x9194;

	inline static var GL_MIRROR_CLAMP_TO_EDGE = 0x8743;

	inline static var GL_CONTEXT_LOST = 0x0507;

	inline static var GL_NEGATIVE_ONE_TO_ONE = 0x935E;

	inline static var GL_ZERO_TO_ONE = 0x935F;

	inline static var GL_CLIP_ORIGIN = 0x935C;

	inline static var GL_CLIP_DEPTH_MODE = 0x935D;

	inline static var GL_QUERY_WAIT_INVERTED = 0x8E17;

	inline static var GL_QUERY_NO_WAIT_INVERTED = 0x8E18;

	inline static var GL_QUERY_BY_REGION_WAIT_INVERTED = 0x8E19;

	inline static var GL_QUERY_BY_REGION_NO_WAIT_INVERTED = 0x8E1A;

	inline static var GL_MAX_CULL_DISTANCES = 0x82F9;

	inline static var GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES = 0x82FA;

	inline static var GL_TEXTURE_TARGET = 0x1006;

	inline static var GL_QUERY_TARGET = 0x82EA;

	inline static var GL_GUILTY_CONTEXT_RESET = 0x8253;

	inline static var GL_INNOCENT_CONTEXT_RESET = 0x8254;

	inline static var GL_UNKNOWN_CONTEXT_RESET = 0x8255;

	inline static var GL_RESET_NOTIFICATION_STRATEGY = 0x8256;

	inline static var GL_LOSE_CONTEXT_ON_RESET = 0x8252;

	inline static var GL_NO_RESET_NOTIFICATION = 0x8261;

	inline static var GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT = 0x00000004;

	inline static var GL_CONTEXT_RELEASE_BEHAVIOR = 0x82FB;

	inline static var GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 0x82FC;

	inline static var GL_SHADER_BINARY_FORMAT_SPIR_V = 0x9551;

	inline static var GL_SPIR_V_BINARY = 0x9552;

	inline static var GL_PARAMETER_BUFFER = 0x80EE;

	inline static var GL_PARAMETER_BUFFER_BINDING = 0x80EF;

	inline static var GL_CONTEXT_FLAG_NO_ERROR_BIT = 0x00000008;

	inline static var GL_VERTICES_SUBMITTED = 0x82EE;

	inline static var GL_PRIMITIVES_SUBMITTED = 0x82EF;

	inline static var GL_VERTEX_SHADER_INVOCATIONS = 0x82F0;

	inline static var GL_TESS_CONTROL_SHADER_PATCHES = 0x82F1;

	inline static var GL_TESS_EVALUATION_SHADER_INVOCATIONS = 0x82F2;

	inline static var GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED = 0x82F3;

	inline static var GL_FRAGMENT_SHADER_INVOCATIONS = 0x82F4;

	inline static var GL_COMPUTE_SHADER_INVOCATIONS = 0x82F5;

	inline static var GL_CLIPPING_INPUT_PRIMITIVES = 0x82F6;

	inline static var GL_CLIPPING_OUTPUT_PRIMITIVES = 0x82F7;

	inline static var GL_POLYGON_OFFSET_CLAMP = 0x8E1B;

	inline static var GL_SPIR_V_EXTENSIONS = 0x9553;

	inline static var GL_NUM_SPIR_V_EXTENSIONS = 0x9554;

	inline static var GL_TEXTURE_MAX_ANISOTROPY = 0x84FE;

	inline static var GL_MAX_TEXTURE_MAX_ANISOTROPY = 0x84FF;

	inline static var GL_TRANSFORM_FEEDBACK_OVERFLOW = 0x82EC;

	inline static var GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW = 0x82ED;


	inline static function glCullFace(_mode : Int) : Void
		{ return untyped __cpp__("glCullFace({0})", _mode); }

	inline static function glFrontFace(_mode : Int) : Void
		{ return untyped __cpp__("glFrontFace({0})", _mode); }

	inline static function glHint(_target : Int, _mode : Int) : Void
		{ return untyped __cpp__("glHint({0}, {1})", _target, _mode); }

	inline static function glLineWidth(_width : Float) : Void
		{ return untyped __cpp__("glLineWidth({0})", _width); }

	inline static function glPointSize(_size : Float) : Void
		{ return untyped __cpp__("glPointSize({0})", _size); }

	inline static function glPolygonMode(_face : Int, _mode : Int) : Void
		{ return untyped __cpp__("glPolygonMode({0}, {1})", _face, _mode); }

	inline static function glScissor(_x : Int, _y : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glScissor({0}, {1}, {2}, {3})", _x, _y, _width, _height); }

	inline static function glTexParameterf(_target : Int, _pname : Int, _param : Float) : Void
		{ return untyped __cpp__("glTexParameterf({0}, {1}, {2})", _target, _pname, _param); }

	inline static function glTexParameterfv(_target : Int, _pname : Int, _params : Array<Float>) : Void
		{ return untyped __cpp__("glTexParameterfv({0}, {1}, (const GLfloat *)&({2}[0]))", _target, _pname, _params); }

	inline static function glTexParameteri(_target : Int, _pname : Int, _param : Int) : Void
		{ return untyped __cpp__("glTexParameteri({0}, {1}, {2})", _target, _pname, _param); }

	inline static function glTexParameteriv(_target : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glTexParameteriv({0}, {1}, (const GLint *)&({2}[0]))", _target, _pname, _params); }

	inline static function glTexImage1D(_target : Int, _level : Int, _internalformat : Int, _width : Int, _border : Int, _format : Int, _type : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glTexImage1D({0}, {1}, {2}, {3}, {4}, {5}, {6}, (const void *)&({7}[0]))", _target, _level, _internalformat, _width, _border, _format, _type, _pixels); }

	inline static function glTexImage2D(_target : Int, _level : Int, _internalformat : Int, _width : Int, _height : Int, _border : Int, _format : Int, _type : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glTexImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void *)&({8}[0]))", _target, _level, _internalformat, _width, _height, _border, _format, _type, _pixels); }

	inline static function glDrawBuffer(_buf : Int) : Void
		{ return untyped __cpp__("glDrawBuffer({0})", _buf); }

	inline static function glClear(_mask : Int) : Void
		{ return untyped __cpp__("glClear({0})", _mask); }

	inline static function glClearColor(_red : Float, _green : Float, _blue : Float, _alpha : Float) : Void
		{ return untyped __cpp__("glClearColor({0}, {1}, {2}, {3})", _red, _green, _blue, _alpha); }

	inline static function glClearStencil(_s : Int) : Void
		{ return untyped __cpp__("glClearStencil({0})", _s); }

	inline static function glClearDepth(_depth : cpp.Float64) : Void
		{ return untyped __cpp__("glClearDepth({0})", _depth); }

	inline static function glStencilMask(_mask : Int) : Void
		{ return untyped __cpp__("glStencilMask({0})", _mask); }

	inline static function glColorMask(_red : Bool, _green : Bool, _blue : Bool, _alpha : Bool) : Void
		{ return untyped __cpp__("glColorMask({0}, {1}, {2}, {3})", _red, _green, _blue, _alpha); }

	inline static function glDepthMask(_flag : Bool) : Void
		{ return untyped __cpp__("glDepthMask({0})", _flag); }

	inline static function glDisable(_cap : Int) : Void
		{ return untyped __cpp__("glDisable({0})", _cap); }

	inline static function glEnable(_cap : Int) : Void
		{ return untyped __cpp__("glEnable({0})", _cap); }

	inline static function glFinish() : Void
		{ return untyped __cpp__("glFinish()"); }

	inline static function glFlush() : Void
		{ return untyped __cpp__("glFlush()"); }

	inline static function glBlendFunc(_sfactor : Int, _dfactor : Int) : Void
		{ return untyped __cpp__("glBlendFunc({0}, {1})", _sfactor, _dfactor); }

	inline static function glLogicOp(_opcode : Int) : Void
		{ return untyped __cpp__("glLogicOp({0})", _opcode); }

	inline static function glStencilFunc(_func : Int, _ref : Int, _mask : Int) : Void
		{ return untyped __cpp__("glStencilFunc({0}, {1}, {2})", _func, _ref, _mask); }

	inline static function glStencilOp(_fail : Int, _zfail : Int, _zpass : Int) : Void
		{ return untyped __cpp__("glStencilOp({0}, {1}, {2})", _fail, _zfail, _zpass); }

	inline static function glDepthFunc(_func : Int) : Void
		{ return untyped __cpp__("glDepthFunc({0})", _func); }

	inline static function glPixelStoref(_pname : Int, _param : Float) : Void
		{ return untyped __cpp__("glPixelStoref({0}, {1})", _pname, _param); }

	inline static function glPixelStorei(_pname : Int, _param : Int) : Void
		{ return untyped __cpp__("glPixelStorei({0}, {1})", _pname, _param); }

	inline static function glReadBuffer(_src : Int) : Void
		{ return untyped __cpp__("glReadBuffer({0})", _src); }

	inline static function glReadPixels(_x : Int, _y : Int, _width : Int, _height : Int, _format : Int, _type : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glReadPixels({0}, {1}, {2}, {3}, {4}, {5}, (void *)&({6}[0]))", _x, _y, _width, _height, _format, _type, _pixels); }

	inline static function glGetBooleanv(_pname : Int, _data : Array<Bool>) : Void
		{ return untyped __cpp__("glGetBooleanv({0}, (GLboolean *)&({1}[0]))", _pname, _data); }

	inline static function glGetDoublev(_pname : Int, _data : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glGetDoublev({0}, (GLdouble *)&({1}[0]))", _pname, _data); }

	inline static function glGetError() : Int
		{ return untyped __cpp__("glGetError()"); }

	inline static function glGetFloatv(_pname : Int, _data : Array<Float>) : Void
		{ return untyped __cpp__("glGetFloatv({0}, (GLfloat *)&({1}[0]))", _pname, _data); }

	inline static function glGetIntegerv(_pname : Int, _data : Array<Int>) : Void
		{ return untyped __cpp__("glGetIntegerv({0}, (GLint *)&({1}[0]))", _pname, _data); }

	inline static function glGetString(_name : Int) : Void
		{ return untyped __cpp__("glGetString({0})", _name); }

	inline static function glGetTexImage(_target : Int, _level : Int, _format : Int, _type : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glGetTexImage({0}, {1}, {2}, {3}, (void *)&({4}[0]))", _target, _level, _format, _type, _pixels); }

	inline static function glGetTexParameterfv(_target : Int, _pname : Int, _params : Array<Float>) : Void
		{ return untyped __cpp__("glGetTexParameterfv({0}, {1}, (GLfloat *)&({2}[0]))", _target, _pname, _params); }

	inline static function glGetTexParameteriv(_target : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetTexParameteriv({0}, {1}, (GLint *)&({2}[0]))", _target, _pname, _params); }

	inline static function glGetTexLevelParameterfv(_target : Int, _level : Int, _pname : Int, _params : Array<Float>) : Void
		{ return untyped __cpp__("glGetTexLevelParameterfv({0}, {1}, {2}, (GLfloat *)&({3}[0]))", _target, _level, _pname, _params); }

	inline static function glGetTexLevelParameteriv(_target : Int, _level : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetTexLevelParameteriv({0}, {1}, {2}, (GLint *)&({3}[0]))", _target, _level, _pname, _params); }

	inline static function glIsEnabled(_cap : Int) : Bool
		{ return untyped __cpp__("glIsEnabled({0})", _cap); }

	inline static function glDepthRange(_n : cpp.Float64, _f : cpp.Float64) : Void
		{ return untyped __cpp__("glDepthRange({0}, {1})", _n, _f); }

	inline static function glViewport(_x : Int, _y : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glViewport({0}, {1}, {2}, {3})", _x, _y, _width, _height); }

	inline static function glDrawArrays(_mode : Int, _first : Int, _count : Int) : Void
		{ return untyped __cpp__("glDrawArrays({0}, {1}, {2})", _mode, _first, _count); }

	inline static function glDrawElements(_mode : Int, _count : Int, _type : Int, _indices : BytesData) : Void
		{ return untyped __cpp__("glDrawElements({0}, {1}, {2}, (const void *)&({3}[0]))", _mode, _count, _type, _indices); }

	inline static function glPolygonOffset(_factor : Float, _units : Float) : Void
		{ return untyped __cpp__("glPolygonOffset({0}, {1})", _factor, _units); }

	inline static function glCopyTexImage1D(_target : Int, _level : Int, _internalformat : Int, _x : Int, _y : Int, _width : Int, _border : Int) : Void
		{ return untyped __cpp__("glCopyTexImage1D({0}, {1}, {2}, {3}, {4}, {5}, {6})", _target, _level, _internalformat, _x, _y, _width, _border); }

	inline static function glCopyTexImage2D(_target : Int, _level : Int, _internalformat : Int, _x : Int, _y : Int, _width : Int, _height : Int, _border : Int) : Void
		{ return untyped __cpp__("glCopyTexImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})", _target, _level, _internalformat, _x, _y, _width, _height, _border); }

	inline static function glCopyTexSubImage1D(_target : Int, _level : Int, _xoffset : Int, _x : Int, _y : Int, _width : Int) : Void
		{ return untyped __cpp__("glCopyTexSubImage1D({0}, {1}, {2}, {3}, {4}, {5})", _target, _level, _xoffset, _x, _y, _width); }

	inline static function glCopyTexSubImage2D(_target : Int, _level : Int, _xoffset : Int, _yoffset : Int, _x : Int, _y : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glCopyTexSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})", _target, _level, _xoffset, _yoffset, _x, _y, _width, _height); }

	inline static function glTexSubImage1D(_target : Int, _level : Int, _xoffset : Int, _width : Int, _format : Int, _type : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glTexSubImage1D({0}, {1}, {2}, {3}, {4}, {5}, (const void *)&({6}[0]))", _target, _level, _xoffset, _width, _format, _type, _pixels); }

	inline static function glTexSubImage2D(_target : Int, _level : Int, _xoffset : Int, _yoffset : Int, _width : Int, _height : Int, _format : Int, _type : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glTexSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void *)&({8}[0]))", _target, _level, _xoffset, _yoffset, _width, _height, _format, _type, _pixels); }

	inline static function glBindTexture(_target : Int, _texture : Int) : Void
		{ return untyped __cpp__("glBindTexture({0}, {1})", _target, _texture); }

	inline static function glDeleteTextures(_n : Int, _textures : Array<Int>) : Void
		{ return untyped __cpp__("glDeleteTextures({0}, (const GLuint *)&({1}[0]))", _n, _textures); }

	inline static function glGenTextures(_n : Int, _textures : Array<Int>) : Void
		{ return untyped __cpp__("glGenTextures({0}, (GLuint *)&({1}[0]))", _n, _textures); }

	inline static function glIsTexture(_texture : Int) : Bool
		{ return untyped __cpp__("glIsTexture({0})", _texture); }

	inline static function glDrawRangeElements(_mode : Int, _start : Int, _end : Int, _count : Int, _type : Int, _indices : BytesData) : Void
		{ return untyped __cpp__("glDrawRangeElements({0}, {1}, {2}, {3}, {4}, (const void *)&({5}[0]))", _mode, _start, _end, _count, _type, _indices); }

	inline static function glTexImage3D(_target : Int, _level : Int, _internalformat : Int, _width : Int, _height : Int, _depth : Int, _border : Int, _format : Int, _type : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glTexImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, (const void *)&({9}[0]))", _target, _level, _internalformat, _width, _height, _depth, _border, _format, _type, _pixels); }

	inline static function glTexSubImage3D(_target : Int, _level : Int, _xoffset : Int, _yoffset : Int, _zoffset : Int, _width : Int, _height : Int, _depth : Int, _format : Int, _type : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glTexSubImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, (const void *)&({10}[0]))", _target, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _format, _type, _pixels); }

	inline static function glCopyTexSubImage3D(_target : Int, _level : Int, _xoffset : Int, _yoffset : Int, _zoffset : Int, _x : Int, _y : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glCopyTexSubImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})", _target, _level, _xoffset, _yoffset, _zoffset, _x, _y, _width, _height); }

	inline static function glActiveTexture(_texture : Int) : Void
		{ return untyped __cpp__("glActiveTexture({0})", _texture); }

	inline static function glSampleCoverage(_value : Float, _invert : Bool) : Void
		{ return untyped __cpp__("glSampleCoverage({0}, {1})", _value, _invert); }

	inline static function glCompressedTexImage3D(_target : Int, _level : Int, _internalformat : Int, _width : Int, _height : Int, _depth : Int, _border : Int, _imageSize : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glCompressedTexImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void *)&({8}[0]))", _target, _level, _internalformat, _width, _height, _depth, _border, _imageSize, _data); }

	inline static function glCompressedTexImage2D(_target : Int, _level : Int, _internalformat : Int, _width : Int, _height : Int, _border : Int, _imageSize : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glCompressedTexImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, (const void *)&({7}[0]))", _target, _level, _internalformat, _width, _height, _border, _imageSize, _data); }

	inline static function glCompressedTexImage1D(_target : Int, _level : Int, _internalformat : Int, _width : Int, _border : Int, _imageSize : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glCompressedTexImage1D({0}, {1}, {2}, {3}, {4}, {5}, (const void *)&({6}[0]))", _target, _level, _internalformat, _width, _border, _imageSize, _data); }

	inline static function glCompressedTexSubImage3D(_target : Int, _level : Int, _xoffset : Int, _yoffset : Int, _zoffset : Int, _width : Int, _height : Int, _depth : Int, _format : Int, _imageSize : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glCompressedTexSubImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, (const void *)&({10}[0]))", _target, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _format, _imageSize, _data); }

	inline static function glCompressedTexSubImage2D(_target : Int, _level : Int, _xoffset : Int, _yoffset : Int, _width : Int, _height : Int, _format : Int, _imageSize : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glCompressedTexSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void *)&({8}[0]))", _target, _level, _xoffset, _yoffset, _width, _height, _format, _imageSize, _data); }

	inline static function glCompressedTexSubImage1D(_target : Int, _level : Int, _xoffset : Int, _width : Int, _format : Int, _imageSize : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glCompressedTexSubImage1D({0}, {1}, {2}, {3}, {4}, {5}, (const void *)&({6}[0]))", _target, _level, _xoffset, _width, _format, _imageSize, _data); }

	inline static function glGetCompressedTexImage(_target : Int, _level : Int, _img : BytesData) : Void
		{ return untyped __cpp__("glGetCompressedTexImage({0}, {1}, (void *)&({2}[0]))", _target, _level, _img); }

	inline static function glBlendFuncSeparate(_sfactorRGB : Int, _dfactorRGB : Int, _sfactorAlpha : Int, _dfactorAlpha : Int) : Void
		{ return untyped __cpp__("glBlendFuncSeparate({0}, {1}, {2}, {3})", _sfactorRGB, _dfactorRGB, _sfactorAlpha, _dfactorAlpha); }

	inline static function glMultiDrawArrays(_mode : Int, _first : Array<Int>, _count : Array<Int>, _drawcount : Int) : Void
		{ return untyped __cpp__("glMultiDrawArrays({0}, (const GLint *)&({1}[0]), (const GLsizei *)&({2}[0]), {3})", _mode, _first, _count, _drawcount); }

	inline static function glMultiDrawElements(_mode : Int, _count : Array<Int>, _type : Int, _indices : Void, _drawcount : Int) : Void
		{ return untyped __cpp__("glMultiDrawElements({0}, (const GLsizei *)&({1}[0]), {2}, {3}, {4})", _mode, _count, _type, _indices, _drawcount); }

	inline static function glPointParameterf(_pname : Int, _param : Float) : Void
		{ return untyped __cpp__("glPointParameterf({0}, {1})", _pname, _param); }

	inline static function glPointParameterfv(_pname : Int, _params : Array<Float>) : Void
		{ return untyped __cpp__("glPointParameterfv({0}, (const GLfloat *)&({1}[0]))", _pname, _params); }

	inline static function glPointParameteri(_pname : Int, _param : Int) : Void
		{ return untyped __cpp__("glPointParameteri({0}, {1})", _pname, _param); }

	inline static function glPointParameteriv(_pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glPointParameteriv({0}, (const GLint *)&({1}[0]))", _pname, _params); }

	inline static function glBlendColor(_red : Float, _green : Float, _blue : Float, _alpha : Float) : Void
		{ return untyped __cpp__("glBlendColor({0}, {1}, {2}, {3})", _red, _green, _blue, _alpha); }

	inline static function glBlendEquation(_mode : Int) : Void
		{ return untyped __cpp__("glBlendEquation({0})", _mode); }

	inline static function glGenQueries(_n : Int, _ids : Array<Int>) : Void
		{ return untyped __cpp__("glGenQueries({0}, (GLuint *)&({1}[0]))", _n, _ids); }

	inline static function glDeleteQueries(_n : Int, _ids : Array<Int>) : Void
		{ return untyped __cpp__("glDeleteQueries({0}, (const GLuint *)&({1}[0]))", _n, _ids); }

	inline static function glIsQuery(_id : Int) : Bool
		{ return untyped __cpp__("glIsQuery({0})", _id); }

	inline static function glBeginQuery(_target : Int, _id : Int) : Void
		{ return untyped __cpp__("glBeginQuery({0}, {1})", _target, _id); }

	inline static function glEndQuery(_target : Int) : Void
		{ return untyped __cpp__("glEndQuery({0})", _target); }

	inline static function glGetQueryiv(_target : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetQueryiv({0}, {1}, (GLint *)&({2}[0]))", _target, _pname, _params); }

	inline static function glGetQueryObjectiv(_id : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetQueryObjectiv({0}, {1}, (GLint *)&({2}[0]))", _id, _pname, _params); }

	inline static function glGetQueryObjectuiv(_id : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetQueryObjectuiv({0}, {1}, (GLuint *)&({2}[0]))", _id, _pname, _params); }

	inline static function glBindBuffer(_target : Int, _buffer : Int) : Void
		{ return untyped __cpp__("glBindBuffer({0}, {1})", _target, _buffer); }

	inline static function glDeleteBuffers(_n : Int, _buffers : Array<Int>) : Void
		{ return untyped __cpp__("glDeleteBuffers({0}, (const GLuint *)&({1}[0]))", _n, _buffers); }

	inline static function glGenBuffers(_n : Int, _buffers : Array<Int>) : Void
		{ return untyped __cpp__("glGenBuffers({0}, (GLuint *)&({1}[0]))", _n, _buffers); }

	inline static function glIsBuffer(_buffer : Int) : Bool
		{ return untyped __cpp__("glIsBuffer({0})", _buffer); }

	inline static function glBufferData(_target : Int, _size : Int, _data : BytesData, _usage : Int) : Void
		{ return untyped __cpp__("glBufferData({0}, {1}, (const void *)&({2}[0]), {3})", _target, _size, _data, _usage); }

	inline static function glBufferSubData(_target : Int, _offset : Int, _size : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glBufferSubData({0}, {1}, {2}, (const void *)&({3}[0]))", _target, _offset, _size, _data); }

	inline static function glGetBufferSubData(_target : Int, _offset : Int, _size : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glGetBufferSubData({0}, {1}, {2}, (void *)&({3}[0]))", _target, _offset, _size, _data); }

	inline static function glMapBuffer(_target : Int, _access : Int) : cpp.RawPointer<cpp.Void>
		{ return untyped __cpp__("glMapBuffer({0}, {1})", _target, _access); }

	inline static function glUnmapBuffer(_target : Int) : Bool
		{ return untyped __cpp__("glUnmapBuffer({0})", _target); }

	inline static function glGetBufferParameteriv(_target : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetBufferParameteriv({0}, {1}, (GLint *)&({2}[0]))", _target, _pname, _params); }

	inline static function glGetBufferPointerv(_target : Int, _pname : Int, _params : Void) : Void
		{ return untyped __cpp__("glGetBufferPointerv({0}, {1}, {2})", _target, _pname, _params); }

	inline static function glBlendEquationSeparate(_modeRGB : Int, _modeAlpha : Int) : Void
		{ return untyped __cpp__("glBlendEquationSeparate({0}, {1})", _modeRGB, _modeAlpha); }

	inline static function glDrawBuffers(_n : Int, _bufs : Array<Int>) : Void
		{ return untyped __cpp__("glDrawBuffers({0}, (const GLenum *)&({1}[0]))", _n, _bufs); }

	inline static function glStencilOpSeparate(_face : Int, _sfail : Int, _dpfail : Int, _dppass : Int) : Void
		{ return untyped __cpp__("glStencilOpSeparate({0}, {1}, {2}, {3})", _face, _sfail, _dpfail, _dppass); }

	inline static function glStencilFuncSeparate(_face : Int, _func : Int, _ref : Int, _mask : Int) : Void
		{ return untyped __cpp__("glStencilFuncSeparate({0}, {1}, {2}, {3})", _face, _func, _ref, _mask); }

	inline static function glStencilMaskSeparate(_face : Int, _mask : Int) : Void
		{ return untyped __cpp__("glStencilMaskSeparate({0}, {1})", _face, _mask); }

	inline static function glAttachShader(_program : Int, _shader : Int) : Void
		{ return untyped __cpp__("glAttachShader({0}, {1})", _program, _shader); }

	inline static function glBindAttribLocation(_program : Int, _index : Int, _name : String) : Void
		{ return untyped __cpp__("glBindAttribLocation({0}, {1}, {2})", _program, _index, _name); }

	inline static function glCompileShader(_shader : Int) : Void
		{ return untyped __cpp__("glCompileShader({0})", _shader); }

	inline static function glCreateProgram() : Int
		{ return untyped __cpp__("glCreateProgram()"); }

	inline static function glCreateShader(_type : Int) : Int
		{ return untyped __cpp__("glCreateShader({0})", _type); }

	inline static function glDeleteProgram(_program : Int) : Void
		{ return untyped __cpp__("glDeleteProgram({0})", _program); }

	inline static function glDeleteShader(_shader : Int) : Void
		{ return untyped __cpp__("glDeleteShader({0})", _shader); }

	inline static function glDetachShader(_program : Int, _shader : Int) : Void
		{ return untyped __cpp__("glDetachShader({0}, {1})", _program, _shader); }

	inline static function glDisableVertexAttribArray(_index : Int) : Void
		{ return untyped __cpp__("glDisableVertexAttribArray({0})", _index); }

	inline static function glEnableVertexAttribArray(_index : Int) : Void
		{ return untyped __cpp__("glEnableVertexAttribArray({0})", _index); }

	inline static function glGetActiveAttrib(_program : Int, _index : Int, _bufSize : Int, _length : Array<Int>, _size : Array<Int>, _type : Array<Int>, _name : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetActiveAttrib({0}, {1}, {2}, (GLsizei *)&({3}[0]), (GLint *)&({4}[0]), (GLenum *)&({5}[0]), (GLchar *)&({6}[0]))", _program, _index, _bufSize, _length, _size, _type, _name); }

	inline static function glGetActiveUniform(_program : Int, _index : Int, _bufSize : Int, _length : Array<Int>, _size : Array<Int>, _type : Array<Int>, _name : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetActiveUniform({0}, {1}, {2}, (GLsizei *)&({3}[0]), (GLint *)&({4}[0]), (GLenum *)&({5}[0]), (GLchar *)&({6}[0]))", _program, _index, _bufSize, _length, _size, _type, _name); }

	inline static function glGetAttachedShaders(_program : Int, _maxCount : Int, _count : Array<Int>, _shaders : Array<Int>) : Void
		{ return untyped __cpp__("glGetAttachedShaders({0}, {1}, (GLsizei *)&({2}[0]), (GLuint *)&({3}[0]))", _program, _maxCount, _count, _shaders); }

	inline static function glGetAttribLocation(_program : Int, _name : String) : Int
		{ return untyped __cpp__("glGetAttribLocation({0}, {1})", _program, _name); }

	inline static function glGetProgramiv(_program : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetProgramiv({0}, {1}, (GLint *)&({2}[0]))", _program, _pname, _params); }

	inline static function glGetProgramInfoLog(_program : Int, _bufSize : Int, _length : Array<Int>, _infoLog : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetProgramInfoLog({0}, {1}, (GLsizei *)&({2}[0]), (GLchar *)&({3}[0]))", _program, _bufSize, _length, _infoLog); }

	inline static function glGetShaderiv(_shader : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetShaderiv({0}, {1}, (GLint *)&({2}[0]))", _shader, _pname, _params); }

	inline static function glGetShaderInfoLog(_shader : Int, _bufSize : Int, _length : Array<Int>, _infoLog : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetShaderInfoLog({0}, {1}, (GLsizei *)&({2}[0]), (GLchar *)&({3}[0]))", _shader, _bufSize, _length, _infoLog); }

	inline static function glGetShaderSource(_shader : Int, _bufSize : Int, _length : Array<Int>, _source : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetShaderSource({0}, {1}, (GLsizei *)&({2}[0]), (GLchar *)&({3}[0]))", _shader, _bufSize, _length, _source); }

	inline static function glGetUniformLocation(_program : Int, _name : String) : Int
		{ return untyped __cpp__("glGetUniformLocation({0}, {1})", _program, _name); }

	inline static function glGetUniformfv(_program : Int, _location : Int, _params : Array<Float>) : Void
		{ return untyped __cpp__("glGetUniformfv({0}, {1}, (GLfloat *)&({2}[0]))", _program, _location, _params); }

	inline static function glGetUniformiv(_program : Int, _location : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetUniformiv({0}, {1}, (GLint *)&({2}[0]))", _program, _location, _params); }

	inline static function glGetVertexAttribdv(_index : Int, _pname : Int, _params : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glGetVertexAttribdv({0}, {1}, (GLdouble *)&({2}[0]))", _index, _pname, _params); }

	inline static function glGetVertexAttribfv(_index : Int, _pname : Int, _params : Array<Float>) : Void
		{ return untyped __cpp__("glGetVertexAttribfv({0}, {1}, (GLfloat *)&({2}[0]))", _index, _pname, _params); }

	inline static function glGetVertexAttribiv(_index : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetVertexAttribiv({0}, {1}, (GLint *)&({2}[0]))", _index, _pname, _params); }

	inline static function glGetVertexAttribPointerv(_index : Int, _pname : Int, _pointer : Void) : Void
		{ return untyped __cpp__("glGetVertexAttribPointerv({0}, {1}, {2})", _index, _pname, _pointer); }

	inline static function glIsProgram(_program : Int) : Bool
		{ return untyped __cpp__("glIsProgram({0})", _program); }

	inline static function glIsShader(_shader : Int) : Bool
		{ return untyped __cpp__("glIsShader({0})", _shader); }

	inline static function glLinkProgram(_program : Int) : Void
		{ return untyped __cpp__("glLinkProgram({0})", _program); }

	inline static function glShaderSource(_shader : Int, _count : Int, _string : Array<String>, _length : Array<Int>) : Void
		{ return untyped __cpp__("glShaderSource({0}, {1}, (const GLint *)&({2}[0]), (const GLint *)&({3}[0]))", _shader, _count, _string, _length); }

	inline static function glUseProgram(_program : Int) : Void
		{ return untyped __cpp__("glUseProgram({0})", _program); }

	inline static function glUniform1f(_location : Int, _v0 : Float) : Void
		{ return untyped __cpp__("glUniform1f({0}, {1})", _location, _v0); }

	inline static function glUniform2f(_location : Int, _v0 : Float, _v1 : Float) : Void
		{ return untyped __cpp__("glUniform2f({0}, {1}, {2})", _location, _v0, _v1); }

	inline static function glUniform3f(_location : Int, _v0 : Float, _v1 : Float, _v2 : Float) : Void
		{ return untyped __cpp__("glUniform3f({0}, {1}, {2}, {3})", _location, _v0, _v1, _v2); }

	inline static function glUniform4f(_location : Int, _v0 : Float, _v1 : Float, _v2 : Float, _v3 : Float) : Void
		{ return untyped __cpp__("glUniform4f({0}, {1}, {2}, {3}, {4})", _location, _v0, _v1, _v2, _v3); }

	inline static function glUniform1i(_location : Int, _v0 : Int) : Void
		{ return untyped __cpp__("glUniform1i({0}, {1})", _location, _v0); }

	inline static function glUniform2i(_location : Int, _v0 : Int, _v1 : Int) : Void
		{ return untyped __cpp__("glUniform2i({0}, {1}, {2})", _location, _v0, _v1); }

	inline static function glUniform3i(_location : Int, _v0 : Int, _v1 : Int, _v2 : Int) : Void
		{ return untyped __cpp__("glUniform3i({0}, {1}, {2}, {3})", _location, _v0, _v1, _v2); }

	inline static function glUniform4i(_location : Int, _v0 : Int, _v1 : Int, _v2 : Int, _v3 : Int) : Void
		{ return untyped __cpp__("glUniform4i({0}, {1}, {2}, {3}, {4})", _location, _v0, _v1, _v2, _v3); }

	inline static function glUniform1fv(_location : Int, _count : Int, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniform1fv({0}, {1}, (const GLfloat *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform2fv(_location : Int, _count : Int, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniform2fv({0}, {1}, (const GLfloat *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform3fv(_location : Int, _count : Int, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniform3fv({0}, {1}, (const GLfloat *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform4fv(_location : Int, _count : Int, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniform4fv({0}, {1}, (const GLfloat *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform1iv(_location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glUniform1iv({0}, {1}, (const GLint *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform2iv(_location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glUniform2iv({0}, {1}, (const GLint *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform3iv(_location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glUniform3iv({0}, {1}, (const GLint *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform4iv(_location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glUniform4iv({0}, {1}, (const GLint *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniformMatrix2fv(_location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniformMatrix2fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix3fv(_location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniformMatrix3fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix4fv(_location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniformMatrix4fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glValidateProgram(_program : Int) : Void
		{ return untyped __cpp__("glValidateProgram({0})", _program); }

	inline static function glVertexAttrib1d(_index : Int, _x : cpp.Float64) : Void
		{ return untyped __cpp__("glVertexAttrib1d({0}, {1})", _index, _x); }

	inline static function glVertexAttrib1dv(_index : Int, _v : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glVertexAttrib1dv({0}, (const GLdouble *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib1f(_index : Int, _x : Float) : Void
		{ return untyped __cpp__("glVertexAttrib1f({0}, {1})", _index, _x); }

	inline static function glVertexAttrib1fv(_index : Int, _v : Array<Float>) : Void
		{ return untyped __cpp__("glVertexAttrib1fv({0}, (const GLfloat *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib1s(_index : Int, _x : Int) : Void
		{ return untyped __cpp__("glVertexAttrib1s({0}, {1})", _index, _x); }

	inline static function glVertexAttrib1sv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttrib1sv({0}, (const GLshort *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib2d(_index : Int, _x : cpp.Float64, _y : cpp.Float64) : Void
		{ return untyped __cpp__("glVertexAttrib2d({0}, {1}, {2})", _index, _x, _y); }

	inline static function glVertexAttrib2dv(_index : Int, _v : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glVertexAttrib2dv({0}, (const GLdouble *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib2f(_index : Int, _x : Float, _y : Float) : Void
		{ return untyped __cpp__("glVertexAttrib2f({0}, {1}, {2})", _index, _x, _y); }

	inline static function glVertexAttrib2fv(_index : Int, _v : Array<Float>) : Void
		{ return untyped __cpp__("glVertexAttrib2fv({0}, (const GLfloat *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib2s(_index : Int, _x : Int, _y : Int) : Void
		{ return untyped __cpp__("glVertexAttrib2s({0}, {1}, {2})", _index, _x, _y); }

	inline static function glVertexAttrib2sv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttrib2sv({0}, (const GLshort *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib3d(_index : Int, _x : cpp.Float64, _y : cpp.Float64, _z : cpp.Float64) : Void
		{ return untyped __cpp__("glVertexAttrib3d({0}, {1}, {2}, {3})", _index, _x, _y, _z); }

	inline static function glVertexAttrib3dv(_index : Int, _v : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glVertexAttrib3dv({0}, (const GLdouble *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib3f(_index : Int, _x : Float, _y : Float, _z : Float) : Void
		{ return untyped __cpp__("glVertexAttrib3f({0}, {1}, {2}, {3})", _index, _x, _y, _z); }

	inline static function glVertexAttrib3fv(_index : Int, _v : Array<Float>) : Void
		{ return untyped __cpp__("glVertexAttrib3fv({0}, (const GLfloat *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib3s(_index : Int, _x : Int, _y : Int, _z : Int) : Void
		{ return untyped __cpp__("glVertexAttrib3s({0}, {1}, {2}, {3})", _index, _x, _y, _z); }

	inline static function glVertexAttrib3sv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttrib3sv({0}, (const GLshort *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4Nbv(_index : Int, _v : BytesData) : Void
		{ return untyped __cpp__("glVertexAttrib4Nbv({0}, (const GLbyte *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4Niv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttrib4Niv({0}, (const GLint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4Nsv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttrib4Nsv({0}, (const GLshort *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4Nub(_index : Int, _x : cpp.UInt8, _y : cpp.UInt8, _z : cpp.UInt8, _w : cpp.UInt8) : Void
		{ return untyped __cpp__("glVertexAttrib4Nub({0}, {1}, {2}, {3}, {4})", _index, _x, _y, _z, _w); }

	inline static function glVertexAttrib4Nubv(_index : Int, _v : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glVertexAttrib4Nubv({0}, (const GLubyte *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4Nuiv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttrib4Nuiv({0}, (const GLuint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4Nusv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttrib4Nusv({0}, (const GLushort *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4bv(_index : Int, _v : BytesData) : Void
		{ return untyped __cpp__("glVertexAttrib4bv({0}, (const GLbyte *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4d(_index : Int, _x : cpp.Float64, _y : cpp.Float64, _z : cpp.Float64, _w : cpp.Float64) : Void
		{ return untyped __cpp__("glVertexAttrib4d({0}, {1}, {2}, {3}, {4})", _index, _x, _y, _z, _w); }

	inline static function glVertexAttrib4dv(_index : Int, _v : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glVertexAttrib4dv({0}, (const GLdouble *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4f(_index : Int, _x : Float, _y : Float, _z : Float, _w : Float) : Void
		{ return untyped __cpp__("glVertexAttrib4f({0}, {1}, {2}, {3}, {4})", _index, _x, _y, _z, _w); }

	inline static function glVertexAttrib4fv(_index : Int, _v : Array<Float>) : Void
		{ return untyped __cpp__("glVertexAttrib4fv({0}, (const GLfloat *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4iv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttrib4iv({0}, (const GLint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4s(_index : Int, _x : Int, _y : Int, _z : Int, _w : Int) : Void
		{ return untyped __cpp__("glVertexAttrib4s({0}, {1}, {2}, {3}, {4})", _index, _x, _y, _z, _w); }

	inline static function glVertexAttrib4sv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttrib4sv({0}, (const GLshort *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4ubv(_index : Int, _v : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glVertexAttrib4ubv({0}, (const GLubyte *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4uiv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttrib4uiv({0}, (const GLuint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttrib4usv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttrib4usv({0}, (const GLushort *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribPointer(_index : Int, _size : Int, _type : Int, _normalized : Bool, _stride : Int, _pointer : BytesData) : Void
		{ return untyped __cpp__("glVertexAttribPointer({0}, {1}, {2}, {3}, {4}, (const void *)&({5}[0]))", _index, _size, _type, _normalized, _stride, _pointer); }

	inline static function glUniformMatrix2x3fv(_location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniformMatrix2x3fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix3x2fv(_location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniformMatrix3x2fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix2x4fv(_location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniformMatrix2x4fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix4x2fv(_location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniformMatrix4x2fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix3x4fv(_location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniformMatrix3x4fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix4x3fv(_location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glUniformMatrix4x3fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glColorMaski(_index : Int, _r : Bool, _g : Bool, _b : Bool, _a : Bool) : Void
		{ return untyped __cpp__("glColorMaski({0}, {1}, {2}, {3}, {4})", _index, _r, _g, _b, _a); }

	inline static function glGetBooleani_v(_target : Int, _index : Int, _data : Array<Bool>) : Void
		{ return untyped __cpp__("glGetBooleani_v({0}, {1}, (GLboolean *)&({2}[0]))", _target, _index, _data); }

	inline static function glGetIntegeri_v(_target : Int, _index : Int, _data : Array<Int>) : Void
		{ return untyped __cpp__("glGetIntegeri_v({0}, {1}, (GLint *)&({2}[0]))", _target, _index, _data); }

	inline static function glEnablei(_target : Int, _index : Int) : Void
		{ return untyped __cpp__("glEnablei({0}, {1})", _target, _index); }

	inline static function glDisablei(_target : Int, _index : Int) : Void
		{ return untyped __cpp__("glDisablei({0}, {1})", _target, _index); }

	inline static function glIsEnabledi(_target : Int, _index : Int) : Bool
		{ return untyped __cpp__("glIsEnabledi({0}, {1})", _target, _index); }

	inline static function glBeginTransformFeedback(_primitiveMode : Int) : Void
		{ return untyped __cpp__("glBeginTransformFeedback({0})", _primitiveMode); }

	inline static function glEndTransformFeedback() : Void
		{ return untyped __cpp__("glEndTransformFeedback()"); }

	inline static function glBindBufferRange(_target : Int, _index : Int, _buffer : Int, _offset : Int, _size : Int) : Void
		{ return untyped __cpp__("glBindBufferRange({0}, {1}, {2}, {3}, {4})", _target, _index, _buffer, _offset, _size); }

	inline static function glBindBufferBase(_target : Int, _index : Int, _buffer : Int) : Void
		{ return untyped __cpp__("glBindBufferBase({0}, {1}, {2})", _target, _index, _buffer); }

	inline static function glTransformFeedbackVaryings(_program : Int, _count : Int, _varyings : Array<String>, _bufferMode : Int) : Void
		{ return untyped __cpp__("glTransformFeedbackVaryings({0}, {1}, (const GLint *)&({2}[0]), {3})", _program, _count, _varyings, _bufferMode); }

	inline static function glGetTransformFeedbackVarying(_program : Int, _index : Int, _bufSize : Int, _length : Array<Int>, _size : Array<Int>, _type : Array<Int>, _name : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetTransformFeedbackVarying({0}, {1}, {2}, (GLsizei *)&({3}[0]), (GLsizei *)&({4}[0]), (GLenum *)&({5}[0]), (GLchar *)&({6}[0]))", _program, _index, _bufSize, _length, _size, _type, _name); }

	inline static function glClampColor(_target : Int, _clamp : Int) : Void
		{ return untyped __cpp__("glClampColor({0}, {1})", _target, _clamp); }

	inline static function glBeginConditionalRender(_id : Int, _mode : Int) : Void
		{ return untyped __cpp__("glBeginConditionalRender({0}, {1})", _id, _mode); }

	inline static function glEndConditionalRender() : Void
		{ return untyped __cpp__("glEndConditionalRender()"); }

	inline static function glVertexAttribIPointer(_index : Int, _size : Int, _type : Int, _stride : Int, _pointer : BytesData) : Void
		{ return untyped __cpp__("glVertexAttribIPointer({0}, {1}, {2}, {3}, (const void *)&({4}[0]))", _index, _size, _type, _stride, _pointer); }

	inline static function glGetVertexAttribIiv(_index : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetVertexAttribIiv({0}, {1}, (GLint *)&({2}[0]))", _index, _pname, _params); }

	inline static function glGetVertexAttribIuiv(_index : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetVertexAttribIuiv({0}, {1}, (GLuint *)&({2}[0]))", _index, _pname, _params); }

	inline static function glVertexAttribI1i(_index : Int, _x : Int) : Void
		{ return untyped __cpp__("glVertexAttribI1i({0}, {1})", _index, _x); }

	inline static function glVertexAttribI2i(_index : Int, _x : Int, _y : Int) : Void
		{ return untyped __cpp__("glVertexAttribI2i({0}, {1}, {2})", _index, _x, _y); }

	inline static function glVertexAttribI3i(_index : Int, _x : Int, _y : Int, _z : Int) : Void
		{ return untyped __cpp__("glVertexAttribI3i({0}, {1}, {2}, {3})", _index, _x, _y, _z); }

	inline static function glVertexAttribI4i(_index : Int, _x : Int, _y : Int, _z : Int, _w : Int) : Void
		{ return untyped __cpp__("glVertexAttribI4i({0}, {1}, {2}, {3}, {4})", _index, _x, _y, _z, _w); }

	inline static function glVertexAttribI1ui(_index : Int, _x : Int) : Void
		{ return untyped __cpp__("glVertexAttribI1ui({0}, {1})", _index, _x); }

	inline static function glVertexAttribI2ui(_index : Int, _x : Int, _y : Int) : Void
		{ return untyped __cpp__("glVertexAttribI2ui({0}, {1}, {2})", _index, _x, _y); }

	inline static function glVertexAttribI3ui(_index : Int, _x : Int, _y : Int, _z : Int) : Void
		{ return untyped __cpp__("glVertexAttribI3ui({0}, {1}, {2}, {3})", _index, _x, _y, _z); }

	inline static function glVertexAttribI4ui(_index : Int, _x : Int, _y : Int, _z : Int, _w : Int) : Void
		{ return untyped __cpp__("glVertexAttribI4ui({0}, {1}, {2}, {3}, {4})", _index, _x, _y, _z, _w); }

	inline static function glVertexAttribI1iv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribI1iv({0}, (const GLint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribI2iv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribI2iv({0}, (const GLint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribI3iv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribI3iv({0}, (const GLint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribI4iv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribI4iv({0}, (const GLint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribI1uiv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribI1uiv({0}, (const GLuint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribI2uiv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribI2uiv({0}, (const GLuint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribI3uiv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribI3uiv({0}, (const GLuint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribI4uiv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribI4uiv({0}, (const GLuint *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribI4bv(_index : Int, _v : BytesData) : Void
		{ return untyped __cpp__("glVertexAttribI4bv({0}, (const GLbyte *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribI4sv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribI4sv({0}, (const GLshort *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribI4ubv(_index : Int, _v : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glVertexAttribI4ubv({0}, (const GLubyte *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribI4usv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribI4usv({0}, (const GLushort *)&({1}[0]))", _index, _v); }

	inline static function glGetUniformuiv(_program : Int, _location : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetUniformuiv({0}, {1}, (GLuint *)&({2}[0]))", _program, _location, _params); }

	inline static function glBindFragDataLocation(_program : Int, _color : Int, _name : String) : Void
		{ return untyped __cpp__("glBindFragDataLocation({0}, {1}, {2})", _program, _color, _name); }

	inline static function glGetFragDataLocation(_program : Int, _name : String) : Int
		{ return untyped __cpp__("glGetFragDataLocation({0}, {1})", _program, _name); }

	inline static function glUniform1ui(_location : Int, _v0 : Int) : Void
		{ return untyped __cpp__("glUniform1ui({0}, {1})", _location, _v0); }

	inline static function glUniform2ui(_location : Int, _v0 : Int, _v1 : Int) : Void
		{ return untyped __cpp__("glUniform2ui({0}, {1}, {2})", _location, _v0, _v1); }

	inline static function glUniform3ui(_location : Int, _v0 : Int, _v1 : Int, _v2 : Int) : Void
		{ return untyped __cpp__("glUniform3ui({0}, {1}, {2}, {3})", _location, _v0, _v1, _v2); }

	inline static function glUniform4ui(_location : Int, _v0 : Int, _v1 : Int, _v2 : Int, _v3 : Int) : Void
		{ return untyped __cpp__("glUniform4ui({0}, {1}, {2}, {3}, {4})", _location, _v0, _v1, _v2, _v3); }

	inline static function glUniform1uiv(_location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glUniform1uiv({0}, {1}, (const GLuint *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform2uiv(_location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glUniform2uiv({0}, {1}, (const GLuint *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform3uiv(_location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glUniform3uiv({0}, {1}, (const GLuint *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform4uiv(_location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glUniform4uiv({0}, {1}, (const GLuint *)&({2}[0]))", _location, _count, _value); }

	inline static function glTexParameterIiv(_target : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glTexParameterIiv({0}, {1}, (const GLint *)&({2}[0]))", _target, _pname, _params); }

	inline static function glTexParameterIuiv(_target : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glTexParameterIuiv({0}, {1}, (const GLuint *)&({2}[0]))", _target, _pname, _params); }

	inline static function glGetTexParameterIiv(_target : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetTexParameterIiv({0}, {1}, (GLint *)&({2}[0]))", _target, _pname, _params); }

	inline static function glGetTexParameterIuiv(_target : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetTexParameterIuiv({0}, {1}, (GLuint *)&({2}[0]))", _target, _pname, _params); }

	inline static function glClearBufferiv(_buffer : Int, _drawbuffer : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glClearBufferiv({0}, {1}, (const GLint *)&({2}[0]))", _buffer, _drawbuffer, _value); }

	inline static function glClearBufferuiv(_buffer : Int, _drawbuffer : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glClearBufferuiv({0}, {1}, (const GLuint *)&({2}[0]))", _buffer, _drawbuffer, _value); }

	inline static function glClearBufferfv(_buffer : Int, _drawbuffer : Int, _value : Array<Float>) : Void
		{ return untyped __cpp__("glClearBufferfv({0}, {1}, (const GLfloat *)&({2}[0]))", _buffer, _drawbuffer, _value); }

	inline static function glClearBufferfi(_buffer : Int, _drawbuffer : Int, _depth : Float, _stencil : Int) : Void
		{ return untyped __cpp__("glClearBufferfi({0}, {1}, {2}, {3})", _buffer, _drawbuffer, _depth, _stencil); }

	inline static function glGetStringi(_name : Int, _index : Int) : Void
		{ return untyped __cpp__("glGetStringi({0}, {1})", _name, _index); }

	inline static function glIsRenderbuffer(_renderbuffer : Int) : Bool
		{ return untyped __cpp__("glIsRenderbuffer({0})", _renderbuffer); }

	inline static function glBindRenderbuffer(_target : Int, _renderbuffer : Int) : Void
		{ return untyped __cpp__("glBindRenderbuffer({0}, {1})", _target, _renderbuffer); }

	inline static function glDeleteRenderbuffers(_n : Int, _renderbuffers : Array<Int>) : Void
		{ return untyped __cpp__("glDeleteRenderbuffers({0}, (const GLuint *)&({1}[0]))", _n, _renderbuffers); }

	inline static function glGenRenderbuffers(_n : Int, _renderbuffers : Array<Int>) : Void
		{ return untyped __cpp__("glGenRenderbuffers({0}, (GLuint *)&({1}[0]))", _n, _renderbuffers); }

	inline static function glRenderbufferStorage(_target : Int, _internalformat : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glRenderbufferStorage({0}, {1}, {2}, {3})", _target, _internalformat, _width, _height); }

	inline static function glGetRenderbufferParameteriv(_target : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetRenderbufferParameteriv({0}, {1}, (GLint *)&({2}[0]))", _target, _pname, _params); }

	inline static function glIsFramebuffer(_framebuffer : Int) : Bool
		{ return untyped __cpp__("glIsFramebuffer({0})", _framebuffer); }

	inline static function glBindFramebuffer(_target : Int, _framebuffer : Int) : Void
		{ return untyped __cpp__("glBindFramebuffer({0}, {1})", _target, _framebuffer); }

	inline static function glDeleteFramebuffers(_n : Int, _framebuffers : Array<Int>) : Void
		{ return untyped __cpp__("glDeleteFramebuffers({0}, (const GLuint *)&({1}[0]))", _n, _framebuffers); }

	inline static function glGenFramebuffers(_n : Int, _framebuffers : Array<Int>) : Void
		{ return untyped __cpp__("glGenFramebuffers({0}, (GLuint *)&({1}[0]))", _n, _framebuffers); }

	inline static function glCheckFramebufferStatus(_target : Int) : Int
		{ return untyped __cpp__("glCheckFramebufferStatus({0})", _target); }

	inline static function glFramebufferTexture1D(_target : Int, _attachment : Int, _textarget : Int, _texture : Int, _level : Int) : Void
		{ return untyped __cpp__("glFramebufferTexture1D({0}, {1}, {2}, {3}, {4})", _target, _attachment, _textarget, _texture, _level); }

	inline static function glFramebufferTexture2D(_target : Int, _attachment : Int, _textarget : Int, _texture : Int, _level : Int) : Void
		{ return untyped __cpp__("glFramebufferTexture2D({0}, {1}, {2}, {3}, {4})", _target, _attachment, _textarget, _texture, _level); }

	inline static function glFramebufferTexture3D(_target : Int, _attachment : Int, _textarget : Int, _texture : Int, _level : Int, _zoffset : Int) : Void
		{ return untyped __cpp__("glFramebufferTexture3D({0}, {1}, {2}, {3}, {4}, {5})", _target, _attachment, _textarget, _texture, _level, _zoffset); }

	inline static function glFramebufferRenderbuffer(_target : Int, _attachment : Int, _renderbuffertarget : Int, _renderbuffer : Int) : Void
		{ return untyped __cpp__("glFramebufferRenderbuffer({0}, {1}, {2}, {3})", _target, _attachment, _renderbuffertarget, _renderbuffer); }

	inline static function glGetFramebufferAttachmentParameteriv(_target : Int, _attachment : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetFramebufferAttachmentParameteriv({0}, {1}, {2}, (GLint *)&({3}[0]))", _target, _attachment, _pname, _params); }

	inline static function glGenerateMipmap(_target : Int) : Void
		{ return untyped __cpp__("glGenerateMipmap({0})", _target); }

	inline static function glBlitFramebuffer(_srcX0 : Int, _srcY0 : Int, _srcX1 : Int, _srcY1 : Int, _dstX0 : Int, _dstY0 : Int, _dstX1 : Int, _dstY1 : Int, _mask : Int, _filter : Int) : Void
		{ return untyped __cpp__("glBlitFramebuffer({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9})", _srcX0, _srcY0, _srcX1, _srcY1, _dstX0, _dstY0, _dstX1, _dstY1, _mask, _filter); }

	inline static function glRenderbufferStorageMultisample(_target : Int, _samples : Int, _internalformat : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glRenderbufferStorageMultisample({0}, {1}, {2}, {3}, {4})", _target, _samples, _internalformat, _width, _height); }

	inline static function glFramebufferTextureLayer(_target : Int, _attachment : Int, _texture : Int, _level : Int, _layer : Int) : Void
		{ return untyped __cpp__("glFramebufferTextureLayer({0}, {1}, {2}, {3}, {4})", _target, _attachment, _texture, _level, _layer); }

	inline static function glMapBufferRange(_target : Int, _offset : Int, _length : Int, _access : Int) : cpp.RawPointer<cpp.Void>
		{ return untyped __cpp__("glMapBufferRange({0}, {1}, {2}, {3})", _target, _offset, _length, _access); }

	inline static function glFlushMappedBufferRange(_target : Int, _offset : Int, _length : Int) : Void
		{ return untyped __cpp__("glFlushMappedBufferRange({0}, {1}, {2})", _target, _offset, _length); }

	inline static function glBindVertexArray(_array : Int) : Void
		{ return untyped __cpp__("glBindVertexArray({0})", _array); }

	inline static function glDeleteVertexArrays(_n : Int, _arrays : Array<Int>) : Void
		{ return untyped __cpp__("glDeleteVertexArrays({0}, (const GLuint *)&({1}[0]))", _n, _arrays); }

	inline static function glGenVertexArrays(_n : Int, _arrays : Array<Int>) : Void
		{ return untyped __cpp__("glGenVertexArrays({0}, (GLuint *)&({1}[0]))", _n, _arrays); }

	inline static function glIsVertexArray(_array : Int) : Bool
		{ return untyped __cpp__("glIsVertexArray({0})", _array); }

	inline static function glDrawArraysInstanced(_mode : Int, _first : Int, _count : Int, _instancecount : Int) : Void
		{ return untyped __cpp__("glDrawArraysInstanced({0}, {1}, {2}, {3})", _mode, _first, _count, _instancecount); }

	inline static function glDrawElementsInstanced(_mode : Int, _count : Int, _type : Int, _indices : BytesData, _instancecount : Int) : Void
		{ return untyped __cpp__("glDrawElementsInstanced({0}, {1}, {2}, (const void *)&({3}[0]), {4})", _mode, _count, _type, _indices, _instancecount); }

	inline static function glTexBuffer(_target : Int, _internalformat : Int, _buffer : Int) : Void
		{ return untyped __cpp__("glTexBuffer({0}, {1}, {2})", _target, _internalformat, _buffer); }

	inline static function glPrimitiveRestartIndex(_index : Int) : Void
		{ return untyped __cpp__("glPrimitiveRestartIndex({0})", _index); }

	inline static function glCopyBufferSubData(_readTarget : Int, _writeTarget : Int, _readOffset : Int, _writeOffset : Int, _size : Int) : Void
		{ return untyped __cpp__("glCopyBufferSubData({0}, {1}, {2}, {3}, {4})", _readTarget, _writeTarget, _readOffset, _writeOffset, _size); }

	inline static function glGetUniformIndices(_program : Int, _uniformCount : Int, _uniformNames : Array<String>, _uniformIndices : Array<Int>) : Void
		{ return untyped __cpp__("glGetUniformIndices({0}, {1}, (const GLint *)&({2}[0]), (GLuint *)&({3}[0]))", _program, _uniformCount, _uniformNames, _uniformIndices); }

	inline static function glGetActiveUniformsiv(_program : Int, _uniformCount : Int, _uniformIndices : Array<Int>, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetActiveUniformsiv({0}, {1}, (const GLuint *)&({2}[0]), {3}, (GLint *)&({4}[0]))", _program, _uniformCount, _uniformIndices, _pname, _params); }

	inline static function glGetActiveUniformName(_program : Int, _uniformIndex : Int, _bufSize : Int, _length : Array<Int>, _uniformName : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetActiveUniformName({0}, {1}, {2}, (GLsizei *)&({3}[0]), (GLchar *)&({4}[0]))", _program, _uniformIndex, _bufSize, _length, _uniformName); }

	inline static function glGetUniformBlockIndex(_program : Int, _uniformBlockName : String) : Int
		{ return untyped __cpp__("glGetUniformBlockIndex({0}, {1})", _program, _uniformBlockName); }

	inline static function glGetActiveUniformBlockiv(_program : Int, _uniformBlockIndex : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetActiveUniformBlockiv({0}, {1}, {2}, (GLint *)&({3}[0]))", _program, _uniformBlockIndex, _pname, _params); }

	inline static function glGetActiveUniformBlockName(_program : Int, _uniformBlockIndex : Int, _bufSize : Int, _length : Array<Int>, _uniformBlockName : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetActiveUniformBlockName({0}, {1}, {2}, (GLsizei *)&({3}[0]), (GLchar *)&({4}[0]))", _program, _uniformBlockIndex, _bufSize, _length, _uniformBlockName); }

	inline static function glUniformBlockBinding(_program : Int, _uniformBlockIndex : Int, _uniformBlockBinding : Int) : Void
		{ return untyped __cpp__("glUniformBlockBinding({0}, {1}, {2})", _program, _uniformBlockIndex, _uniformBlockBinding); }

	inline static function glDrawElementsBaseVertex(_mode : Int, _count : Int, _type : Int, _indices : BytesData, _basevertex : Int) : Void
		{ return untyped __cpp__("glDrawElementsBaseVertex({0}, {1}, {2}, (const void *)&({3}[0]), {4})", _mode, _count, _type, _indices, _basevertex); }

	inline static function glDrawRangeElementsBaseVertex(_mode : Int, _start : Int, _end : Int, _count : Int, _type : Int, _indices : BytesData, _basevertex : Int) : Void
		{ return untyped __cpp__("glDrawRangeElementsBaseVertex({0}, {1}, {2}, {3}, {4}, (const void *)&({5}[0]), {6})", _mode, _start, _end, _count, _type, _indices, _basevertex); }

	inline static function glDrawElementsInstancedBaseVertex(_mode : Int, _count : Int, _type : Int, _indices : BytesData, _instancecount : Int, _basevertex : Int) : Void
		{ return untyped __cpp__("glDrawElementsInstancedBaseVertex({0}, {1}, {2}, (const void *)&({3}[0]), {4}, {5})", _mode, _count, _type, _indices, _instancecount, _basevertex); }

	inline static function glMultiDrawElementsBaseVertex(_mode : Int, _count : Array<Int>, _type : Int, _indices : Void, _drawcount : Int, _basevertex : Array<Int>) : Void
		{ return untyped __cpp__("glMultiDrawElementsBaseVertex({0}, (const GLsizei *)&({1}[0]), {2}, {3}, {4}, (const GLint *)&({5}[0]))", _mode, _count, _type, _indices, _drawcount, _basevertex); }

	inline static function glProvokingVertex(_mode : Int) : Void
		{ return untyped __cpp__("glProvokingVertex({0})", _mode); }

	inline static function glFenceSync(_condition : Int, _flags : Int) : GLSync
		{ return untyped __cpp__("glFenceSync({0}, {1})", _condition, _flags); }

	inline static function glIsSync(_sync : GLSync) : Bool
		{ return untyped __cpp__("glIsSync({0})", _sync); }

	inline static function glDeleteSync(_sync : GLSync) : Void
		{ return untyped __cpp__("glDeleteSync({0})", _sync); }

	inline static function glClientWaitSync(_sync : GLSync, _flags : Int, _timeout : cpp.UInt64) : Int
		{ return untyped __cpp__("glClientWaitSync({0}, {1}, {2})", _sync, _flags, _timeout); }

	inline static function glWaitSync(_sync : GLSync, _flags : Int, _timeout : cpp.UInt64) : Void
		{ return untyped __cpp__("glWaitSync({0}, {1}, {2})", _sync, _flags, _timeout); }

	inline static function glGetInteger64v(_pname : Int, _data : Array<cpp.Int64>) : Void
		{ return untyped __cpp__("glGetInteger64v({0}, (GLint64 *)&({1}[0]))", _pname, _data); }

	inline static function glGetSynciv(_sync : GLSync, _pname : Int, _bufSize : Int, _length : Array<Int>, _values : Array<Int>) : Void
		{ return untyped __cpp__("glGetSynciv({0}, {1}, {2}, (GLsizei *)&({3}[0]), (GLint *)&({4}[0]))", _sync, _pname, _bufSize, _length, _values); }

	inline static function glGetInteger64i_v(_target : Int, _index : Int, _data : Array<cpp.Int64>) : Void
		{ return untyped __cpp__("glGetInteger64i_v({0}, {1}, (GLint64 *)&({2}[0]))", _target, _index, _data); }

	inline static function glGetBufferParameteri64v(_target : Int, _pname : Int, _params : Array<cpp.Int64>) : Void
		{ return untyped __cpp__("glGetBufferParameteri64v({0}, {1}, (GLint64 *)&({2}[0]))", _target, _pname, _params); }

	inline static function glFramebufferTexture(_target : Int, _attachment : Int, _texture : Int, _level : Int) : Void
		{ return untyped __cpp__("glFramebufferTexture({0}, {1}, {2}, {3})", _target, _attachment, _texture, _level); }

	inline static function glTexImage2DMultisample(_target : Int, _samples : Int, _internalformat : Int, _width : Int, _height : Int, _fixedsamplelocations : Bool) : Void
		{ return untyped __cpp__("glTexImage2DMultisample({0}, {1}, {2}, {3}, {4}, {5})", _target, _samples, _internalformat, _width, _height, _fixedsamplelocations); }

	inline static function glTexImage3DMultisample(_target : Int, _samples : Int, _internalformat : Int, _width : Int, _height : Int, _depth : Int, _fixedsamplelocations : Bool) : Void
		{ return untyped __cpp__("glTexImage3DMultisample({0}, {1}, {2}, {3}, {4}, {5}, {6})", _target, _samples, _internalformat, _width, _height, _depth, _fixedsamplelocations); }

	inline static function glGetMultisamplefv(_pname : Int, _index : Int, _val : Array<Float>) : Void
		{ return untyped __cpp__("glGetMultisamplefv({0}, {1}, (GLfloat *)&({2}[0]))", _pname, _index, _val); }

	inline static function glSampleMaski(_maskNumber : Int, _mask : Int) : Void
		{ return untyped __cpp__("glSampleMaski({0}, {1})", _maskNumber, _mask); }

	inline static function glBindFragDataLocationIndexed(_program : Int, _colorNumber : Int, _index : Int, _name : String) : Void
		{ return untyped __cpp__("glBindFragDataLocationIndexed({0}, {1}, {2}, {3})", _program, _colorNumber, _index, _name); }

	inline static function glGetFragDataIndex(_program : Int, _name : String) : Int
		{ return untyped __cpp__("glGetFragDataIndex({0}, {1})", _program, _name); }

	inline static function glGenSamplers(_count : Int, _samplers : Array<Int>) : Void
		{ return untyped __cpp__("glGenSamplers({0}, (GLuint *)&({1}[0]))", _count, _samplers); }

	inline static function glDeleteSamplers(_count : Int, _samplers : Array<Int>) : Void
		{ return untyped __cpp__("glDeleteSamplers({0}, (const GLuint *)&({1}[0]))", _count, _samplers); }

	inline static function glIsSampler(_sampler : Int) : Bool
		{ return untyped __cpp__("glIsSampler({0})", _sampler); }

	inline static function glBindSampler(_unit : Int, _sampler : Int) : Void
		{ return untyped __cpp__("glBindSampler({0}, {1})", _unit, _sampler); }

	inline static function glSamplerParameteri(_sampler : Int, _pname : Int, _param : Int) : Void
		{ return untyped __cpp__("glSamplerParameteri({0}, {1}, {2})", _sampler, _pname, _param); }

	inline static function glSamplerParameteriv(_sampler : Int, _pname : Int, _param : Array<Int>) : Void
		{ return untyped __cpp__("glSamplerParameteriv({0}, {1}, (const GLint *)&({2}[0]))", _sampler, _pname, _param); }

	inline static function glSamplerParameterf(_sampler : Int, _pname : Int, _param : Float) : Void
		{ return untyped __cpp__("glSamplerParameterf({0}, {1}, {2})", _sampler, _pname, _param); }

	inline static function glSamplerParameterfv(_sampler : Int, _pname : Int, _param : Array<Float>) : Void
		{ return untyped __cpp__("glSamplerParameterfv({0}, {1}, (const GLfloat *)&({2}[0]))", _sampler, _pname, _param); }

	inline static function glSamplerParameterIiv(_sampler : Int, _pname : Int, _param : Array<Int>) : Void
		{ return untyped __cpp__("glSamplerParameterIiv({0}, {1}, (const GLint *)&({2}[0]))", _sampler, _pname, _param); }

	inline static function glSamplerParameterIuiv(_sampler : Int, _pname : Int, _param : Array<Int>) : Void
		{ return untyped __cpp__("glSamplerParameterIuiv({0}, {1}, (const GLuint *)&({2}[0]))", _sampler, _pname, _param); }

	inline static function glGetSamplerParameteriv(_sampler : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetSamplerParameteriv({0}, {1}, (GLint *)&({2}[0]))", _sampler, _pname, _params); }

	inline static function glGetSamplerParameterIiv(_sampler : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetSamplerParameterIiv({0}, {1}, (GLint *)&({2}[0]))", _sampler, _pname, _params); }

	inline static function glGetSamplerParameterfv(_sampler : Int, _pname : Int, _params : Array<Float>) : Void
		{ return untyped __cpp__("glGetSamplerParameterfv({0}, {1}, (GLfloat *)&({2}[0]))", _sampler, _pname, _params); }

	inline static function glGetSamplerParameterIuiv(_sampler : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetSamplerParameterIuiv({0}, {1}, (GLuint *)&({2}[0]))", _sampler, _pname, _params); }

	inline static function glQueryCounter(_id : Int, _target : Int) : Void
		{ return untyped __cpp__("glQueryCounter({0}, {1})", _id, _target); }

	inline static function glGetQueryObjecti64v(_id : Int, _pname : Int, _params : Array<cpp.Int64>) : Void
		{ return untyped __cpp__("glGetQueryObjecti64v({0}, {1}, (GLint64 *)&({2}[0]))", _id, _pname, _params); }

	inline static function glGetQueryObjectui64v(_id : Int, _pname : Int, _params : Array<cpp.UInt64>) : Void
		{ return untyped __cpp__("glGetQueryObjectui64v({0}, {1}, (GLuint64 *)&({2}[0]))", _id, _pname, _params); }

	inline static function glVertexAttribDivisor(_index : Int, _divisor : Int) : Void
		{ return untyped __cpp__("glVertexAttribDivisor({0}, {1})", _index, _divisor); }

	inline static function glVertexAttribP1ui(_index : Int, _type : Int, _normalized : Bool, _value : Int) : Void
		{ return untyped __cpp__("glVertexAttribP1ui({0}, {1}, {2}, {3})", _index, _type, _normalized, _value); }

	inline static function glVertexAttribP1uiv(_index : Int, _type : Int, _normalized : Bool, _value : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribP1uiv({0}, {1}, {2}, (const GLuint *)&({3}[0]))", _index, _type, _normalized, _value); }

	inline static function glVertexAttribP2ui(_index : Int, _type : Int, _normalized : Bool, _value : Int) : Void
		{ return untyped __cpp__("glVertexAttribP2ui({0}, {1}, {2}, {3})", _index, _type, _normalized, _value); }

	inline static function glVertexAttribP2uiv(_index : Int, _type : Int, _normalized : Bool, _value : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribP2uiv({0}, {1}, {2}, (const GLuint *)&({3}[0]))", _index, _type, _normalized, _value); }

	inline static function glVertexAttribP3ui(_index : Int, _type : Int, _normalized : Bool, _value : Int) : Void
		{ return untyped __cpp__("glVertexAttribP3ui({0}, {1}, {2}, {3})", _index, _type, _normalized, _value); }

	inline static function glVertexAttribP3uiv(_index : Int, _type : Int, _normalized : Bool, _value : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribP3uiv({0}, {1}, {2}, (const GLuint *)&({3}[0]))", _index, _type, _normalized, _value); }

	inline static function glVertexAttribP4ui(_index : Int, _type : Int, _normalized : Bool, _value : Int) : Void
		{ return untyped __cpp__("glVertexAttribP4ui({0}, {1}, {2}, {3})", _index, _type, _normalized, _value); }

	inline static function glVertexAttribP4uiv(_index : Int, _type : Int, _normalized : Bool, _value : Array<Int>) : Void
		{ return untyped __cpp__("glVertexAttribP4uiv({0}, {1}, {2}, (const GLuint *)&({3}[0]))", _index, _type, _normalized, _value); }

	inline static function glVertexP2ui(_type : Int, _value : Int) : Void
		{ return untyped __cpp__("glVertexP2ui({0}, {1})", _type, _value); }

	inline static function glVertexP2uiv(_type : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glVertexP2uiv({0}, (const GLuint *)&({1}[0]))", _type, _value); }

	inline static function glVertexP3ui(_type : Int, _value : Int) : Void
		{ return untyped __cpp__("glVertexP3ui({0}, {1})", _type, _value); }

	inline static function glVertexP3uiv(_type : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glVertexP3uiv({0}, (const GLuint *)&({1}[0]))", _type, _value); }

	inline static function glVertexP4ui(_type : Int, _value : Int) : Void
		{ return untyped __cpp__("glVertexP4ui({0}, {1})", _type, _value); }

	inline static function glVertexP4uiv(_type : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glVertexP4uiv({0}, (const GLuint *)&({1}[0]))", _type, _value); }

	inline static function glTexCoordP1ui(_type : Int, _coords : Int) : Void
		{ return untyped __cpp__("glTexCoordP1ui({0}, {1})", _type, _coords); }

	inline static function glTexCoordP1uiv(_type : Int, _coords : Array<Int>) : Void
		{ return untyped __cpp__("glTexCoordP1uiv({0}, (const GLuint *)&({1}[0]))", _type, _coords); }

	inline static function glTexCoordP2ui(_type : Int, _coords : Int) : Void
		{ return untyped __cpp__("glTexCoordP2ui({0}, {1})", _type, _coords); }

	inline static function glTexCoordP2uiv(_type : Int, _coords : Array<Int>) : Void
		{ return untyped __cpp__("glTexCoordP2uiv({0}, (const GLuint *)&({1}[0]))", _type, _coords); }

	inline static function glTexCoordP3ui(_type : Int, _coords : Int) : Void
		{ return untyped __cpp__("glTexCoordP3ui({0}, {1})", _type, _coords); }

	inline static function glTexCoordP3uiv(_type : Int, _coords : Array<Int>) : Void
		{ return untyped __cpp__("glTexCoordP3uiv({0}, (const GLuint *)&({1}[0]))", _type, _coords); }

	inline static function glTexCoordP4ui(_type : Int, _coords : Int) : Void
		{ return untyped __cpp__("glTexCoordP4ui({0}, {1})", _type, _coords); }

	inline static function glTexCoordP4uiv(_type : Int, _coords : Array<Int>) : Void
		{ return untyped __cpp__("glTexCoordP4uiv({0}, (const GLuint *)&({1}[0]))", _type, _coords); }

	inline static function glMultiTexCoordP1ui(_texture : Int, _type : Int, _coords : Int) : Void
		{ return untyped __cpp__("glMultiTexCoordP1ui({0}, {1}, {2})", _texture, _type, _coords); }

	inline static function glMultiTexCoordP1uiv(_texture : Int, _type : Int, _coords : Array<Int>) : Void
		{ return untyped __cpp__("glMultiTexCoordP1uiv({0}, {1}, (const GLuint *)&({2}[0]))", _texture, _type, _coords); }

	inline static function glMultiTexCoordP2ui(_texture : Int, _type : Int, _coords : Int) : Void
		{ return untyped __cpp__("glMultiTexCoordP2ui({0}, {1}, {2})", _texture, _type, _coords); }

	inline static function glMultiTexCoordP2uiv(_texture : Int, _type : Int, _coords : Array<Int>) : Void
		{ return untyped __cpp__("glMultiTexCoordP2uiv({0}, {1}, (const GLuint *)&({2}[0]))", _texture, _type, _coords); }

	inline static function glMultiTexCoordP3ui(_texture : Int, _type : Int, _coords : Int) : Void
		{ return untyped __cpp__("glMultiTexCoordP3ui({0}, {1}, {2})", _texture, _type, _coords); }

	inline static function glMultiTexCoordP3uiv(_texture : Int, _type : Int, _coords : Array<Int>) : Void
		{ return untyped __cpp__("glMultiTexCoordP3uiv({0}, {1}, (const GLuint *)&({2}[0]))", _texture, _type, _coords); }

	inline static function glMultiTexCoordP4ui(_texture : Int, _type : Int, _coords : Int) : Void
		{ return untyped __cpp__("glMultiTexCoordP4ui({0}, {1}, {2})", _texture, _type, _coords); }

	inline static function glMultiTexCoordP4uiv(_texture : Int, _type : Int, _coords : Array<Int>) : Void
		{ return untyped __cpp__("glMultiTexCoordP4uiv({0}, {1}, (const GLuint *)&({2}[0]))", _texture, _type, _coords); }

	inline static function glNormalP3ui(_type : Int, _coords : Int) : Void
		{ return untyped __cpp__("glNormalP3ui({0}, {1})", _type, _coords); }

	inline static function glNormalP3uiv(_type : Int, _coords : Array<Int>) : Void
		{ return untyped __cpp__("glNormalP3uiv({0}, (const GLuint *)&({1}[0]))", _type, _coords); }

	inline static function glColorP3ui(_type : Int, _color : Int) : Void
		{ return untyped __cpp__("glColorP3ui({0}, {1})", _type, _color); }

	inline static function glColorP3uiv(_type : Int, _color : Array<Int>) : Void
		{ return untyped __cpp__("glColorP3uiv({0}, (const GLuint *)&({1}[0]))", _type, _color); }

	inline static function glColorP4ui(_type : Int, _color : Int) : Void
		{ return untyped __cpp__("glColorP4ui({0}, {1})", _type, _color); }

	inline static function glColorP4uiv(_type : Int, _color : Array<Int>) : Void
		{ return untyped __cpp__("glColorP4uiv({0}, (const GLuint *)&({1}[0]))", _type, _color); }

	inline static function glSecondaryColorP3ui(_type : Int, _color : Int) : Void
		{ return untyped __cpp__("glSecondaryColorP3ui({0}, {1})", _type, _color); }

	inline static function glSecondaryColorP3uiv(_type : Int, _color : Array<Int>) : Void
		{ return untyped __cpp__("glSecondaryColorP3uiv({0}, (const GLuint *)&({1}[0]))", _type, _color); }

	inline static function glMinSampleShading(_value : Float) : Void
		{ return untyped __cpp__("glMinSampleShading({0})", _value); }

	inline static function glBlendEquationi(_buf : Int, _mode : Int) : Void
		{ return untyped __cpp__("glBlendEquationi({0}, {1})", _buf, _mode); }

	inline static function glBlendEquationSeparatei(_buf : Int, _modeRGB : Int, _modeAlpha : Int) : Void
		{ return untyped __cpp__("glBlendEquationSeparatei({0}, {1}, {2})", _buf, _modeRGB, _modeAlpha); }

	inline static function glBlendFunci(_buf : Int, _src : Int, _dst : Int) : Void
		{ return untyped __cpp__("glBlendFunci({0}, {1}, {2})", _buf, _src, _dst); }

	inline static function glBlendFuncSeparatei(_buf : Int, _srcRGB : Int, _dstRGB : Int, _srcAlpha : Int, _dstAlpha : Int) : Void
		{ return untyped __cpp__("glBlendFuncSeparatei({0}, {1}, {2}, {3}, {4})", _buf, _srcRGB, _dstRGB, _srcAlpha, _dstAlpha); }

	inline static function glDrawArraysIndirect(_mode : Int, _indirect : BytesData) : Void
		{ return untyped __cpp__("glDrawArraysIndirect({0}, (const void *)&({1}[0]))", _mode, _indirect); }

	inline static function glDrawElementsIndirect(_mode : Int, _type : Int, _indirect : BytesData) : Void
		{ return untyped __cpp__("glDrawElementsIndirect({0}, {1}, (const void *)&({2}[0]))", _mode, _type, _indirect); }

	inline static function glUniform1d(_location : Int, _x : cpp.Float64) : Void
		{ return untyped __cpp__("glUniform1d({0}, {1})", _location, _x); }

	inline static function glUniform2d(_location : Int, _x : cpp.Float64, _y : cpp.Float64) : Void
		{ return untyped __cpp__("glUniform2d({0}, {1}, {2})", _location, _x, _y); }

	inline static function glUniform3d(_location : Int, _x : cpp.Float64, _y : cpp.Float64, _z : cpp.Float64) : Void
		{ return untyped __cpp__("glUniform3d({0}, {1}, {2}, {3})", _location, _x, _y, _z); }

	inline static function glUniform4d(_location : Int, _x : cpp.Float64, _y : cpp.Float64, _z : cpp.Float64, _w : cpp.Float64) : Void
		{ return untyped __cpp__("glUniform4d({0}, {1}, {2}, {3}, {4})", _location, _x, _y, _z, _w); }

	inline static function glUniform1dv(_location : Int, _count : Int, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniform1dv({0}, {1}, (const GLdouble *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform2dv(_location : Int, _count : Int, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniform2dv({0}, {1}, (const GLdouble *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform3dv(_location : Int, _count : Int, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniform3dv({0}, {1}, (const GLdouble *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniform4dv(_location : Int, _count : Int, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniform4dv({0}, {1}, (const GLdouble *)&({2}[0]))", _location, _count, _value); }

	inline static function glUniformMatrix2dv(_location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniformMatrix2dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix3dv(_location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniformMatrix3dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix4dv(_location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniformMatrix4dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix2x3dv(_location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniformMatrix2x3dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix2x4dv(_location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniformMatrix2x4dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix3x2dv(_location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniformMatrix3x2dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix3x4dv(_location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniformMatrix3x4dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix4x2dv(_location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniformMatrix4x2dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glUniformMatrix4x3dv(_location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glUniformMatrix4x3dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _location, _count, _transpose, _value); }

	inline static function glGetUniformdv(_program : Int, _location : Int, _params : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glGetUniformdv({0}, {1}, (GLdouble *)&({2}[0]))", _program, _location, _params); }

	inline static function glGetSubroutineUniformLocation(_program : Int, _shadertype : Int, _name : String) : Int
		{ return untyped __cpp__("glGetSubroutineUniformLocation({0}, {1}, {2})", _program, _shadertype, _name); }

	inline static function glGetSubroutineIndex(_program : Int, _shadertype : Int, _name : String) : Int
		{ return untyped __cpp__("glGetSubroutineIndex({0}, {1}, {2})", _program, _shadertype, _name); }

	inline static function glGetActiveSubroutineUniformiv(_program : Int, _shadertype : Int, _index : Int, _pname : Int, _values : Array<Int>) : Void
		{ return untyped __cpp__("glGetActiveSubroutineUniformiv({0}, {1}, {2}, {3}, (GLint *)&({4}[0]))", _program, _shadertype, _index, _pname, _values); }

	inline static function glGetActiveSubroutineUniformName(_program : Int, _shadertype : Int, _index : Int, _bufsize : Int, _length : Array<Int>, _name : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetActiveSubroutineUniformName({0}, {1}, {2}, {3}, (GLsizei *)&({4}[0]), (GLchar *)&({5}[0]))", _program, _shadertype, _index, _bufsize, _length, _name); }

	inline static function glGetActiveSubroutineName(_program : Int, _shadertype : Int, _index : Int, _bufsize : Int, _length : Array<Int>, _name : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetActiveSubroutineName({0}, {1}, {2}, {3}, (GLsizei *)&({4}[0]), (GLchar *)&({5}[0]))", _program, _shadertype, _index, _bufsize, _length, _name); }

	inline static function glUniformSubroutinesuiv(_shadertype : Int, _count : Int, _indices : Array<Int>) : Void
		{ return untyped __cpp__("glUniformSubroutinesuiv({0}, {1}, (const GLuint *)&({2}[0]))", _shadertype, _count, _indices); }

	inline static function glGetUniformSubroutineuiv(_shadertype : Int, _location : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetUniformSubroutineuiv({0}, {1}, (GLuint *)&({2}[0]))", _shadertype, _location, _params); }

	inline static function glGetProgramStageiv(_program : Int, _shadertype : Int, _pname : Int, _values : Array<Int>) : Void
		{ return untyped __cpp__("glGetProgramStageiv({0}, {1}, {2}, (GLint *)&({3}[0]))", _program, _shadertype, _pname, _values); }

	inline static function glPatchParameteri(_pname : Int, _value : Int) : Void
		{ return untyped __cpp__("glPatchParameteri({0}, {1})", _pname, _value); }

	inline static function glPatchParameterfv(_pname : Int, _values : Array<Float>) : Void
		{ return untyped __cpp__("glPatchParameterfv({0}, (const GLfloat *)&({1}[0]))", _pname, _values); }

	inline static function glBindTransformFeedback(_target : Int, _id : Int) : Void
		{ return untyped __cpp__("glBindTransformFeedback({0}, {1})", _target, _id); }

	inline static function glDeleteTransformFeedbacks(_n : Int, _ids : Array<Int>) : Void
		{ return untyped __cpp__("glDeleteTransformFeedbacks({0}, (const GLuint *)&({1}[0]))", _n, _ids); }

	inline static function glGenTransformFeedbacks(_n : Int, _ids : Array<Int>) : Void
		{ return untyped __cpp__("glGenTransformFeedbacks({0}, (GLuint *)&({1}[0]))", _n, _ids); }

	inline static function glIsTransformFeedback(_id : Int) : Bool
		{ return untyped __cpp__("glIsTransformFeedback({0})", _id); }

	inline static function glPauseTransformFeedback() : Void
		{ return untyped __cpp__("glPauseTransformFeedback()"); }

	inline static function glResumeTransformFeedback() : Void
		{ return untyped __cpp__("glResumeTransformFeedback()"); }

	inline static function glDrawTransformFeedback(_mode : Int, _id : Int) : Void
		{ return untyped __cpp__("glDrawTransformFeedback({0}, {1})", _mode, _id); }

	inline static function glDrawTransformFeedbackStream(_mode : Int, _id : Int, _stream : Int) : Void
		{ return untyped __cpp__("glDrawTransformFeedbackStream({0}, {1}, {2})", _mode, _id, _stream); }

	inline static function glBeginQueryIndexed(_target : Int, _index : Int, _id : Int) : Void
		{ return untyped __cpp__("glBeginQueryIndexed({0}, {1}, {2})", _target, _index, _id); }

	inline static function glEndQueryIndexed(_target : Int, _index : Int) : Void
		{ return untyped __cpp__("glEndQueryIndexed({0}, {1})", _target, _index); }

	inline static function glGetQueryIndexediv(_target : Int, _index : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetQueryIndexediv({0}, {1}, {2}, (GLint *)&({3}[0]))", _target, _index, _pname, _params); }

	inline static function glReleaseShaderCompiler() : Void
		{ return untyped __cpp__("glReleaseShaderCompiler()"); }

	inline static function glShaderBinary(_count : Int, _shaders : Array<Int>, _binaryformat : Int, _binary : BytesData, _length : Int) : Void
		{ return untyped __cpp__("glShaderBinary({0}, (const GLuint *)&({1}[0]), {2}, (const void *)&({3}[0]), {4})", _count, _shaders, _binaryformat, _binary, _length); }

	inline static function glGetShaderPrecisionFormat(_shadertype : Int, _precisiontype : Int, _range : Array<Int>, _precision : Array<Int>) : Void
		{ return untyped __cpp__("glGetShaderPrecisionFormat({0}, {1}, (GLint *)&({2}[0]), (GLint *)&({3}[0]))", _shadertype, _precisiontype, _range, _precision); }

	inline static function glDepthRangef(_n : Float, _f : Float) : Void
		{ return untyped __cpp__("glDepthRangef({0}, {1})", _n, _f); }

	inline static function glClearDepthf(_d : Float) : Void
		{ return untyped __cpp__("glClearDepthf({0})", _d); }

	inline static function glGetProgramBinary(_program : Int, _bufSize : Int, _length : Array<Int>, _binaryFormat : Array<Int>, _binary : BytesData) : Void
		{ return untyped __cpp__("glGetProgramBinary({0}, {1}, (GLsizei *)&({2}[0]), (GLenum *)&({3}[0]), (void *)&({4}[0]))", _program, _bufSize, _length, _binaryFormat, _binary); }

	inline static function glProgramBinary(_program : Int, _binaryFormat : Int, _binary : BytesData, _length : Int) : Void
		{ return untyped __cpp__("glProgramBinary({0}, {1}, (const void *)&({2}[0]), {3})", _program, _binaryFormat, _binary, _length); }

	inline static function glProgramParameteri(_program : Int, _pname : Int, _value : Int) : Void
		{ return untyped __cpp__("glProgramParameteri({0}, {1}, {2})", _program, _pname, _value); }

	inline static function glUseProgramStages(_pipeline : Int, _stages : Int, _program : Int) : Void
		{ return untyped __cpp__("glUseProgramStages({0}, {1}, {2})", _pipeline, _stages, _program); }

	inline static function glActiveShaderProgram(_pipeline : Int, _program : Int) : Void
		{ return untyped __cpp__("glActiveShaderProgram({0}, {1})", _pipeline, _program); }

	inline static function glCreateShaderProgramv(_type : Int, _count : Int, _strings : Array<String>) : Int
		{ return untyped __cpp__("glCreateShaderProgramv({0}, {1}, (const GLint *)&({2}[0]))", _type, _count, _strings); }

	inline static function glBindProgramPipeline(_pipeline : Int) : Void
		{ return untyped __cpp__("glBindProgramPipeline({0})", _pipeline); }

	inline static function glDeleteProgramPipelines(_n : Int, _pipelines : Array<Int>) : Void
		{ return untyped __cpp__("glDeleteProgramPipelines({0}, (const GLuint *)&({1}[0]))", _n, _pipelines); }

	inline static function glGenProgramPipelines(_n : Int, _pipelines : Array<Int>) : Void
		{ return untyped __cpp__("glGenProgramPipelines({0}, (GLuint *)&({1}[0]))", _n, _pipelines); }

	inline static function glIsProgramPipeline(_pipeline : Int) : Bool
		{ return untyped __cpp__("glIsProgramPipeline({0})", _pipeline); }

	inline static function glGetProgramPipelineiv(_pipeline : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetProgramPipelineiv({0}, {1}, (GLint *)&({2}[0]))", _pipeline, _pname, _params); }

	inline static function glProgramUniform1i(_program : Int, _location : Int, _v0 : Int) : Void
		{ return untyped __cpp__("glProgramUniform1i({0}, {1}, {2})", _program, _location, _v0); }

	inline static function glProgramUniform1iv(_program : Int, _location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glProgramUniform1iv({0}, {1}, {2}, (const GLint *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform1f(_program : Int, _location : Int, _v0 : Float) : Void
		{ return untyped __cpp__("glProgramUniform1f({0}, {1}, {2})", _program, _location, _v0); }

	inline static function glProgramUniform1fv(_program : Int, _location : Int, _count : Int, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniform1fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform1d(_program : Int, _location : Int, _v0 : cpp.Float64) : Void
		{ return untyped __cpp__("glProgramUniform1d({0}, {1}, {2})", _program, _location, _v0); }

	inline static function glProgramUniform1dv(_program : Int, _location : Int, _count : Int, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniform1dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform1ui(_program : Int, _location : Int, _v0 : Int) : Void
		{ return untyped __cpp__("glProgramUniform1ui({0}, {1}, {2})", _program, _location, _v0); }

	inline static function glProgramUniform1uiv(_program : Int, _location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glProgramUniform1uiv({0}, {1}, {2}, (const GLuint *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform2i(_program : Int, _location : Int, _v0 : Int, _v1 : Int) : Void
		{ return untyped __cpp__("glProgramUniform2i({0}, {1}, {2}, {3})", _program, _location, _v0, _v1); }

	inline static function glProgramUniform2iv(_program : Int, _location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glProgramUniform2iv({0}, {1}, {2}, (const GLint *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform2f(_program : Int, _location : Int, _v0 : Float, _v1 : Float) : Void
		{ return untyped __cpp__("glProgramUniform2f({0}, {1}, {2}, {3})", _program, _location, _v0, _v1); }

	inline static function glProgramUniform2fv(_program : Int, _location : Int, _count : Int, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniform2fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform2d(_program : Int, _location : Int, _v0 : cpp.Float64, _v1 : cpp.Float64) : Void
		{ return untyped __cpp__("glProgramUniform2d({0}, {1}, {2}, {3})", _program, _location, _v0, _v1); }

	inline static function glProgramUniform2dv(_program : Int, _location : Int, _count : Int, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniform2dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform2ui(_program : Int, _location : Int, _v0 : Int, _v1 : Int) : Void
		{ return untyped __cpp__("glProgramUniform2ui({0}, {1}, {2}, {3})", _program, _location, _v0, _v1); }

	inline static function glProgramUniform2uiv(_program : Int, _location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glProgramUniform2uiv({0}, {1}, {2}, (const GLuint *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform3i(_program : Int, _location : Int, _v0 : Int, _v1 : Int, _v2 : Int) : Void
		{ return untyped __cpp__("glProgramUniform3i({0}, {1}, {2}, {3}, {4})", _program, _location, _v0, _v1, _v2); }

	inline static function glProgramUniform3iv(_program : Int, _location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glProgramUniform3iv({0}, {1}, {2}, (const GLint *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform3f(_program : Int, _location : Int, _v0 : Float, _v1 : Float, _v2 : Float) : Void
		{ return untyped __cpp__("glProgramUniform3f({0}, {1}, {2}, {3}, {4})", _program, _location, _v0, _v1, _v2); }

	inline static function glProgramUniform3fv(_program : Int, _location : Int, _count : Int, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniform3fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform3d(_program : Int, _location : Int, _v0 : cpp.Float64, _v1 : cpp.Float64, _v2 : cpp.Float64) : Void
		{ return untyped __cpp__("glProgramUniform3d({0}, {1}, {2}, {3}, {4})", _program, _location, _v0, _v1, _v2); }

	inline static function glProgramUniform3dv(_program : Int, _location : Int, _count : Int, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniform3dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform3ui(_program : Int, _location : Int, _v0 : Int, _v1 : Int, _v2 : Int) : Void
		{ return untyped __cpp__("glProgramUniform3ui({0}, {1}, {2}, {3}, {4})", _program, _location, _v0, _v1, _v2); }

	inline static function glProgramUniform3uiv(_program : Int, _location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glProgramUniform3uiv({0}, {1}, {2}, (const GLuint *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform4i(_program : Int, _location : Int, _v0 : Int, _v1 : Int, _v2 : Int, _v3 : Int) : Void
		{ return untyped __cpp__("glProgramUniform4i({0}, {1}, {2}, {3}, {4}, {5})", _program, _location, _v0, _v1, _v2, _v3); }

	inline static function glProgramUniform4iv(_program : Int, _location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glProgramUniform4iv({0}, {1}, {2}, (const GLint *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform4f(_program : Int, _location : Int, _v0 : Float, _v1 : Float, _v2 : Float, _v3 : Float) : Void
		{ return untyped __cpp__("glProgramUniform4f({0}, {1}, {2}, {3}, {4}, {5})", _program, _location, _v0, _v1, _v2, _v3); }

	inline static function glProgramUniform4fv(_program : Int, _location : Int, _count : Int, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniform4fv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform4d(_program : Int, _location : Int, _v0 : cpp.Float64, _v1 : cpp.Float64, _v2 : cpp.Float64, _v3 : cpp.Float64) : Void
		{ return untyped __cpp__("glProgramUniform4d({0}, {1}, {2}, {3}, {4}, {5})", _program, _location, _v0, _v1, _v2, _v3); }

	inline static function glProgramUniform4dv(_program : Int, _location : Int, _count : Int, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniform4dv({0}, {1}, {2}, (const GLdouble *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniform4ui(_program : Int, _location : Int, _v0 : Int, _v1 : Int, _v2 : Int, _v3 : Int) : Void
		{ return untyped __cpp__("glProgramUniform4ui({0}, {1}, {2}, {3}, {4}, {5})", _program, _location, _v0, _v1, _v2, _v3); }

	inline static function glProgramUniform4uiv(_program : Int, _location : Int, _count : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glProgramUniform4uiv({0}, {1}, {2}, (const GLuint *)&({3}[0]))", _program, _location, _count, _value); }

	inline static function glProgramUniformMatrix2fv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix2fv({0}, {1}, {2}, {3}, (const GLfloat *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix3fv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix3fv({0}, {1}, {2}, {3}, (const GLfloat *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix4fv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix4fv({0}, {1}, {2}, {3}, (const GLfloat *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix2dv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix2dv({0}, {1}, {2}, {3}, (const GLdouble *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix3dv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix3dv({0}, {1}, {2}, {3}, (const GLdouble *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix4dv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix4dv({0}, {1}, {2}, {3}, (const GLdouble *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix2x3fv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix2x3fv({0}, {1}, {2}, {3}, (const GLfloat *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix3x2fv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix3x2fv({0}, {1}, {2}, {3}, (const GLfloat *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix2x4fv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix2x4fv({0}, {1}, {2}, {3}, (const GLfloat *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix4x2fv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix4x2fv({0}, {1}, {2}, {3}, (const GLfloat *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix3x4fv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix3x4fv({0}, {1}, {2}, {3}, (const GLfloat *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix4x3fv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<Float>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix4x3fv({0}, {1}, {2}, {3}, (const GLfloat *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix2x3dv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix2x3dv({0}, {1}, {2}, {3}, (const GLdouble *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix3x2dv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix3x2dv({0}, {1}, {2}, {3}, (const GLdouble *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix2x4dv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix2x4dv({0}, {1}, {2}, {3}, (const GLdouble *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix4x2dv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix4x2dv({0}, {1}, {2}, {3}, (const GLdouble *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix3x4dv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix3x4dv({0}, {1}, {2}, {3}, (const GLdouble *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glProgramUniformMatrix4x3dv(_program : Int, _location : Int, _count : Int, _transpose : Bool, _value : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glProgramUniformMatrix4x3dv({0}, {1}, {2}, {3}, (const GLdouble *)&({4}[0]))", _program, _location, _count, _transpose, _value); }

	inline static function glValidateProgramPipeline(_pipeline : Int) : Void
		{ return untyped __cpp__("glValidateProgramPipeline({0})", _pipeline); }

	inline static function glGetProgramPipelineInfoLog(_pipeline : Int, _bufSize : Int, _length : Array<Int>, _infoLog : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetProgramPipelineInfoLog({0}, {1}, (GLsizei *)&({2}[0]), (GLchar *)&({3}[0]))", _pipeline, _bufSize, _length, _infoLog); }

	inline static function glVertexAttribL1d(_index : Int, _x : cpp.Float64) : Void
		{ return untyped __cpp__("glVertexAttribL1d({0}, {1})", _index, _x); }

	inline static function glVertexAttribL2d(_index : Int, _x : cpp.Float64, _y : cpp.Float64) : Void
		{ return untyped __cpp__("glVertexAttribL2d({0}, {1}, {2})", _index, _x, _y); }

	inline static function glVertexAttribL3d(_index : Int, _x : cpp.Float64, _y : cpp.Float64, _z : cpp.Float64) : Void
		{ return untyped __cpp__("glVertexAttribL3d({0}, {1}, {2}, {3})", _index, _x, _y, _z); }

	inline static function glVertexAttribL4d(_index : Int, _x : cpp.Float64, _y : cpp.Float64, _z : cpp.Float64, _w : cpp.Float64) : Void
		{ return untyped __cpp__("glVertexAttribL4d({0}, {1}, {2}, {3}, {4})", _index, _x, _y, _z, _w); }

	inline static function glVertexAttribL1dv(_index : Int, _v : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glVertexAttribL1dv({0}, (const GLdouble *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribL2dv(_index : Int, _v : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glVertexAttribL2dv({0}, (const GLdouble *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribL3dv(_index : Int, _v : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glVertexAttribL3dv({0}, (const GLdouble *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribL4dv(_index : Int, _v : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glVertexAttribL4dv({0}, (const GLdouble *)&({1}[0]))", _index, _v); }

	inline static function glVertexAttribLPointer(_index : Int, _size : Int, _type : Int, _stride : Int, _pointer : BytesData) : Void
		{ return untyped __cpp__("glVertexAttribLPointer({0}, {1}, {2}, {3}, (const void *)&({4}[0]))", _index, _size, _type, _stride, _pointer); }

	inline static function glGetVertexAttribLdv(_index : Int, _pname : Int, _params : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glGetVertexAttribLdv({0}, {1}, (GLdouble *)&({2}[0]))", _index, _pname, _params); }

	inline static function glViewportArrayv(_first : Int, _count : Int, _v : Array<Float>) : Void
		{ return untyped __cpp__("glViewportArrayv({0}, {1}, (const GLfloat *)&({2}[0]))", _first, _count, _v); }

	inline static function glViewportIndexedf(_index : Int, _x : Float, _y : Float, _w : Float, _h : Float) : Void
		{ return untyped __cpp__("glViewportIndexedf({0}, {1}, {2}, {3}, {4})", _index, _x, _y, _w, _h); }

	inline static function glViewportIndexedfv(_index : Int, _v : Array<Float>) : Void
		{ return untyped __cpp__("glViewportIndexedfv({0}, (const GLfloat *)&({1}[0]))", _index, _v); }

	inline static function glScissorArrayv(_first : Int, _count : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glScissorArrayv({0}, {1}, (const GLint *)&({2}[0]))", _first, _count, _v); }

	inline static function glScissorIndexed(_index : Int, _left : Int, _bottom : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glScissorIndexed({0}, {1}, {2}, {3}, {4})", _index, _left, _bottom, _width, _height); }

	inline static function glScissorIndexedv(_index : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glScissorIndexedv({0}, (const GLint *)&({1}[0]))", _index, _v); }

	inline static function glDepthRangeArrayv(_first : Int, _count : Int, _v : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glDepthRangeArrayv({0}, {1}, (const GLdouble *)&({2}[0]))", _first, _count, _v); }

	inline static function glDepthRangeIndexed(_index : Int, _n : cpp.Float64, _f : cpp.Float64) : Void
		{ return untyped __cpp__("glDepthRangeIndexed({0}, {1}, {2})", _index, _n, _f); }

	inline static function glGetFloati_v(_target : Int, _index : Int, _data : Array<Float>) : Void
		{ return untyped __cpp__("glGetFloati_v({0}, {1}, (GLfloat *)&({2}[0]))", _target, _index, _data); }

	inline static function glGetDoublei_v(_target : Int, _index : Int, _data : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glGetDoublei_v({0}, {1}, (GLdouble *)&({2}[0]))", _target, _index, _data); }

	inline static function glDrawArraysInstancedBaseInstance(_mode : Int, _first : Int, _count : Int, _instancecount : Int, _baseinstance : Int) : Void
		{ return untyped __cpp__("glDrawArraysInstancedBaseInstance({0}, {1}, {2}, {3}, {4})", _mode, _first, _count, _instancecount, _baseinstance); }

	inline static function glDrawElementsInstancedBaseInstance(_mode : Int, _count : Int, _type : Int, _indices : BytesData, _instancecount : Int, _baseinstance : Int) : Void
		{ return untyped __cpp__("glDrawElementsInstancedBaseInstance({0}, {1}, {2}, (const void *)&({3}[0]), {4}, {5})", _mode, _count, _type, _indices, _instancecount, _baseinstance); }

	inline static function glDrawElementsInstancedBaseVertexBaseInstance(_mode : Int, _count : Int, _type : Int, _indices : BytesData, _instancecount : Int, _basevertex : Int, _baseinstance : Int) : Void
		{ return untyped __cpp__("glDrawElementsInstancedBaseVertexBaseInstance({0}, {1}, {2}, (const void *)&({3}[0]), {4}, {5}, {6})", _mode, _count, _type, _indices, _instancecount, _basevertex, _baseinstance); }

	inline static function glGetInternalformativ(_target : Int, _internalformat : Int, _pname : Int, _bufSize : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetInternalformativ({0}, {1}, {2}, {3}, (GLint *)&({4}[0]))", _target, _internalformat, _pname, _bufSize, _params); }

	inline static function glGetActiveAtomicCounterBufferiv(_program : Int, _bufferIndex : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetActiveAtomicCounterBufferiv({0}, {1}, {2}, (GLint *)&({3}[0]))", _program, _bufferIndex, _pname, _params); }

	inline static function glBindImageTexture(_unit : Int, _texture : Int, _level : Int, _layered : Bool, _layer : Int, _access : Int, _format : Int) : Void
		{ return untyped __cpp__("glBindImageTexture({0}, {1}, {2}, {3}, {4}, {5}, {6})", _unit, _texture, _level, _layered, _layer, _access, _format); }

	inline static function glMemoryBarrier(_barriers : Int) : Void
		{ return untyped __cpp__("glMemoryBarrier({0})", _barriers); }

	inline static function glTexStorage1D(_target : Int, _levels : Int, _internalformat : Int, _width : Int) : Void
		{ return untyped __cpp__("glTexStorage1D({0}, {1}, {2}, {3})", _target, _levels, _internalformat, _width); }

	inline static function glTexStorage2D(_target : Int, _levels : Int, _internalformat : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glTexStorage2D({0}, {1}, {2}, {3}, {4})", _target, _levels, _internalformat, _width, _height); }

	inline static function glTexStorage3D(_target : Int, _levels : Int, _internalformat : Int, _width : Int, _height : Int, _depth : Int) : Void
		{ return untyped __cpp__("glTexStorage3D({0}, {1}, {2}, {3}, {4}, {5})", _target, _levels, _internalformat, _width, _height, _depth); }

	inline static function glDrawTransformFeedbackInstanced(_mode : Int, _id : Int, _instancecount : Int) : Void
		{ return untyped __cpp__("glDrawTransformFeedbackInstanced({0}, {1}, {2})", _mode, _id, _instancecount); }

	inline static function glDrawTransformFeedbackStreamInstanced(_mode : Int, _id : Int, _stream : Int, _instancecount : Int) : Void
		{ return untyped __cpp__("glDrawTransformFeedbackStreamInstanced({0}, {1}, {2}, {3})", _mode, _id, _stream, _instancecount); }

	inline static function glClearBufferData(_target : Int, _internalformat : Int, _format : Int, _type : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glClearBufferData({0}, {1}, {2}, {3}, (const void *)&({4}[0]))", _target, _internalformat, _format, _type, _data); }

	inline static function glClearBufferSubData(_target : Int, _internalformat : Int, _offset : Int, _size : Int, _format : Int, _type : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glClearBufferSubData({0}, {1}, {2}, {3}, {4}, {5}, (const void *)&({6}[0]))", _target, _internalformat, _offset, _size, _format, _type, _data); }

	inline static function glDispatchCompute(_num_groups_x : Int, _num_groups_y : Int, _num_groups_z : Int) : Void
		{ return untyped __cpp__("glDispatchCompute({0}, {1}, {2})", _num_groups_x, _num_groups_y, _num_groups_z); }

	inline static function glDispatchComputeIndirect(_indirect : Int) : Void
		{ return untyped __cpp__("glDispatchComputeIndirect({0})", _indirect); }

	inline static function glCopyImageSubData(_srcName : Int, _srcTarget : Int, _srcLevel : Int, _srcX : Int, _srcY : Int, _srcZ : Int, _dstName : Int, _dstTarget : Int, _dstLevel : Int, _dstX : Int, _dstY : Int, _dstZ : Int, _srcWidth : Int, _srcHeight : Int, _srcDepth : Int) : Void
		{ return untyped __cpp__("glCopyImageSubData({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, {10}, {11}, {12}, {13}, {14})", _srcName, _srcTarget, _srcLevel, _srcX, _srcY, _srcZ, _dstName, _dstTarget, _dstLevel, _dstX, _dstY, _dstZ, _srcWidth, _srcHeight, _srcDepth); }

	inline static function glFramebufferParameteri(_target : Int, _pname : Int, _param : Int) : Void
		{ return untyped __cpp__("glFramebufferParameteri({0}, {1}, {2})", _target, _pname, _param); }

	inline static function glGetFramebufferParameteriv(_target : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetFramebufferParameteriv({0}, {1}, (GLint *)&({2}[0]))", _target, _pname, _params); }

	inline static function glGetInternalformati64v(_target : Int, _internalformat : Int, _pname : Int, _bufSize : Int, _params : Array<cpp.Int64>) : Void
		{ return untyped __cpp__("glGetInternalformati64v({0}, {1}, {2}, {3}, (GLint64 *)&({4}[0]))", _target, _internalformat, _pname, _bufSize, _params); }

	inline static function glInvalidateTexSubImage(_texture : Int, _level : Int, _xoffset : Int, _yoffset : Int, _zoffset : Int, _width : Int, _height : Int, _depth : Int) : Void
		{ return untyped __cpp__("glInvalidateTexSubImage({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})", _texture, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth); }

	inline static function glInvalidateTexImage(_texture : Int, _level : Int) : Void
		{ return untyped __cpp__("glInvalidateTexImage({0}, {1})", _texture, _level); }

	inline static function glInvalidateBufferSubData(_buffer : Int, _offset : Int, _length : Int) : Void
		{ return untyped __cpp__("glInvalidateBufferSubData({0}, {1}, {2})", _buffer, _offset, _length); }

	inline static function glInvalidateBufferData(_buffer : Int) : Void
		{ return untyped __cpp__("glInvalidateBufferData({0})", _buffer); }

	inline static function glInvalidateFramebuffer(_target : Int, _numAttachments : Int, _attachments : Array<Int>) : Void
		{ return untyped __cpp__("glInvalidateFramebuffer({0}, {1}, (const GLenum *)&({2}[0]))", _target, _numAttachments, _attachments); }

	inline static function glInvalidateSubFramebuffer(_target : Int, _numAttachments : Int, _attachments : Array<Int>, _x : Int, _y : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glInvalidateSubFramebuffer({0}, {1}, (const GLenum *)&({2}[0]), {3}, {4}, {5}, {6})", _target, _numAttachments, _attachments, _x, _y, _width, _height); }

	inline static function glMultiDrawArraysIndirect(_mode : Int, _indirect : BytesData, _drawcount : Int, _stride : Int) : Void
		{ return untyped __cpp__("glMultiDrawArraysIndirect({0}, (const void *)&({1}[0]), {2}, {3})", _mode, _indirect, _drawcount, _stride); }

	inline static function glMultiDrawElementsIndirect(_mode : Int, _type : Int, _indirect : BytesData, _drawcount : Int, _stride : Int) : Void
		{ return untyped __cpp__("glMultiDrawElementsIndirect({0}, {1}, (const void *)&({2}[0]), {3}, {4})", _mode, _type, _indirect, _drawcount, _stride); }

	inline static function glGetProgramInterfaceiv(_program : Int, _programInterface : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetProgramInterfaceiv({0}, {1}, {2}, (GLint *)&({3}[0]))", _program, _programInterface, _pname, _params); }

	inline static function glGetProgramResourceIndex(_program : Int, _programInterface : Int, _name : String) : Int
		{ return untyped __cpp__("glGetProgramResourceIndex({0}, {1}, {2})", _program, _programInterface, _name); }

	inline static function glGetProgramResourceName(_program : Int, _programInterface : Int, _index : Int, _bufSize : Int, _length : Array<Int>, _name : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetProgramResourceName({0}, {1}, {2}, {3}, (GLsizei *)&({4}[0]), (GLchar *)&({5}[0]))", _program, _programInterface, _index, _bufSize, _length, _name); }

	inline static function glGetProgramResourceiv(_program : Int, _programInterface : Int, _index : Int, _propCount : Int, _props : Array<Int>, _bufSize : Int, _length : Array<Int>, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetProgramResourceiv({0}, {1}, {2}, {3}, (const GLenum *)&({4}[0]), {5}, (GLsizei *)&({6}[0]), (GLint *)&({7}[0]))", _program, _programInterface, _index, _propCount, _props, _bufSize, _length, _params); }

	inline static function glGetProgramResourceLocation(_program : Int, _programInterface : Int, _name : String) : Int
		{ return untyped __cpp__("glGetProgramResourceLocation({0}, {1}, {2})", _program, _programInterface, _name); }

	inline static function glGetProgramResourceLocationIndex(_program : Int, _programInterface : Int, _name : String) : Int
		{ return untyped __cpp__("glGetProgramResourceLocationIndex({0}, {1}, {2})", _program, _programInterface, _name); }

	inline static function glShaderStorageBlockBinding(_program : Int, _storageBlockIndex : Int, _storageBlockBinding : Int) : Void
		{ return untyped __cpp__("glShaderStorageBlockBinding({0}, {1}, {2})", _program, _storageBlockIndex, _storageBlockBinding); }

	inline static function glTexBufferRange(_target : Int, _internalformat : Int, _buffer : Int, _offset : Int, _size : Int) : Void
		{ return untyped __cpp__("glTexBufferRange({0}, {1}, {2}, {3}, {4})", _target, _internalformat, _buffer, _offset, _size); }

	inline static function glTexStorage2DMultisample(_target : Int, _samples : Int, _internalformat : Int, _width : Int, _height : Int, _fixedsamplelocations : Bool) : Void
		{ return untyped __cpp__("glTexStorage2DMultisample({0}, {1}, {2}, {3}, {4}, {5})", _target, _samples, _internalformat, _width, _height, _fixedsamplelocations); }

	inline static function glTexStorage3DMultisample(_target : Int, _samples : Int, _internalformat : Int, _width : Int, _height : Int, _depth : Int, _fixedsamplelocations : Bool) : Void
		{ return untyped __cpp__("glTexStorage3DMultisample({0}, {1}, {2}, {3}, {4}, {5}, {6})", _target, _samples, _internalformat, _width, _height, _depth, _fixedsamplelocations); }

	inline static function glTextureView(_texture : Int, _target : Int, _origtexture : Int, _internalformat : Int, _minlevel : Int, _numlevels : Int, _minlayer : Int, _numlayers : Int) : Void
		{ return untyped __cpp__("glTextureView({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})", _texture, _target, _origtexture, _internalformat, _minlevel, _numlevels, _minlayer, _numlayers); }

	inline static function glBindVertexBuffer(_bindingindex : Int, _buffer : Int, _offset : Int, _stride : Int) : Void
		{ return untyped __cpp__("glBindVertexBuffer({0}, {1}, {2}, {3})", _bindingindex, _buffer, _offset, _stride); }

	inline static function glVertexAttribFormat(_attribindex : Int, _size : Int, _type : Int, _normalized : Bool, _relativeoffset : Int) : Void
		{ return untyped __cpp__("glVertexAttribFormat({0}, {1}, {2}, {3}, {4})", _attribindex, _size, _type, _normalized, _relativeoffset); }

	inline static function glVertexAttribIFormat(_attribindex : Int, _size : Int, _type : Int, _relativeoffset : Int) : Void
		{ return untyped __cpp__("glVertexAttribIFormat({0}, {1}, {2}, {3})", _attribindex, _size, _type, _relativeoffset); }

	inline static function glVertexAttribLFormat(_attribindex : Int, _size : Int, _type : Int, _relativeoffset : Int) : Void
		{ return untyped __cpp__("glVertexAttribLFormat({0}, {1}, {2}, {3})", _attribindex, _size, _type, _relativeoffset); }

	inline static function glVertexAttribBinding(_attribindex : Int, _bindingindex : Int) : Void
		{ return untyped __cpp__("glVertexAttribBinding({0}, {1})", _attribindex, _bindingindex); }

	inline static function glVertexBindingDivisor(_bindingindex : Int, _divisor : Int) : Void
		{ return untyped __cpp__("glVertexBindingDivisor({0}, {1})", _bindingindex, _divisor); }

	inline static function glDebugMessageControl(_source : Int, _type : Int, _severity : Int, _count : Int, _ids : Array<Int>, _enabled : Bool) : Void
		{ return untyped __cpp__("glDebugMessageControl({0}, {1}, {2}, {3}, (const GLuint *)&({4}[0]), {5})", _source, _type, _severity, _count, _ids, _enabled); }

	inline static function glDebugMessageInsert(_source : Int, _type : Int, _id : Int, _severity : Int, _length : Int, _buf : String) : Void
		{ return untyped __cpp__("glDebugMessageInsert({0}, {1}, {2}, {3}, {4}, {5})", _source, _type, _id, _severity, _length, _buf); }

	inline static function glDebugMessageCallback(_callback : cpp.Callable<Int->Int->Int->Int->Int->cpp.ConstCharStar->cpp.RawPointer<cpp.Void>->Void>, _userParam : BytesData) : Void
		{ return untyped __cpp__("glDebugMessageCallback({0}, (const void *)&({1}[0]))", _callback, _userParam); }

	inline static function glGetDebugMessageLog(_count : Int, _bufSize : Int, _sources : Array<Int>, _types : Array<Int>, _ids : Array<Int>, _severities : Array<Int>, _lengths : Array<Int>, _messageLog : Array<cpp.UInt8>) : Int
		{ return untyped __cpp__("glGetDebugMessageLog({0}, {1}, (GLenum *)&({2}[0]), (GLenum *)&({3}[0]), (GLuint *)&({4}[0]), (GLenum *)&({5}[0]), (GLsizei *)&({6}[0]), (GLchar *)&({7}[0]))", _count, _bufSize, _sources, _types, _ids, _severities, _lengths, _messageLog); }

	inline static function glPushDebugGroup(_source : Int, _id : Int, _length : Int, _message : String) : Void
		{ return untyped __cpp__("glPushDebugGroup({0}, {1}, {2}, {3})", _source, _id, _length, _message); }

	inline static function glPopDebugGroup() : Void
		{ return untyped __cpp__("glPopDebugGroup()"); }

	inline static function glObjectLabel(_identifier : Int, _name : Int, _length : Int, _label : String) : Void
		{ return untyped __cpp__("glObjectLabel({0}, {1}, {2}, {3})", _identifier, _name, _length, _label); }

	inline static function glGetObjectLabel(_identifier : Int, _name : Int, _bufSize : Int, _length : Array<Int>, _label : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetObjectLabel({0}, {1}, {2}, (GLsizei *)&({3}[0]), (GLchar *)&({4}[0]))", _identifier, _name, _bufSize, _length, _label); }

	inline static function glObjectPtrLabel(_ptr : BytesData, _length : Int, _label : String) : Void
		{ return untyped __cpp__("glObjectPtrLabel((const void *)&({0}[0]), {1}, {2})", _ptr, _length, _label); }

	inline static function glGetObjectPtrLabel(_ptr : BytesData, _bufSize : Int, _length : Array<Int>, _label : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetObjectPtrLabel((const void *)&({0}[0]), {1}, (GLsizei *)&({2}[0]), (GLchar *)&({3}[0]))", _ptr, _bufSize, _length, _label); }

	inline static function glGetPointerv(_pname : Int, _params : Void) : Void
		{ return untyped __cpp__("glGetPointerv({0}, {1})", _pname, _params); }

	inline static function glBufferStorage(_target : Int, _size : Int, _data : BytesData, _flags : Int) : Void
		{ return untyped __cpp__("glBufferStorage({0}, {1}, (const void *)&({2}[0]), {3})", _target, _size, _data, _flags); }

	inline static function glClearTexImage(_texture : Int, _level : Int, _format : Int, _type : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glClearTexImage({0}, {1}, {2}, {3}, (const void *)&({4}[0]))", _texture, _level, _format, _type, _data); }

	inline static function glClearTexSubImage(_texture : Int, _level : Int, _xoffset : Int, _yoffset : Int, _zoffset : Int, _width : Int, _height : Int, _depth : Int, _format : Int, _type : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glClearTexSubImage({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, (const void *)&({10}[0]))", _texture, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _format, _type, _data); }

	inline static function glBindBuffersBase(_target : Int, _first : Int, _count : Int, _buffers : Array<Int>) : Void
		{ return untyped __cpp__("glBindBuffersBase({0}, {1}, {2}, (const GLuint *)&({3}[0]))", _target, _first, _count, _buffers); }

	inline static function glBindBuffersRange(_target : Int, _first : Int, _count : Int, _buffers : Array<Int>, _offsets : Array<Int>, _sizes : Array<Int>) : Void
		{ return untyped __cpp__("glBindBuffersRange({0}, {1}, {2}, (const GLuint *)&({3}[0]), (const GLintptr *)&({4}[0]), (const GLsizeiptr *)&({5}[0]))", _target, _first, _count, _buffers, _offsets, _sizes); }

	inline static function glBindTextures(_first : Int, _count : Int, _textures : Array<Int>) : Void
		{ return untyped __cpp__("glBindTextures({0}, {1}, (const GLuint *)&({2}[0]))", _first, _count, _textures); }

	inline static function glBindSamplers(_first : Int, _count : Int, _samplers : Array<Int>) : Void
		{ return untyped __cpp__("glBindSamplers({0}, {1}, (const GLuint *)&({2}[0]))", _first, _count, _samplers); }

	inline static function glBindImageTextures(_first : Int, _count : Int, _textures : Array<Int>) : Void
		{ return untyped __cpp__("glBindImageTextures({0}, {1}, (const GLuint *)&({2}[0]))", _first, _count, _textures); }

	inline static function glBindVertexBuffers(_first : Int, _count : Int, _buffers : Array<Int>, _offsets : Array<Int>, _strides : Array<Int>) : Void
		{ return untyped __cpp__("glBindVertexBuffers({0}, {1}, (const GLuint *)&({2}[0]), (const GLintptr *)&({3}[0]), (const GLsizei *)&({4}[0]))", _first, _count, _buffers, _offsets, _strides); }

	inline static function glClipControl(_origin : Int, _depth : Int) : Void
		{ return untyped __cpp__("glClipControl({0}, {1})", _origin, _depth); }

	inline static function glCreateTransformFeedbacks(_n : Int, _ids : Array<Int>) : Void
		{ return untyped __cpp__("glCreateTransformFeedbacks({0}, (GLuint *)&({1}[0]))", _n, _ids); }

	inline static function glTransformFeedbackBufferBase(_xfb : Int, _index : Int, _buffer : Int) : Void
		{ return untyped __cpp__("glTransformFeedbackBufferBase({0}, {1}, {2})", _xfb, _index, _buffer); }

	inline static function glTransformFeedbackBufferRange(_xfb : Int, _index : Int, _buffer : Int, _offset : Int, _size : Int) : Void
		{ return untyped __cpp__("glTransformFeedbackBufferRange({0}, {1}, {2}, {3}, {4})", _xfb, _index, _buffer, _offset, _size); }

	inline static function glGetTransformFeedbackiv(_xfb : Int, _pname : Int, _param : Array<Int>) : Void
		{ return untyped __cpp__("glGetTransformFeedbackiv({0}, {1}, (GLint *)&({2}[0]))", _xfb, _pname, _param); }

	inline static function glGetTransformFeedbacki_v(_xfb : Int, _pname : Int, _index : Int, _param : Array<Int>) : Void
		{ return untyped __cpp__("glGetTransformFeedbacki_v({0}, {1}, {2}, (GLint *)&({3}[0]))", _xfb, _pname, _index, _param); }

	inline static function glGetTransformFeedbacki64_v(_xfb : Int, _pname : Int, _index : Int, _param : Array<cpp.Int64>) : Void
		{ return untyped __cpp__("glGetTransformFeedbacki64_v({0}, {1}, {2}, (GLint64 *)&({3}[0]))", _xfb, _pname, _index, _param); }

	inline static function glCreateBuffers(_n : Int, _buffers : Array<Int>) : Void
		{ return untyped __cpp__("glCreateBuffers({0}, (GLuint *)&({1}[0]))", _n, _buffers); }

	inline static function glNamedBufferStorage(_buffer : Int, _size : Int, _data : BytesData, _flags : Int) : Void
		{ return untyped __cpp__("glNamedBufferStorage({0}, {1}, (const void *)&({2}[0]), {3})", _buffer, _size, _data, _flags); }

	inline static function glNamedBufferData(_buffer : Int, _size : Int, _data : BytesData, _usage : Int) : Void
		{ return untyped __cpp__("glNamedBufferData({0}, {1}, (const void *)&({2}[0]), {3})", _buffer, _size, _data, _usage); }

	inline static function glNamedBufferSubData(_buffer : Int, _offset : Int, _size : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glNamedBufferSubData({0}, {1}, {2}, (const void *)&({3}[0]))", _buffer, _offset, _size, _data); }

	inline static function glCopyNamedBufferSubData(_readBuffer : Int, _writeBuffer : Int, _readOffset : Int, _writeOffset : Int, _size : Int) : Void
		{ return untyped __cpp__("glCopyNamedBufferSubData({0}, {1}, {2}, {3}, {4})", _readBuffer, _writeBuffer, _readOffset, _writeOffset, _size); }

	inline static function glClearNamedBufferData(_buffer : Int, _internalformat : Int, _format : Int, _type : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glClearNamedBufferData({0}, {1}, {2}, {3}, (const void *)&({4}[0]))", _buffer, _internalformat, _format, _type, _data); }

	inline static function glClearNamedBufferSubData(_buffer : Int, _internalformat : Int, _offset : Int, _size : Int, _format : Int, _type : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glClearNamedBufferSubData({0}, {1}, {2}, {3}, {4}, {5}, (const void *)&({6}[0]))", _buffer, _internalformat, _offset, _size, _format, _type, _data); }

	inline static function glMapNamedBuffer(_buffer : Int, _access : Int) : cpp.RawPointer<cpp.Void>
		{ return untyped __cpp__("glMapNamedBuffer({0}, {1})", _buffer, _access); }

	inline static function glMapNamedBufferRange(_buffer : Int, _offset : Int, _length : Int, _access : Int) : cpp.RawPointer<cpp.Void>
		{ return untyped __cpp__("glMapNamedBufferRange({0}, {1}, {2}, {3})", _buffer, _offset, _length, _access); }

	inline static function glUnmapNamedBuffer(_buffer : Int) : Bool
		{ return untyped __cpp__("glUnmapNamedBuffer({0})", _buffer); }

	inline static function glFlushMappedNamedBufferRange(_buffer : Int, _offset : Int, _length : Int) : Void
		{ return untyped __cpp__("glFlushMappedNamedBufferRange({0}, {1}, {2})", _buffer, _offset, _length); }

	inline static function glGetNamedBufferParameteriv(_buffer : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetNamedBufferParameteriv({0}, {1}, (GLint *)&({2}[0]))", _buffer, _pname, _params); }

	inline static function glGetNamedBufferParameteri64v(_buffer : Int, _pname : Int, _params : Array<cpp.Int64>) : Void
		{ return untyped __cpp__("glGetNamedBufferParameteri64v({0}, {1}, (GLint64 *)&({2}[0]))", _buffer, _pname, _params); }

	inline static function glGetNamedBufferPointerv(_buffer : Int, _pname : Int, _params : Void) : Void
		{ return untyped __cpp__("glGetNamedBufferPointerv({0}, {1}, {2})", _buffer, _pname, _params); }

	inline static function glGetNamedBufferSubData(_buffer : Int, _offset : Int, _size : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glGetNamedBufferSubData({0}, {1}, {2}, (void *)&({3}[0]))", _buffer, _offset, _size, _data); }

	inline static function glCreateFramebuffers(_n : Int, _framebuffers : Array<Int>) : Void
		{ return untyped __cpp__("glCreateFramebuffers({0}, (GLuint *)&({1}[0]))", _n, _framebuffers); }

	inline static function glNamedFramebufferRenderbuffer(_framebuffer : Int, _attachment : Int, _renderbuffertarget : Int, _renderbuffer : Int) : Void
		{ return untyped __cpp__("glNamedFramebufferRenderbuffer({0}, {1}, {2}, {3})", _framebuffer, _attachment, _renderbuffertarget, _renderbuffer); }

	inline static function glNamedFramebufferParameteri(_framebuffer : Int, _pname : Int, _param : Int) : Void
		{ return untyped __cpp__("glNamedFramebufferParameteri({0}, {1}, {2})", _framebuffer, _pname, _param); }

	inline static function glNamedFramebufferTexture(_framebuffer : Int, _attachment : Int, _texture : Int, _level : Int) : Void
		{ return untyped __cpp__("glNamedFramebufferTexture({0}, {1}, {2}, {3})", _framebuffer, _attachment, _texture, _level); }

	inline static function glNamedFramebufferTextureLayer(_framebuffer : Int, _attachment : Int, _texture : Int, _level : Int, _layer : Int) : Void
		{ return untyped __cpp__("glNamedFramebufferTextureLayer({0}, {1}, {2}, {3}, {4})", _framebuffer, _attachment, _texture, _level, _layer); }

	inline static function glNamedFramebufferDrawBuffer(_framebuffer : Int, _buf : Int) : Void
		{ return untyped __cpp__("glNamedFramebufferDrawBuffer({0}, {1})", _framebuffer, _buf); }

	inline static function glNamedFramebufferDrawBuffers(_framebuffer : Int, _n : Int, _bufs : Array<Int>) : Void
		{ return untyped __cpp__("glNamedFramebufferDrawBuffers({0}, {1}, (const GLenum *)&({2}[0]))", _framebuffer, _n, _bufs); }

	inline static function glNamedFramebufferReadBuffer(_framebuffer : Int, _src : Int) : Void
		{ return untyped __cpp__("glNamedFramebufferReadBuffer({0}, {1})", _framebuffer, _src); }

	inline static function glInvalidateNamedFramebufferData(_framebuffer : Int, _numAttachments : Int, _attachments : Array<Int>) : Void
		{ return untyped __cpp__("glInvalidateNamedFramebufferData({0}, {1}, (const GLenum *)&({2}[0]))", _framebuffer, _numAttachments, _attachments); }

	inline static function glInvalidateNamedFramebufferSubData(_framebuffer : Int, _numAttachments : Int, _attachments : Array<Int>, _x : Int, _y : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glInvalidateNamedFramebufferSubData({0}, {1}, (const GLenum *)&({2}[0]), {3}, {4}, {5}, {6})", _framebuffer, _numAttachments, _attachments, _x, _y, _width, _height); }

	inline static function glClearNamedFramebufferiv(_framebuffer : Int, _buffer : Int, _drawbuffer : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glClearNamedFramebufferiv({0}, {1}, {2}, (const GLint *)&({3}[0]))", _framebuffer, _buffer, _drawbuffer, _value); }

	inline static function glClearNamedFramebufferuiv(_framebuffer : Int, _buffer : Int, _drawbuffer : Int, _value : Array<Int>) : Void
		{ return untyped __cpp__("glClearNamedFramebufferuiv({0}, {1}, {2}, (const GLuint *)&({3}[0]))", _framebuffer, _buffer, _drawbuffer, _value); }

	inline static function glClearNamedFramebufferfv(_framebuffer : Int, _buffer : Int, _drawbuffer : Int, _value : Array<Float>) : Void
		{ return untyped __cpp__("glClearNamedFramebufferfv({0}, {1}, {2}, (const GLfloat *)&({3}[0]))", _framebuffer, _buffer, _drawbuffer, _value); }

	inline static function glClearNamedFramebufferfi(_framebuffer : Int, _buffer : Int, _drawbuffer : Int, _depth : Float, _stencil : Int) : Void
		{ return untyped __cpp__("glClearNamedFramebufferfi({0}, {1}, {2}, {3}, {4})", _framebuffer, _buffer, _drawbuffer, _depth, _stencil); }

	inline static function glBlitNamedFramebuffer(_readFramebuffer : Int, _drawFramebuffer : Int, _srcX0 : Int, _srcY0 : Int, _srcX1 : Int, _srcY1 : Int, _dstX0 : Int, _dstY0 : Int, _dstX1 : Int, _dstY1 : Int, _mask : Int, _filter : Int) : Void
		{ return untyped __cpp__("glBlitNamedFramebuffer({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, {10}, {11})", _readFramebuffer, _drawFramebuffer, _srcX0, _srcY0, _srcX1, _srcY1, _dstX0, _dstY0, _dstX1, _dstY1, _mask, _filter); }

	inline static function glCheckNamedFramebufferStatus(_framebuffer : Int, _target : Int) : Int
		{ return untyped __cpp__("glCheckNamedFramebufferStatus({0}, {1})", _framebuffer, _target); }

	inline static function glGetNamedFramebufferParameteriv(_framebuffer : Int, _pname : Int, _param : Array<Int>) : Void
		{ return untyped __cpp__("glGetNamedFramebufferParameteriv({0}, {1}, (GLint *)&({2}[0]))", _framebuffer, _pname, _param); }

	inline static function glGetNamedFramebufferAttachmentParameteriv(_framebuffer : Int, _attachment : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetNamedFramebufferAttachmentParameteriv({0}, {1}, {2}, (GLint *)&({3}[0]))", _framebuffer, _attachment, _pname, _params); }

	inline static function glCreateRenderbuffers(_n : Int, _renderbuffers : Array<Int>) : Void
		{ return untyped __cpp__("glCreateRenderbuffers({0}, (GLuint *)&({1}[0]))", _n, _renderbuffers); }

	inline static function glNamedRenderbufferStorage(_renderbuffer : Int, _internalformat : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glNamedRenderbufferStorage({0}, {1}, {2}, {3})", _renderbuffer, _internalformat, _width, _height); }

	inline static function glNamedRenderbufferStorageMultisample(_renderbuffer : Int, _samples : Int, _internalformat : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glNamedRenderbufferStorageMultisample({0}, {1}, {2}, {3}, {4})", _renderbuffer, _samples, _internalformat, _width, _height); }

	inline static function glGetNamedRenderbufferParameteriv(_renderbuffer : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetNamedRenderbufferParameteriv({0}, {1}, (GLint *)&({2}[0]))", _renderbuffer, _pname, _params); }

	inline static function glCreateTextures(_target : Int, _n : Int, _textures : Array<Int>) : Void
		{ return untyped __cpp__("glCreateTextures({0}, {1}, (GLuint *)&({2}[0]))", _target, _n, _textures); }

	inline static function glTextureBuffer(_texture : Int, _internalformat : Int, _buffer : Int) : Void
		{ return untyped __cpp__("glTextureBuffer({0}, {1}, {2})", _texture, _internalformat, _buffer); }

	inline static function glTextureBufferRange(_texture : Int, _internalformat : Int, _buffer : Int, _offset : Int, _size : Int) : Void
		{ return untyped __cpp__("glTextureBufferRange({0}, {1}, {2}, {3}, {4})", _texture, _internalformat, _buffer, _offset, _size); }

	inline static function glTextureStorage1D(_texture : Int, _levels : Int, _internalformat : Int, _width : Int) : Void
		{ return untyped __cpp__("glTextureStorage1D({0}, {1}, {2}, {3})", _texture, _levels, _internalformat, _width); }

	inline static function glTextureStorage2D(_texture : Int, _levels : Int, _internalformat : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glTextureStorage2D({0}, {1}, {2}, {3}, {4})", _texture, _levels, _internalformat, _width, _height); }

	inline static function glTextureStorage3D(_texture : Int, _levels : Int, _internalformat : Int, _width : Int, _height : Int, _depth : Int) : Void
		{ return untyped __cpp__("glTextureStorage3D({0}, {1}, {2}, {3}, {4}, {5})", _texture, _levels, _internalformat, _width, _height, _depth); }

	inline static function glTextureStorage2DMultisample(_texture : Int, _samples : Int, _internalformat : Int, _width : Int, _height : Int, _fixedsamplelocations : Bool) : Void
		{ return untyped __cpp__("glTextureStorage2DMultisample({0}, {1}, {2}, {3}, {4}, {5})", _texture, _samples, _internalformat, _width, _height, _fixedsamplelocations); }

	inline static function glTextureStorage3DMultisample(_texture : Int, _samples : Int, _internalformat : Int, _width : Int, _height : Int, _depth : Int, _fixedsamplelocations : Bool) : Void
		{ return untyped __cpp__("glTextureStorage3DMultisample({0}, {1}, {2}, {3}, {4}, {5}, {6})", _texture, _samples, _internalformat, _width, _height, _depth, _fixedsamplelocations); }

	inline static function glTextureSubImage1D(_texture : Int, _level : Int, _xoffset : Int, _width : Int, _format : Int, _type : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glTextureSubImage1D({0}, {1}, {2}, {3}, {4}, {5}, (const void *)&({6}[0]))", _texture, _level, _xoffset, _width, _format, _type, _pixels); }

	inline static function glTextureSubImage2D(_texture : Int, _level : Int, _xoffset : Int, _yoffset : Int, _width : Int, _height : Int, _format : Int, _type : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glTextureSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void *)&({8}[0]))", _texture, _level, _xoffset, _yoffset, _width, _height, _format, _type, _pixels); }

	inline static function glTextureSubImage3D(_texture : Int, _level : Int, _xoffset : Int, _yoffset : Int, _zoffset : Int, _width : Int, _height : Int, _depth : Int, _format : Int, _type : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glTextureSubImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, (const void *)&({10}[0]))", _texture, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _format, _type, _pixels); }

	inline static function glCompressedTextureSubImage1D(_texture : Int, _level : Int, _xoffset : Int, _width : Int, _format : Int, _imageSize : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glCompressedTextureSubImage1D({0}, {1}, {2}, {3}, {4}, {5}, (const void *)&({6}[0]))", _texture, _level, _xoffset, _width, _format, _imageSize, _data); }

	inline static function glCompressedTextureSubImage2D(_texture : Int, _level : Int, _xoffset : Int, _yoffset : Int, _width : Int, _height : Int, _format : Int, _imageSize : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glCompressedTextureSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void *)&({8}[0]))", _texture, _level, _xoffset, _yoffset, _width, _height, _format, _imageSize, _data); }

	inline static function glCompressedTextureSubImage3D(_texture : Int, _level : Int, _xoffset : Int, _yoffset : Int, _zoffset : Int, _width : Int, _height : Int, _depth : Int, _format : Int, _imageSize : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glCompressedTextureSubImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, (const void *)&({10}[0]))", _texture, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _format, _imageSize, _data); }

	inline static function glCopyTextureSubImage1D(_texture : Int, _level : Int, _xoffset : Int, _x : Int, _y : Int, _width : Int) : Void
		{ return untyped __cpp__("glCopyTextureSubImage1D({0}, {1}, {2}, {3}, {4}, {5})", _texture, _level, _xoffset, _x, _y, _width); }

	inline static function glCopyTextureSubImage2D(_texture : Int, _level : Int, _xoffset : Int, _yoffset : Int, _x : Int, _y : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glCopyTextureSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})", _texture, _level, _xoffset, _yoffset, _x, _y, _width, _height); }

	inline static function glCopyTextureSubImage3D(_texture : Int, _level : Int, _xoffset : Int, _yoffset : Int, _zoffset : Int, _x : Int, _y : Int, _width : Int, _height : Int) : Void
		{ return untyped __cpp__("glCopyTextureSubImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})", _texture, _level, _xoffset, _yoffset, _zoffset, _x, _y, _width, _height); }

	inline static function glTextureParameterf(_texture : Int, _pname : Int, _param : Float) : Void
		{ return untyped __cpp__("glTextureParameterf({0}, {1}, {2})", _texture, _pname, _param); }

	inline static function glTextureParameterfv(_texture : Int, _pname : Int, _param : Array<Float>) : Void
		{ return untyped __cpp__("glTextureParameterfv({0}, {1}, (const GLfloat *)&({2}[0]))", _texture, _pname, _param); }

	inline static function glTextureParameteri(_texture : Int, _pname : Int, _param : Int) : Void
		{ return untyped __cpp__("glTextureParameteri({0}, {1}, {2})", _texture, _pname, _param); }

	inline static function glTextureParameterIiv(_texture : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glTextureParameterIiv({0}, {1}, (const GLint *)&({2}[0]))", _texture, _pname, _params); }

	inline static function glTextureParameterIuiv(_texture : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glTextureParameterIuiv({0}, {1}, (const GLuint *)&({2}[0]))", _texture, _pname, _params); }

	inline static function glTextureParameteriv(_texture : Int, _pname : Int, _param : Array<Int>) : Void
		{ return untyped __cpp__("glTextureParameteriv({0}, {1}, (const GLint *)&({2}[0]))", _texture, _pname, _param); }

	inline static function glGenerateTextureMipmap(_texture : Int) : Void
		{ return untyped __cpp__("glGenerateTextureMipmap({0})", _texture); }

	inline static function glBindTextureUnit(_unit : Int, _texture : Int) : Void
		{ return untyped __cpp__("glBindTextureUnit({0}, {1})", _unit, _texture); }

	inline static function glGetTextureImage(_texture : Int, _level : Int, _format : Int, _type : Int, _bufSize : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glGetTextureImage({0}, {1}, {2}, {3}, {4}, (void *)&({5}[0]))", _texture, _level, _format, _type, _bufSize, _pixels); }

	inline static function glGetCompressedTextureImage(_texture : Int, _level : Int, _bufSize : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glGetCompressedTextureImage({0}, {1}, {2}, (void *)&({3}[0]))", _texture, _level, _bufSize, _pixels); }

	inline static function glGetTextureLevelParameterfv(_texture : Int, _level : Int, _pname : Int, _params : Array<Float>) : Void
		{ return untyped __cpp__("glGetTextureLevelParameterfv({0}, {1}, {2}, (GLfloat *)&({3}[0]))", _texture, _level, _pname, _params); }

	inline static function glGetTextureLevelParameteriv(_texture : Int, _level : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetTextureLevelParameteriv({0}, {1}, {2}, (GLint *)&({3}[0]))", _texture, _level, _pname, _params); }

	inline static function glGetTextureParameterfv(_texture : Int, _pname : Int, _params : Array<Float>) : Void
		{ return untyped __cpp__("glGetTextureParameterfv({0}, {1}, (GLfloat *)&({2}[0]))", _texture, _pname, _params); }

	inline static function glGetTextureParameterIiv(_texture : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetTextureParameterIiv({0}, {1}, (GLint *)&({2}[0]))", _texture, _pname, _params); }

	inline static function glGetTextureParameterIuiv(_texture : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetTextureParameterIuiv({0}, {1}, (GLuint *)&({2}[0]))", _texture, _pname, _params); }

	inline static function glGetTextureParameteriv(_texture : Int, _pname : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetTextureParameteriv({0}, {1}, (GLint *)&({2}[0]))", _texture, _pname, _params); }

	inline static function glCreateVertexArrays(_n : Int, _arrays : Array<Int>) : Void
		{ return untyped __cpp__("glCreateVertexArrays({0}, (GLuint *)&({1}[0]))", _n, _arrays); }

	inline static function glDisableVertexArrayAttrib(_vaobj : Int, _index : Int) : Void
		{ return untyped __cpp__("glDisableVertexArrayAttrib({0}, {1})", _vaobj, _index); }

	inline static function glEnableVertexArrayAttrib(_vaobj : Int, _index : Int) : Void
		{ return untyped __cpp__("glEnableVertexArrayAttrib({0}, {1})", _vaobj, _index); }

	inline static function glVertexArrayElementBuffer(_vaobj : Int, _buffer : Int) : Void
		{ return untyped __cpp__("glVertexArrayElementBuffer({0}, {1})", _vaobj, _buffer); }

	inline static function glVertexArrayVertexBuffer(_vaobj : Int, _bindingindex : Int, _buffer : Int, _offset : Int, _stride : Int) : Void
		{ return untyped __cpp__("glVertexArrayVertexBuffer({0}, {1}, {2}, {3}, {4})", _vaobj, _bindingindex, _buffer, _offset, _stride); }

	inline static function glVertexArrayVertexBuffers(_vaobj : Int, _first : Int, _count : Int, _buffers : Array<Int>, _offsets : Array<Int>, _strides : Array<Int>) : Void
		{ return untyped __cpp__("glVertexArrayVertexBuffers({0}, {1}, {2}, (const GLuint *)&({3}[0]), (const GLintptr *)&({4}[0]), (const GLsizei *)&({5}[0]))", _vaobj, _first, _count, _buffers, _offsets, _strides); }

	inline static function glVertexArrayAttribBinding(_vaobj : Int, _attribindex : Int, _bindingindex : Int) : Void
		{ return untyped __cpp__("glVertexArrayAttribBinding({0}, {1}, {2})", _vaobj, _attribindex, _bindingindex); }

	inline static function glVertexArrayAttribFormat(_vaobj : Int, _attribindex : Int, _size : Int, _type : Int, _normalized : Bool, _relativeoffset : Int) : Void
		{ return untyped __cpp__("glVertexArrayAttribFormat({0}, {1}, {2}, {3}, {4}, {5})", _vaobj, _attribindex, _size, _type, _normalized, _relativeoffset); }

	inline static function glVertexArrayAttribIFormat(_vaobj : Int, _attribindex : Int, _size : Int, _type : Int, _relativeoffset : Int) : Void
		{ return untyped __cpp__("glVertexArrayAttribIFormat({0}, {1}, {2}, {3}, {4})", _vaobj, _attribindex, _size, _type, _relativeoffset); }

	inline static function glVertexArrayAttribLFormat(_vaobj : Int, _attribindex : Int, _size : Int, _type : Int, _relativeoffset : Int) : Void
		{ return untyped __cpp__("glVertexArrayAttribLFormat({0}, {1}, {2}, {3}, {4})", _vaobj, _attribindex, _size, _type, _relativeoffset); }

	inline static function glVertexArrayBindingDivisor(_vaobj : Int, _bindingindex : Int, _divisor : Int) : Void
		{ return untyped __cpp__("glVertexArrayBindingDivisor({0}, {1}, {2})", _vaobj, _bindingindex, _divisor); }

	inline static function glGetVertexArrayiv(_vaobj : Int, _pname : Int, _param : Array<Int>) : Void
		{ return untyped __cpp__("glGetVertexArrayiv({0}, {1}, (GLint *)&({2}[0]))", _vaobj, _pname, _param); }

	inline static function glGetVertexArrayIndexediv(_vaobj : Int, _index : Int, _pname : Int, _param : Array<Int>) : Void
		{ return untyped __cpp__("glGetVertexArrayIndexediv({0}, {1}, {2}, (GLint *)&({3}[0]))", _vaobj, _index, _pname, _param); }

	inline static function glGetVertexArrayIndexed64iv(_vaobj : Int, _index : Int, _pname : Int, _param : Array<cpp.Int64>) : Void
		{ return untyped __cpp__("glGetVertexArrayIndexed64iv({0}, {1}, {2}, (GLint64 *)&({3}[0]))", _vaobj, _index, _pname, _param); }

	inline static function glCreateSamplers(_n : Int, _samplers : Array<Int>) : Void
		{ return untyped __cpp__("glCreateSamplers({0}, (GLuint *)&({1}[0]))", _n, _samplers); }

	inline static function glCreateProgramPipelines(_n : Int, _pipelines : Array<Int>) : Void
		{ return untyped __cpp__("glCreateProgramPipelines({0}, (GLuint *)&({1}[0]))", _n, _pipelines); }

	inline static function glCreateQueries(_target : Int, _n : Int, _ids : Array<Int>) : Void
		{ return untyped __cpp__("glCreateQueries({0}, {1}, (GLuint *)&({2}[0]))", _target, _n, _ids); }

	inline static function glGetQueryBufferObjecti64v(_id : Int, _buffer : Int, _pname : Int, _offset : Int) : Void
		{ return untyped __cpp__("glGetQueryBufferObjecti64v({0}, {1}, {2}, {3})", _id, _buffer, _pname, _offset); }

	inline static function glGetQueryBufferObjectiv(_id : Int, _buffer : Int, _pname : Int, _offset : Int) : Void
		{ return untyped __cpp__("glGetQueryBufferObjectiv({0}, {1}, {2}, {3})", _id, _buffer, _pname, _offset); }

	inline static function glGetQueryBufferObjectui64v(_id : Int, _buffer : Int, _pname : Int, _offset : Int) : Void
		{ return untyped __cpp__("glGetQueryBufferObjectui64v({0}, {1}, {2}, {3})", _id, _buffer, _pname, _offset); }

	inline static function glGetQueryBufferObjectuiv(_id : Int, _buffer : Int, _pname : Int, _offset : Int) : Void
		{ return untyped __cpp__("glGetQueryBufferObjectuiv({0}, {1}, {2}, {3})", _id, _buffer, _pname, _offset); }

	inline static function glMemoryBarrierByRegion(_barriers : Int) : Void
		{ return untyped __cpp__("glMemoryBarrierByRegion({0})", _barriers); }

	inline static function glGetTextureSubImage(_texture : Int, _level : Int, _xoffset : Int, _yoffset : Int, _zoffset : Int, _width : Int, _height : Int, _depth : Int, _format : Int, _type : Int, _bufSize : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glGetTextureSubImage({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, {10}, (void *)&({11}[0]))", _texture, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _format, _type, _bufSize, _pixels); }

	inline static function glGetCompressedTextureSubImage(_texture : Int, _level : Int, _xoffset : Int, _yoffset : Int, _zoffset : Int, _width : Int, _height : Int, _depth : Int, _bufSize : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glGetCompressedTextureSubImage({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, (void *)&({9}[0]))", _texture, _level, _xoffset, _yoffset, _zoffset, _width, _height, _depth, _bufSize, _pixels); }

	inline static function glGetGraphicsResetStatus() : Int
		{ return untyped __cpp__("glGetGraphicsResetStatus()"); }

	inline static function glGetnCompressedTexImage(_target : Int, _lod : Int, _bufSize : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glGetnCompressedTexImage({0}, {1}, {2}, (void *)&({3}[0]))", _target, _lod, _bufSize, _pixels); }

	inline static function glGetnTexImage(_target : Int, _level : Int, _format : Int, _type : Int, _bufSize : Int, _pixels : BytesData) : Void
		{ return untyped __cpp__("glGetnTexImage({0}, {1}, {2}, {3}, {4}, (void *)&({5}[0]))", _target, _level, _format, _type, _bufSize, _pixels); }

	inline static function glGetnUniformdv(_program : Int, _location : Int, _bufSize : Int, _params : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glGetnUniformdv({0}, {1}, {2}, (GLdouble *)&({3}[0]))", _program, _location, _bufSize, _params); }

	inline static function glGetnUniformfv(_program : Int, _location : Int, _bufSize : Int, _params : Array<Float>) : Void
		{ return untyped __cpp__("glGetnUniformfv({0}, {1}, {2}, (GLfloat *)&({3}[0]))", _program, _location, _bufSize, _params); }

	inline static function glGetnUniformiv(_program : Int, _location : Int, _bufSize : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetnUniformiv({0}, {1}, {2}, (GLint *)&({3}[0]))", _program, _location, _bufSize, _params); }

	inline static function glGetnUniformuiv(_program : Int, _location : Int, _bufSize : Int, _params : Array<Int>) : Void
		{ return untyped __cpp__("glGetnUniformuiv({0}, {1}, {2}, (GLuint *)&({3}[0]))", _program, _location, _bufSize, _params); }

	inline static function glReadnPixels(_x : Int, _y : Int, _width : Int, _height : Int, _format : Int, _type : Int, _bufSize : Int, _data : BytesData) : Void
		{ return untyped __cpp__("glReadnPixels({0}, {1}, {2}, {3}, {4}, {5}, {6}, (void *)&({7}[0]))", _x, _y, _width, _height, _format, _type, _bufSize, _data); }

	inline static function glGetnMapdv(_target : Int, _query : Int, _bufSize : Int, _v : Array<cpp.Float64>) : Void
		{ return untyped __cpp__("glGetnMapdv({0}, {1}, {2}, (GLdouble *)&({3}[0]))", _target, _query, _bufSize, _v); }

	inline static function glGetnMapfv(_target : Int, _query : Int, _bufSize : Int, _v : Array<Float>) : Void
		{ return untyped __cpp__("glGetnMapfv({0}, {1}, {2}, (GLfloat *)&({3}[0]))", _target, _query, _bufSize, _v); }

	inline static function glGetnMapiv(_target : Int, _query : Int, _bufSize : Int, _v : Array<Int>) : Void
		{ return untyped __cpp__("glGetnMapiv({0}, {1}, {2}, (GLint *)&({3}[0]))", _target, _query, _bufSize, _v); }

	inline static function glGetnPixelMapfv(_map : Int, _bufSize : Int, _values : Array<Float>) : Void
		{ return untyped __cpp__("glGetnPixelMapfv({0}, {1}, (GLfloat *)&({2}[0]))", _map, _bufSize, _values); }

	inline static function glGetnPixelMapuiv(_map : Int, _bufSize : Int, _values : Array<Int>) : Void
		{ return untyped __cpp__("glGetnPixelMapuiv({0}, {1}, (GLuint *)&({2}[0]))", _map, _bufSize, _values); }

	inline static function glGetnPixelMapusv(_map : Int, _bufSize : Int, _values : Array<Int>) : Void
		{ return untyped __cpp__("glGetnPixelMapusv({0}, {1}, (GLushort *)&({2}[0]))", _map, _bufSize, _values); }

	inline static function glGetnPolygonStipple(_bufSize : Int, _pattern : Array<cpp.UInt8>) : Void
		{ return untyped __cpp__("glGetnPolygonStipple({0}, (GLubyte *)&({1}[0]))", _bufSize, _pattern); }

	inline static function glGetnColorTable(_target : Int, _format : Int, _type : Int, _bufSize : Int, _table : BytesData) : Void
		{ return untyped __cpp__("glGetnColorTable({0}, {1}, {2}, {3}, (void *)&({4}[0]))", _target, _format, _type, _bufSize, _table); }

	inline static function glGetnConvolutionFilter(_target : Int, _format : Int, _type : Int, _bufSize : Int, _image : BytesData) : Void
		{ return untyped __cpp__("glGetnConvolutionFilter({0}, {1}, {2}, {3}, (void *)&({4}[0]))", _target, _format, _type, _bufSize, _image); }

	inline static function glGetnSeparableFilter(_target : Int, _format : Int, _type : Int, _rowBufSize : Int, _row : BytesData, _columnBufSize : Int, _column : BytesData, _span : BytesData) : Void
		{ return untyped __cpp__("glGetnSeparableFilter({0}, {1}, {2}, {3}, (void *)&({4}[0]), {5}, (void *)&({6}[0]), (void *)&({7}[0]))", _target, _format, _type, _rowBufSize, _row, _columnBufSize, _column, _span); }

	inline static function glGetnHistogram(_target : Int, _reset : Bool, _format : Int, _type : Int, _bufSize : Int, _values : BytesData) : Void
		{ return untyped __cpp__("glGetnHistogram({0}, {1}, {2}, {3}, {4}, (void *)&({5}[0]))", _target, _reset, _format, _type, _bufSize, _values); }

	inline static function glGetnMinmax(_target : Int, _reset : Bool, _format : Int, _type : Int, _bufSize : Int, _values : BytesData) : Void
		{ return untyped __cpp__("glGetnMinmax({0}, {1}, {2}, {3}, {4}, (void *)&({5}[0]))", _target, _reset, _format, _type, _bufSize, _values); }

	inline static function glTextureBarrier() : Void
		{ return untyped __cpp__("glTextureBarrier()"); }

	inline static function glSpecializeShader(_shader : Int, _pEntryPoint : String, _numSpecializationConstants : Int, _pConstantIndex : Array<Int>, _pConstantValue : Array<Int>) : Void
		{ return untyped __cpp__("glSpecializeShader({0}, {1}, {2}, (const GLuint *)&({3}[0]), (const GLuint *)&({4}[0]))", _shader, _pEntryPoint, _numSpecializationConstants, _pConstantIndex, _pConstantValue); }

	inline static function glMultiDrawArraysIndirectCount(_mode : Int, _indirect : BytesData, _drawcount : Int, _maxdrawcount : Int, _stride : Int) : Void
		{ return untyped __cpp__("glMultiDrawArraysIndirectCount({0}, (const void *)&({1}[0]), {2}, {3}, {4})", _mode, _indirect, _drawcount, _maxdrawcount, _stride); }

	inline static function glMultiDrawElementsIndirectCount(_mode : Int, _type : Int, _indirect : BytesData, _drawcount : Int, _maxdrawcount : Int, _stride : Int) : Void
		{ return untyped __cpp__("glMultiDrawElementsIndirectCount({0}, {1}, (const void *)&({2}[0]), {3}, {4}, {5})", _mode, _type, _indirect, _drawcount, _maxdrawcount, _stride); }

	inline static function glPolygonOffsetClamp(_factor : Float, _units : Float, _clamp : Float) : Void
		{ return untyped __cpp__("glPolygonOffsetClamp({0}, {1}, {2})", _factor, _units, _clamp); }

}
