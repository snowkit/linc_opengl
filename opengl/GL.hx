package opengl;

import haxe.io.BytesData;

@:keep
@:include('linc_opengl.h')
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('opengl'))
extern class GL {

//GL 1.1

    //GL 1.1 defines

        inline static var GL_ZERO                                                         = 0;
        inline static var GL_FALSE                                                        = 0;
        inline static var GL_LOGIC_OP                                                     = 0x0BF1;
        inline static var GL_NONE                                                         = 0;
        inline static var GL_TEXTURE_COMPONENTS                                           = 0x1003;
        inline static var GL_NO_ERROR                                                     = 0;
        inline static var GL_POINTS                                                       = 0x0000;
        inline static var GL_CURRENT_BIT                                                  = 0x00000001;
        inline static var GL_TRUE                                                         = 1;
        inline static var GL_ONE                                                          = 1;
        inline static var GL_CLIENT_PIXEL_STORE_BIT                                       = 0x00000001;
        inline static var GL_LINES                                                        = 0x0001;
        inline static var GL_LINE_LOOP                                                    = 0x0002;
        inline static var GL_POINT_BIT                                                    = 0x00000002;
        inline static var GL_CLIENT_VERTEX_ARRAY_BIT                                      = 0x00000002;
        inline static var GL_LINE_STRIP                                                   = 0x0003;
        inline static var GL_LINE_BIT                                                     = 0x00000004;
        inline static var GL_TRIANGLES                                                    = 0x0004;
        inline static var GL_TRIANGLE_STRIP                                               = 0x0005;
        inline static var GL_TRIANGLE_FAN                                                 = 0x0006;
        inline static var GL_QUADS                                                        = 0x0007;
        inline static var GL_QUAD_STRIP                                                   = 0x0008;
        inline static var GL_POLYGON_BIT                                                  = 0x00000008;
        inline static var GL_POLYGON                                                      = 0x0009;
        inline static var GL_POLYGON_STIPPLE_BIT                                          = 0x00000010;
        inline static var GL_PIXEL_MODE_BIT                                               = 0x00000020;
        inline static var GL_LIGHTING_BIT                                                 = 0x00000040;
        inline static var GL_FOG_BIT                                                      = 0x00000080;
        inline static var GL_DEPTH_BUFFER_BIT                                             = 0x00000100;
        inline static var GL_ACCUM                                                        = 0x0100;
        inline static var GL_LOAD                                                         = 0x0101;
        inline static var GL_RETURN                                                       = 0x0102;
        inline static var GL_MULT                                                         = 0x0103;
        inline static var GL_ADD                                                          = 0x0104;
        inline static var GL_NEVER                                                        = 0x0200;
        inline static var GL_ACCUM_BUFFER_BIT                                             = 0x00000200;
        inline static var GL_LESS                                                         = 0x0201;
        inline static var GL_EQUAL                                                        = 0x0202;
        inline static var GL_LEQUAL                                                       = 0x0203;
        inline static var GL_GREATER                                                      = 0x0204;
        inline static var GL_NOTEQUAL                                                     = 0x0205;
        inline static var GL_GEQUAL                                                       = 0x0206;
        inline static var GL_ALWAYS                                                       = 0x0207;
        inline static var GL_SRC_COLOR                                                    = 0x0300;
        inline static var GL_ONE_MINUS_SRC_COLOR                                          = 0x0301;
        inline static var GL_SRC_ALPHA                                                    = 0x0302;
        inline static var GL_ONE_MINUS_SRC_ALPHA                                          = 0x0303;
        inline static var GL_DST_ALPHA                                                    = 0x0304;
        inline static var GL_ONE_MINUS_DST_ALPHA                                          = 0x0305;
        inline static var GL_DST_COLOR                                                    = 0x0306;
        inline static var GL_ONE_MINUS_DST_COLOR                                          = 0x0307;
        inline static var GL_SRC_ALPHA_SATURATE                                           = 0x0308;
        inline static var GL_STENCIL_BUFFER_BIT                                           = 0x00000400;
        inline static var GL_FRONT_LEFT                                                   = 0x0400;
        inline static var GL_FRONT_RIGHT                                                  = 0x0401;
        inline static var GL_BACK_LEFT                                                    = 0x0402;
        inline static var GL_BACK_RIGHT                                                   = 0x0403;
        inline static var GL_FRONT                                                        = 0x0404;
        inline static var GL_BACK                                                         = 0x0405;
        inline static var GL_LEFT                                                         = 0x0406;
        inline static var GL_RIGHT                                                        = 0x0407;
        inline static var GL_FRONT_AND_BACK                                               = 0x0408;
        inline static var GL_AUX0                                                         = 0x0409;
        inline static var GL_AUX1                                                         = 0x040A;
        inline static var GL_AUX2                                                         = 0x040B;
        inline static var GL_AUX3                                                         = 0x040C;
        inline static var GL_INVALID_ENUM                                                 = 0x0500;
        inline static var GL_INVALID_VALUE                                                = 0x0501;
        inline static var GL_INVALID_OPERATION                                            = 0x0502;
        inline static var GL_STACK_OVERFLOW                                               = 0x0503;
        inline static var GL_STACK_UNDERFLOW                                              = 0x0504;
        inline static var GL_OUT_OF_MEMORY                                                = 0x0505;
        inline static var GL_2D                                                           = 0x0600;
        inline static var GL_3D                                                           = 0x0601;
        inline static var GL_3D_COLOR                                                     = 0x0602;
        inline static var GL_3D_COLOR_TEXTURE                                             = 0x0603;
        inline static var GL_4D_COLOR_TEXTURE                                             = 0x0604;
        inline static var GL_PASS_THROUGH_TOKEN                                           = 0x0700;
        inline static var GL_POINT_TOKEN                                                  = 0x0701;
        inline static var GL_LINE_TOKEN                                                   = 0x0702;
        inline static var GL_POLYGON_TOKEN                                                = 0x0703;
        inline static var GL_BITMAP_TOKEN                                                 = 0x0704;
        inline static var GL_DRAW_PIXEL_TOKEN                                             = 0x0705;
        inline static var GL_COPY_PIXEL_TOKEN                                             = 0x0706;
        inline static var GL_LINE_RESET_TOKEN                                             = 0x0707;
        inline static var GL_EXP                                                          = 0x0800;
        inline static var GL_VIEWPORT_BIT                                                 = 0x00000800;
        inline static var GL_EXP2                                                         = 0x0801;
        inline static var GL_CW                                                           = 0x0900;
        inline static var GL_CCW                                                          = 0x0901;
        inline static var GL_COEFF                                                        = 0x0A00;
        inline static var GL_ORDER                                                        = 0x0A01;
        inline static var GL_DOMAIN                                                       = 0x0A02;
        inline static var GL_CURRENT_COLOR                                                = 0x0B00;
        inline static var GL_CURRENT_INDEX                                                = 0x0B01;
        inline static var GL_CURRENT_NORMAL                                               = 0x0B02;
        inline static var GL_CURRENT_TEXTURE_COORDS                                       = 0x0B03;
        inline static var GL_CURRENT_RASTER_COLOR                                         = 0x0B04;
        inline static var GL_CURRENT_RASTER_INDEX                                         = 0x0B05;
        inline static var GL_CURRENT_RASTER_TEXTURE_COORDS                                = 0x0B06;
        inline static var GL_CURRENT_RASTER_POSITION                                      = 0x0B07;
        inline static var GL_CURRENT_RASTER_POSITION_VALID                                = 0x0B08;
        inline static var GL_CURRENT_RASTER_DISTANCE                                      = 0x0B09;
        inline static var GL_POINT_SMOOTH                                                 = 0x0B10;
        inline static var GL_POINT_SIZE                                                   = 0x0B11;
        inline static var GL_POINT_SIZE_RANGE                                             = 0x0B12;
        inline static var GL_POINT_SIZE_GRANULARITY                                       = 0x0B13;
        inline static var GL_LINE_SMOOTH                                                  = 0x0B20;
        inline static var GL_LINE_WIDTH                                                   = 0x0B21;
        inline static var GL_LINE_WIDTH_RANGE                                             = 0x0B22;
        inline static var GL_LINE_WIDTH_GRANULARITY                                       = 0x0B23;
        inline static var GL_LINE_STIPPLE                                                 = 0x0B24;
        inline static var GL_LINE_STIPPLE_PATTERN                                         = 0x0B25;
        inline static var GL_LINE_STIPPLE_REPEAT                                          = 0x0B26;
        inline static var GL_LIST_MODE                                                    = 0x0B30;
        inline static var GL_MAX_LIST_NESTING                                             = 0x0B31;
        inline static var GL_LIST_BASE                                                    = 0x0B32;
        inline static var GL_LIST_INDEX                                                   = 0x0B33;
        inline static var GL_POLYGON_MODE                                                 = 0x0B40;
        inline static var GL_POLYGON_SMOOTH                                               = 0x0B41;
        inline static var GL_POLYGON_STIPPLE                                              = 0x0B42;
        inline static var GL_EDGE_FLAG                                                    = 0x0B43;
        inline static var GL_CULL_FACE                                                    = 0x0B44;
        inline static var GL_CULL_FACE_MODE                                               = 0x0B45;
        inline static var GL_FRONT_FACE                                                   = 0x0B46;
        inline static var GL_LIGHTING                                                     = 0x0B50;
        inline static var GL_LIGHT_MODEL_LOCAL_VIEWER                                     = 0x0B51;
        inline static var GL_LIGHT_MODEL_TWO_SIDE                                         = 0x0B52;
        inline static var GL_LIGHT_MODEL_AMBIENT                                          = 0x0B53;
        inline static var GL_SHADE_MODEL                                                  = 0x0B54;
        inline static var GL_COLOR_MATERIAL_FACE                                          = 0x0B55;
        inline static var GL_COLOR_MATERIAL_PARAMETER                                     = 0x0B56;
        inline static var GL_COLOR_MATERIAL                                               = 0x0B57;
        inline static var GL_FOG                                                          = 0x0B60;
        inline static var GL_FOG_INDEX                                                    = 0x0B61;
        inline static var GL_FOG_DENSITY                                                  = 0x0B62;
        inline static var GL_FOG_START                                                    = 0x0B63;
        inline static var GL_FOG_END                                                      = 0x0B64;
        inline static var GL_FOG_MODE                                                     = 0x0B65;
        inline static var GL_FOG_COLOR                                                    = 0x0B66;
        inline static var GL_DEPTH_RANGE                                                  = 0x0B70;
        inline static var GL_DEPTH_TEST                                                   = 0x0B71;
        inline static var GL_DEPTH_WRITEMASK                                              = 0x0B72;
        inline static var GL_DEPTH_CLEAR_VALUE                                            = 0x0B73;
        inline static var GL_DEPTH_FUNC                                                   = 0x0B74;
        inline static var GL_ACCUM_CLEAR_VALUE                                            = 0x0B80;
        inline static var GL_STENCIL_TEST                                                 = 0x0B90;
        inline static var GL_STENCIL_CLEAR_VALUE                                          = 0x0B91;
        inline static var GL_STENCIL_FUNC                                                 = 0x0B92;
        inline static var GL_STENCIL_VALUE_MASK                                           = 0x0B93;
        inline static var GL_STENCIL_FAIL                                                 = 0x0B94;
        inline static var GL_STENCIL_PASS_DEPTH_FAIL                                      = 0x0B95;
        inline static var GL_STENCIL_PASS_DEPTH_PASS                                      = 0x0B96;
        inline static var GL_STENCIL_REF                                                  = 0x0B97;
        inline static var GL_STENCIL_WRITEMASK                                            = 0x0B98;
        inline static var GL_MATRIX_MODE                                                  = 0x0BA0;
        inline static var GL_NORMALIZE                                                    = 0x0BA1;
        inline static var GL_VIEWPORT                                                     = 0x0BA2;
        inline static var GL_MODELVIEW_STACK_DEPTH                                        = 0x0BA3;
        inline static var GL_PROJECTION_STACK_DEPTH                                       = 0x0BA4;
        inline static var GL_TEXTURE_STACK_DEPTH                                          = 0x0BA5;
        inline static var GL_MODELVIEW_MATRIX                                             = 0x0BA6;
        inline static var GL_PROJECTION_MATRIX                                            = 0x0BA7;
        inline static var GL_TEXTURE_MATRIX                                               = 0x0BA8;
        inline static var GL_ATTRIB_STACK_DEPTH                                           = 0x0BB0;
        inline static var GL_CLIENT_ATTRIB_STACK_DEPTH                                    = 0x0BB1;
        inline static var GL_ALPHA_TEST                                                   = 0x0BC0;
        inline static var GL_ALPHA_TEST_FUNC                                              = 0x0BC1;
        inline static var GL_ALPHA_TEST_REF                                               = 0x0BC2;
        inline static var GL_DITHER                                                       = 0x0BD0;
        inline static var GL_BLEND_DST                                                    = 0x0BE0;
        inline static var GL_BLEND_SRC                                                    = 0x0BE1;
        inline static var GL_BLEND                                                        = 0x0BE2;
        inline static var GL_LOGIC_OP_MODE                                                = 0x0BF0;
        inline static var GL_INDEX_LOGIC_OP                                               = 0x0BF1;
        inline static var GL_COLOR_LOGIC_OP                                               = 0x0BF2;
        inline static var GL_AUX_BUFFERS                                                  = 0x0C00;
        inline static var GL_DRAW_BUFFER                                                  = 0x0C01;
        inline static var GL_READ_BUFFER                                                  = 0x0C02;
        inline static var GL_SCISSOR_BOX                                                  = 0x0C10;
        inline static var GL_SCISSOR_TEST                                                 = 0x0C11;
        inline static var GL_INDEX_CLEAR_VALUE                                            = 0x0C20;
        inline static var GL_INDEX_WRITEMASK                                              = 0x0C21;
        inline static var GL_COLOR_CLEAR_VALUE                                            = 0x0C22;
        inline static var GL_COLOR_WRITEMASK                                              = 0x0C23;
        inline static var GL_INDEX_MODE                                                   = 0x0C30;
        inline static var GL_RGBA_MODE                                                    = 0x0C31;
        inline static var GL_DOUBLEBUFFER                                                 = 0x0C32;
        inline static var GL_STEREO                                                       = 0x0C33;
        inline static var GL_RENDER_MODE                                                  = 0x0C40;
        inline static var GL_PERSPECTIVE_CORRECTION_HINT                                  = 0x0C50;
        inline static var GL_POINT_SMOOTH_HINT                                            = 0x0C51;
        inline static var GL_LINE_SMOOTH_HINT                                             = 0x0C52;
        inline static var GL_POLYGON_SMOOTH_HINT                                          = 0x0C53;
        inline static var GL_FOG_HINT                                                     = 0x0C54;
        inline static var GL_TEXTURE_GEN_S                                                = 0x0C60;
        inline static var GL_TEXTURE_GEN_T                                                = 0x0C61;
        inline static var GL_TEXTURE_GEN_R                                                = 0x0C62;
        inline static var GL_TEXTURE_GEN_Q                                                = 0x0C63;
        inline static var GL_PIXEL_MAP_I_TO_I                                             = 0x0C70;
        inline static var GL_PIXEL_MAP_S_TO_S                                             = 0x0C71;
        inline static var GL_PIXEL_MAP_I_TO_R                                             = 0x0C72;
        inline static var GL_PIXEL_MAP_I_TO_G                                             = 0x0C73;
        inline static var GL_PIXEL_MAP_I_TO_B                                             = 0x0C74;
        inline static var GL_PIXEL_MAP_I_TO_A                                             = 0x0C75;
        inline static var GL_PIXEL_MAP_R_TO_R                                             = 0x0C76;
        inline static var GL_PIXEL_MAP_G_TO_G                                             = 0x0C77;
        inline static var GL_PIXEL_MAP_B_TO_B                                             = 0x0C78;
        inline static var GL_PIXEL_MAP_A_TO_A                                             = 0x0C79;
        inline static var GL_PIXEL_MAP_I_TO_I_SIZE                                        = 0x0CB0;
        inline static var GL_PIXEL_MAP_S_TO_S_SIZE                                        = 0x0CB1;
        inline static var GL_PIXEL_MAP_I_TO_R_SIZE                                        = 0x0CB2;
        inline static var GL_PIXEL_MAP_I_TO_G_SIZE                                        = 0x0CB3;
        inline static var GL_PIXEL_MAP_I_TO_B_SIZE                                        = 0x0CB4;
        inline static var GL_PIXEL_MAP_I_TO_A_SIZE                                        = 0x0CB5;
        inline static var GL_PIXEL_MAP_R_TO_R_SIZE                                        = 0x0CB6;
        inline static var GL_PIXEL_MAP_G_TO_G_SIZE                                        = 0x0CB7;
        inline static var GL_PIXEL_MAP_B_TO_B_SIZE                                        = 0x0CB8;
        inline static var GL_PIXEL_MAP_A_TO_A_SIZE                                        = 0x0CB9;
        inline static var GL_UNPACK_SWAP_BYTES                                            = 0x0CF0;
        inline static var GL_UNPACK_LSB_FIRST                                             = 0x0CF1;
        inline static var GL_UNPACK_ROW_LENGTH                                            = 0x0CF2;
        inline static var GL_UNPACK_SKIP_ROWS                                             = 0x0CF3;
        inline static var GL_UNPACK_SKIP_PIXELS                                           = 0x0CF4;
        inline static var GL_UNPACK_ALIGNMENT                                             = 0x0CF5;
        inline static var GL_PACK_SWAP_BYTES                                              = 0x0D00;
        inline static var GL_PACK_LSB_FIRST                                               = 0x0D01;
        inline static var GL_PACK_ROW_LENGTH                                              = 0x0D02;
        inline static var GL_PACK_SKIP_ROWS                                               = 0x0D03;
        inline static var GL_PACK_SKIP_PIXELS                                             = 0x0D04;
        inline static var GL_PACK_ALIGNMENT                                               = 0x0D05;
        inline static var GL_MAP_COLOR                                                    = 0x0D10;
        inline static var GL_MAP_STENCIL                                                  = 0x0D11;
        inline static var GL_INDEX_SHIFT                                                  = 0x0D12;
        inline static var GL_INDEX_OFFSET                                                 = 0x0D13;
        inline static var GL_RED_SCALE                                                    = 0x0D14;
        inline static var GL_RED_BIAS                                                     = 0x0D15;
        inline static var GL_ZOOM_X                                                       = 0x0D16;
        inline static var GL_ZOOM_Y                                                       = 0x0D17;
        inline static var GL_GREEN_SCALE                                                  = 0x0D18;
        inline static var GL_GREEN_BIAS                                                   = 0x0D19;
        inline static var GL_BLUE_SCALE                                                   = 0x0D1A;
        inline static var GL_BLUE_BIAS                                                    = 0x0D1B;
        inline static var GL_ALPHA_SCALE                                                  = 0x0D1C;
        inline static var GL_ALPHA_BIAS                                                   = 0x0D1D;
        inline static var GL_DEPTH_SCALE                                                  = 0x0D1E;
        inline static var GL_DEPTH_BIAS                                                   = 0x0D1F;
        inline static var GL_MAX_EVAL_ORDER                                               = 0x0D30;
        inline static var GL_MAX_LIGHTS                                                   = 0x0D31;
        inline static var GL_MAX_CLIP_PLANES                                              = 0x0D32;
        inline static var GL_MAX_TEXTURE_SIZE                                             = 0x0D33;
        inline static var GL_MAX_PIXEL_MAP_TABLE                                          = 0x0D34;
        inline static var GL_MAX_ATTRIB_STACK_DEPTH                                       = 0x0D35;
        inline static var GL_MAX_MODELVIEW_STACK_DEPTH                                    = 0x0D36;
        inline static var GL_MAX_NAME_STACK_DEPTH                                         = 0x0D37;
        inline static var GL_MAX_PROJECTION_STACK_DEPTH                                   = 0x0D38;
        inline static var GL_MAX_TEXTURE_STACK_DEPTH                                      = 0x0D39;
        inline static var GL_MAX_VIEWPORT_DIMS                                            = 0x0D3A;
        inline static var GL_MAX_CLIENT_ATTRIB_STACK_DEPTH                                = 0x0D3B;
        inline static var GL_SUBPIXEL_BITS                                                = 0x0D50;
        inline static var GL_INDEX_BITS                                                   = 0x0D51;
        inline static var GL_RED_BITS                                                     = 0x0D52;
        inline static var GL_GREEN_BITS                                                   = 0x0D53;
        inline static var GL_BLUE_BITS                                                    = 0x0D54;
        inline static var GL_ALPHA_BITS                                                   = 0x0D55;
        inline static var GL_DEPTH_BITS                                                   = 0x0D56;
        inline static var GL_STENCIL_BITS                                                 = 0x0D57;
        inline static var GL_ACCUM_RED_BITS                                               = 0x0D58;
        inline static var GL_ACCUM_GREEN_BITS                                             = 0x0D59;
        inline static var GL_ACCUM_BLUE_BITS                                              = 0x0D5A;
        inline static var GL_ACCUM_ALPHA_BITS                                             = 0x0D5B;
        inline static var GL_NAME_STACK_DEPTH                                             = 0x0D70;
        inline static var GL_AUTO_NORMAL                                                  = 0x0D80;
        inline static var GL_MAP1_COLOR_4                                                 = 0x0D90;
        inline static var GL_MAP1_INDEX                                                   = 0x0D91;
        inline static var GL_MAP1_NORMAL                                                  = 0x0D92;
        inline static var GL_MAP1_TEXTURE_COORD_1                                         = 0x0D93;
        inline static var GL_MAP1_TEXTURE_COORD_2                                         = 0x0D94;
        inline static var GL_MAP1_TEXTURE_COORD_3                                         = 0x0D95;
        inline static var GL_MAP1_TEXTURE_COORD_4                                         = 0x0D96;
        inline static var GL_MAP1_VERTEX_3                                                = 0x0D97;
        inline static var GL_MAP1_VERTEX_4                                                = 0x0D98;
        inline static var GL_MAP2_COLOR_4                                                 = 0x0DB0;
        inline static var GL_MAP2_INDEX                                                   = 0x0DB1;
        inline static var GL_MAP2_NORMAL                                                  = 0x0DB2;
        inline static var GL_MAP2_TEXTURE_COORD_1                                         = 0x0DB3;
        inline static var GL_MAP2_TEXTURE_COORD_2                                         = 0x0DB4;
        inline static var GL_MAP2_TEXTURE_COORD_3                                         = 0x0DB5;
        inline static var GL_MAP2_TEXTURE_COORD_4                                         = 0x0DB6;
        inline static var GL_MAP2_VERTEX_3                                                = 0x0DB7;
        inline static var GL_MAP2_VERTEX_4                                                = 0x0DB8;
        inline static var GL_MAP1_GRID_DOMAIN                                             = 0x0DD0;
        inline static var GL_MAP1_GRID_SEGMENTS                                           = 0x0DD1;
        inline static var GL_MAP2_GRID_DOMAIN                                             = 0x0DD2;
        inline static var GL_MAP2_GRID_SEGMENTS                                           = 0x0DD3;
        inline static var GL_TEXTURE_1D                                                   = 0x0DE0;
        inline static var GL_TEXTURE_2D                                                   = 0x0DE1;
        inline static var GL_FEEDBACK_BUFFER_POINTER                                      = 0x0DF0;
        inline static var GL_FEEDBACK_BUFFER_SIZE                                         = 0x0DF1;
        inline static var GL_FEEDBACK_BUFFER_TYPE                                         = 0x0DF2;
        inline static var GL_SELECTION_BUFFER_POINTER                                     = 0x0DF3;
        inline static var GL_SELECTION_BUFFER_SIZE                                        = 0x0DF4;
        inline static var GL_TEXTURE_WIDTH                                                = 0x1000;
        inline static var GL_TRANSFORM_BIT                                                = 0x00001000;
        inline static var GL_TEXTURE_HEIGHT                                               = 0x1001;
        inline static var GL_TEXTURE_INTERNAL_FORMAT                                      = 0x1003;
        inline static var GL_TEXTURE_BORDER_COLOR                                         = 0x1004;
        inline static var GL_TEXTURE_BORDER                                               = 0x1005;
        inline static var GL_DONT_CARE                                                    = 0x1100;
        inline static var GL_FASTEST                                                      = 0x1101;
        inline static var GL_NICEST                                                       = 0x1102;
        inline static var GL_AMBIENT                                                      = 0x1200;
        inline static var GL_DIFFUSE                                                      = 0x1201;
        inline static var GL_SPECULAR                                                     = 0x1202;
        inline static var GL_POSITION                                                     = 0x1203;
        inline static var GL_SPOT_DIRECTION                                               = 0x1204;
        inline static var GL_SPOT_EXPONENT                                                = 0x1205;
        inline static var GL_SPOT_CUTOFF                                                  = 0x1206;
        inline static var GL_CONSTANT_ATTENUATION                                         = 0x1207;
        inline static var GL_LINEAR_ATTENUATION                                           = 0x1208;
        inline static var GL_QUADRATIC_ATTENUATION                                        = 0x1209;
        inline static var GL_COMPILE                                                      = 0x1300;
        inline static var GL_COMPILE_AND_EXECUTE                                          = 0x1301;
        inline static var GL_BYTE                                                         = 0x1400;
        inline static var GL_UNSIGNED_BYTE                                                = 0x1401;
        inline static var GL_SHORT                                                        = 0x1402;
        inline static var GL_UNSIGNED_SHORT                                               = 0x1403;
        inline static var GL_INT                                                          = 0x1404;
        inline static var GL_UNSIGNED_INT                                                 = 0x1405;
        inline static var GL_FLOAT                                                        = 0x1406;
        inline static var GL_2_BYTES                                                      = 0x1407;
        inline static var GL_3_BYTES                                                      = 0x1408;
        inline static var GL_4_BYTES                                                      = 0x1409;
        inline static var GL_DOUBLE                                                       = 0x140A;
        inline static var GL_CLEAR                                                        = 0x1500;
        inline static var GL_AND                                                          = 0x1501;
        inline static var GL_AND_REVERSE                                                  = 0x1502;
        inline static var GL_COPY                                                         = 0x1503;
        inline static var GL_AND_INVERTED                                                 = 0x1504;
        inline static var GL_NOOP                                                         = 0x1505;
        inline static var GL_XOR                                                          = 0x1506;
        inline static var GL_OR                                                           = 0x1507;
        inline static var GL_NOR                                                          = 0x1508;
        inline static var GL_EQUIV                                                        = 0x1509;
        inline static var GL_INVERT                                                       = 0x150A;
        inline static var GL_OR_REVERSE                                                   = 0x150B;
        inline static var GL_COPY_INVERTED                                                = 0x150C;
        inline static var GL_OR_INVERTED                                                  = 0x150D;
        inline static var GL_NAND                                                         = 0x150E;
        inline static var GL_SET                                                          = 0x150F;
        inline static var GL_EMISSION                                                     = 0x1600;
        inline static var GL_SHININESS                                                    = 0x1601;
        inline static var GL_AMBIENT_AND_DIFFUSE                                          = 0x1602;
        inline static var GL_COLOR_INDEXES                                                = 0x1603;
        inline static var GL_MODELVIEW                                                    = 0x1700;
        inline static var GL_PROJECTION                                                   = 0x1701;
        inline static var GL_TEXTURE                                                      = 0x1702;
        inline static var GL_COLOR                                                        = 0x1800;
        inline static var GL_DEPTH                                                        = 0x1801;
        inline static var GL_STENCIL                                                      = 0x1802;
        inline static var GL_COLOR_INDEX                                                  = 0x1900;
        inline static var GL_STENCIL_INDEX                                                = 0x1901;
        inline static var GL_DEPTH_COMPONENT                                              = 0x1902;
        inline static var GL_RED                                                          = 0x1903;
        inline static var GL_GREEN                                                        = 0x1904;
        inline static var GL_BLUE                                                         = 0x1905;
        inline static var GL_ALPHA                                                        = 0x1906;
        inline static var GL_RGB                                                          = 0x1907;
        inline static var GL_RGBA                                                         = 0x1908;
        inline static var GL_LUMINANCE                                                    = 0x1909;
        inline static var GL_LUMINANCE_ALPHA                                              = 0x190A;
        inline static var GL_BITMAP                                                       = 0x1A00;
        inline static var GL_POINT                                                        = 0x1B00;
        inline static var GL_LINE                                                         = 0x1B01;
        inline static var GL_FILL                                                         = 0x1B02;
        inline static var GL_RENDER                                                       = 0x1C00;
        inline static var GL_FEEDBACK                                                     = 0x1C01;
        inline static var GL_SELECT                                                       = 0x1C02;
        inline static var GL_FLAT                                                         = 0x1D00;
        inline static var GL_SMOOTH                                                       = 0x1D01;
        inline static var GL_KEEP                                                         = 0x1E00;
        inline static var GL_REPLACE                                                      = 0x1E01;
        inline static var GL_INCR                                                         = 0x1E02;
        inline static var GL_DECR                                                         = 0x1E03;
        inline static var GL_VENDOR                                                       = 0x1F00;
        inline static var GL_RENDERER                                                     = 0x1F01;
        inline static var GL_VERSION                                                      = 0x1F02;
        inline static var GL_EXTENSIONS                                                   = 0x1F03;
        inline static var GL_S                                                            = 0x2000;
        inline static var GL_ENABLE_BIT                                                   = 0x00002000;
        inline static var GL_T                                                            = 0x2001;
        inline static var GL_R                                                            = 0x2002;
        inline static var GL_Q                                                            = 0x2003;
        inline static var GL_MODULATE                                                     = 0x2100;
        inline static var GL_DECAL                                                        = 0x2101;
        inline static var GL_TEXTURE_ENV_MODE                                             = 0x2200;
        inline static var GL_TEXTURE_ENV_COLOR                                            = 0x2201;
        inline static var GL_TEXTURE_ENV                                                  = 0x2300;
        inline static var GL_EYE_LINEAR                                                   = 0x2400;
        inline static var GL_OBJECT_LINEAR                                                = 0x2401;
        inline static var GL_SPHERE_MAP                                                   = 0x2402;
        inline static var GL_TEXTURE_GEN_MODE                                             = 0x2500;
        inline static var GL_OBJECT_PLANE                                                 = 0x2501;
        inline static var GL_EYE_PLANE                                                    = 0x2502;
        inline static var GL_NEAREST                                                      = 0x2600;
        inline static var GL_LINEAR                                                       = 0x2601;
        inline static var GL_NEAREST_MIPMAP_NEAREST                                       = 0x2700;
        inline static var GL_LINEAR_MIPMAP_NEAREST                                        = 0x2701;
        inline static var GL_NEAREST_MIPMAP_LINEAR                                        = 0x2702;
        inline static var GL_LINEAR_MIPMAP_LINEAR                                         = 0x2703;
        inline static var GL_TEXTURE_MAG_FILTER                                           = 0x2800;
        inline static var GL_TEXTURE_MIN_FILTER                                           = 0x2801;
        inline static var GL_TEXTURE_WRAP_S                                               = 0x2802;
        inline static var GL_TEXTURE_WRAP_T                                               = 0x2803;
        inline static var GL_CLAMP                                                        = 0x2900;
        inline static var GL_REPEAT                                                       = 0x2901;
        inline static var GL_POLYGON_OFFSET_UNITS                                         = 0x2A00;
        inline static var GL_POLYGON_OFFSET_POINT                                         = 0x2A01;
        inline static var GL_POLYGON_OFFSET_LINE                                          = 0x2A02;
        inline static var GL_R3_G3_B2                                                     = 0x2A10;
        inline static var GL_V2F                                                          = 0x2A20;
        inline static var GL_V3F                                                          = 0x2A21;
        inline static var GL_C4UB_V2F                                                     = 0x2A22;
        inline static var GL_C4UB_V3F                                                     = 0x2A23;
        inline static var GL_C3F_V3F                                                      = 0x2A24;
        inline static var GL_N3F_V3F                                                      = 0x2A25;
        inline static var GL_C4F_N3F_V3F                                                  = 0x2A26;
        inline static var GL_T2F_V3F                                                      = 0x2A27;
        inline static var GL_T4F_V4F                                                      = 0x2A28;
        inline static var GL_T2F_C4UB_V3F                                                 = 0x2A29;
        inline static var GL_T2F_C3F_V3F                                                  = 0x2A2A;
        inline static var GL_T2F_N3F_V3F                                                  = 0x2A2B;
        inline static var GL_T2F_C4F_N3F_V3F                                              = 0x2A2C;
        inline static var GL_T4F_C4F_N3F_V4F                                              = 0x2A2D;
        inline static var GL_CLIP_PLANE0                                                  = 0x3000;
        inline static var GL_CLIP_PLANE1                                                  = 0x3001;
        inline static var GL_CLIP_PLANE2                                                  = 0x3002;
        inline static var GL_CLIP_PLANE3                                                  = 0x3003;
        inline static var GL_CLIP_PLANE4                                                  = 0x3004;
        inline static var GL_CLIP_PLANE5                                                  = 0x3005;
        inline static var GL_LIGHT0                                                       = 0x4000;
        inline static var GL_COLOR_BUFFER_BIT                                             = 0x00004000;
        inline static var GL_LIGHT1                                                       = 0x4001;
        inline static var GL_LIGHT2                                                       = 0x4002;
        inline static var GL_LIGHT3                                                       = 0x4003;
        inline static var GL_LIGHT4                                                       = 0x4004;
        inline static var GL_LIGHT5                                                       = 0x4005;
        inline static var GL_LIGHT6                                                       = 0x4006;
        inline static var GL_LIGHT7                                                       = 0x4007;
        inline static var GL_HINT_BIT                                                     = 0x00008000;
        inline static var GL_POLYGON_OFFSET_FILL                                          = 0x8037;
        inline static var GL_POLYGON_OFFSET_FACTOR                                        = 0x8038;
        inline static var GL_ALPHA4                                                       = 0x803B;
        inline static var GL_ALPHA8                                                       = 0x803C;
        inline static var GL_ALPHA12                                                      = 0x803D;
        inline static var GL_ALPHA16                                                      = 0x803E;
        inline static var GL_LUMINANCE4                                                   = 0x803F;
        inline static var GL_LUMINANCE8                                                   = 0x8040;
        inline static var GL_LUMINANCE12                                                  = 0x8041;
        inline static var GL_LUMINANCE16                                                  = 0x8042;
        inline static var GL_LUMINANCE4_ALPHA4                                            = 0x8043;
        inline static var GL_LUMINANCE6_ALPHA2                                            = 0x8044;
        inline static var GL_LUMINANCE8_ALPHA8                                            = 0x8045;
        inline static var GL_LUMINANCE12_ALPHA4                                           = 0x8046;
        inline static var GL_LUMINANCE12_ALPHA12                                          = 0x8047;
        inline static var GL_LUMINANCE16_ALPHA16                                          = 0x8048;
        inline static var GL_INTENSITY                                                    = 0x8049;
        inline static var GL_INTENSITY4                                                   = 0x804A;
        inline static var GL_INTENSITY8                                                   = 0x804B;
        inline static var GL_INTENSITY12                                                  = 0x804C;
        inline static var GL_INTENSITY16                                                  = 0x804D;
        inline static var GL_RGB4                                                         = 0x804F;
        inline static var GL_RGB5                                                         = 0x8050;
        inline static var GL_RGB8                                                         = 0x8051;
        inline static var GL_RGB10                                                        = 0x8052;
        inline static var GL_RGB12                                                        = 0x8053;
        inline static var GL_RGB16                                                        = 0x8054;
        inline static var GL_RGBA2                                                        = 0x8055;
        inline static var GL_RGBA4                                                        = 0x8056;
        inline static var GL_RGB5_A1                                                      = 0x8057;
        inline static var GL_RGBA8                                                        = 0x8058;
        inline static var GL_RGB10_A2                                                     = 0x8059;
        inline static var GL_RGBA12                                                       = 0x805A;
        inline static var GL_RGBA16                                                       = 0x805B;
        inline static var GL_TEXTURE_RED_SIZE                                             = 0x805C;
        inline static var GL_TEXTURE_GREEN_SIZE                                           = 0x805D;
        inline static var GL_TEXTURE_BLUE_SIZE                                            = 0x805E;
        inline static var GL_TEXTURE_ALPHA_SIZE                                           = 0x805F;
        inline static var GL_TEXTURE_LUMINANCE_SIZE                                       = 0x8060;
        inline static var GL_TEXTURE_INTENSITY_SIZE                                       = 0x8061;
        inline static var GL_PROXY_TEXTURE_1D                                             = 0x8063;
        inline static var GL_PROXY_TEXTURE_2D                                             = 0x8064;
        inline static var GL_TEXTURE_PRIORITY                                             = 0x8066;
        inline static var GL_TEXTURE_RESIDENT                                             = 0x8067;
        inline static var GL_TEXTURE_BINDING_1D                                           = 0x8068;
        inline static var GL_TEXTURE_BINDING_2D                                           = 0x8069;
        inline static var GL_VERTEX_ARRAY                                                 = 0x8074;
        inline static var GL_NORMAL_ARRAY                                                 = 0x8075;
        inline static var GL_COLOR_ARRAY                                                  = 0x8076;
        inline static var GL_INDEX_ARRAY                                                  = 0x8077;
        inline static var GL_TEXTURE_COORD_ARRAY                                          = 0x8078;
        inline static var GL_EDGE_FLAG_ARRAY                                              = 0x8079;
        inline static var GL_VERTEX_ARRAY_SIZE                                            = 0x807A;
        inline static var GL_VERTEX_ARRAY_TYPE                                            = 0x807B;
        inline static var GL_VERTEX_ARRAY_STRIDE                                          = 0x807C;
        inline static var GL_NORMAL_ARRAY_TYPE                                            = 0x807E;
        inline static var GL_NORMAL_ARRAY_STRIDE                                          = 0x807F;
        inline static var GL_COLOR_ARRAY_SIZE                                             = 0x8081;
        inline static var GL_COLOR_ARRAY_TYPE                                             = 0x8082;
        inline static var GL_COLOR_ARRAY_STRIDE                                           = 0x8083;
        inline static var GL_INDEX_ARRAY_TYPE                                             = 0x8085;
        inline static var GL_INDEX_ARRAY_STRIDE                                           = 0x8086;
        inline static var GL_TEXTURE_COORD_ARRAY_SIZE                                     = 0x8088;
        inline static var GL_TEXTURE_COORD_ARRAY_TYPE                                     = 0x8089;
        inline static var GL_TEXTURE_COORD_ARRAY_STRIDE                                   = 0x808A;
        inline static var GL_EDGE_FLAG_ARRAY_STRIDE                                       = 0x808C;
        inline static var GL_VERTEX_ARRAY_POINTER                                         = 0x808E;
        inline static var GL_NORMAL_ARRAY_POINTER                                         = 0x808F;
        inline static var GL_COLOR_ARRAY_POINTER                                          = 0x8090;
        inline static var GL_INDEX_ARRAY_POINTER                                          = 0x8091;
        inline static var GL_TEXTURE_COORD_ARRAY_POINTER                                  = 0x8092;
        inline static var GL_EDGE_FLAG_ARRAY_POINTER                                      = 0x8093;
        inline static var GL_COLOR_INDEX1_EXT                                             = 0x80E2;
        inline static var GL_COLOR_INDEX2_EXT                                             = 0x80E3;
        inline static var GL_COLOR_INDEX4_EXT                                             = 0x80E4;
        inline static var GL_COLOR_INDEX8_EXT                                             = 0x80E5;
        inline static var GL_COLOR_INDEX12_EXT                                            = 0x80E6;
        inline static var GL_COLOR_INDEX16_EXT                                            = 0x80E7;
        inline static var GL_EVAL_BIT                                                     = 0x00010000;
        inline static var GL_LIST_BIT                                                     = 0x00020000;
        inline static var GL_TEXTURE_BIT                                                  = 0x00040000;
        inline static var GL_SCISSOR_BIT                                                  = 0x00080000;
        inline static var GL_ALL_ATTRIB_BITS                                              = 0x000fffff;
        inline static var GL_CLIENT_ALL_ATTRIB_BITS                                       = 0xffffffff;


    //GL 1.1 functions

        @:native('glAccum')
        static function glAccum(op:Int, value:cpp.Float32) : Void;

        @:native('glAlphaFunc')
        static function glAlphaFunc(func:Int, ref:cpp.Float32) : Void;

        @:native('glArrayElement')
        static function glArrayElement(i:Int) : Void;

        @:native('glBegin')
        static function glBegin(mode:Int) : Void;

        @:native('glBindTexture')
        static function glBindTexture(target:Int, texture:UInt) : Void;

        @:native('glBlendFunc')
        static function glBlendFunc(sfactor:Int, dfactor:Int) : Void;

        @:native('glCallList')
        static function glCallList(list:UInt) : Void;

        @:native('glClear')
        static function glClear(mask:Int) : Void;

        @:native('glClearAccum')
        static function glClearAccum(red:cpp.Float32, green:cpp.Float32, blue:cpp.Float32, alpha:cpp.Float32) : Void;

        @:native('glClearColor')
        static function glClearColor(red:cpp.Float32, green:cpp.Float32, blue:cpp.Float32, alpha:cpp.Float32) : Void;

        @:native('glClearDepth')
        static function glClearDepth(depth:cpp.Float64) : Void;

        @:native('glClearIndex')
        static function glClearIndex(c:cpp.Float32) : Void;

        @:native('glClearStencil')
        static function glClearStencil(s:Int) : Void;

        @:native('glColor3b')
        static function glColor3b(red:cpp.Int8, green:cpp.Int8, blue:cpp.Int8) : Void;

        @:native('glColor3d')
        static function glColor3d(red:cpp.Float64, green:cpp.Float64, blue:cpp.Float64) : Void;

        @:native('glColor3f')
        static function glColor3f(red:cpp.Float32, green:cpp.Float32, blue:cpp.Float32) : Void;

        @:native('glColor3i')
        static function glColor3i(red:Int, green:Int, blue:Int) : Void;

        @:native('glColor3s')
        static function glColor3s(red:Int, green:Int, blue:Int) : Void;

        @:native('glColor3ub')
        static function glColor3ub(red:cpp.UInt8, green:cpp.UInt8, blue:cpp.UInt8) : Void;

        @:native('glColor3ui')
        static function glColor3ui(red:UInt, green:UInt, blue:UInt) : Void;

        @:native('glColor3us')
        static function glColor3us(red:UInt, green:UInt, blue:UInt) : Void;

        @:native('glColor4b')
        static function glColor4b(red:cpp.Int8, green:cpp.Int8, blue:cpp.Int8, alpha:cpp.Int8) : Void;

        @:native('glColor4d')
        static function glColor4d(red:cpp.Float64, green:cpp.Float64, blue:cpp.Float64, alpha:cpp.Float64) : Void;

        @:native('glColor4f')
        static function glColor4f(red:cpp.Float32, green:cpp.Float32, blue:cpp.Float32, alpha:cpp.Float32) : Void;

        @:native('glColor4i')
        static function glColor4i(red:Int, green:Int, blue:Int, alpha:Int) : Void;

        @:native('glColor4s')
        static function glColor4s(red:Int, green:Int, blue:Int, alpha:Int) : Void;

        @:native('glColor4ub')
        static function glColor4ub(red:cpp.UInt8, green:cpp.UInt8, blue:cpp.UInt8, alpha:cpp.UInt8) : Void;

        @:native('glColor4ui')
        static function glColor4ui(red:UInt, green:UInt, blue:UInt, alpha:UInt) : Void;

        @:native('glColor4us')
        static function glColor4us(red:UInt, green:UInt, blue:UInt, alpha:UInt) : Void;

        @:native('glColorMask')
        static function glColorMask(red:Bool, green:Bool, blue:Bool, alpha:Bool) : Void;

        @:native('glColorMaterial')
        static function glColorMaterial(face:Int, mode:Int) : Void;

        @:native('glCopyPixels')
        static function glCopyPixels(x:Int, y:Int, width:Int, height:Int, type:Int) : Void;

        @:native('glCopyTexImage1D')
        static function glCopyTexImage1D(target:Int, level:Int, internalFormat:Int, x:Int, y:Int, width:Int, border:Int) : Void;

        @:native('glCopyTexImage2D')
        static function glCopyTexImage2D(target:Int, level:Int, internalFormat:Int, x:Int, y:Int, width:Int, height:Int, border:Int) : Void;

        @:native('glCopyTexSubImage1D')
        static function glCopyTexSubImage1D(target:Int, level:Int, xoffset:Int, x:Int, y:Int, width:Int) : Void;

        @:native('glCopyTexSubImage2D')
        static function glCopyTexSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, x:Int, y:Int, width:Int, height:Int) : Void;

        @:native('glCullFace')
        static function glCullFace(mode:Int) : Void;

        @:native('glDeleteLists')
        static function glDeleteLists(list:UInt, range:Int) : Void;

        @:native('glDepthFunc')
        static function glDepthFunc(func:Int) : Void;

        @:native('glDepthMask')
        static function glDepthMask(flag:Bool) : Void;

        @:native('glDepthRange')
        static function glDepthRange(zNear:cpp.Float64, zFar:cpp.Float64) : Void;

        @:native('glDisable')
        static function glDisable(cap:Int) : Void;

        @:native('glDisableClientState')
        static function glDisableClientState(array:Int) : Void;

        @:native('glDrawArrays')
        static function glDrawArrays(mode:Int, first:Int, count:Int) : Void;

        @:native('glDrawBuffer')
        static function glDrawBuffer(mode:Int) : Void;

        @:native('glEdgeFlag')
        static function glEdgeFlag(flag:Bool) : Void;

        @:native('glEnable')
        static function glEnable(cap:Int) : Void;

        @:native('glEnableClientState')
        static function glEnableClientState(array:Int) : Void;

        @:native('glEnd')
        static function glEnd() : Void;

        @:native('glEndList')
        static function glEndList() : Void;

        @:native('glEvalCoord1d')
        static function glEvalCoord1d(u:cpp.Float64) : Void;

        @:native('glEvalCoord1f')
        static function glEvalCoord1f(u:cpp.Float32) : Void;

        @:native('glEvalCoord2d')
        static function glEvalCoord2d(u:cpp.Float64, v:cpp.Float64) : Void;

        @:native('glEvalCoord2f')
        static function glEvalCoord2f(u:cpp.Float32, v:cpp.Float32) : Void;

        @:native('glEvalMesh1')
        static function glEvalMesh1(mode:Int, i1:Int, i2:Int) : Void;

        @:native('glEvalMesh2')
        static function glEvalMesh2(mode:Int, i1:Int, i2:Int, j1:Int, j2:Int) : Void;

        @:native('glEvalPoint1')
        static function glEvalPoint1(i:Int) : Void;

        @:native('glEvalPoint2')
        static function glEvalPoint2(i:Int, j:Int) : Void;

        @:native('glFinish')
        static function glFinish() : Void;

        @:native('glFlush')
        static function glFlush() : Void;

        @:native('glFogf')
        static function glFogf(pname:Int, param:cpp.Float32) : Void;

        @:native('glFogi')
        static function glFogi(pname:Int, param:Int) : Void;

        @:native('glFrontFace')
        static function glFrontFace(mode:Int) : Void;

        @:native('glFrustum')
        static function glFrustum(left:cpp.Float64, right:cpp.Float64, bottom:cpp.Float64, top:cpp.Float64, zNear:cpp.Float64, zFar:cpp.Float64) : Void;

        @:native('glGenLists')
        static function glGenLists(range:Int) : UInt;

        @:native('glGetError')
        static function glGetError() : Int;

        @:native('glHint')
        static function glHint(target:Int, mode:Int) : Void;

        @:native('glIndexMask')
        static function glIndexMask(mask:UInt) : Void;

        @:native('glIndexd')
        static function glIndexd(c:cpp.Float64) : Void;

        @:native('glIndexf')
        static function glIndexf(c:cpp.Float32) : Void;

        @:native('glIndexi')
        static function glIndexi(c:Int) : Void;

        @:native('glIndexs')
        static function glIndexs(c:Int) : Void;

        @:native('glIndexub')
        static function glIndexub(c:cpp.UInt8) : Void;

        @:native('glInitNames')
        static function glInitNames() : Void;

        @:native('glIsEnabled')
        static function glIsEnabled(cap:Int) : Bool;

        @:native('glIsList')
        static function glIsList(list:UInt) : Bool;

        @:native('glIsTexture')
        static function glIsTexture(texture:UInt) : Bool;

        @:native('glLightModelf')
        static function glLightModelf(pname:Int, param:cpp.Float32) : Void;

        @:native('glLightModeli')
        static function glLightModeli(pname:Int, param:Int) : Void;

        @:native('glLightf')
        static function glLightf(light:Int, pname:Int, param:cpp.Float32) : Void;

        @:native('glLighti')
        static function glLighti(light:Int, pname:Int, param:Int) : Void;

        @:native('glLineStipple')
        static function glLineStipple(factor:Int, pattern:UInt) : Void;

        @:native('glLineWidth')
        static function glLineWidth(width:cpp.Float32) : Void;

        @:native('glListBase')
        static function glListBase(base:UInt) : Void;

        @:native('glLoadIdentity')
        static function glLoadIdentity() : Void;

        @:native('glLoadName')
        static function glLoadName(name:UInt) : Void;

        @:native('glLogicOp')
        static function glLogicOp(opcode:Int) : Void;

        @:native('glMapGrid1d')
        static function glMapGrid1d(un:Int, u1:cpp.Float64, u2:cpp.Float64) : Void;

        @:native('glMapGrid1f')
        static function glMapGrid1f(un:Int, u1:cpp.Float32, u2:cpp.Float32) : Void;

        @:native('glMapGrid2d')
        static function glMapGrid2d(un:Int, u1:cpp.Float64, u2:cpp.Float64, vn:Int, v1:cpp.Float64, v2:cpp.Float64) : Void;

        @:native('glMapGrid2f')
        static function glMapGrid2f(un:Int, u1:cpp.Float32, u2:cpp.Float32, vn:Int, v1:cpp.Float32, v2:cpp.Float32) : Void;

        @:native('glMaterialf')
        static function glMaterialf(face:Int, pname:Int, param:cpp.Float32) : Void;

        @:native('glMateriali')
        static function glMateriali(face:Int, pname:Int, param:Int) : Void;

        @:native('glMatrixMode')
        static function glMatrixMode(mode:Int) : Void;

        @:native('glNewList')
        static function glNewList(list:UInt, mode:Int) : Void;

        @:native('glNormal3b')
        static function glNormal3b(nx:cpp.Int8, ny:cpp.Int8, nz:cpp.Int8) : Void;

        @:native('glNormal3d')
        static function glNormal3d(nx:cpp.Float64, ny:cpp.Float64, nz:cpp.Float64) : Void;

        @:native('glNormal3f')
        static function glNormal3f(nx:cpp.Float32, ny:cpp.Float32, nz:cpp.Float32) : Void;

        @:native('glNormal3i')
        static function glNormal3i(nx:Int, ny:Int, nz:Int) : Void;

        @:native('glNormal3s')
        static function glNormal3s(nx:Int, ny:Int, nz:Int) : Void;

        @:native('glOrtho')
        static function glOrtho(left:cpp.Float64, right:cpp.Float64, bottom:cpp.Float64, top:cpp.Float64, zNear:cpp.Float64, zFar:cpp.Float64) : Void;

        @:native('glPassThrough')
        static function glPassThrough(token:cpp.Float32) : Void;

        @:native('glPixelStoref')
        static function glPixelStoref(pname:Int, param:cpp.Float32) : Void;

        @:native('glPixelStorei')
        static function glPixelStorei(pname:Int, param:Int) : Void;

        @:native('glPixelTransferf')
        static function glPixelTransferf(pname:Int, param:cpp.Float32) : Void;

        @:native('glPixelTransferi')
        static function glPixelTransferi(pname:Int, param:Int) : Void;

        @:native('glPixelZoom')
        static function glPixelZoom(xfactor:cpp.Float32, yfactor:cpp.Float32) : Void;

        @:native('glPointSize')
        static function glPointSize(size:cpp.Float32) : Void;

        @:native('glPolygonMode')
        static function glPolygonMode(face:Int, mode:Int) : Void;

        @:native('glPolygonOffset')
        static function glPolygonOffset(factor:cpp.Float32, units:cpp.Float32) : Void;

        @:native('glPopAttrib')
        static function glPopAttrib() : Void;

        @:native('glPopClientAttrib')
        static function glPopClientAttrib() : Void;

        @:native('glPopMatrix')
        static function glPopMatrix() : Void;

        @:native('glPopName')
        static function glPopName() : Void;

        @:native('glPushAttrib')
        static function glPushAttrib(mask:Int) : Void;

        @:native('glPushClientAttrib')
        static function glPushClientAttrib(mask:Int) : Void;

        @:native('glPushMatrix')
        static function glPushMatrix() : Void;

        @:native('glPushName')
        static function glPushName(name:UInt) : Void;

        @:native('glRasterPos2d')
        static function glRasterPos2d(x:cpp.Float64, y:cpp.Float64) : Void;

        @:native('glRasterPos2f')
        static function glRasterPos2f(x:cpp.Float32, y:cpp.Float32) : Void;

        @:native('glRasterPos2i')
        static function glRasterPos2i(x:Int, y:Int) : Void;

        @:native('glRasterPos2s')
        static function glRasterPos2s(x:Int, y:Int) : Void;

        @:native('glRasterPos3d')
        static function glRasterPos3d(x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glRasterPos3f')
        static function glRasterPos3f(x:cpp.Float32, y:cpp.Float32, z:cpp.Float32) : Void;

        @:native('glRasterPos3i')
        static function glRasterPos3i(x:Int, y:Int, z:Int) : Void;

        @:native('glRasterPos3s')
        static function glRasterPos3s(x:Int, y:Int, z:Int) : Void;

        @:native('glRasterPos4d')
        static function glRasterPos4d(x:cpp.Float64, y:cpp.Float64, z:cpp.Float64, w:cpp.Float64) : Void;

        @:native('glRasterPos4f')
        static function glRasterPos4f(x:cpp.Float32, y:cpp.Float32, z:cpp.Float32, w:cpp.Float32) : Void;

        @:native('glRasterPos4i')
        static function glRasterPos4i(x:Int, y:Int, z:Int, w:Int) : Void;

        @:native('glRasterPos4s')
        static function glRasterPos4s(x:Int, y:Int, z:Int, w:Int) : Void;

        @:native('glReadBuffer')
        static function glReadBuffer(mode:Int) : Void;

        @:native('glRectd')
        static function glRectd(x1:cpp.Float64, y1:cpp.Float64, x2:cpp.Float64, y2:cpp.Float64) : Void;

        @:native('glRectf')
        static function glRectf(x1:cpp.Float32, y1:cpp.Float32, x2:cpp.Float32, y2:cpp.Float32) : Void;

        @:native('glRecti')
        static function glRecti(x1:Int, y1:Int, x2:Int, y2:Int) : Void;

        @:native('glRects')
        static function glRects(x1:Int, y1:Int, x2:Int, y2:Int) : Void;

        @:native('glRenderMode')
        static function glRenderMode(mode:Int) : Int;

        @:native('glRotated')
        static function glRotated(angle:cpp.Float64, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glRotatef')
        static function glRotatef(angle:cpp.Float32, x:cpp.Float32, y:cpp.Float32, z:cpp.Float32) : Void;

        @:native('glScaled')
        static function glScaled(x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glScalef')
        static function glScalef(x:cpp.Float32, y:cpp.Float32, z:cpp.Float32) : Void;

        @:native('glScissor')
        static function glScissor(x:Int, y:Int, width:Int, height:Int) : Void;

        @:native('glShadeModel')
        static function glShadeModel(mode:Int) : Void;

        @:native('glStencilFunc')
        static function glStencilFunc(func:Int, ref:Int, mask:UInt) : Void;

        @:native('glStencilMask')
        static function glStencilMask(mask:UInt) : Void;

        @:native('glStencilOp')
        static function glStencilOp(fail:Int, zfail:Int, zpass:Int) : Void;

        @:native('glTexCoord1d')
        static function glTexCoord1d(s:cpp.Float64) : Void;

        @:native('glTexCoord1f')
        static function glTexCoord1f(s:cpp.Float32) : Void;

        @:native('glTexCoord1i')
        static function glTexCoord1i(s:Int) : Void;

        @:native('glTexCoord1s')
        static function glTexCoord1s(s:Int) : Void;

        @:native('glTexCoord2d')
        static function glTexCoord2d(s:cpp.Float64, t:cpp.Float64) : Void;

        @:native('glTexCoord2f')
        static function glTexCoord2f(s:cpp.Float32, t:cpp.Float32) : Void;

        @:native('glTexCoord2i')
        static function glTexCoord2i(s:Int, t:Int) : Void;

        @:native('glTexCoord2s')
        static function glTexCoord2s(s:Int, t:Int) : Void;

        @:native('glTexCoord3d')
        static function glTexCoord3d(s:cpp.Float64, t:cpp.Float64, r:cpp.Float64) : Void;

        @:native('glTexCoord3f')
        static function glTexCoord3f(s:cpp.Float32, t:cpp.Float32, r:cpp.Float32) : Void;

        @:native('glTexCoord3i')
        static function glTexCoord3i(s:Int, t:Int, r:Int) : Void;

        @:native('glTexCoord3s')
        static function glTexCoord3s(s:Int, t:Int, r:Int) : Void;

        @:native('glTexCoord4d')
        static function glTexCoord4d(s:cpp.Float64, t:cpp.Float64, r:cpp.Float64, q:cpp.Float64) : Void;

        @:native('glTexCoord4f')
        static function glTexCoord4f(s:cpp.Float32, t:cpp.Float32, r:cpp.Float32, q:cpp.Float32) : Void;

        @:native('glTexCoord4i')
        static function glTexCoord4i(s:Int, t:Int, r:Int, q:Int) : Void;

        @:native('glTexCoord4s')
        static function glTexCoord4s(s:Int, t:Int, r:Int, q:Int) : Void;

        @:native('glTexEnvf')
        static function glTexEnvf(target:Int, pname:Int, param:cpp.Float32) : Void;

        @:native('glTexEnvi')
        static function glTexEnvi(target:Int, pname:Int, param:Int) : Void;

        @:native('glTexGend')
        static function glTexGend(coord:Int, pname:Int, param:cpp.Float64) : Void;

        @:native('glTexGenf')
        static function glTexGenf(coord:Int, pname:Int, param:cpp.Float32) : Void;

        @:native('glTexGeni')
        static function glTexGeni(coord:Int, pname:Int, param:Int) : Void;

        @:native('glTexParameterf')
        static function glTexParameterf(target:Int, pname:Int, param:cpp.Float32) : Void;

        @:native('glTexParameteri')
        static function glTexParameteri(target:Int, pname:Int, param:Int) : Void;

        @:native('glTranslated')
        static function glTranslated(x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glTranslatef')
        static function glTranslatef(x:cpp.Float32, y:cpp.Float32, z:cpp.Float32) : Void;

        @:native('glVertex2d')
        static function glVertex2d(x:cpp.Float64, y:cpp.Float64) : Void;

        @:native('glVertex2f')
        static function glVertex2f(x:cpp.Float32, y:cpp.Float32) : Void;

        @:native('glVertex2i')
        static function glVertex2i(x:Int, y:Int) : Void;

        @:native('glVertex2s')
        static function glVertex2s(x:Int, y:Int) : Void;

        @:native('glVertex3d')
        static function glVertex3d(x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glVertex3f')
        static function glVertex3f(x:cpp.Float32, y:cpp.Float32, z:cpp.Float32) : Void;

        @:native('glVertex3i')
        static function glVertex3i(x:Int, y:Int, z:Int) : Void;

        @:native('glVertex3s')
        static function glVertex3s(x:Int, y:Int, z:Int) : Void;

        @:native('glVertex4d')
        static function glVertex4d(x:cpp.Float64, y:cpp.Float64, z:cpp.Float64, w:cpp.Float64) : Void;

        @:native('glVertex4f')
        static function glVertex4f(x:cpp.Float32, y:cpp.Float32, z:cpp.Float32, w:cpp.Float32) : Void;

        @:native('glVertex4i')
        static function glVertex4i(x:Int, y:Int, z:Int, w:Int) : Void;

        @:native('glVertex4s')
        static function glVertex4s(x:Int, y:Int, z:Int, w:Int) : Void;

        @:native('glViewport')
        static function glViewport(x:Int, y:Int, width:Int, height:Int) : Void;


        inline static function glAreTexturesResident(n:Int, textures:Array<UInt>, residences:Array<Bool>) : Bool
          { return untyped __cpp__("glAreTexturesResident({0}, (const GLuint*)&({1}[0]), (GLboolean*)&({2}[0]))", n, textures, residences); }

        inline static function glBitmap(width:Int, height:Int, xorig:cpp.Float32, yorig:cpp.Float32, xmove:cpp.Float32, ymove:cpp.Float32, bitmap:BytesData) : Void
          { untyped __cpp__("glBitmap({0}, {1}, {2}, {3}, {4}, {5}, (const GLubyte*)&({6}[0]))", width, height, xorig, yorig, xmove, ymove, bitmap); }

        inline static function glCallLists(n:Int, type:Int, lists:BytesData) : Void
          { untyped __cpp__("glCallLists({0}, {1}, (const void*)&({2}[0]))", n, type, lists); }

        inline static function glClipPlane(plane:Int, equation:Array<cpp.Float64>) : Void
          { untyped __cpp__("glClipPlane({0}, (const GLdouble*)&({1}[0]))", plane, equation); }

        inline static function glColor3bv(v:Array<cpp.Int8>) : Void
          { untyped __cpp__("glColor3bv((const GLbyte*)&({0}[0]))", v); }

        inline static function glColor3dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glColor3dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glColor3fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glColor3fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glColor3iv(v:Array<Int>) : Void
          { untyped __cpp__("glColor3iv((const GLint*)&({0}[0]))", v); }

        inline static function glColor3sv(v:Array<Int>) : Void
          { untyped __cpp__("glColor3sv((const GLshort*)&({0}[0]))", v); }

        inline static function glColor3ubv(v:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glColor3ubv((const GLubyte*)&({0}[0]))", v); }

        inline static function glColor3uiv(v:Array<UInt>) : Void
          { untyped __cpp__("glColor3uiv((const GLuint*)&({0}[0]))", v); }

        inline static function glColor3usv(v:Array<UInt>) : Void
          { untyped __cpp__("glColor3usv((const GLushort*)&({0}[0]))", v); }

        inline static function glColor4bv(v:Array<cpp.Int8>) : Void
          { untyped __cpp__("glColor4bv((const GLbyte*)&({0}[0]))", v); }

        inline static function glColor4dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glColor4dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glColor4fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glColor4fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glColor4iv(v:Array<Int>) : Void
          { untyped __cpp__("glColor4iv((const GLint*)&({0}[0]))", v); }

        inline static function glColor4sv(v:Array<Int>) : Void
          { untyped __cpp__("glColor4sv((const GLshort*)&({0}[0]))", v); }

        inline static function glColor4ubv(v:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glColor4ubv((const GLubyte*)&({0}[0]))", v); }

        inline static function glColor4uiv(v:Array<UInt>) : Void
          { untyped __cpp__("glColor4uiv((const GLuint*)&({0}[0]))", v); }

        inline static function glColor4usv(v:Array<UInt>) : Void
          { untyped __cpp__("glColor4usv((const GLushort*)&({0}[0]))", v); }

        inline static function glColorPointer(size:Int, type:Int, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glColorPointer({0}, {1}, {2}, (const void*)&({3}[0]))", size, type, stride, pointer); }

        inline static function glDeleteTextures(n:Int, textures:Array<UInt>) : Void
          { untyped __cpp__("glDeleteTextures({0}, (const GLuint*)&({1}[0]))", n, textures); }

        inline static function glDrawElements(mode:Int, count:Int, type:Int, indices:BytesData) : Void
          { untyped __cpp__("glDrawElements({0}, {1}, {2}, (const void*)&({3}[0]))", mode, count, type, indices); }

        inline static function glDrawPixels(width:Int, height:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glDrawPixels({0}, {1}, {2}, {3}, (const void*)&({4}[0]))", width, height, format, type, pixels); }

        inline static function glEdgeFlagPointer(stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glEdgeFlagPointer({0}, (const void*)&({1}[0]))", stride, pointer); }

        inline static function glEvalCoord1dv(u:Array<cpp.Float64>) : Void
          { untyped __cpp__("glEvalCoord1dv((const GLdouble*)&({0}[0]))", u); }

        inline static function glEvalCoord1fv(u:Array<cpp.Float32>) : Void
          { untyped __cpp__("glEvalCoord1fv((const GLfloat*)&({0}[0]))", u); }

        inline static function glEvalCoord2dv(u:Array<cpp.Float64>) : Void
          { untyped __cpp__("glEvalCoord2dv((const GLdouble*)&({0}[0]))", u); }

        inline static function glEvalCoord2fv(u:Array<cpp.Float32>) : Void
          { untyped __cpp__("glEvalCoord2fv((const GLfloat*)&({0}[0]))", u); }

        inline static function glFeedbackBuffer(size:Int, type:Int, buffer:Array<cpp.Float32>) : Void
          { untyped __cpp__("glFeedbackBuffer({0}, {1}, (GLfloat*)&({2}[0]))", size, type, buffer); }

        inline static function glFogfv(pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glFogfv({0}, (const GLfloat*)&({1}[0]))", pname, params); }

        inline static function glFogiv(pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glFogiv({0}, (const GLint*)&({1}[0]))", pname, params); }

        inline static function glGenTextures(n:Int, textures:Array<UInt>) : Void
          { untyped __cpp__("glGenTextures({0}, (GLuint*)&({1}[0]))", n, textures); }

        inline static function glGetBooleanv(pname:Int, params:Array<Bool>) : Void
          { untyped __cpp__("glGetBooleanv({0}, (GLboolean*)&({1}[0]))", pname, params); }

        inline static function glGetClipPlane(plane:Int, equation:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetClipPlane({0}, (GLdouble*)&({1}[0]))", plane, equation); }

        inline static function glGetDoublev(pname:Int, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetDoublev({0}, (GLdouble*)&({1}[0]))", pname, params); }

        inline static function glGetFloatv(pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetFloatv({0}, (GLfloat*)&({1}[0]))", pname, params); }

        inline static function glGetIntegerv(pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetIntegerv({0}, (GLint*)&({1}[0]))", pname, params); }

        inline static function glGetLightfv(light:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetLightfv({0}, {1}, (GLfloat*)&({2}[0]))", light, pname, params); }

        inline static function glGetLightiv(light:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetLightiv({0}, {1}, (GLint*)&({2}[0]))", light, pname, params); }

        inline static function glGetMapdv(target:Int, query:Int, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetMapdv({0}, {1}, (GLdouble*)&({2}[0]))", target, query, v); }

        inline static function glGetMapfv(target:Int, query:Int, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetMapfv({0}, {1}, (GLfloat*)&({2}[0]))", target, query, v); }

        inline static function glGetMapiv(target:Int, query:Int, v:Array<Int>) : Void
          { untyped __cpp__("glGetMapiv({0}, {1}, (GLint*)&({2}[0]))", target, query, v); }

        inline static function glGetMaterialfv(face:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetMaterialfv({0}, {1}, (GLfloat*)&({2}[0]))", face, pname, params); }

        inline static function glGetMaterialiv(face:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetMaterialiv({0}, {1}, (GLint*)&({2}[0]))", face, pname, params); }

        inline static function glGetPixelMapfv(map:Int, values:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetPixelMapfv({0}, (GLfloat*)&({1}[0]))", map, values); }

        inline static function glGetPixelMapuiv(map:Int, values:Array<UInt>) : Void
          { untyped __cpp__("glGetPixelMapuiv({0}, (GLuint*)&({1}[0]))", map, values); }

        inline static function glGetPixelMapusv(map:Int, values:Array<UInt>) : Void
          { untyped __cpp__("glGetPixelMapusv({0}, (GLushort*)&({1}[0]))", map, values); }

        inline static function glGetPolygonStipple(mask:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glGetPolygonStipple((GLubyte*)&({0}[0]))", mask); }

        inline static function glGetString(name:Int) : String
          { untyped __cpp__("const char* __val = (const char*)glGetString({0}); if(!__val)__val=\"\"", name);
            return untyped __cpp__("::String(__val)"); }

        inline static function glGetTexEnvfv(target:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetTexEnvfv({0}, {1}, (GLfloat*)&({2}[0]))", target, pname, params); }

        inline static function glGetTexEnviv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetTexEnviv({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }

        inline static function glGetTexGendv(coord:Int, pname:Int, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetTexGendv({0}, {1}, (GLdouble*)&({2}[0]))", coord, pname, params); }

        inline static function glGetTexGenfv(coord:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetTexGenfv({0}, {1}, (GLfloat*)&({2}[0]))", coord, pname, params); }

        inline static function glGetTexGeniv(coord:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetTexGeniv({0}, {1}, (GLint*)&({2}[0]))", coord, pname, params); }

        inline static function glGetTexImage(target:Int, level:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glGetTexImage({0}, {1}, {2}, {3}, (void*)&({4}[0]))", target, level, format, type, pixels); }

        inline static function glGetTexLevelParameterfv(target:Int, level:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetTexLevelParameterfv({0}, {1}, {2}, (GLfloat*)&({3}[0]))", target, level, pname, params); }

        inline static function glGetTexLevelParameteriv(target:Int, level:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetTexLevelParameteriv({0}, {1}, {2}, (GLint*)&({3}[0]))", target, level, pname, params); }

        inline static function glGetTexParameterfv(target:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetTexParameterfv({0}, {1}, (GLfloat*)&({2}[0]))", target, pname, params); }

        inline static function glGetTexParameteriv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetTexParameteriv({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }

        inline static function glIndexPointer(type:Int, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glIndexPointer({0}, {1}, (const void*)&({2}[0]))", type, stride, pointer); }

        inline static function glIndexdv(c:Array<cpp.Float64>) : Void
          { untyped __cpp__("glIndexdv((const GLdouble*)&({0}[0]))", c); }

        inline static function glIndexfv(c:Array<cpp.Float32>) : Void
          { untyped __cpp__("glIndexfv((const GLfloat*)&({0}[0]))", c); }

        inline static function glIndexiv(c:Array<Int>) : Void
          { untyped __cpp__("glIndexiv((const GLint*)&({0}[0]))", c); }

        inline static function glIndexsv(c:Array<Int>) : Void
          { untyped __cpp__("glIndexsv((const GLshort*)&({0}[0]))", c); }

        inline static function glIndexubv(c:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glIndexubv((const GLubyte*)&({0}[0]))", c); }

        inline static function glInterleavedArrays(format:Int, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glInterleavedArrays({0}, {1}, (const void*)&({2}[0]))", format, stride, pointer); }

        inline static function glLightModelfv(pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glLightModelfv({0}, (const GLfloat*)&({1}[0]))", pname, params); }

        inline static function glLightModeliv(pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glLightModeliv({0}, (const GLint*)&({1}[0]))", pname, params); }

        inline static function glLightfv(light:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glLightfv({0}, {1}, (const GLfloat*)&({2}[0]))", light, pname, params); }

        inline static function glLightiv(light:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glLightiv({0}, {1}, (const GLint*)&({2}[0]))", light, pname, params); }

        inline static function glLoadMatrixd(m:Array<cpp.Float64>) : Void
          { untyped __cpp__("glLoadMatrixd((const GLdouble*)&({0}[0]))", m); }

        inline static function glLoadMatrixf(m:Array<cpp.Float32>) : Void
          { untyped __cpp__("glLoadMatrixf((const GLfloat*)&({0}[0]))", m); }

        inline static function glMap1d(target:Int, u1:cpp.Float64, u2:cpp.Float64, stride:Int, order:Int, points:Array<cpp.Float64>) : Void
          { untyped __cpp__("glMap1d({0}, {1}, {2}, {3}, {4}, (const GLdouble*)&({5}[0]))", target, u1, u2, stride, order, points); }

        inline static function glMap1f(target:Int, u1:cpp.Float32, u2:cpp.Float32, stride:Int, order:Int, points:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMap1f({0}, {1}, {2}, {3}, {4}, (const GLfloat*)&({5}[0]))", target, u1, u2, stride, order, points); }

        inline static function glMap2d(target:Int, u1:cpp.Float64, u2:cpp.Float64, ustride:Int, uorder:Int, v1:cpp.Float64, v2:cpp.Float64, vstride:Int, vorder:Int, points:Array<cpp.Float64>) : Void
          { untyped __cpp__("glMap2d({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, (const GLdouble*)&({9}[0]))", target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points); }

        inline static function glMap2f(target:Int, u1:cpp.Float32, u2:cpp.Float32, ustride:Int, uorder:Int, v1:cpp.Float32, v2:cpp.Float32, vstride:Int, vorder:Int, points:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMap2f({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, (const GLfloat*)&({9}[0]))", target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points); }

        inline static function glMaterialfv(face:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMaterialfv({0}, {1}, (const GLfloat*)&({2}[0]))", face, pname, params); }

        inline static function glMaterialiv(face:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glMaterialiv({0}, {1}, (const GLint*)&({2}[0]))", face, pname, params); }

        inline static function glMultMatrixd(m:Array<cpp.Float64>) : Void
          { untyped __cpp__("glMultMatrixd((const GLdouble*)&({0}[0]))", m); }

        inline static function glMultMatrixf(m:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMultMatrixf((const GLfloat*)&({0}[0]))", m); }

        inline static function glNormal3bv(v:Array<cpp.Int8>) : Void
          { untyped __cpp__("glNormal3bv((const GLbyte*)&({0}[0]))", v); }

        inline static function glNormal3dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glNormal3dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glNormal3fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glNormal3fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glNormal3iv(v:Array<Int>) : Void
          { untyped __cpp__("glNormal3iv((const GLint*)&({0}[0]))", v); }

        inline static function glNormal3sv(v:Array<Int>) : Void
          { untyped __cpp__("glNormal3sv((const GLshort*)&({0}[0]))", v); }

        inline static function glNormalPointer(type:Int, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glNormalPointer({0}, {1}, (const void*)&({2}[0]))", type, stride, pointer); }

        inline static function glPixelMapfv(map:Int, mapsize:Int, values:Array<cpp.Float32>) : Void
          { untyped __cpp__("glPixelMapfv({0}, {1}, (const GLfloat*)&({2}[0]))", map, mapsize, values); }

        inline static function glPixelMapuiv(map:Int, mapsize:Int, values:Array<UInt>) : Void
          { untyped __cpp__("glPixelMapuiv({0}, {1}, (const GLuint*)&({2}[0]))", map, mapsize, values); }

        inline static function glPixelMapusv(map:Int, mapsize:Int, values:Array<UInt>) : Void
          { untyped __cpp__("glPixelMapusv({0}, {1}, (const GLushort*)&({2}[0]))", map, mapsize, values); }

        inline static function glPolygonStipple(mask:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glPolygonStipple((const GLubyte*)&({0}[0]))", mask); }

        inline static function glRasterPos2dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glRasterPos2dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glRasterPos2fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glRasterPos2fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glRasterPos2iv(v:Array<Int>) : Void
          { untyped __cpp__("glRasterPos2iv((const GLint*)&({0}[0]))", v); }

        inline static function glRasterPos2sv(v:Array<Int>) : Void
          { untyped __cpp__("glRasterPos2sv((const GLshort*)&({0}[0]))", v); }

        inline static function glRasterPos3dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glRasterPos3dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glRasterPos3fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glRasterPos3fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glRasterPos3iv(v:Array<Int>) : Void
          { untyped __cpp__("glRasterPos3iv((const GLint*)&({0}[0]))", v); }

        inline static function glRasterPos3sv(v:Array<Int>) : Void
          { untyped __cpp__("glRasterPos3sv((const GLshort*)&({0}[0]))", v); }

        inline static function glRasterPos4dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glRasterPos4dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glRasterPos4fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glRasterPos4fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glRasterPos4iv(v:Array<Int>) : Void
          { untyped __cpp__("glRasterPos4iv((const GLint*)&({0}[0]))", v); }

        inline static function glRasterPos4sv(v:Array<Int>) : Void
          { untyped __cpp__("glRasterPos4sv((const GLshort*)&({0}[0]))", v); }

        inline static function glReadPixels(x:Int, y:Int, width:Int, height:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glReadPixels({0}, {1}, {2}, {3}, {4}, {5}, (void*)&({6}[0]))", x, y, width, height, format, type, pixels); }

        inline static function glRectdv(v1:Array<cpp.Float64>, v2:Array<cpp.Float64>) : Void
          { untyped __cpp__("glRectdv((const GLdouble*)&({0}[0]), (const GLdouble*)&({1}[0]))", v1, v2); }

        inline static function glRectfv(v1:Array<cpp.Float32>, v2:Array<cpp.Float32>) : Void
          { untyped __cpp__("glRectfv((const GLfloat*)&({0}[0]), (const GLfloat*)&({1}[0]))", v1, v2); }

        inline static function glRectiv(v1:Array<Int>, v2:Array<Int>) : Void
          { untyped __cpp__("glRectiv((const GLint*)&({0}[0]), (const GLint*)&({1}[0]))", v1, v2); }

        inline static function glRectsv(v1:Array<Int>, v2:Array<Int>) : Void
          { untyped __cpp__("glRectsv((const GLshort*)&({0}[0]), (const GLshort*)&({1}[0]))", v1, v2); }

        inline static function glSelectBuffer(size:Int, buffer:Array<UInt>) : Void
          { untyped __cpp__("glSelectBuffer({0}, (GLuint*)&({1}[0]))", size, buffer); }

        inline static function glTexCoord1dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glTexCoord1dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glTexCoord1fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glTexCoord1fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glTexCoord1iv(v:Array<Int>) : Void
          { untyped __cpp__("glTexCoord1iv((const GLint*)&({0}[0]))", v); }

        inline static function glTexCoord1sv(v:Array<Int>) : Void
          { untyped __cpp__("glTexCoord1sv((const GLshort*)&({0}[0]))", v); }

        inline static function glTexCoord2dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glTexCoord2dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glTexCoord2fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glTexCoord2fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glTexCoord2iv(v:Array<Int>) : Void
          { untyped __cpp__("glTexCoord2iv((const GLint*)&({0}[0]))", v); }

        inline static function glTexCoord2sv(v:Array<Int>) : Void
          { untyped __cpp__("glTexCoord2sv((const GLshort*)&({0}[0]))", v); }

        inline static function glTexCoord3dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glTexCoord3dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glTexCoord3fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glTexCoord3fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glTexCoord3iv(v:Array<Int>) : Void
          { untyped __cpp__("glTexCoord3iv((const GLint*)&({0}[0]))", v); }

        inline static function glTexCoord3sv(v:Array<Int>) : Void
          { untyped __cpp__("glTexCoord3sv((const GLshort*)&({0}[0]))", v); }

        inline static function glTexCoord4dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glTexCoord4dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glTexCoord4fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glTexCoord4fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glTexCoord4iv(v:Array<Int>) : Void
          { untyped __cpp__("glTexCoord4iv((const GLint*)&({0}[0]))", v); }

        inline static function glTexCoord4sv(v:Array<Int>) : Void
          { untyped __cpp__("glTexCoord4sv((const GLshort*)&({0}[0]))", v); }

        inline static function glTexCoordPointer(size:Int, type:Int, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glTexCoordPointer({0}, {1}, {2}, (const void*)&({3}[0]))", size, type, stride, pointer); }

        inline static function glTexEnvfv(target:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glTexEnvfv({0}, {1}, (const GLfloat*)&({2}[0]))", target, pname, params); }

        inline static function glTexEnviv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glTexEnviv({0}, {1}, (const GLint*)&({2}[0]))", target, pname, params); }

        inline static function glTexGendv(coord:Int, pname:Int, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glTexGendv({0}, {1}, (const GLdouble*)&({2}[0]))", coord, pname, params); }

        inline static function glTexGenfv(coord:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glTexGenfv({0}, {1}, (const GLfloat*)&({2}[0]))", coord, pname, params); }

        inline static function glTexGeniv(coord:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glTexGeniv({0}, {1}, (const GLint*)&({2}[0]))", coord, pname, params); }

        inline static function glTexImage1D(target:Int, level:Int, internalformat:Int, width:Int, border:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glTexImage1D({0}, {1}, {2}, {3}, {4}, {5}, {6}, (const void*)&({7}[0]))", target, level, internalformat, width, border, format, type, pixels); }

        inline static function glTexImage2D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, border:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glTexImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void*)&({8}[0]))", target, level, internalformat, width, height, border, format, type, pixels); }

        inline static function glTexParameterfv(target:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glTexParameterfv({0}, {1}, (const GLfloat*)&({2}[0]))", target, pname, params); }

        inline static function glTexParameteriv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glTexParameteriv({0}, {1}, (const GLint*)&({2}[0]))", target, pname, params); }

        inline static function glTexSubImage1D(target:Int, level:Int, xoffset:Int, width:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glTexSubImage1D({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]))", target, level, xoffset, width, format, type, pixels); }

        inline static function glTexSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glTexSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void*)&({8}[0]))", target, level, xoffset, yoffset, width, height, format, type, pixels); }

        inline static function glVertex2dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertex2dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glVertex2fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glVertex2fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glVertex2iv(v:Array<Int>) : Void
          { untyped __cpp__("glVertex2iv((const GLint*)&({0}[0]))", v); }

        inline static function glVertex2sv(v:Array<Int>) : Void
          { untyped __cpp__("glVertex2sv((const GLshort*)&({0}[0]))", v); }

        inline static function glVertex3dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertex3dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glVertex3fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glVertex3fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glVertex3iv(v:Array<Int>) : Void
          { untyped __cpp__("glVertex3iv((const GLint*)&({0}[0]))", v); }

        inline static function glVertex3sv(v:Array<Int>) : Void
          { untyped __cpp__("glVertex3sv((const GLshort*)&({0}[0]))", v); }

        inline static function glVertex4dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertex4dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glVertex4fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glVertex4fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glVertex4iv(v:Array<Int>) : Void
          { untyped __cpp__("glVertex4iv((const GLint*)&({0}[0]))", v); }

        inline static function glVertex4sv(v:Array<Int>) : Void
          { untyped __cpp__("glVertex4sv((const GLshort*)&({0}[0]))", v); }

        inline static function glVertexPointer(size:Int, type:Int, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glVertexPointer({0}, {1}, {2}, (const void*)&({3}[0]))", size, type, stride, pointer); }



    // TODO functions

            
        // @:native('glGetPointerv')
        // static function glGetPointerv(pname:Int, params:void**) : Void;
            
        // inline static function glPrioritizeTextures(n:Int, textures:Array<UInt>, priorities:const GLclampf*) : Void
        // { untyped __cpp__("glPrioritizeTextures({0}, (const GLuint*)&({1}[0]), {2})", n, textures, priorities); }

    // ignored functions

            // GLAPI void GLAPIENTRY glEdgeFlagv (const GLboolean *flag)


//GL 1.2

    //GL 1.2 defines

        inline static var GL_SMOOTH_POINT_SIZE_RANGE                                      = 0x0B12;
        inline static var GL_SMOOTH_POINT_SIZE_GRANULARITY                                = 0x0B13;
        inline static var GL_SMOOTH_LINE_WIDTH_RANGE                                      = 0x0B22;
        inline static var GL_SMOOTH_LINE_WIDTH_GRANULARITY                                = 0x0B23;
        inline static var GL_UNSIGNED_BYTE_3_3_2                                          = 0x8032;
        inline static var GL_UNSIGNED_SHORT_4_4_4_4                                       = 0x8033;
        inline static var GL_UNSIGNED_SHORT_5_5_5_1                                       = 0x8034;
        inline static var GL_UNSIGNED_INT_8_8_8_8                                         = 0x8035;
        inline static var GL_UNSIGNED_INT_10_10_10_2                                      = 0x8036;
        inline static var GL_RESCALE_NORMAL                                               = 0x803A;
        inline static var GL_TEXTURE_BINDING_3D                                           = 0x806A;
        inline static var GL_PACK_SKIP_IMAGES                                             = 0x806B;
        inline static var GL_PACK_IMAGE_HEIGHT                                            = 0x806C;
        inline static var GL_UNPACK_SKIP_IMAGES                                           = 0x806D;
        inline static var GL_UNPACK_IMAGE_HEIGHT                                          = 0x806E;
        inline static var GL_TEXTURE_3D                                                   = 0x806F;
        inline static var GL_PROXY_TEXTURE_3D                                             = 0x8070;
        inline static var GL_TEXTURE_DEPTH                                                = 0x8071;
        inline static var GL_TEXTURE_WRAP_R                                               = 0x8072;
        inline static var GL_MAX_3D_TEXTURE_SIZE                                          = 0x8073;
        inline static var GL_BGR                                                          = 0x80E0;
        inline static var GL_BGRA                                                         = 0x80E1;
        inline static var GL_MAX_ELEMENTS_VERTICES                                        = 0x80E8;
        inline static var GL_MAX_ELEMENTS_INDICES                                         = 0x80E9;
        inline static var GL_CLAMP_TO_EDGE                                                = 0x812F;
        inline static var GL_TEXTURE_MIN_LOD                                              = 0x813A;
        inline static var GL_TEXTURE_MAX_LOD                                              = 0x813B;
        inline static var GL_TEXTURE_BASE_LEVEL                                           = 0x813C;
        inline static var GL_TEXTURE_MAX_LEVEL                                            = 0x813D;
        inline static var GL_LIGHT_MODEL_COLOR_CONTROL                                    = 0x81F8;
        inline static var GL_SINGLE_COLOR                                                 = 0x81F9;
        inline static var GL_SEPARATE_SPECULAR_COLOR                                      = 0x81FA;
        inline static var GL_UNSIGNED_BYTE_2_3_3_REV                                      = 0x8362;
        inline static var GL_UNSIGNED_SHORT_5_6_5                                         = 0x8363;
        inline static var GL_UNSIGNED_SHORT_5_6_5_REV                                     = 0x8364;
        inline static var GL_UNSIGNED_SHORT_4_4_4_4_REV                                   = 0x8365;
        inline static var GL_UNSIGNED_SHORT_1_5_5_5_REV                                   = 0x8366;
        inline static var GL_UNSIGNED_INT_8_8_8_8_REV                                     = 0x8367;
        inline static var GL_ALIASED_POINT_SIZE_RANGE                                     = 0x846D;
        inline static var GL_ALIASED_LINE_WIDTH_RANGE                                     = 0x846E;


    //GL 1.2 functions

        @:native('glCopyTexSubImage3D')
        static function glCopyTexSubImage3D(target:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, x:Int, y:Int, width:Int, height:Int) : Void;


        inline static function glDrawRangeElements(mode:Int, start:UInt, end:UInt, count:Int, type:Int, indices:BytesData) : Void
          { untyped __cpp__("glDrawRangeElements({0}, {1}, {2}, {3}, {4}, (const void*)&({5}[0]))", mode, start, end, count, type, indices); }

        inline static function glTexImage3D(target:Int, level:Int, internalFormat:Int, width:Int, height:Int, depth:Int, border:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glTexImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, (const void*)&({9}[0]))", target, level, internalFormat, width, height, depth, border, format, type, pixels); }

        inline static function glTexSubImage3D(target:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glTexSubImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, (const void*)&({10}[0]))", target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels); }




//GL 1.2

    //GL 1.2 defines

        inline static var GL_MULTISAMPLE                                                  = 0x809D;
        inline static var GL_SAMPLE_ALPHA_TO_COVERAGE                                     = 0x809E;
        inline static var GL_SAMPLE_ALPHA_TO_ONE                                          = 0x809F;
        inline static var GL_SAMPLE_COVERAGE                                              = 0x80A0;
        inline static var GL_SAMPLE_BUFFERS                                               = 0x80A8;
        inline static var GL_SAMPLES                                                      = 0x80A9;
        inline static var GL_SAMPLE_COVERAGE_VALUE                                        = 0x80AA;
        inline static var GL_SAMPLE_COVERAGE_INVERT                                       = 0x80AB;
        inline static var GL_CLAMP_TO_BORDER                                              = 0x812D;
        inline static var GL_TEXTURE0                                                     = 0x84C0;
        inline static var GL_TEXTURE1                                                     = 0x84C1;
        inline static var GL_TEXTURE2                                                     = 0x84C2;
        inline static var GL_TEXTURE3                                                     = 0x84C3;
        inline static var GL_TEXTURE4                                                     = 0x84C4;
        inline static var GL_TEXTURE5                                                     = 0x84C5;
        inline static var GL_TEXTURE6                                                     = 0x84C6;
        inline static var GL_TEXTURE7                                                     = 0x84C7;
        inline static var GL_TEXTURE8                                                     = 0x84C8;
        inline static var GL_TEXTURE9                                                     = 0x84C9;
        inline static var GL_TEXTURE10                                                    = 0x84CA;
        inline static var GL_TEXTURE11                                                    = 0x84CB;
        inline static var GL_TEXTURE12                                                    = 0x84CC;
        inline static var GL_TEXTURE13                                                    = 0x84CD;
        inline static var GL_TEXTURE14                                                    = 0x84CE;
        inline static var GL_TEXTURE15                                                    = 0x84CF;
        inline static var GL_TEXTURE16                                                    = 0x84D0;
        inline static var GL_TEXTURE17                                                    = 0x84D1;
        inline static var GL_TEXTURE18                                                    = 0x84D2;
        inline static var GL_TEXTURE19                                                    = 0x84D3;
        inline static var GL_TEXTURE20                                                    = 0x84D4;
        inline static var GL_TEXTURE21                                                    = 0x84D5;
        inline static var GL_TEXTURE22                                                    = 0x84D6;
        inline static var GL_TEXTURE23                                                    = 0x84D7;
        inline static var GL_TEXTURE24                                                    = 0x84D8;
        inline static var GL_TEXTURE25                                                    = 0x84D9;
        inline static var GL_TEXTURE26                                                    = 0x84DA;
        inline static var GL_TEXTURE27                                                    = 0x84DB;
        inline static var GL_TEXTURE28                                                    = 0x84DC;
        inline static var GL_TEXTURE29                                                    = 0x84DD;
        inline static var GL_TEXTURE30                                                    = 0x84DE;
        inline static var GL_TEXTURE31                                                    = 0x84DF;
        inline static var GL_ACTIVE_TEXTURE                                               = 0x84E0;
        inline static var GL_CLIENT_ACTIVE_TEXTURE                                        = 0x84E1;
        inline static var GL_MAX_TEXTURE_UNITS                                            = 0x84E2;
        inline static var GL_TRANSPOSE_MODELVIEW_MATRIX                                   = 0x84E3;
        inline static var GL_TRANSPOSE_PROJECTION_MATRIX                                  = 0x84E4;
        inline static var GL_TRANSPOSE_TEXTURE_MATRIX                                     = 0x84E5;
        inline static var GL_TRANSPOSE_COLOR_MATRIX                                       = 0x84E6;
        inline static var GL_SUBTRACT                                                     = 0x84E7;
        inline static var GL_COMPRESSED_ALPHA                                             = 0x84E9;
        inline static var GL_COMPRESSED_LUMINANCE                                         = 0x84EA;
        inline static var GL_COMPRESSED_LUMINANCE_ALPHA                                   = 0x84EB;
        inline static var GL_COMPRESSED_INTENSITY                                         = 0x84EC;
        inline static var GL_COMPRESSED_RGB                                               = 0x84ED;
        inline static var GL_COMPRESSED_RGBA                                              = 0x84EE;
        inline static var GL_TEXTURE_COMPRESSION_HINT                                     = 0x84EF;
        inline static var GL_NORMAL_MAP                                                   = 0x8511;
        inline static var GL_REFLECTION_MAP                                               = 0x8512;
        inline static var GL_TEXTURE_CUBE_MAP                                             = 0x8513;
        inline static var GL_TEXTURE_BINDING_CUBE_MAP                                     = 0x8514;
        inline static var GL_TEXTURE_CUBE_MAP_POSITIVE_X                                  = 0x8515;
        inline static var GL_TEXTURE_CUBE_MAP_NEGATIVE_X                                  = 0x8516;
        inline static var GL_TEXTURE_CUBE_MAP_POSITIVE_Y                                  = 0x8517;
        inline static var GL_TEXTURE_CUBE_MAP_NEGATIVE_Y                                  = 0x8518;
        inline static var GL_TEXTURE_CUBE_MAP_POSITIVE_Z                                  = 0x8519;
        inline static var GL_TEXTURE_CUBE_MAP_NEGATIVE_Z                                  = 0x851A;
        inline static var GL_PROXY_TEXTURE_CUBE_MAP                                       = 0x851B;
        inline static var GL_MAX_CUBE_MAP_TEXTURE_SIZE                                    = 0x851C;
        inline static var GL_COMBINE                                                      = 0x8570;
        inline static var GL_COMBINE_RGB                                                  = 0x8571;
        inline static var GL_COMBINE_ALPHA                                                = 0x8572;
        inline static var GL_RGB_SCALE                                                    = 0x8573;
        inline static var GL_ADD_SIGNED                                                   = 0x8574;
        inline static var GL_INTERPOLATE                                                  = 0x8575;
        inline static var GL_CONSTANT                                                     = 0x8576;
        inline static var GL_PRIMARY_COLOR                                                = 0x8577;
        inline static var GL_PREVIOUS                                                     = 0x8578;
        inline static var GL_SOURCE0_RGB                                                  = 0x8580;
        inline static var GL_SOURCE1_RGB                                                  = 0x8581;
        inline static var GL_SOURCE2_RGB                                                  = 0x8582;
        inline static var GL_SOURCE0_ALPHA                                                = 0x8588;
        inline static var GL_SOURCE1_ALPHA                                                = 0x8589;
        inline static var GL_SOURCE2_ALPHA                                                = 0x858A;
        inline static var GL_OPERAND0_RGB                                                 = 0x8590;
        inline static var GL_OPERAND1_RGB                                                 = 0x8591;
        inline static var GL_OPERAND2_RGB                                                 = 0x8592;
        inline static var GL_OPERAND0_ALPHA                                               = 0x8598;
        inline static var GL_OPERAND1_ALPHA                                               = 0x8599;
        inline static var GL_OPERAND2_ALPHA                                               = 0x859A;
        inline static var GL_TEXTURE_COMPRESSED_IMAGE_SIZE                                = 0x86A0;
        inline static var GL_TEXTURE_COMPRESSED                                           = 0x86A1;
        inline static var GL_NUM_COMPRESSED_TEXTURE_FORMATS                               = 0x86A2;
        inline static var GL_COMPRESSED_TEXTURE_FORMATS                                   = 0x86A3;
        inline static var GL_DOT3_RGB                                                     = 0x86AE;
        inline static var GL_DOT3_RGBA                                                    = 0x86AF;
        inline static var GL_MULTISAMPLE_BIT                                              = 0x20000000;


    //GL 1.2 functions

        @:native('glActiveTexture')
        static function glActiveTexture(texture:Int) : Void;

        @:native('glClientActiveTexture')
        static function glClientActiveTexture(texture:Int) : Void;

        @:native('glMultiTexCoord1d')
        static function glMultiTexCoord1d(target:Int, s:cpp.Float64) : Void;

        @:native('glMultiTexCoord1f')
        static function glMultiTexCoord1f(target:Int, s:cpp.Float32) : Void;

        @:native('glMultiTexCoord1i')
        static function glMultiTexCoord1i(target:Int, s:Int) : Void;

        @:native('glMultiTexCoord1s')
        static function glMultiTexCoord1s(target:Int, s:Int) : Void;

        @:native('glMultiTexCoord2d')
        static function glMultiTexCoord2d(target:Int, s:cpp.Float64, t:cpp.Float64) : Void;

        @:native('glMultiTexCoord2f')
        static function glMultiTexCoord2f(target:Int, s:cpp.Float32, t:cpp.Float32) : Void;

        @:native('glMultiTexCoord2i')
        static function glMultiTexCoord2i(target:Int, s:Int, t:Int) : Void;

        @:native('glMultiTexCoord2s')
        static function glMultiTexCoord2s(target:Int, s:Int, t:Int) : Void;

        @:native('glMultiTexCoord3d')
        static function glMultiTexCoord3d(target:Int, s:cpp.Float64, t:cpp.Float64, r:cpp.Float64) : Void;

        @:native('glMultiTexCoord3f')
        static function glMultiTexCoord3f(target:Int, s:cpp.Float32, t:cpp.Float32, r:cpp.Float32) : Void;

        @:native('glMultiTexCoord3i')
        static function glMultiTexCoord3i(target:Int, s:Int, t:Int, r:Int) : Void;

        @:native('glMultiTexCoord3s')
        static function glMultiTexCoord3s(target:Int, s:Int, t:Int, r:Int) : Void;

        @:native('glMultiTexCoord4d')
        static function glMultiTexCoord4d(target:Int, s:cpp.Float64, t:cpp.Float64, r:cpp.Float64, q:cpp.Float64) : Void;

        @:native('glMultiTexCoord4f')
        static function glMultiTexCoord4f(target:Int, s:cpp.Float32, t:cpp.Float32, r:cpp.Float32, q:cpp.Float32) : Void;

        @:native('glMultiTexCoord4i')
        static function glMultiTexCoord4i(target:Int, s:Int, t:Int, r:Int, q:Int) : Void;

        @:native('glMultiTexCoord4s')
        static function glMultiTexCoord4s(target:Int, s:Int, t:Int, r:Int, q:Int) : Void;

        @:native('glSampleCoverage')
        static function glSampleCoverage(value:cpp.Float32, invert:Bool) : Void;


        inline static function glCompressedTexImage1D(target:Int, level:Int, internalformat:Int, width:Int, border:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexImage1D({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]))", target, level, internalformat, width, border, imageSize, data); }

        inline static function glCompressedTexImage2D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, border:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, (const void*)&({7}[0]))", target, level, internalformat, width, height, border, imageSize, data); }

        inline static function glCompressedTexImage3D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, depth:Int, border:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void*)&({8}[0]))", target, level, internalformat, width, height, depth, border, imageSize, data); }

        inline static function glCompressedTexSubImage1D(target:Int, level:Int, xoffset:Int, width:Int, format:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexSubImage1D({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]))", target, level, xoffset, width, format, imageSize, data); }

        inline static function glCompressedTexSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void*)&({8}[0]))", target, level, xoffset, yoffset, width, height, format, imageSize, data); }

        inline static function glCompressedTexSubImage3D(target:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexSubImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, (const void*)&({10}[0]))", target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data); }

        inline static function glGetCompressedTexImage(target:Int, lod:Int, img:BytesData) : Void
          { untyped __cpp__("glGetCompressedTexImage({0}, {1}, (void*)&({2}[0]))", target, lod, img); }

        inline static function glMultiTexCoord1dv(target:Int, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glMultiTexCoord1dv({0}, (const GLdouble*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord1fv(target:Int, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMultiTexCoord1fv({0}, (const GLfloat*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord1iv(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord1iv({0}, (const GLint*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord1sv(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord1sv({0}, (const GLshort*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord2dv(target:Int, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glMultiTexCoord2dv({0}, (const GLdouble*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord2fv(target:Int, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMultiTexCoord2fv({0}, (const GLfloat*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord2iv(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord2iv({0}, (const GLint*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord2sv(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord2sv({0}, (const GLshort*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord3dv(target:Int, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glMultiTexCoord3dv({0}, (const GLdouble*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord3fv(target:Int, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMultiTexCoord3fv({0}, (const GLfloat*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord3iv(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord3iv({0}, (const GLint*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord3sv(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord3sv({0}, (const GLshort*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord4dv(target:Int, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glMultiTexCoord4dv({0}, (const GLdouble*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord4fv(target:Int, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMultiTexCoord4fv({0}, (const GLfloat*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord4iv(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord4iv({0}, (const GLint*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord4sv(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord4sv({0}, (const GLshort*)&({1}[0]))", target, v); }



    // TODO functions

            
        // @:native('glLoadTransposeMatrixd')
        // static function glLoadTransposeMatrixd(m:Array<cpp.Float64>) : Void;
            
        // @:native('glLoadTransposeMatrixf')
        // static function glLoadTransposeMatrixf(m:Array<cpp.Float32>) : Void;
            
        // @:native('glMultTransposeMatrixd')
        // static function glMultTransposeMatrixd(m:Array<cpp.Float64>) : Void;
            
        // @:native('glMultTransposeMatrixf')
        // static function glMultTransposeMatrixf(m:Array<cpp.Float32>) : Void;


//GL 1.4

    //GL 1.4 defines

        inline static var GL_BLEND_DST_RGB                                                = 0x80C8;
        inline static var GL_BLEND_SRC_RGB                                                = 0x80C9;
        inline static var GL_BLEND_DST_ALPHA                                              = 0x80CA;
        inline static var GL_BLEND_SRC_ALPHA                                              = 0x80CB;
        inline static var GL_POINT_SIZE_MIN                                               = 0x8126;
        inline static var GL_POINT_SIZE_MAX                                               = 0x8127;
        inline static var GL_POINT_FADE_THRESHOLD_SIZE                                    = 0x8128;
        inline static var GL_POINT_DISTANCE_ATTENUATION                                   = 0x8129;
        inline static var GL_GENERATE_MIPMAP                                              = 0x8191;
        inline static var GL_GENERATE_MIPMAP_HINT                                         = 0x8192;
        inline static var GL_DEPTH_COMPONENT16                                            = 0x81A5;
        inline static var GL_DEPTH_COMPONENT24                                            = 0x81A6;
        inline static var GL_DEPTH_COMPONENT32                                            = 0x81A7;
        inline static var GL_MIRRORED_REPEAT                                              = 0x8370;
        inline static var GL_FOG_COORDINATE_SOURCE                                        = 0x8450;
        inline static var GL_FOG_COORDINATE                                               = 0x8451;
        inline static var GL_FRAGMENT_DEPTH                                               = 0x8452;
        inline static var GL_CURRENT_FOG_COORDINATE                                       = 0x8453;
        inline static var GL_FOG_COORDINATE_ARRAY_TYPE                                    = 0x8454;
        inline static var GL_FOG_COORDINATE_ARRAY_STRIDE                                  = 0x8455;
        inline static var GL_FOG_COORDINATE_ARRAY_POINTER                                 = 0x8456;
        inline static var GL_FOG_COORDINATE_ARRAY                                         = 0x8457;
        inline static var GL_COLOR_SUM                                                    = 0x8458;
        inline static var GL_CURRENT_SECONDARY_COLOR                                      = 0x8459;
        inline static var GL_SECONDARY_COLOR_ARRAY_SIZE                                   = 0x845A;
        inline static var GL_SECONDARY_COLOR_ARRAY_TYPE                                   = 0x845B;
        inline static var GL_SECONDARY_COLOR_ARRAY_STRIDE                                 = 0x845C;
        inline static var GL_SECONDARY_COLOR_ARRAY_POINTER                                = 0x845D;
        inline static var GL_SECONDARY_COLOR_ARRAY                                        = 0x845E;
        inline static var GL_MAX_TEXTURE_LOD_BIAS                                         = 0x84FD;
        inline static var GL_TEXTURE_FILTER_CONTROL                                       = 0x8500;
        inline static var GL_TEXTURE_LOD_BIAS                                             = 0x8501;
        inline static var GL_INCR_WRAP                                                    = 0x8507;
        inline static var GL_DECR_WRAP                                                    = 0x8508;
        inline static var GL_TEXTURE_DEPTH_SIZE                                           = 0x884A;
        inline static var GL_DEPTH_TEXTURE_MODE                                           = 0x884B;
        inline static var GL_TEXTURE_COMPARE_MODE                                         = 0x884C;
        inline static var GL_TEXTURE_COMPARE_FUNC                                         = 0x884D;
        inline static var GL_COMPARE_R_TO_TEXTURE                                         = 0x884E;


    //GL 1.4 functions

        @:native('glBlendColor')
        static function glBlendColor(red:cpp.Float32, green:cpp.Float32, blue:cpp.Float32, alpha:cpp.Float32) : Void;

        @:native('glBlendEquation')
        static function glBlendEquation(mode:Int) : Void;

        @:native('glBlendFuncSeparate')
        static function glBlendFuncSeparate(sfactorRGB:Int, dfactorRGB:Int, sfactorAlpha:Int, dfactorAlpha:Int) : Void;

        @:native('glFogCoordd')
        static function glFogCoordd(coord:cpp.Float64) : Void;

        @:native('glFogCoordf')
        static function glFogCoordf(coord:cpp.Float32) : Void;

        @:native('glPointParameterf')
        static function glPointParameterf(pname:Int, param:cpp.Float32) : Void;

        @:native('glPointParameteri')
        static function glPointParameteri(pname:Int, param:Int) : Void;

        @:native('glSecondaryColor3b')
        static function glSecondaryColor3b(red:cpp.Int8, green:cpp.Int8, blue:cpp.Int8) : Void;

        @:native('glSecondaryColor3d')
        static function glSecondaryColor3d(red:cpp.Float64, green:cpp.Float64, blue:cpp.Float64) : Void;

        @:native('glSecondaryColor3f')
        static function glSecondaryColor3f(red:cpp.Float32, green:cpp.Float32, blue:cpp.Float32) : Void;

        @:native('glSecondaryColor3i')
        static function glSecondaryColor3i(red:Int, green:Int, blue:Int) : Void;

        @:native('glSecondaryColor3s')
        static function glSecondaryColor3s(red:Int, green:Int, blue:Int) : Void;

        @:native('glSecondaryColor3ub')
        static function glSecondaryColor3ub(red:cpp.UInt8, green:cpp.UInt8, blue:cpp.UInt8) : Void;

        @:native('glSecondaryColor3ui')
        static function glSecondaryColor3ui(red:UInt, green:UInt, blue:UInt) : Void;

        @:native('glSecondaryColor3us')
        static function glSecondaryColor3us(red:UInt, green:UInt, blue:UInt) : Void;

        @:native('glWindowPos2d')
        static function glWindowPos2d(x:cpp.Float64, y:cpp.Float64) : Void;

        @:native('glWindowPos2f')
        static function glWindowPos2f(x:cpp.Float32, y:cpp.Float32) : Void;

        @:native('glWindowPos2i')
        static function glWindowPos2i(x:Int, y:Int) : Void;

        @:native('glWindowPos2s')
        static function glWindowPos2s(x:Int, y:Int) : Void;

        @:native('glWindowPos3d')
        static function glWindowPos3d(x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glWindowPos3f')
        static function glWindowPos3f(x:cpp.Float32, y:cpp.Float32, z:cpp.Float32) : Void;

        @:native('glWindowPos3i')
        static function glWindowPos3i(x:Int, y:Int, z:Int) : Void;

        @:native('glWindowPos3s')
        static function glWindowPos3s(x:Int, y:Int, z:Int) : Void;


        inline static function glFogCoordPointer(type:Int, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glFogCoordPointer({0}, {1}, (const void*)&({2}[0]))", type, stride, pointer); }

        inline static function glFogCoorddv(coord:Array<cpp.Float64>) : Void
          { untyped __cpp__("glFogCoorddv((const GLdouble*)&({0}[0]))", coord); }

        inline static function glFogCoordfv(coord:Array<cpp.Float32>) : Void
          { untyped __cpp__("glFogCoordfv((const GLfloat*)&({0}[0]))", coord); }

        inline static function glPointParameterfv(pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glPointParameterfv({0}, (const GLfloat*)&({1}[0]))", pname, params); }

        inline static function glPointParameteriv(pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glPointParameteriv({0}, (const GLint*)&({1}[0]))", pname, params); }

        inline static function glSecondaryColor3bv(v:Array<cpp.Int8>) : Void
          { untyped __cpp__("glSecondaryColor3bv((const GLbyte*)&({0}[0]))", v); }

        inline static function glSecondaryColor3dv(v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glSecondaryColor3dv((const GLdouble*)&({0}[0]))", v); }

        inline static function glSecondaryColor3fv(v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glSecondaryColor3fv((const GLfloat*)&({0}[0]))", v); }

        inline static function glSecondaryColor3iv(v:Array<Int>) : Void
          { untyped __cpp__("glSecondaryColor3iv((const GLint*)&({0}[0]))", v); }

        inline static function glSecondaryColor3sv(v:Array<Int>) : Void
          { untyped __cpp__("glSecondaryColor3sv((const GLshort*)&({0}[0]))", v); }

        inline static function glSecondaryColor3ubv(v:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glSecondaryColor3ubv((const GLubyte*)&({0}[0]))", v); }

        inline static function glSecondaryColor3uiv(v:Array<UInt>) : Void
          { untyped __cpp__("glSecondaryColor3uiv((const GLuint*)&({0}[0]))", v); }

        inline static function glSecondaryColor3usv(v:Array<UInt>) : Void
          { untyped __cpp__("glSecondaryColor3usv((const GLushort*)&({0}[0]))", v); }

        inline static function glSecondaryColorPointer(size:Int, type:Int, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glSecondaryColorPointer({0}, {1}, {2}, (const void*)&({3}[0]))", size, type, stride, pointer); }

        inline static function glWindowPos2dv(p:Array<cpp.Float64>) : Void
          { untyped __cpp__("glWindowPos2dv((const GLdouble*)&({0}[0]))", p); }

        inline static function glWindowPos2fv(p:Array<cpp.Float32>) : Void
          { untyped __cpp__("glWindowPos2fv((const GLfloat*)&({0}[0]))", p); }

        inline static function glWindowPos2iv(p:Array<Int>) : Void
          { untyped __cpp__("glWindowPos2iv((const GLint*)&({0}[0]))", p); }

        inline static function glWindowPos2sv(p:Array<Int>) : Void
          { untyped __cpp__("glWindowPos2sv((const GLshort*)&({0}[0]))", p); }

        inline static function glWindowPos3dv(p:Array<cpp.Float64>) : Void
          { untyped __cpp__("glWindowPos3dv((const GLdouble*)&({0}[0]))", p); }

        inline static function glWindowPos3fv(p:Array<cpp.Float32>) : Void
          { untyped __cpp__("glWindowPos3fv((const GLfloat*)&({0}[0]))", p); }

        inline static function glWindowPos3iv(p:Array<Int>) : Void
          { untyped __cpp__("glWindowPos3iv((const GLint*)&({0}[0]))", p); }

        inline static function glWindowPos3sv(p:Array<Int>) : Void
          { untyped __cpp__("glWindowPos3sv((const GLshort*)&({0}[0]))", p); }



    // TODO functions

            
        // inline static function glMultiDrawArrays(mode:Int, first:Array<Int>, count:const GLsizei*, drawcount:Int) : Void
        // { untyped __cpp__("glMultiDrawArrays({0}, (const GLint*)&({1}[0]), {2}, {3})", mode, first, count, drawcount); }
            
        // @:native('glMultiDrawElements')
        // static function glMultiDrawElements(mode:Int, count:const GLsizei*, type:Int, indices:const void *const*, drawcount:Int) : Void;


//GL 1.5

    //GL 1.5 defines

        inline static var GL_CURRENT_FOG_COORD                                            = GL_CURRENT_FOG_COORDINATE;
        inline static var GL_FOG_COORD                                                    = GL_FOG_COORDINATE;
        inline static var GL_FOG_COORD_ARRAY                                              = GL_FOG_COORDINATE_ARRAY;
        inline static var GL_FOG_COORD_ARRAY_BUFFER_BINDING                               = GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING;
        inline static var GL_FOG_COORD_ARRAY_POINTER                                      = GL_FOG_COORDINATE_ARRAY_POINTER;
        inline static var GL_FOG_COORD_ARRAY_STRIDE                                       = GL_FOG_COORDINATE_ARRAY_STRIDE;
        inline static var GL_FOG_COORD_ARRAY_TYPE                                         = GL_FOG_COORDINATE_ARRAY_TYPE;
        inline static var GL_FOG_COORD_SRC                                                = GL_FOG_COORDINATE_SOURCE;
        inline static var GL_SRC0_ALPHA                                                   = GL_SOURCE0_ALPHA;
        inline static var GL_SRC0_RGB                                                     = GL_SOURCE0_RGB;
        inline static var GL_SRC1_ALPHA                                                   = GL_SOURCE1_ALPHA;
        inline static var GL_SRC1_RGB                                                     = GL_SOURCE1_RGB;
        inline static var GL_SRC2_ALPHA                                                   = GL_SOURCE2_ALPHA;
        inline static var GL_SRC2_RGB                                                     = GL_SOURCE2_RGB;
        inline static var GL_BUFFER_SIZE                                                  = 0x8764;
        inline static var GL_BUFFER_USAGE                                                 = 0x8765;
        inline static var GL_QUERY_COUNTER_BITS                                           = 0x8864;
        inline static var GL_CURRENT_QUERY                                                = 0x8865;
        inline static var GL_QUERY_RESULT                                                 = 0x8866;
        inline static var GL_QUERY_RESULT_AVAILABLE                                       = 0x8867;
        inline static var GL_ARRAY_BUFFER                                                 = 0x8892;
        inline static var GL_ELEMENT_ARRAY_BUFFER                                         = 0x8893;
        inline static var GL_ARRAY_BUFFER_BINDING                                         = 0x8894;
        inline static var GL_ELEMENT_ARRAY_BUFFER_BINDING                                 = 0x8895;
        inline static var GL_VERTEX_ARRAY_BUFFER_BINDING                                  = 0x8896;
        inline static var GL_NORMAL_ARRAY_BUFFER_BINDING                                  = 0x8897;
        inline static var GL_COLOR_ARRAY_BUFFER_BINDING                                   = 0x8898;
        inline static var GL_INDEX_ARRAY_BUFFER_BINDING                                   = 0x8899;
        inline static var GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING                           = 0x889A;
        inline static var GL_EDGE_FLAG_ARRAY_BUFFER_BINDING                               = 0x889B;
        inline static var GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING                         = 0x889C;
        inline static var GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING                          = 0x889D;
        inline static var GL_WEIGHT_ARRAY_BUFFER_BINDING                                  = 0x889E;
        inline static var GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING                           = 0x889F;
        inline static var GL_READ_ONLY                                                    = 0x88B8;
        inline static var GL_WRITE_ONLY                                                   = 0x88B9;
        inline static var GL_READ_WRITE                                                   = 0x88BA;
        inline static var GL_BUFFER_ACCESS                                                = 0x88BB;
        inline static var GL_BUFFER_MAPPED                                                = 0x88BC;
        inline static var GL_BUFFER_MAP_POINTER                                           = 0x88BD;
        inline static var GL_STREAM_DRAW                                                  = 0x88E0;
        inline static var GL_STREAM_READ                                                  = 0x88E1;
        inline static var GL_STREAM_COPY                                                  = 0x88E2;
        inline static var GL_STATIC_DRAW                                                  = 0x88E4;
        inline static var GL_STATIC_READ                                                  = 0x88E5;
        inline static var GL_STATIC_COPY                                                  = 0x88E6;
        inline static var GL_DYNAMIC_DRAW                                                 = 0x88E8;
        inline static var GL_DYNAMIC_READ                                                 = 0x88E9;
        inline static var GL_DYNAMIC_COPY                                                 = 0x88EA;
        inline static var GL_SAMPLES_PASSED                                               = 0x8914;


    //GL 1.5 functions

        @:native('glBeginQuery')
        static function glBeginQuery(target:Int, id:UInt) : Void;

        @:native('glBindBuffer')
        static function glBindBuffer(target:Int, buffer:UInt) : Void;

        @:native('glEndQuery')
        static function glEndQuery(target:Int) : Void;

        @:native('glIsBuffer')
        static function glIsBuffer(buffer:UInt) : Bool;

        @:native('glIsQuery')
        static function glIsQuery(id:UInt) : Bool;

        @:native('glUnmapBuffer')
        static function glUnmapBuffer(target:Int) : Bool;


        inline static function glBufferData(target:Int, size:Int, data:BytesData, usage:Int) : Void
          { untyped __cpp__("glBufferData({0}, {1}, (const void*)&({2}[0]), {3})", target, size, data, usage); }

        inline static function glBufferSubData(target:Int, offset:Int, size:Int, data:BytesData) : Void
          { untyped __cpp__("glBufferSubData({0}, {1}, {2}, (const void*)&({3}[0]))", target, offset, size, data); }

        inline static function glDeleteBuffers(n:Int, buffers:Array<UInt>) : Void
          { untyped __cpp__("glDeleteBuffers({0}, (const GLuint*)&({1}[0]))", n, buffers); }

        inline static function glDeleteQueries(n:Int, ids:Array<UInt>) : Void
          { untyped __cpp__("glDeleteQueries({0}, (const GLuint*)&({1}[0]))", n, ids); }

        inline static function glGenBuffers(n:Int, buffers:Array<UInt>) : Void
          { untyped __cpp__("glGenBuffers({0}, (GLuint*)&({1}[0]))", n, buffers); }

        inline static function glGenQueries(n:Int, ids:Array<UInt>) : Void
          { untyped __cpp__("glGenQueries({0}, (GLuint*)&({1}[0]))", n, ids); }

        inline static function glGetBufferParameteriv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetBufferParameteriv({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }

        inline static function glGetBufferSubData(target:Int, offset:Int, size:Int, data:BytesData) : Void
          { untyped __cpp__("glGetBufferSubData({0}, {1}, {2}, (void*)&({3}[0]))", target, offset, size, data); }

        inline static function glGetQueryObjectiv(id:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetQueryObjectiv({0}, {1}, (GLint*)&({2}[0]))", id, pname, params); }

        inline static function glGetQueryObjectuiv(id:UInt, pname:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glGetQueryObjectuiv({0}, {1}, (GLuint*)&({2}[0]))", id, pname, params); }

        inline static function glGetQueryiv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetQueryiv({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }



    // TODO functions

            
        // @:native('glGetBufferPointerv')
        // static function glGetBufferPointerv(target:Int, pname:Int, params:void**) : Void;
            
        // @:native('glMapBuffer')
        // static function glMapBuffer(target:Int, access:Int) : void*;


//GL 2.0

    //GL 2.0 defines

        inline static var GL_BLEND_EQUATION_RGB                                           = GL_BLEND_EQUATION;
        inline static var GL_VERTEX_ATTRIB_ARRAY_ENABLED                                  = 0x8622;
        inline static var GL_VERTEX_ATTRIB_ARRAY_SIZE                                     = 0x8623;
        inline static var GL_VERTEX_ATTRIB_ARRAY_STRIDE                                   = 0x8624;
        inline static var GL_VERTEX_ATTRIB_ARRAY_TYPE                                     = 0x8625;
        inline static var GL_CURRENT_VERTEX_ATTRIB                                        = 0x8626;
        inline static var GL_VERTEX_PROGRAM_POINT_SIZE                                    = 0x8642;
        inline static var GL_VERTEX_PROGRAM_TWO_SIDE                                      = 0x8643;
        inline static var GL_VERTEX_ATTRIB_ARRAY_POINTER                                  = 0x8645;
        inline static var GL_STENCIL_BACK_FUNC                                            = 0x8800;
        inline static var GL_STENCIL_BACK_FAIL                                            = 0x8801;
        inline static var GL_STENCIL_BACK_PASS_DEPTH_FAIL                                 = 0x8802;
        inline static var GL_STENCIL_BACK_PASS_DEPTH_PASS                                 = 0x8803;
        inline static var GL_MAX_DRAW_BUFFERS                                             = 0x8824;
        inline static var GL_DRAW_BUFFER0                                                 = 0x8825;
        inline static var GL_DRAW_BUFFER1                                                 = 0x8826;
        inline static var GL_DRAW_BUFFER2                                                 = 0x8827;
        inline static var GL_DRAW_BUFFER3                                                 = 0x8828;
        inline static var GL_DRAW_BUFFER4                                                 = 0x8829;
        inline static var GL_DRAW_BUFFER5                                                 = 0x882A;
        inline static var GL_DRAW_BUFFER6                                                 = 0x882B;
        inline static var GL_DRAW_BUFFER7                                                 = 0x882C;
        inline static var GL_DRAW_BUFFER8                                                 = 0x882D;
        inline static var GL_DRAW_BUFFER9                                                 = 0x882E;
        inline static var GL_DRAW_BUFFER10                                                = 0x882F;
        inline static var GL_DRAW_BUFFER11                                                = 0x8830;
        inline static var GL_DRAW_BUFFER12                                                = 0x8831;
        inline static var GL_DRAW_BUFFER13                                                = 0x8832;
        inline static var GL_DRAW_BUFFER14                                                = 0x8833;
        inline static var GL_DRAW_BUFFER15                                                = 0x8834;
        inline static var GL_BLEND_EQUATION_ALPHA                                         = 0x883D;
        inline static var GL_POINT_SPRITE                                                 = 0x8861;
        inline static var GL_COORD_REPLACE                                                = 0x8862;
        inline static var GL_MAX_VERTEX_ATTRIBS                                           = 0x8869;
        inline static var GL_VERTEX_ATTRIB_ARRAY_NORMALIZED                               = 0x886A;
        inline static var GL_MAX_TEXTURE_COORDS                                           = 0x8871;
        inline static var GL_MAX_TEXTURE_IMAGE_UNITS                                      = 0x8872;
        inline static var GL_FRAGMENT_SHADER                                              = 0x8B30;
        inline static var GL_VERTEX_SHADER                                                = 0x8B31;
        inline static var GL_MAX_FRAGMENT_UNIFORM_COMPONENTS                              = 0x8B49;
        inline static var GL_MAX_VERTEX_UNIFORM_COMPONENTS                                = 0x8B4A;
        inline static var GL_MAX_VARYING_FLOATS                                           = 0x8B4B;
        inline static var GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS                               = 0x8B4C;
        inline static var GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS                             = 0x8B4D;
        inline static var GL_SHADER_TYPE                                                  = 0x8B4F;
        inline static var GL_FLOAT_VEC2                                                   = 0x8B50;
        inline static var GL_FLOAT_VEC3                                                   = 0x8B51;
        inline static var GL_FLOAT_VEC4                                                   = 0x8B52;
        inline static var GL_INT_VEC2                                                     = 0x8B53;
        inline static var GL_INT_VEC3                                                     = 0x8B54;
        inline static var GL_INT_VEC4                                                     = 0x8B55;
        inline static var GL_BOOL                                                         = 0x8B56;
        inline static var GL_BOOL_VEC2                                                    = 0x8B57;
        inline static var GL_BOOL_VEC3                                                    = 0x8B58;
        inline static var GL_BOOL_VEC4                                                    = 0x8B59;
        inline static var GL_FLOAT_MAT2                                                   = 0x8B5A;
        inline static var GL_FLOAT_MAT3                                                   = 0x8B5B;
        inline static var GL_FLOAT_MAT4                                                   = 0x8B5C;
        inline static var GL_SAMPLER_1D                                                   = 0x8B5D;
        inline static var GL_SAMPLER_2D                                                   = 0x8B5E;
        inline static var GL_SAMPLER_3D                                                   = 0x8B5F;
        inline static var GL_SAMPLER_CUBE                                                 = 0x8B60;
        inline static var GL_SAMPLER_1D_SHADOW                                            = 0x8B61;
        inline static var GL_SAMPLER_2D_SHADOW                                            = 0x8B62;
        inline static var GL_DELETE_STATUS                                                = 0x8B80;
        inline static var GL_COMPILE_STATUS                                               = 0x8B81;
        inline static var GL_LINK_STATUS                                                  = 0x8B82;
        inline static var GL_VALIDATE_STATUS                                              = 0x8B83;
        inline static var GL_INFO_LOG_LENGTH                                              = 0x8B84;
        inline static var GL_ATTACHED_SHADERS                                             = 0x8B85;
        inline static var GL_ACTIVE_UNIFORMS                                              = 0x8B86;
        inline static var GL_ACTIVE_UNIFORM_MAX_LENGTH                                    = 0x8B87;
        inline static var GL_SHADER_SOURCE_LENGTH                                         = 0x8B88;
        inline static var GL_ACTIVE_ATTRIBUTES                                            = 0x8B89;
        inline static var GL_ACTIVE_ATTRIBUTE_MAX_LENGTH                                  = 0x8B8A;
        inline static var GL_FRAGMENT_SHADER_DERIVATIVE_HINT                              = 0x8B8B;
        inline static var GL_SHADING_LANGUAGE_VERSION                                     = 0x8B8C;
        inline static var GL_CURRENT_PROGRAM                                              = 0x8B8D;
        inline static var GL_POINT_SPRITE_COORD_ORIGIN                                    = 0x8CA0;
        inline static var GL_LOWER_LEFT                                                   = 0x8CA1;
        inline static var GL_UPPER_LEFT                                                   = 0x8CA2;
        inline static var GL_STENCIL_BACK_REF                                             = 0x8CA3;
        inline static var GL_STENCIL_BACK_VALUE_MASK                                      = 0x8CA4;
        inline static var GL_STENCIL_BACK_WRITEMASK                                       = 0x8CA5;


    //GL 2.0 functions

        @:native('glAttachShader')
        static function glAttachShader(program:UInt, shader:UInt) : Void;

        @:native('glBindAttribLocation')
        static function glBindAttribLocation(program:UInt, index:UInt, name:String) : Void;

        @:native('glBlendEquationSeparate')
        static function glBlendEquationSeparate(modeRGB:Int, modeAlpha:Int) : Void;

        @:native('glCompileShader')
        static function glCompileShader(shader:UInt) : Void;

        @:native('glCreateProgram')
        static function glCreateProgram() : UInt;

        @:native('glCreateShader')
        static function glCreateShader(type:Int) : UInt;

        @:native('glDeleteProgram')
        static function glDeleteProgram(program:UInt) : Void;

        @:native('glDeleteShader')
        static function glDeleteShader(shader:UInt) : Void;

        @:native('glDetachShader')
        static function glDetachShader(program:UInt, shader:UInt) : Void;

        @:native('glDisableVertexAttribArray')
        static function glDisableVertexAttribArray(index:UInt) : Void;

        @:native('glEnableVertexAttribArray')
        static function glEnableVertexAttribArray(index:UInt) : Void;

        @:native('glGetAttribLocation')
        static function glGetAttribLocation(program:UInt, name:String) : Int;

        @:native('glGetUniformLocation')
        static function glGetUniformLocation(program:UInt, name:String) : Int;

        @:native('glIsProgram')
        static function glIsProgram(program:UInt) : Bool;

        @:native('glIsShader')
        static function glIsShader(shader:UInt) : Bool;

        @:native('glLinkProgram')
        static function glLinkProgram(program:UInt) : Void;

        @:native('glStencilFuncSeparate')
        static function glStencilFuncSeparate(frontfunc:Int, backfunc:Int, ref:Int, mask:UInt) : Void;

        @:native('glStencilMaskSeparate')
        static function glStencilMaskSeparate(face:Int, mask:UInt) : Void;

        @:native('glStencilOpSeparate')
        static function glStencilOpSeparate(face:Int, sfail:Int, dpfail:Int, dppass:Int) : Void;

        @:native('glUniform1f')
        static function glUniform1f(location:Int, v0:cpp.Float32) : Void;

        @:native('glUniform1i')
        static function glUniform1i(location:Int, v0:Int) : Void;

        @:native('glUniform2f')
        static function glUniform2f(location:Int, v0:cpp.Float32, v1:cpp.Float32) : Void;

        @:native('glUniform2i')
        static function glUniform2i(location:Int, v0:Int, v1:Int) : Void;

        @:native('glUniform3f')
        static function glUniform3f(location:Int, v0:cpp.Float32, v1:cpp.Float32, v2:cpp.Float32) : Void;

        @:native('glUniform3i')
        static function glUniform3i(location:Int, v0:Int, v1:Int, v2:Int) : Void;

        @:native('glUniform4f')
        static function glUniform4f(location:Int, v0:cpp.Float32, v1:cpp.Float32, v2:cpp.Float32, v3:cpp.Float32) : Void;

        @:native('glUniform4i')
        static function glUniform4i(location:Int, v0:Int, v1:Int, v2:Int, v3:Int) : Void;

        @:native('glUseProgram')
        static function glUseProgram(program:UInt) : Void;

        @:native('glValidateProgram')
        static function glValidateProgram(program:UInt) : Void;

        @:native('glVertexAttrib1d')
        static function glVertexAttrib1d(index:UInt, x:cpp.Float64) : Void;

        @:native('glVertexAttrib1f')
        static function glVertexAttrib1f(index:UInt, x:cpp.Float32) : Void;

        @:native('glVertexAttrib1s')
        static function glVertexAttrib1s(index:UInt, x:Int) : Void;

        @:native('glVertexAttrib2d')
        static function glVertexAttrib2d(index:UInt, x:cpp.Float64, y:cpp.Float64) : Void;

        @:native('glVertexAttrib2f')
        static function glVertexAttrib2f(index:UInt, x:cpp.Float32, y:cpp.Float32) : Void;

        @:native('glVertexAttrib2s')
        static function glVertexAttrib2s(index:UInt, x:Int, y:Int) : Void;

        @:native('glVertexAttrib3d')
        static function glVertexAttrib3d(index:UInt, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glVertexAttrib3f')
        static function glVertexAttrib3f(index:UInt, x:cpp.Float32, y:cpp.Float32, z:cpp.Float32) : Void;

        @:native('glVertexAttrib3s')
        static function glVertexAttrib3s(index:UInt, x:Int, y:Int, z:Int) : Void;

        @:native('glVertexAttrib4Nub')
        static function glVertexAttrib4Nub(index:UInt, x:cpp.UInt8, y:cpp.UInt8, z:cpp.UInt8, w:cpp.UInt8) : Void;

        @:native('glVertexAttrib4d')
        static function glVertexAttrib4d(index:UInt, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64, w:cpp.Float64) : Void;

        @:native('glVertexAttrib4f')
        static function glVertexAttrib4f(index:UInt, x:cpp.Float32, y:cpp.Float32, z:cpp.Float32, w:cpp.Float32) : Void;

        @:native('glVertexAttrib4s')
        static function glVertexAttrib4s(index:UInt, x:Int, y:Int, z:Int, w:Int) : Void;


        inline static function glDrawBuffers(n:Int, bufs:Array<Int>) : Void
          { untyped __cpp__("glDrawBuffers({0}, (const GLenum*)&({1}[0]))", n, bufs); }

        inline static function glGetProgramiv(program:UInt, pname:Int, param:Array<Int>) : Void
          { untyped __cpp__("glGetProgramiv({0}, {1}, (GLint*)&({2}[0]))", program, pname, param); }

        inline static function glGetShaderiv(shader:UInt, pname:Int, param:Array<Int>) : Void
          { untyped __cpp__("glGetShaderiv({0}, {1}, (GLint*)&({2}[0]))", shader, pname, param); }

        inline static function glGetUniformfv(program:UInt, location:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetUniformfv({0}, {1}, (GLfloat*)&({2}[0]))", program, location, params); }

        inline static function glGetUniformiv(program:UInt, location:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetUniformiv({0}, {1}, (GLint*)&({2}[0]))", program, location, params); }

        inline static function glGetVertexAttribdv(index:UInt, pname:Int, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetVertexAttribdv({0}, {1}, (GLdouble*)&({2}[0]))", index, pname, params); }

        inline static function glGetVertexAttribfv(index:UInt, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetVertexAttribfv({0}, {1}, (GLfloat*)&({2}[0]))", index, pname, params); }

        inline static function glGetVertexAttribiv(index:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetVertexAttribiv({0}, {1}, (GLint*)&({2}[0]))", index, pname, params); }

        inline static function glUniform1fv(location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniform1fv({0}, {1}, (const GLfloat*)&({2}[0]))", location, count, value); }

        inline static function glUniform1iv(location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glUniform1iv({0}, {1}, (const GLint*)&({2}[0]))", location, count, value); }

        inline static function glUniform2fv(location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniform2fv({0}, {1}, (const GLfloat*)&({2}[0]))", location, count, value); }

        inline static function glUniform2iv(location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glUniform2iv({0}, {1}, (const GLint*)&({2}[0]))", location, count, value); }

        inline static function glUniform3fv(location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniform3fv({0}, {1}, (const GLfloat*)&({2}[0]))", location, count, value); }

        inline static function glUniform3iv(location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glUniform3iv({0}, {1}, (const GLint*)&({2}[0]))", location, count, value); }

        inline static function glUniform4fv(location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniform4fv({0}, {1}, (const GLfloat*)&({2}[0]))", location, count, value); }

        inline static function glUniform4iv(location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glUniform4iv({0}, {1}, (const GLint*)&({2}[0]))", location, count, value); }

        inline static function glUniformMatrix2fv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix2fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix3fv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix3fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix4fv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix4fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }

        inline static function glVertexAttrib1dv(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttrib1dv({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib1fv(index:UInt, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glVertexAttrib1fv({0}, (const GLfloat*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib1sv(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib1sv({0}, (const GLshort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib2dv(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttrib2dv({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib2fv(index:UInt, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glVertexAttrib2fv({0}, (const GLfloat*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib2sv(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib2sv({0}, (const GLshort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib3dv(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttrib3dv({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib3fv(index:UInt, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glVertexAttrib3fv({0}, (const GLfloat*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib3sv(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib3sv({0}, (const GLshort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4Nbv(index:UInt, v:Array<cpp.Int8>) : Void
          { untyped __cpp__("glVertexAttrib4Nbv({0}, (const GLbyte*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4Niv(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib4Niv({0}, (const GLint*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4Nsv(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib4Nsv({0}, (const GLshort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4Nubv(index:UInt, v:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glVertexAttrib4Nubv({0}, (const GLubyte*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4Nuiv(index:UInt, v:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttrib4Nuiv({0}, (const GLuint*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4Nusv(index:UInt, v:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttrib4Nusv({0}, (const GLushort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4bv(index:UInt, v:Array<cpp.Int8>) : Void
          { untyped __cpp__("glVertexAttrib4bv({0}, (const GLbyte*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4dv(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttrib4dv({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4fv(index:UInt, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glVertexAttrib4fv({0}, (const GLfloat*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4iv(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib4iv({0}, (const GLint*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4sv(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib4sv({0}, (const GLshort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4ubv(index:UInt, v:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glVertexAttrib4ubv({0}, (const GLubyte*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4uiv(index:UInt, v:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttrib4uiv({0}, (const GLuint*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4usv(index:UInt, v:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttrib4usv({0}, (const GLushort*)&({1}[0]))", index, v); }

        inline static function glVertexAttribPointer(index:UInt, size:Int, type:Int, normalized:Bool, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glVertexAttribPointer({0}, {1}, {2}, {3}, {4}, (const void*)&({5}[0]))", index, size, type, normalized, stride, pointer); }



    // TODO functions

            
        // inline static function glGetActiveAttrib(program:UInt, index:UInt, maxLength:Int, length:GLsizei*, size:Array<Int>, type:GLenum*, name:String) : Void
        // { untyped __cpp__("glGetActiveAttrib({0}, {1}, {2}, {3}, (GLint*)&({4}[0]), {5}, {6})", program, index, maxLength, length, size, type, name); }
            
        // inline static function glGetActiveUniform(program:UInt, index:UInt, maxLength:Int, length:GLsizei*, size:Array<Int>, type:GLenum*, name:String) : Void
        // { untyped __cpp__("glGetActiveUniform({0}, {1}, {2}, {3}, (GLint*)&({4}[0]), {5}, {6})", program, index, maxLength, length, size, type, name); }
            
        // inline static function glGetAttachedShaders(program:UInt, maxCount:Int, count:GLsizei*, shaders:Array<UInt>) : Void
        // { untyped __cpp__("glGetAttachedShaders({0}, {1}, {2}, (GLuint*)&({3}[0]))", program, maxCount, count, shaders); }
            
        // @:native('glGetProgramInfoLog')
        // static function glGetProgramInfoLog(program:UInt, bufSize:Int, length:GLsizei*, infoLog:String) : Void;
            
        // @:native('glGetShaderInfoLog')
        // static function glGetShaderInfoLog(shader:UInt, bufSize:Int, length:GLsizei*, infoLog:String) : Void;
            
        // @:native('glGetShaderSource')
        // static function glGetShaderSource(obj:UInt, maxLength:Int, length:GLsizei*, source:String) : Void;
            
        // @:native('glGetVertexAttribPointerv')
        // static function glGetVertexAttribPointerv(index:UInt, pname:Int, pointer:void**) : Void;
            
        // inline static function glShaderSource(shader:UInt, count:Int, string:const GLchar *const*, length:Array<Int>) : Void
        // { untyped __cpp__("glShaderSource({0}, {1}, {2}, (const GLint*)&({3}[0]))", shader, count, string, length); }


//GL 2.1

    //GL 2.1 defines

        inline static var GL_CURRENT_RASTER_SECONDARY_COLOR                               = 0x845F;
        inline static var GL_PIXEL_PACK_BUFFER                                            = 0x88EB;
        inline static var GL_PIXEL_UNPACK_BUFFER                                          = 0x88EC;
        inline static var GL_PIXEL_PACK_BUFFER_BINDING                                    = 0x88ED;
        inline static var GL_PIXEL_UNPACK_BUFFER_BINDING                                  = 0x88EF;
        inline static var GL_FLOAT_MAT2x3                                                 = 0x8B65;
        inline static var GL_FLOAT_MAT2x4                                                 = 0x8B66;
        inline static var GL_FLOAT_MAT3x2                                                 = 0x8B67;
        inline static var GL_FLOAT_MAT3x4                                                 = 0x8B68;
        inline static var GL_FLOAT_MAT4x2                                                 = 0x8B69;
        inline static var GL_FLOAT_MAT4x3                                                 = 0x8B6A;
        inline static var GL_SRGB                                                         = 0x8C40;
        inline static var GL_SRGB8                                                        = 0x8C41;
        inline static var GL_SRGB_ALPHA                                                   = 0x8C42;
        inline static var GL_SRGB8_ALPHA8                                                 = 0x8C43;
        inline static var GL_SLUMINANCE_ALPHA                                             = 0x8C44;
        inline static var GL_SLUMINANCE8_ALPHA8                                           = 0x8C45;
        inline static var GL_SLUMINANCE                                                   = 0x8C46;
        inline static var GL_SLUMINANCE8                                                  = 0x8C47;
        inline static var GL_COMPRESSED_SRGB                                              = 0x8C48;
        inline static var GL_COMPRESSED_SRGB_ALPHA                                        = 0x8C49;
        inline static var GL_COMPRESSED_SLUMINANCE                                        = 0x8C4A;
        inline static var GL_COMPRESSED_SLUMINANCE_ALPHA                                  = 0x8C4B;


    //GL 2.1 functions


        inline static function glUniformMatrix2x3fv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix2x3fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix2x4fv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix2x4fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix3x2fv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix3x2fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix3x4fv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix3x4fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix4x2fv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix4x2fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix4x3fv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix4x3fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }




//GL 3.0

    //GL 3.0 defines

        inline static var GL_CLIP_DISTANCE0                                               = GL_CLIP_PLANE0;
        inline static var GL_CLIP_DISTANCE1                                               = GL_CLIP_PLANE1;
        inline static var GL_CLIP_DISTANCE2                                               = GL_CLIP_PLANE2;
        inline static var GL_CLIP_DISTANCE3                                               = GL_CLIP_PLANE3;
        inline static var GL_CLIP_DISTANCE4                                               = GL_CLIP_PLANE4;
        inline static var GL_CLIP_DISTANCE5                                               = GL_CLIP_PLANE5;
        inline static var GL_COMPARE_REF_TO_TEXTURE                                       = GL_COMPARE_R_TO_TEXTURE_ARB;
        inline static var GL_MAX_CLIP_DISTANCES                                           = GL_MAX_CLIP_PLANES;
        inline static var GL_MAX_VARYING_COMPONENTS                                       = GL_MAX_VARYING_FLOATS;
        inline static var GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT                          = 0x0001;
        inline static var GL_MAJOR_VERSION                                                = 0x821B;
        inline static var GL_MINOR_VERSION                                                = 0x821C;
        inline static var GL_NUM_EXTENSIONS                                               = 0x821D;
        inline static var GL_CONTEXT_FLAGS                                                = 0x821E;
        inline static var GL_DEPTH_BUFFER                                                 = 0x8223;
        inline static var GL_STENCIL_BUFFER                                               = 0x8224;
        inline static var GL_RGBA32F                                                      = 0x8814;
        inline static var GL_RGB32F                                                       = 0x8815;
        inline static var GL_RGBA16F                                                      = 0x881A;
        inline static var GL_RGB16F                                                       = 0x881B;
        inline static var GL_VERTEX_ATTRIB_ARRAY_INTEGER                                  = 0x88FD;
        inline static var GL_MAX_ARRAY_TEXTURE_LAYERS                                     = 0x88FF;
        inline static var GL_MIN_PROGRAM_TEXEL_OFFSET                                     = 0x8904;
        inline static var GL_MAX_PROGRAM_TEXEL_OFFSET                                     = 0x8905;
        inline static var GL_CLAMP_VERTEX_COLOR                                           = 0x891A;
        inline static var GL_CLAMP_FRAGMENT_COLOR                                         = 0x891B;
        inline static var GL_CLAMP_READ_COLOR                                             = 0x891C;
        inline static var GL_FIXED_ONLY                                                   = 0x891D;
        inline static var GL_TEXTURE_RED_TYPE                                             = 0x8C10;
        inline static var GL_TEXTURE_GREEN_TYPE                                           = 0x8C11;
        inline static var GL_TEXTURE_BLUE_TYPE                                            = 0x8C12;
        inline static var GL_TEXTURE_ALPHA_TYPE                                           = 0x8C13;
        inline static var GL_TEXTURE_LUMINANCE_TYPE                                       = 0x8C14;
        inline static var GL_TEXTURE_INTENSITY_TYPE                                       = 0x8C15;
        inline static var GL_TEXTURE_DEPTH_TYPE                                           = 0x8C16;
        inline static var GL_TEXTURE_1D_ARRAY                                             = 0x8C18;
        inline static var GL_PROXY_TEXTURE_1D_ARRAY                                       = 0x8C19;
        inline static var GL_TEXTURE_2D_ARRAY                                             = 0x8C1A;
        inline static var GL_PROXY_TEXTURE_2D_ARRAY                                       = 0x8C1B;
        inline static var GL_TEXTURE_BINDING_1D_ARRAY                                     = 0x8C1C;
        inline static var GL_TEXTURE_BINDING_2D_ARRAY                                     = 0x8C1D;
        inline static var GL_R11F_G11F_B10F                                               = 0x8C3A;
        inline static var GL_UNSIGNED_INT_10F_11F_11F_REV                                 = 0x8C3B;
        inline static var GL_RGB9_E5                                                      = 0x8C3D;
        inline static var GL_UNSIGNED_INT_5_9_9_9_REV                                     = 0x8C3E;
        inline static var GL_TEXTURE_SHARED_SIZE                                          = 0x8C3F;
        inline static var GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH                        = 0x8C76;
        inline static var GL_TRANSFORM_FEEDBACK_BUFFER_MODE                               = 0x8C7F;
        inline static var GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS                   = 0x8C80;
        inline static var GL_TRANSFORM_FEEDBACK_VARYINGS                                  = 0x8C83;
        inline static var GL_TRANSFORM_FEEDBACK_BUFFER_START                              = 0x8C84;
        inline static var GL_TRANSFORM_FEEDBACK_BUFFER_SIZE                               = 0x8C85;
        inline static var GL_PRIMITIVES_GENERATED                                         = 0x8C87;
        inline static var GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN                        = 0x8C88;
        inline static var GL_RASTERIZER_DISCARD                                           = 0x8C89;
        inline static var GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS                = 0x8C8A;
        inline static var GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS                      = 0x8C8B;
        inline static var GL_INTERLEAVED_ATTRIBS                                          = 0x8C8C;
        inline static var GL_SEPARATE_ATTRIBS                                             = 0x8C8D;
        inline static var GL_TRANSFORM_FEEDBACK_BUFFER                                    = 0x8C8E;
        inline static var GL_TRANSFORM_FEEDBACK_BUFFER_BINDING                            = 0x8C8F;
        inline static var GL_RGBA32UI                                                     = 0x8D70;
        inline static var GL_RGB32UI                                                      = 0x8D71;
        inline static var GL_RGBA16UI                                                     = 0x8D76;
        inline static var GL_RGB16UI                                                      = 0x8D77;
        inline static var GL_RGBA8UI                                                      = 0x8D7C;
        inline static var GL_RGB8UI                                                       = 0x8D7D;
        inline static var GL_RGBA32I                                                      = 0x8D82;
        inline static var GL_RGB32I                                                       = 0x8D83;
        inline static var GL_RGBA16I                                                      = 0x8D88;
        inline static var GL_RGB16I                                                       = 0x8D89;
        inline static var GL_RGBA8I                                                       = 0x8D8E;
        inline static var GL_RGB8I                                                        = 0x8D8F;
        inline static var GL_RED_INTEGER                                                  = 0x8D94;
        inline static var GL_GREEN_INTEGER                                                = 0x8D95;
        inline static var GL_BLUE_INTEGER                                                 = 0x8D96;
        inline static var GL_ALPHA_INTEGER                                                = 0x8D97;
        inline static var GL_RGB_INTEGER                                                  = 0x8D98;
        inline static var GL_RGBA_INTEGER                                                 = 0x8D99;
        inline static var GL_BGR_INTEGER                                                  = 0x8D9A;
        inline static var GL_BGRA_INTEGER                                                 = 0x8D9B;
        inline static var GL_SAMPLER_1D_ARRAY                                             = 0x8DC0;
        inline static var GL_SAMPLER_2D_ARRAY                                             = 0x8DC1;
        inline static var GL_SAMPLER_1D_ARRAY_SHADOW                                      = 0x8DC3;
        inline static var GL_SAMPLER_2D_ARRAY_SHADOW                                      = 0x8DC4;
        inline static var GL_SAMPLER_CUBE_SHADOW                                          = 0x8DC5;
        inline static var GL_UNSIGNED_INT_VEC2                                            = 0x8DC6;
        inline static var GL_UNSIGNED_INT_VEC3                                            = 0x8DC7;
        inline static var GL_UNSIGNED_INT_VEC4                                            = 0x8DC8;
        inline static var GL_INT_SAMPLER_1D                                               = 0x8DC9;
        inline static var GL_INT_SAMPLER_2D                                               = 0x8DCA;
        inline static var GL_INT_SAMPLER_3D                                               = 0x8DCB;
        inline static var GL_INT_SAMPLER_CUBE                                             = 0x8DCC;
        inline static var GL_INT_SAMPLER_1D_ARRAY                                         = 0x8DCE;
        inline static var GL_INT_SAMPLER_2D_ARRAY                                         = 0x8DCF;
        inline static var GL_UNSIGNED_INT_SAMPLER_1D                                      = 0x8DD1;
        inline static var GL_UNSIGNED_INT_SAMPLER_2D                                      = 0x8DD2;
        inline static var GL_UNSIGNED_INT_SAMPLER_3D                                      = 0x8DD3;
        inline static var GL_UNSIGNED_INT_SAMPLER_CUBE                                    = 0x8DD4;
        inline static var GL_UNSIGNED_INT_SAMPLER_1D_ARRAY                                = 0x8DD6;
        inline static var GL_UNSIGNED_INT_SAMPLER_2D_ARRAY                                = 0x8DD7;
        inline static var GL_QUERY_WAIT                                                   = 0x8E13;
        inline static var GL_QUERY_NO_WAIT                                                = 0x8E14;
        inline static var GL_QUERY_BY_REGION_WAIT                                         = 0x8E15;
        inline static var GL_QUERY_BY_REGION_NO_WAIT                                      = 0x8E16;


    //GL 3.0 functions

        @:native('glBeginConditionalRender')
        static function glBeginConditionalRender(id:UInt, mode:Int) : Void;

        @:native('glBeginTransformFeedback')
        static function glBeginTransformFeedback(primitiveMode:Int) : Void;

        @:native('glBindFragDataLocation')
        static function glBindFragDataLocation(program:UInt, colorNumber:UInt, name:String) : Void;

        @:native('glClampColor')
        static function glClampColor(target:Int, clamp:Int) : Void;

        @:native('glClearBufferfi')
        static function glClearBufferfi(buffer:Int, drawBuffer:Int, depth:cpp.Float32, stencil:Int) : Void;

        @:native('glColorMaski')
        static function glColorMaski(buf:UInt, red:Bool, green:Bool, blue:Bool, alpha:Bool) : Void;

        @:native('glDisablei')
        static function glDisablei(cap:Int, index:UInt) : Void;

        @:native('glEnablei')
        static function glEnablei(cap:Int, index:UInt) : Void;

        @:native('glEndConditionalRender')
        static function glEndConditionalRender() : Void;

        @:native('glEndTransformFeedback')
        static function glEndTransformFeedback() : Void;

        @:native('glGetFragDataLocation')
        static function glGetFragDataLocation(program:UInt, name:String) : Int;

        @:native('glIsEnabledi')
        static function glIsEnabledi(cap:Int, index:UInt) : Bool;

        @:native('glUniform1ui')
        static function glUniform1ui(location:Int, v0:UInt) : Void;

        @:native('glUniform2ui')
        static function glUniform2ui(location:Int, v0:UInt, v1:UInt) : Void;

        @:native('glUniform3ui')
        static function glUniform3ui(location:Int, v0:UInt, v1:UInt, v2:UInt) : Void;

        @:native('glUniform4ui')
        static function glUniform4ui(location:Int, v0:UInt, v1:UInt, v2:UInt, v3:UInt) : Void;

        @:native('glVertexAttribI1i')
        static function glVertexAttribI1i(index:UInt, v0:Int) : Void;

        @:native('glVertexAttribI1ui')
        static function glVertexAttribI1ui(index:UInt, v0:UInt) : Void;

        @:native('glVertexAttribI2i')
        static function glVertexAttribI2i(index:UInt, v0:Int, v1:Int) : Void;

        @:native('glVertexAttribI2ui')
        static function glVertexAttribI2ui(index:UInt, v0:UInt, v1:UInt) : Void;

        @:native('glVertexAttribI3i')
        static function glVertexAttribI3i(index:UInt, v0:Int, v1:Int, v2:Int) : Void;

        @:native('glVertexAttribI3ui')
        static function glVertexAttribI3ui(index:UInt, v0:UInt, v1:UInt, v2:UInt) : Void;

        @:native('glVertexAttribI4i')
        static function glVertexAttribI4i(index:UInt, v0:Int, v1:Int, v2:Int, v3:Int) : Void;

        @:native('glVertexAttribI4ui')
        static function glVertexAttribI4ui(index:UInt, v0:UInt, v1:UInt, v2:UInt, v3:UInt) : Void;


        inline static function glClearBufferfv(buffer:Int, drawBuffer:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glClearBufferfv({0}, {1}, (const GLfloat*)&({2}[0]))", buffer, drawBuffer, value); }

        inline static function glClearBufferiv(buffer:Int, drawBuffer:Int, value:Array<Int>) : Void
          { untyped __cpp__("glClearBufferiv({0}, {1}, (const GLint*)&({2}[0]))", buffer, drawBuffer, value); }

        inline static function glClearBufferuiv(buffer:Int, drawBuffer:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glClearBufferuiv({0}, {1}, (const GLuint*)&({2}[0]))", buffer, drawBuffer, value); }

        inline static function glGetBooleani_v(pname:Int, index:UInt, data:Array<Bool>) : Void
          { untyped __cpp__("glGetBooleani_v({0}, {1}, (GLboolean*)&({2}[0]))", pname, index, data); }

        inline static function glGetStringi(name:Int, index:UInt) : String
          { untyped __cpp__("const char* __val = (const char*)glGetStringi({0},{1}); if(!__val)__val=\"\"", name,index);
            return untyped __cpp__("::String(__val)"); }

        inline static function glGetTexParameterIiv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetTexParameterIiv({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }

        inline static function glGetTexParameterIuiv(target:Int, pname:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glGetTexParameterIuiv({0}, {1}, (GLuint*)&({2}[0]))", target, pname, params); }

        inline static function glGetUniformuiv(program:UInt, location:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glGetUniformuiv({0}, {1}, (GLuint*)&({2}[0]))", program, location, params); }

        inline static function glGetVertexAttribIiv(index:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetVertexAttribIiv({0}, {1}, (GLint*)&({2}[0]))", index, pname, params); }

        inline static function glGetVertexAttribIuiv(index:UInt, pname:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glGetVertexAttribIuiv({0}, {1}, (GLuint*)&({2}[0]))", index, pname, params); }

        inline static function glTexParameterIiv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glTexParameterIiv({0}, {1}, (const GLint*)&({2}[0]))", target, pname, params); }

        inline static function glTexParameterIuiv(target:Int, pname:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glTexParameterIuiv({0}, {1}, (const GLuint*)&({2}[0]))", target, pname, params); }

        inline static function glUniform1uiv(location:Int, count:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glUniform1uiv({0}, {1}, (const GLuint*)&({2}[0]))", location, count, value); }

        inline static function glUniform2uiv(location:Int, count:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glUniform2uiv({0}, {1}, (const GLuint*)&({2}[0]))", location, count, value); }

        inline static function glUniform3uiv(location:Int, count:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glUniform3uiv({0}, {1}, (const GLuint*)&({2}[0]))", location, count, value); }

        inline static function glUniform4uiv(location:Int, count:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glUniform4uiv({0}, {1}, (const GLuint*)&({2}[0]))", location, count, value); }

        inline static function glVertexAttribI1iv(index:UInt, v0:Array<Int>) : Void
          { untyped __cpp__("glVertexAttribI1iv({0}, (const GLint*)&({1}[0]))", index, v0); }

        inline static function glVertexAttribI1uiv(index:UInt, v0:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttribI1uiv({0}, (const GLuint*)&({1}[0]))", index, v0); }

        inline static function glVertexAttribI2iv(index:UInt, v0:Array<Int>) : Void
          { untyped __cpp__("glVertexAttribI2iv({0}, (const GLint*)&({1}[0]))", index, v0); }

        inline static function glVertexAttribI2uiv(index:UInt, v0:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttribI2uiv({0}, (const GLuint*)&({1}[0]))", index, v0); }

        inline static function glVertexAttribI3iv(index:UInt, v0:Array<Int>) : Void
          { untyped __cpp__("glVertexAttribI3iv({0}, (const GLint*)&({1}[0]))", index, v0); }

        inline static function glVertexAttribI3uiv(index:UInt, v0:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttribI3uiv({0}, (const GLuint*)&({1}[0]))", index, v0); }

        inline static function glVertexAttribI4bv(index:UInt, v0:Array<cpp.Int8>) : Void
          { untyped __cpp__("glVertexAttribI4bv({0}, (const GLbyte*)&({1}[0]))", index, v0); }

        inline static function glVertexAttribI4iv(index:UInt, v0:Array<Int>) : Void
          { untyped __cpp__("glVertexAttribI4iv({0}, (const GLint*)&({1}[0]))", index, v0); }

        inline static function glVertexAttribI4sv(index:UInt, v0:Array<Int>) : Void
          { untyped __cpp__("glVertexAttribI4sv({0}, (const GLshort*)&({1}[0]))", index, v0); }

        inline static function glVertexAttribI4ubv(index:UInt, v0:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glVertexAttribI4ubv({0}, (const GLubyte*)&({1}[0]))", index, v0); }

        inline static function glVertexAttribI4uiv(index:UInt, v0:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttribI4uiv({0}, (const GLuint*)&({1}[0]))", index, v0); }

        inline static function glVertexAttribI4usv(index:UInt, v0:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttribI4usv({0}, (const GLushort*)&({1}[0]))", index, v0); }



    // TODO functions

            
        // @:native('glGetTransformFeedbackVarying')
        // static function glGetTransformFeedbackVarying(program:UInt, index:UInt, bufSize:Int, length:GLsizei *, size:GLsizei *, type:GLenum *, name:GLchar *) : Void;
            
        // @:native('glTransformFeedbackVaryings')
        // static function glTransformFeedbackVaryings(program:UInt, count:Int, varyings:const GLchar *const*, bufferMode:Int) : Void;
            
        // @:native('glVertexAttribIPointer')
        // static function glVertexAttribIPointer(index:UInt, size:Int, type:Int, stride:Int, void*pointer:const) : Void;


//GL 3.1

    //GL 3.1 defines

        inline static var GL_TEXTURE_RECTANGLE                                            = 0x84F5;
        inline static var GL_TEXTURE_BINDING_RECTANGLE                                    = 0x84F6;
        inline static var GL_PROXY_TEXTURE_RECTANGLE                                      = 0x84F7;
        inline static var GL_MAX_RECTANGLE_TEXTURE_SIZE                                   = 0x84F8;
        inline static var GL_SAMPLER_2D_RECT                                              = 0x8B63;
        inline static var GL_SAMPLER_2D_RECT_SHADOW                                       = 0x8B64;
        inline static var GL_TEXTURE_BUFFER                                               = 0x8C2A;
        inline static var GL_MAX_TEXTURE_BUFFER_SIZE                                      = 0x8C2B;
        inline static var GL_TEXTURE_BINDING_BUFFER                                       = 0x8C2C;
        inline static var GL_TEXTURE_BUFFER_DATA_STORE_BINDING                            = 0x8C2D;
        inline static var GL_TEXTURE_BUFFER_FORMAT                                        = 0x8C2E;
        inline static var GL_SAMPLER_BUFFER                                               = 0x8DC2;
        inline static var GL_INT_SAMPLER_2D_RECT                                          = 0x8DCD;
        inline static var GL_INT_SAMPLER_BUFFER                                           = 0x8DD0;
        inline static var GL_UNSIGNED_INT_SAMPLER_2D_RECT                                 = 0x8DD5;
        inline static var GL_UNSIGNED_INT_SAMPLER_BUFFER                                  = 0x8DD8;
        inline static var GL_RED_SNORM                                                    = 0x8F90;
        inline static var GL_RG_SNORM                                                     = 0x8F91;
        inline static var GL_RGB_SNORM                                                    = 0x8F92;
        inline static var GL_RGBA_SNORM                                                   = 0x8F93;
        inline static var GL_R8_SNORM                                                     = 0x8F94;
        inline static var GL_RG8_SNORM                                                    = 0x8F95;
        inline static var GL_RGB8_SNORM                                                   = 0x8F96;
        inline static var GL_RGBA8_SNORM                                                  = 0x8F97;
        inline static var GL_R16_SNORM                                                    = 0x8F98;
        inline static var GL_RG16_SNORM                                                   = 0x8F99;
        inline static var GL_RGB16_SNORM                                                  = 0x8F9A;
        inline static var GL_RGBA16_SNORM                                                 = 0x8F9B;
        inline static var GL_SIGNED_NORMALIZED                                            = 0x8F9C;
        inline static var GL_PRIMITIVE_RESTART                                            = 0x8F9D;
        inline static var GL_PRIMITIVE_RESTART_INDEX                                      = 0x8F9E;
        inline static var GL_BUFFER_ACCESS_FLAGS                                          = 0x911F;
        inline static var GL_BUFFER_MAP_LENGTH                                            = 0x9120;
        inline static var GL_BUFFER_MAP_OFFSET                                            = 0x9121;


    //GL 3.1 functions

        @:native('glDrawArraysInstanced')
        static function glDrawArraysInstanced(mode:Int, first:Int, count:Int, primcount:Int) : Void;

        @:native('glPrimitiveRestartIndex')
        static function glPrimitiveRestartIndex(buffer:UInt) : Void;

        @:native('glTexBuffer')
        static function glTexBuffer(target:Int, internalFormat:Int, buffer:UInt) : Void;


        inline static function glDrawElementsInstanced(mode:Int, count:Int, type:Int, indices:BytesData, primcount:Int) : Void
          { untyped __cpp__("glDrawElementsInstanced({0}, {1}, {2}, (const void*)&({3}[0]), {4})", mode, count, type, indices, primcount); }




//GL 3.2

    //GL 3.2 defines

        inline static var GL_CONTEXT_CORE_PROFILE_BIT                                     = 0x00000001;
        inline static var GL_CONTEXT_COMPATIBILITY_PROFILE_BIT                            = 0x00000002;
        inline static var GL_LINES_ADJACENCY                                              = 0x000A;
        inline static var GL_LINE_STRIP_ADJACENCY                                         = 0x000B;
        inline static var GL_TRIANGLES_ADJACENCY                                          = 0x000C;
        inline static var GL_TRIANGLE_STRIP_ADJACENCY                                     = 0x000D;
        inline static var GL_PROGRAM_POINT_SIZE                                           = 0x8642;
        inline static var GL_GEOMETRY_VERTICES_OUT                                        = 0x8916;
        inline static var GL_GEOMETRY_INPUT_TYPE                                          = 0x8917;
        inline static var GL_GEOMETRY_OUTPUT_TYPE                                         = 0x8918;
        inline static var GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS                             = 0x8C29;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_LAYERED                               = 0x8DA7;
        inline static var GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS                         = 0x8DA8;
        inline static var GL_GEOMETRY_SHADER                                              = 0x8DD9;
        inline static var GL_MAX_GEOMETRY_UNIFORM_COMPONENTS                              = 0x8DDF;
        inline static var GL_MAX_GEOMETRY_OUTPUT_VERTICES                                 = 0x8DE0;
        inline static var GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS                         = 0x8DE1;
        inline static var GL_MAX_VERTEX_OUTPUT_COMPONENTS                                 = 0x9122;
        inline static var GL_MAX_GEOMETRY_INPUT_COMPONENTS                                = 0x9123;
        inline static var GL_MAX_GEOMETRY_OUTPUT_COMPONENTS                               = 0x9124;
        inline static var GL_MAX_FRAGMENT_INPUT_COMPONENTS                                = 0x9125;
        inline static var GL_CONTEXT_PROFILE_MASK                                         = 0x9126;


    //GL 3.2 functions

        @:native('glFramebufferTexture')
        static function glFramebufferTexture(target:Int, attachment:Int, texture:UInt, level:Int) : Void;




    // TODO functions

            
        // @:native('glGetBufferParameteri64v')
        // static function glGetBufferParameteri64v(target:Int, value:Int, data:GLint64 *) : Void;
            
        // @:native('glGetInteger64i_v')
        // static function glGetInteger64i_v(pname:Int, index:UInt, data:GLint64 *) : Void;


//GL 3.3

    //GL 3.3 defines

        inline static var GL_VERTEX_ATTRIB_ARRAY_DIVISOR                                  = 0x88FE;
        inline static var GL_RGB10_A2UI                                                   = 0x906F;


    //GL 3.3 functions

        @:native('glVertexAttribDivisor')
        static function glVertexAttribDivisor(index:UInt, divisor:UInt) : Void;





//GL 4.0

    //GL 4.0 defines

        inline static var GL_SAMPLE_SHADING                                               = 0x8C36;
        inline static var GL_MIN_SAMPLE_SHADING_VALUE                                     = 0x8C37;
        inline static var GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET                            = 0x8E5E;
        inline static var GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET                            = 0x8E5F;
        inline static var GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS                        = 0x8F9F;
        inline static var GL_TEXTURE_CUBE_MAP_ARRAY                                       = 0x9009;
        inline static var GL_TEXTURE_BINDING_CUBE_MAP_ARRAY                               = 0x900A;
        inline static var GL_PROXY_TEXTURE_CUBE_MAP_ARRAY                                 = 0x900B;
        inline static var GL_SAMPLER_CUBE_MAP_ARRAY                                       = 0x900C;
        inline static var GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW                                = 0x900D;
        inline static var GL_INT_SAMPLER_CUBE_MAP_ARRAY                                   = 0x900E;
        inline static var GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY                          = 0x900F;


    //GL 4.0 functions

        @:native('glBlendEquationSeparatei')
        static function glBlendEquationSeparatei(buf:UInt, modeRGB:Int, modeAlpha:Int) : Void;

        @:native('glBlendEquationi')
        static function glBlendEquationi(buf:UInt, mode:Int) : Void;

        @:native('glBlendFuncSeparatei')
        static function glBlendFuncSeparatei(buf:UInt, srcRGB:Int, dstRGB:Int, srcAlpha:Int, dstAlpha:Int) : Void;

        @:native('glBlendFunci')
        static function glBlendFunci(buf:UInt, src:Int, dst:Int) : Void;

        @:native('glMinSampleShading')
        static function glMinSampleShading(value:cpp.Float32) : Void;





//GL 4.1

//GL 4.2

    //GL 4.2 defines

        inline static var GL_COMPRESSED_RGBA_BPTC_UNORM                                   = 0x8E8C;
        inline static var GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM                             = 0x8E8D;
        inline static var GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT                             = 0x8E8E;
        inline static var GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT                           = 0x8E8F;
        inline static var GL_COPY_READ_BUFFER_BINDING                                     = 0x8F36;
        inline static var GL_COPY_WRITE_BUFFER_BINDING                                    = 0x8F37;
//GL 4.3

    //GL 4.3 defines

        inline static var GL_NUM_SHADING_LANGUAGE_VERSIONS                                = 0x82E9;
        inline static var GL_VERTEX_ATTRIB_ARRAY_LONG                                     = 0x874E;
//GL 4.4

    //GL 4.4 defines

        inline static var GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED                      = 0x8221;
        inline static var GL_MAX_VERTEX_ATTRIB_STRIDE                                     = 0x82E5;
        inline static var GL_TEXTURE_BUFFER_BINDING                                       = 0x8C2A;
//GL 4.5



    //GL 4.5 functions

        @:native('glGetGraphicsResetStatus')
        static function glGetGraphicsResetStatus() : Int;







//GL_ARB_ES2_compatibility

    // GL_ARB_ES2_compatibility defines

        inline static var GL_ARB_ES2_compatibility                                        = 1;
        inline static var GL_FIXED                                                        = 0x140C;
        inline static var GL_IMPLEMENTATION_COLOR_READ_TYPE                               = 0x8B9A;
        inline static var GL_IMPLEMENTATION_COLOR_READ_FORMAT                             = 0x8B9B;
        inline static var GL_RGB565                                                       = 0x8D62;
        inline static var GL_LOW_FLOAT                                                    = 0x8DF0;
        inline static var GL_MEDIUM_FLOAT                                                 = 0x8DF1;
        inline static var GL_HIGH_FLOAT                                                   = 0x8DF2;
        inline static var GL_LOW_INT                                                      = 0x8DF3;
        inline static var GL_MEDIUM_INT                                                   = 0x8DF4;
        inline static var GL_HIGH_INT                                                     = 0x8DF5;
        inline static var GL_SHADER_BINARY_FORMATS                                        = 0x8DF8;
        inline static var GL_NUM_SHADER_BINARY_FORMATS                                    = 0x8DF9;
        inline static var GL_SHADER_COMPILER                                              = 0x8DFA;
        inline static var GL_MAX_VERTEX_UNIFORM_VECTORS                                   = 0x8DFB;
        inline static var GL_MAX_VARYING_VECTORS                                          = 0x8DFC;
        inline static var GL_MAX_FRAGMENT_UNIFORM_VECTORS                                 = 0x8DFD;




    // GL_ARB_ES2_compatibility functions

        @:native('glClearDepthf')
        static function glClearDepthf(d:cpp.Float32) : Void;

        @:native('glDepthRangef')
        static function glDepthRangef(n:cpp.Float32, f:cpp.Float32) : Void;

        @:native('glReleaseShaderCompiler')
        static function glReleaseShaderCompiler() : Void;


        inline static function glGetShaderPrecisionFormat(shadertype:Int, precisiontype:Int, range:Array<Int>, precision:Array<Int>) : Void
          { untyped __cpp__("glGetShaderPrecisionFormat({0}, {1}, (GLint*)&({2}[0]), (GLint*)&({3}[0]))", shadertype, precisiontype, range, precision); }

        inline static function glShaderBinary(count:Int, shaders:Array<UInt>, binaryformat:Int, binary:BytesData, length:Int) : Void
          { untyped __cpp__("glShaderBinary({0}, (const GLuint*)&({1}[0]), {2}, (const void*)&({3}[0]), {4})", count, shaders, binaryformat, binary, length); }




//GL_ARB_ES3_1_compatibility

    // GL_ARB_ES3_1_compatibility defines

        inline static var GL_ARB_ES3_1_compatibility                                      = 1;




    // GL_ARB_ES3_1_compatibility functions

        @:native('glMemoryBarrierByRegion')
        static function glMemoryBarrierByRegion(barriers:Int) : Void;





//GL_ARB_ES3_compatibility

    // GL_ARB_ES3_compatibility defines

        inline static var GL_ARB_ES3_compatibility                                        = 1;
        inline static var GL_TEXTURE_IMMUTABLE_LEVELS                                     = 0x82DF;
        inline static var GL_PRIMITIVE_RESTART_FIXED_INDEX                                = 0x8D69;
        inline static var GL_ANY_SAMPLES_PASSED_CONSERVATIVE                              = 0x8D6A;
        inline static var GL_MAX_ELEMENT_INDEX                                            = 0x8D6B;
        inline static var GL_COMPRESSED_R11_EAC                                           = 0x9270;
        inline static var GL_COMPRESSED_SIGNED_R11_EAC                                    = 0x9271;
        inline static var GL_COMPRESSED_RG11_EAC                                          = 0x9272;
        inline static var GL_COMPRESSED_SIGNED_RG11_EAC                                   = 0x9273;
        inline static var GL_COMPRESSED_RGB8_ETC2                                         = 0x9274;
        inline static var GL_COMPRESSED_SRGB8_ETC2                                        = 0x9275;
        inline static var GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2                     = 0x9276;
        inline static var GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2                    = 0x9277;
        inline static var GL_COMPRESSED_RGBA8_ETC2_EAC                                    = 0x9278;
        inline static var GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC                             = 0x9279;


//GL_ARB_arrays_of_arrays

    // GL_ARB_arrays_of_arrays defines

        inline static var GL_ARB_arrays_of_arrays                                         = 1;


//GL_ARB_base_instance

    // GL_ARB_base_instance defines

        inline static var GL_ARB_base_instance                                            = 1;




    // GL_ARB_base_instance functions

        @:native('glDrawArraysInstancedBaseInstance')
        static function glDrawArraysInstancedBaseInstance(mode:Int, first:Int, count:Int, primcount:Int, baseinstance:UInt) : Void;


        inline static function glDrawElementsInstancedBaseInstance(mode:Int, count:Int, type:Int, indices:BytesData, primcount:Int, baseinstance:UInt) : Void
          { untyped __cpp__("glDrawElementsInstancedBaseInstance({0}, {1}, {2}, (const void*)&({3}[0]), {4}, {5})", mode, count, type, indices, primcount, baseinstance); }

        inline static function glDrawElementsInstancedBaseVertexBaseInstance(mode:Int, count:Int, type:Int, indices:BytesData, primcount:Int, basevertex:Int, baseinstance:UInt) : Void
          { untyped __cpp__("glDrawElementsInstancedBaseVertexBaseInstance({0}, {1}, {2}, (const void*)&({3}[0]), {4}, {5}, {6})", mode, count, type, indices, primcount, basevertex, baseinstance); }




//GL_ARB_bindless_texture

    // GL_ARB_bindless_texture defines

        inline static var GL_ARB_bindless_texture                                         = 1;
        inline static var GL_UNSIGNED_INT64_ARB                                           = 0x140F;




    // GL_ARB_bindless_texture functions

        @:native('glGetImageHandleARB')
        static function glGetImageHandleARB(texture:UInt, level:Int, layered:Bool, layer:Int, format:Int) : cpp.UInt64;

        @:native('glGetTextureHandleARB')
        static function glGetTextureHandleARB(texture:UInt) : cpp.UInt64;

        @:native('glGetTextureSamplerHandleARB')
        static function glGetTextureSamplerHandleARB(texture:UInt, sampler:UInt) : cpp.UInt64;

        @:native('glIsImageHandleResidentARB')
        static function glIsImageHandleResidentARB(handle:cpp.UInt64) : Bool;

        @:native('glIsTextureHandleResidentARB')
        static function glIsTextureHandleResidentARB(handle:cpp.UInt64) : Bool;

        @:native('glMakeImageHandleNonResidentARB')
        static function glMakeImageHandleNonResidentARB(handle:cpp.UInt64) : Void;

        @:native('glMakeImageHandleResidentARB')
        static function glMakeImageHandleResidentARB(handle:cpp.UInt64, access:Int) : Void;

        @:native('glMakeTextureHandleNonResidentARB')
        static function glMakeTextureHandleNonResidentARB(handle:cpp.UInt64) : Void;

        @:native('glMakeTextureHandleResidentARB')
        static function glMakeTextureHandleResidentARB(handle:cpp.UInt64) : Void;

        @:native('glProgramUniformHandleui64ARB')
        static function glProgramUniformHandleui64ARB(program:UInt, location:Int, value:cpp.UInt64) : Void;

        @:native('glUniformHandleui64ARB')
        static function glUniformHandleui64ARB(location:Int, value:cpp.UInt64) : Void;

        @:native('glVertexAttribL1ui64ARB')
        static function glVertexAttribL1ui64ARB(index:UInt, x:cpp.UInt64) : Void;




    // TODO functions

            
        // @:native('glGetVertexAttribLui64vARB')
        // static function glGetVertexAttribLui64vARB(index:UInt, pname:Int, params:GLuint64EXT*) : Void;
            
        // @:native('glProgramUniformHandleui64vARB')
        // static function glProgramUniformHandleui64vARB(program:UInt, location:Int, count:Int, values:const GLuint64*) : Void;
            
        // @:native('glUniformHandleui64vARB')
        // static function glUniformHandleui64vARB(location:Int, count:Int, value:const GLuint64*) : Void;
            
        // @:native('glVertexAttribL1ui64vARB')
        // static function glVertexAttribL1ui64vARB(index:UInt, v:const GLuint64EXT*) : Void;


//GL_ARB_blend_func_extended

    // GL_ARB_blend_func_extended defines

        inline static var GL_ARB_blend_func_extended                                      = 1;
        inline static var GL_SRC1_COLOR                                                   = 0x88F9;
        inline static var GL_ONE_MINUS_SRC1_COLOR                                         = 0x88FA;
        inline static var GL_ONE_MINUS_SRC1_ALPHA                                         = 0x88FB;
        inline static var GL_MAX_DUAL_SOURCE_DRAW_BUFFERS                                 = 0x88FC;




    // GL_ARB_blend_func_extended functions

        @:native('glBindFragDataLocationIndexed')
        static function glBindFragDataLocationIndexed(program:UInt, colorNumber:UInt, index:UInt, name:String) : Void;

        @:native('glGetFragDataIndex')
        static function glGetFragDataIndex(program:UInt, name:String) : Int;





//GL_ARB_buffer_storage

    // GL_ARB_buffer_storage defines

        inline static var GL_ARB_buffer_storage                                           = 1;
        inline static var GL_MAP_READ_BIT                                                 = 0x0001;
        inline static var GL_MAP_WRITE_BIT                                                = 0x0002;
        inline static var GL_MAP_PERSISTENT_BIT                                           = 0x00000040;
        inline static var GL_MAP_COHERENT_BIT                                             = 0x00000080;
        inline static var GL_DYNAMIC_STORAGE_BIT                                          = 0x0100;
        inline static var GL_CLIENT_STORAGE_BIT                                           = 0x0200;
        inline static var GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT                             = 0x00004000;
        inline static var GL_BUFFER_IMMUTABLE_STORAGE                                     = 0x821F;
        inline static var GL_BUFFER_STORAGE_FLAGS                                         = 0x8220;




    // GL_ARB_buffer_storage functions


        inline static function glBufferStorage(target:Int, size:Int, data:BytesData, flags:Int) : Void
          { untyped __cpp__("glBufferStorage({0}, {1}, (const void*)&({2}[0]), {3})", target, size, data, flags); }

        inline static function glNamedBufferStorageEXT(buffer:UInt, size:Int, data:BytesData, flags:Int) : Void
          { untyped __cpp__("glNamedBufferStorageEXT({0}, {1}, (const void*)&({2}[0]), {3})", buffer, size, data, flags); }




//GL_ARB_cl_event

    // GL_ARB_cl_event defines

        inline static var GL_ARB_cl_event                                                 = 1;
        inline static var GL_SYNC_CL_EVENT_ARB                                            = 0x8240;
        inline static var GL_SYNC_CL_EVENT_COMPLETE_ARB                                   = 0x8241;




    // GL_ARB_cl_event functions




    // TODO functions

            
        // @:native('glCreateSyncFromCLeventARB')
        // static function glCreateSyncFromCLeventARB(context:cl_context, event:cl_event, flags:Int) : GLsync;


//GL_ARB_clear_buffer_object

    // GL_ARB_clear_buffer_object defines

        inline static var GL_ARB_clear_buffer_object                                      = 1;




    // GL_ARB_clear_buffer_object functions


        inline static function glClearBufferData(target:Int, internalformat:Int, format:Int, type:Int, data:BytesData) : Void
          { untyped __cpp__("glClearBufferData({0}, {1}, {2}, {3}, (const void*)&({4}[0]))", target, internalformat, format, type, data); }

        inline static function glClearBufferSubData(target:Int, internalformat:Int, offset:Int, size:Int, format:Int, type:Int, data:BytesData) : Void
          { untyped __cpp__("glClearBufferSubData({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]))", target, internalformat, offset, size, format, type, data); }

        inline static function glClearNamedBufferDataEXT(buffer:UInt, internalformat:Int, format:Int, type:Int, data:BytesData) : Void
          { untyped __cpp__("glClearNamedBufferDataEXT({0}, {1}, {2}, {3}, (const void*)&({4}[0]))", buffer, internalformat, format, type, data); }

        inline static function glClearNamedBufferSubDataEXT(buffer:UInt, internalformat:Int, offset:Int, size:Int, format:Int, type:Int, data:BytesData) : Void
          { untyped __cpp__("glClearNamedBufferSubDataEXT({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]))", buffer, internalformat, offset, size, format, type, data); }




//GL_ARB_clear_texture

    // GL_ARB_clear_texture defines

        inline static var GL_ARB_clear_texture                                            = 1;
        inline static var GL_CLEAR_TEXTURE                                                = 0x9365;




    // GL_ARB_clear_texture functions


        inline static function glClearTexImage(texture:UInt, level:Int, format:Int, type:Int, data:BytesData) : Void
          { untyped __cpp__("glClearTexImage({0}, {1}, {2}, {3}, (const void*)&({4}[0]))", texture, level, format, type, data); }

        inline static function glClearTexSubImage(texture:UInt, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, type:Int, data:BytesData) : Void
          { untyped __cpp__("glClearTexSubImage({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, (const void*)&({10}[0]))", texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, data); }




//GL_ARB_clip_control

    // GL_ARB_clip_control defines

        inline static var GL_ARB_clip_control                                             = 1;
        inline static var GL_CLIP_ORIGIN                                                  = 0x935C;
        inline static var GL_CLIP_DEPTH_MODE                                              = 0x935D;
        inline static var GL_NEGATIVE_ONE_TO_ONE                                          = 0x935E;
        inline static var GL_ZERO_TO_ONE                                                  = 0x935F;




    // GL_ARB_clip_control functions

        @:native('glClipControl')
        static function glClipControl(origin:Int, depth:Int) : Void;





//GL_ARB_color_buffer_float

    // GL_ARB_color_buffer_float defines

        inline static var GL_ARB_color_buffer_float                                       = 1;
        inline static var GL_RGBA_FLOAT_MODE_ARB                                          = 0x8820;
        inline static var GL_CLAMP_VERTEX_COLOR_ARB                                       = 0x891A;
        inline static var GL_CLAMP_FRAGMENT_COLOR_ARB                                     = 0x891B;
        inline static var GL_CLAMP_READ_COLOR_ARB                                         = 0x891C;
        inline static var GL_FIXED_ONLY_ARB                                               = 0x891D;




    // GL_ARB_color_buffer_float functions

        @:native('glClampColorARB')
        static function glClampColorARB(target:Int, clamp:Int) : Void;





//GL_ARB_compatibility

    // GL_ARB_compatibility defines

        inline static var GL_ARB_compatibility                                            = 1;


//GL_ARB_compressed_texture_pixel_storage

    // GL_ARB_compressed_texture_pixel_storage defines

        inline static var GL_ARB_compressed_texture_pixel_storage                         = 1;
        inline static var GL_UNPACK_COMPRESSED_BLOCK_WIDTH                                = 0x9127;
        inline static var GL_UNPACK_COMPRESSED_BLOCK_HEIGHT                               = 0x9128;
        inline static var GL_UNPACK_COMPRESSED_BLOCK_DEPTH                                = 0x9129;
        inline static var GL_UNPACK_COMPRESSED_BLOCK_SIZE                                 = 0x912A;
        inline static var GL_PACK_COMPRESSED_BLOCK_WIDTH                                  = 0x912B;
        inline static var GL_PACK_COMPRESSED_BLOCK_HEIGHT                                 = 0x912C;
        inline static var GL_PACK_COMPRESSED_BLOCK_DEPTH                                  = 0x912D;
        inline static var GL_PACK_COMPRESSED_BLOCK_SIZE                                   = 0x912E;


//GL_ARB_compute_shader

    // GL_ARB_compute_shader defines

        inline static var GL_ARB_compute_shader                                           = 1;
        inline static var GL_COMPUTE_SHADER_BIT                                           = 0x00000020;
        inline static var GL_MAX_COMPUTE_SHARED_MEMORY_SIZE                               = 0x8262;
        inline static var GL_MAX_COMPUTE_UNIFORM_COMPONENTS                               = 0x8263;
        inline static var GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS                           = 0x8264;
        inline static var GL_MAX_COMPUTE_ATOMIC_COUNTERS                                  = 0x8265;
        inline static var GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS                      = 0x8266;
        inline static var GL_COMPUTE_WORK_GROUP_SIZE                                      = 0x8267;
        inline static var GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS                           = 0x90EB;
        inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER                   = 0x90EC;
        inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER           = 0x90ED;
        inline static var GL_DISPATCH_INDIRECT_BUFFER                                     = 0x90EE;
        inline static var GL_DISPATCH_INDIRECT_BUFFER_BINDING                             = 0x90EF;
        inline static var GL_COMPUTE_SHADER                                               = 0x91B9;
        inline static var GL_MAX_COMPUTE_UNIFORM_BLOCKS                                   = 0x91BB;
        inline static var GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS                              = 0x91BC;
        inline static var GL_MAX_COMPUTE_IMAGE_UNIFORMS                                   = 0x91BD;
        inline static var GL_MAX_COMPUTE_WORK_GROUP_COUNT                                 = 0x91BE;
        inline static var GL_MAX_COMPUTE_WORK_GROUP_SIZE                                  = 0x91BF;




    // GL_ARB_compute_shader functions

        @:native('glDispatchCompute')
        static function glDispatchCompute(num_groups_x:UInt, num_groups_y:UInt, num_groups_z:UInt) : Void;

        @:native('glDispatchComputeIndirect')
        static function glDispatchComputeIndirect(indirect:Int) : Void;





//GL_ARB_compute_variable_group_size

    // GL_ARB_compute_variable_group_size defines

        inline static var GL_ARB_compute_variable_group_size                              = 1;
        inline static var GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB                      = 0x90EB;
        inline static var GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB                             = 0x91BF;
        inline static var GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB                   = 0x9344;
        inline static var GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB                          = 0x9345;




    // GL_ARB_compute_variable_group_size functions

        @:native('glDispatchComputeGroupSizeARB')
        static function glDispatchComputeGroupSizeARB(num_groups_x:UInt, num_groups_y:UInt, num_groups_z:UInt, group_size_x:UInt, group_size_y:UInt, group_size_z:UInt) : Void;





//GL_ARB_conditional_render_inverted

    // GL_ARB_conditional_render_inverted defines

        inline static var GL_ARB_conditional_render_inverted                              = 1;
        inline static var GL_QUERY_WAIT_INVERTED                                          = 0x8E17;
        inline static var GL_QUERY_NO_WAIT_INVERTED                                       = 0x8E18;
        inline static var GL_QUERY_BY_REGION_WAIT_INVERTED                                = 0x8E19;
        inline static var GL_QUERY_BY_REGION_NO_WAIT_INVERTED                             = 0x8E1A;


//GL_ARB_conservative_depth

    // GL_ARB_conservative_depth defines

        inline static var GL_ARB_conservative_depth                                       = 1;


//GL_ARB_copy_buffer

    // GL_ARB_copy_buffer defines

        inline static var GL_ARB_copy_buffer                                              = 1;
        inline static var GL_COPY_READ_BUFFER                                             = 0x8F36;
        inline static var GL_COPY_WRITE_BUFFER                                            = 0x8F37;




    // GL_ARB_copy_buffer functions

        @:native('glCopyBufferSubData')
        static function glCopyBufferSubData(readtarget:Int, writetarget:Int, readoffset:Int, writeoffset:Int, size:Int) : Void;





//GL_ARB_copy_image

    // GL_ARB_copy_image defines

        inline static var GL_ARB_copy_image                                               = 1;




    // GL_ARB_copy_image functions

        @:native('glCopyImageSubData')
        static function glCopyImageSubData(srcName:UInt, srcTarget:Int, srcLevel:Int, srcX:Int, srcY:Int, srcZ:Int, dstName:UInt, dstTarget:Int, dstLevel:Int, dstX:Int, dstY:Int, dstZ:Int, srcWidth:Int, srcHeight:Int, srcDepth:Int) : Void;





//GL_ARB_cull_distance

    // GL_ARB_cull_distance defines

        inline static var GL_ARB_cull_distance                                            = 1;
        inline static var GL_MAX_CULL_DISTANCES                                           = 0x82F9;
        inline static var GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES                         = 0x82FA;


//GL_ARB_debug_output

    // GL_ARB_debug_output defines

        inline static var GL_ARB_debug_output                                             = 1;
        inline static var GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB                                 = 0x8242;
        inline static var GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB                         = 0x8243;
        inline static var GL_DEBUG_CALLBACK_FUNCTION_ARB                                  = 0x8244;
        inline static var GL_DEBUG_CALLBACK_USER_PARAM_ARB                                = 0x8245;
        inline static var GL_DEBUG_SOURCE_API_ARB                                         = 0x8246;
        inline static var GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB                               = 0x8247;
        inline static var GL_DEBUG_SOURCE_SHADER_COMPILER_ARB                             = 0x8248;
        inline static var GL_DEBUG_SOURCE_THIRD_PARTY_ARB                                 = 0x8249;
        inline static var GL_DEBUG_SOURCE_APPLICATION_ARB                                 = 0x824A;
        inline static var GL_DEBUG_SOURCE_OTHER_ARB                                       = 0x824B;
        inline static var GL_DEBUG_TYPE_ERROR_ARB                                         = 0x824C;
        inline static var GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB                           = 0x824D;
        inline static var GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB                            = 0x824E;
        inline static var GL_DEBUG_TYPE_PORTABILITY_ARB                                   = 0x824F;
        inline static var GL_DEBUG_TYPE_PERFORMANCE_ARB                                   = 0x8250;
        inline static var GL_DEBUG_TYPE_OTHER_ARB                                         = 0x8251;
        inline static var GL_MAX_DEBUG_MESSAGE_LENGTH_ARB                                 = 0x9143;
        inline static var GL_MAX_DEBUG_LOGGED_MESSAGES_ARB                                = 0x9144;
        inline static var GL_DEBUG_LOGGED_MESSAGES_ARB                                    = 0x9145;
        inline static var GL_DEBUG_SEVERITY_HIGH_ARB                                      = 0x9146;
        inline static var GL_DEBUG_SEVERITY_MEDIUM_ARB                                    = 0x9147;
        inline static var GL_DEBUG_SEVERITY_LOW_ARB                                       = 0x9148;




    // GL_ARB_debug_output functions

        @:native('glDebugMessageInsertARB')
        static function glDebugMessageInsertARB(source:Int, type:Int, id:UInt, severity:Int, length:Int, buf:String) : Void;


        inline static function glDebugMessageControlARB(source:Int, type:Int, severity:Int, count:Int, ids:Array<UInt>, enabled:Bool) : Void
          { untyped __cpp__("glDebugMessageControlARB({0}, {1}, {2}, {3}, (const GLuint*)&({4}[0]), {5})", source, type, severity, count, ids, enabled); }



    // TODO functions

            
        // inline static function glDebugMessageCallbackARB(callback:GLDEBUGPROCARB, userParam:BytesData) : Void
        // { untyped __cpp__("glDebugMessageCallbackARB({0}, (const void*)&({1}[0]))", callback, userParam); }
            
        // inline static function glGetDebugMessageLogARB(count:UInt, bufSize:Int, sources:GLenum*, types:GLenum*, ids:Array<UInt>, severities:GLenum*, lengths:GLsizei*, messageLog:String) : UInt
        // { return untyped __cpp__("glGetDebugMessageLogARB({0}, {1}, {2}, {3}, (GLuint*)&({4}[0]), {5}, {6}, {7})", count, bufSize, sources, types, ids, severities, lengths, messageLog); }


//GL_ARB_depth_buffer_float

    // GL_ARB_depth_buffer_float defines

        inline static var GL_ARB_depth_buffer_float                                       = 1;
        inline static var GL_DEPTH_COMPONENT32F                                           = 0x8CAC;
        inline static var GL_DEPTH32F_STENCIL8                                            = 0x8CAD;
        inline static var GL_FLOAT_32_UNSIGNED_INT_24_8_REV                               = 0x8DAD;


//GL_ARB_depth_clamp

    // GL_ARB_depth_clamp defines

        inline static var GL_ARB_depth_clamp                                              = 1;
        inline static var GL_DEPTH_CLAMP                                                  = 0x864F;


//GL_ARB_depth_texture

    // GL_ARB_depth_texture defines

        inline static var GL_ARB_depth_texture                                            = 1;
        inline static var GL_DEPTH_COMPONENT16_ARB                                        = 0x81A5;
        inline static var GL_DEPTH_COMPONENT24_ARB                                        = 0x81A6;
        inline static var GL_DEPTH_COMPONENT32_ARB                                        = 0x81A7;
        inline static var GL_TEXTURE_DEPTH_SIZE_ARB                                       = 0x884A;
        inline static var GL_DEPTH_TEXTURE_MODE_ARB                                       = 0x884B;


//GL_ARB_derivative_control

    // GL_ARB_derivative_control defines

        inline static var GL_ARB_derivative_control                                       = 1;


//GL_ARB_direct_state_access

    // GL_ARB_direct_state_access defines

        inline static var GL_ARB_direct_state_access                                      = 1;
        inline static var GL_TEXTURE_TARGET                                               = 0x1006;
        inline static var GL_QUERY_TARGET                                                 = 0x82EA;




    // GL_ARB_direct_state_access functions

        @:native('glBindTextureUnit')
        static function glBindTextureUnit(unit:UInt, texture:UInt) : Void;

        @:native('glBlitNamedFramebuffer')
        static function glBlitNamedFramebuffer(readFramebuffer:UInt, drawFramebuffer:UInt, srcX0:Int, srcY0:Int, srcX1:Int, srcY1:Int, dstX0:Int, dstY0:Int, dstX1:Int, dstY1:Int, mask:Int, filter:Int) : Void;

        @:native('glCheckNamedFramebufferStatus')
        static function glCheckNamedFramebufferStatus(framebuffer:UInt, target:Int) : Int;

        @:native('glClearNamedFramebufferfi')
        static function glClearNamedFramebufferfi(framebuffer:UInt, buffer:Int, depth:cpp.Float32, stencil:Int) : Void;

        @:native('glCopyNamedBufferSubData')
        static function glCopyNamedBufferSubData(readBuffer:UInt, writeBuffer:UInt, readOffset:Int, writeOffset:Int, size:Int) : Void;

        @:native('glCopyTextureSubImage1D')
        static function glCopyTextureSubImage1D(texture:UInt, level:Int, xoffset:Int, x:Int, y:Int, width:Int) : Void;

        @:native('glCopyTextureSubImage2D')
        static function glCopyTextureSubImage2D(texture:UInt, level:Int, xoffset:Int, yoffset:Int, x:Int, y:Int, width:Int, height:Int) : Void;

        @:native('glCopyTextureSubImage3D')
        static function glCopyTextureSubImage3D(texture:UInt, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, x:Int, y:Int, width:Int, height:Int) : Void;

        @:native('glDisableVertexArrayAttrib')
        static function glDisableVertexArrayAttrib(vaobj:UInt, index:UInt) : Void;

        @:native('glEnableVertexArrayAttrib')
        static function glEnableVertexArrayAttrib(vaobj:UInt, index:UInt) : Void;

        @:native('glFlushMappedNamedBufferRange')
        static function glFlushMappedNamedBufferRange(buffer:UInt, offset:Int, length:Int) : Void;

        @:native('glGenerateTextureMipmap')
        static function glGenerateTextureMipmap(texture:UInt) : Void;

        @:native('glGetQueryBufferObjecti64v')
        static function glGetQueryBufferObjecti64v(id:UInt, buffer:UInt, pname:Int, offset:Int) : Void;

        @:native('glGetQueryBufferObjectiv')
        static function glGetQueryBufferObjectiv(id:UInt, buffer:UInt, pname:Int, offset:Int) : Void;

        @:native('glGetQueryBufferObjectui64v')
        static function glGetQueryBufferObjectui64v(id:UInt, buffer:UInt, pname:Int, offset:Int) : Void;

        @:native('glGetQueryBufferObjectuiv')
        static function glGetQueryBufferObjectuiv(id:UInt, buffer:UInt, pname:Int, offset:Int) : Void;

        @:native('glNamedFramebufferDrawBuffer')
        static function glNamedFramebufferDrawBuffer(framebuffer:UInt, mode:Int) : Void;

        @:native('glNamedFramebufferParameteri')
        static function glNamedFramebufferParameteri(framebuffer:UInt, pname:Int, param:Int) : Void;

        @:native('glNamedFramebufferReadBuffer')
        static function glNamedFramebufferReadBuffer(framebuffer:UInt, mode:Int) : Void;

        @:native('glNamedFramebufferRenderbuffer')
        static function glNamedFramebufferRenderbuffer(framebuffer:UInt, attachment:Int, renderbuffertarget:Int, renderbuffer:UInt) : Void;

        @:native('glNamedFramebufferTexture')
        static function glNamedFramebufferTexture(framebuffer:UInt, attachment:Int, texture:UInt, level:Int) : Void;

        @:native('glNamedFramebufferTextureLayer')
        static function glNamedFramebufferTextureLayer(framebuffer:UInt, attachment:Int, texture:UInt, level:Int, layer:Int) : Void;

        @:native('glNamedRenderbufferStorage')
        static function glNamedRenderbufferStorage(renderbuffer:UInt, internalformat:Int, width:Int, height:Int) : Void;

        @:native('glNamedRenderbufferStorageMultisample')
        static function glNamedRenderbufferStorageMultisample(renderbuffer:UInt, samples:Int, internalformat:Int, width:Int, height:Int) : Void;

        @:native('glTextureBuffer')
        static function glTextureBuffer(texture:UInt, internalformat:Int, buffer:UInt) : Void;

        @:native('glTextureBufferRange')
        static function glTextureBufferRange(texture:UInt, internalformat:Int, buffer:UInt, offset:Int, size:Int) : Void;

        @:native('glTextureParameterf')
        static function glTextureParameterf(texture:UInt, pname:Int, param:cpp.Float32) : Void;

        @:native('glTextureParameteri')
        static function glTextureParameteri(texture:UInt, pname:Int, param:Int) : Void;

        @:native('glTextureStorage1D')
        static function glTextureStorage1D(texture:UInt, levels:Int, internalformat:Int, width:Int) : Void;

        @:native('glTextureStorage2D')
        static function glTextureStorage2D(texture:UInt, levels:Int, internalformat:Int, width:Int, height:Int) : Void;

        @:native('glTextureStorage2DMultisample')
        static function glTextureStorage2DMultisample(texture:UInt, samples:Int, internalformat:Int, width:Int, height:Int, fixedsamplelocations:Bool) : Void;

        @:native('glTextureStorage3D')
        static function glTextureStorage3D(texture:UInt, levels:Int, internalformat:Int, width:Int, height:Int, depth:Int) : Void;

        @:native('glTextureStorage3DMultisample')
        static function glTextureStorage3DMultisample(texture:UInt, samples:Int, internalformat:Int, width:Int, height:Int, depth:Int, fixedsamplelocations:Bool) : Void;

        @:native('glTransformFeedbackBufferBase')
        static function glTransformFeedbackBufferBase(xfb:UInt, index:UInt, buffer:UInt) : Void;

        @:native('glTransformFeedbackBufferRange')
        static function glTransformFeedbackBufferRange(xfb:UInt, index:UInt, buffer:UInt, offset:Int, size:Int) : Void;

        @:native('glUnmapNamedBuffer')
        static function glUnmapNamedBuffer(buffer:UInt) : Bool;

        @:native('glVertexArrayAttribBinding')
        static function glVertexArrayAttribBinding(vaobj:UInt, attribindex:UInt, bindingindex:UInt) : Void;

        @:native('glVertexArrayAttribFormat')
        static function glVertexArrayAttribFormat(vaobj:UInt, attribindex:UInt, size:Int, type:Int, normalized:Bool, relativeoffset:UInt) : Void;

        @:native('glVertexArrayAttribIFormat')
        static function glVertexArrayAttribIFormat(vaobj:UInt, attribindex:UInt, size:Int, type:Int, relativeoffset:UInt) : Void;

        @:native('glVertexArrayAttribLFormat')
        static function glVertexArrayAttribLFormat(vaobj:UInt, attribindex:UInt, size:Int, type:Int, relativeoffset:UInt) : Void;

        @:native('glVertexArrayBindingDivisor')
        static function glVertexArrayBindingDivisor(vaobj:UInt, bindingindex:UInt, divisor:UInt) : Void;

        @:native('glVertexArrayElementBuffer')
        static function glVertexArrayElementBuffer(vaobj:UInt, buffer:UInt) : Void;

        @:native('glVertexArrayVertexBuffer')
        static function glVertexArrayVertexBuffer(vaobj:UInt, bindingindex:UInt, buffer:UInt, offset:Int, stride:Int) : Void;


        inline static function glClearNamedBufferData(buffer:UInt, internalformat:Int, format:Int, type:Int, data:BytesData) : Void
          { untyped __cpp__("glClearNamedBufferData({0}, {1}, {2}, {3}, (const void*)&({4}[0]))", buffer, internalformat, format, type, data); }

        inline static function glClearNamedBufferSubData(buffer:UInt, internalformat:Int, offset:Int, size:Int, format:Int, type:Int, data:BytesData) : Void
          { untyped __cpp__("glClearNamedBufferSubData({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]))", buffer, internalformat, offset, size, format, type, data); }

        inline static function glClearNamedFramebufferfv(framebuffer:UInt, buffer:Int, drawbuffer:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glClearNamedFramebufferfv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", framebuffer, buffer, drawbuffer, value); }

        inline static function glClearNamedFramebufferiv(framebuffer:UInt, buffer:Int, drawbuffer:Int, value:Array<Int>) : Void
          { untyped __cpp__("glClearNamedFramebufferiv({0}, {1}, {2}, (const GLint*)&({3}[0]))", framebuffer, buffer, drawbuffer, value); }

        inline static function glClearNamedFramebufferuiv(framebuffer:UInt, buffer:Int, drawbuffer:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glClearNamedFramebufferuiv({0}, {1}, {2}, (const GLuint*)&({3}[0]))", framebuffer, buffer, drawbuffer, value); }

        inline static function glCompressedTextureSubImage1D(texture:UInt, level:Int, xoffset:Int, width:Int, format:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTextureSubImage1D({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]))", texture, level, xoffset, width, format, imageSize, data); }

        inline static function glCompressedTextureSubImage2D(texture:UInt, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTextureSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void*)&({8}[0]))", texture, level, xoffset, yoffset, width, height, format, imageSize, data); }

        inline static function glCompressedTextureSubImage3D(texture:UInt, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTextureSubImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, (const void*)&({10}[0]))", texture, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data); }

        inline static function glCreateBuffers(n:Int, buffers:Array<UInt>) : Void
          { untyped __cpp__("glCreateBuffers({0}, (GLuint*)&({1}[0]))", n, buffers); }

        inline static function glCreateFramebuffers(n:Int, framebuffers:Array<UInt>) : Void
          { untyped __cpp__("glCreateFramebuffers({0}, (GLuint*)&({1}[0]))", n, framebuffers); }

        inline static function glCreateProgramPipelines(n:Int, pipelines:Array<UInt>) : Void
          { untyped __cpp__("glCreateProgramPipelines({0}, (GLuint*)&({1}[0]))", n, pipelines); }

        inline static function glCreateQueries(target:Int, n:Int, ids:Array<UInt>) : Void
          { untyped __cpp__("glCreateQueries({0}, {1}, (GLuint*)&({2}[0]))", target, n, ids); }

        inline static function glCreateRenderbuffers(n:Int, renderbuffers:Array<UInt>) : Void
          { untyped __cpp__("glCreateRenderbuffers({0}, (GLuint*)&({1}[0]))", n, renderbuffers); }

        inline static function glCreateSamplers(n:Int, samplers:Array<UInt>) : Void
          { untyped __cpp__("glCreateSamplers({0}, (GLuint*)&({1}[0]))", n, samplers); }

        inline static function glCreateTextures(target:Int, n:Int, textures:Array<UInt>) : Void
          { untyped __cpp__("glCreateTextures({0}, {1}, (GLuint*)&({2}[0]))", target, n, textures); }

        inline static function glCreateTransformFeedbacks(n:Int, ids:Array<UInt>) : Void
          { untyped __cpp__("glCreateTransformFeedbacks({0}, (GLuint*)&({1}[0]))", n, ids); }

        inline static function glCreateVertexArrays(n:Int, arrays:Array<UInt>) : Void
          { untyped __cpp__("glCreateVertexArrays({0}, (GLuint*)&({1}[0]))", n, arrays); }

        inline static function glGetCompressedTextureImage(texture:UInt, level:Int, bufSize:Int, pixels:BytesData) : Void
          { untyped __cpp__("glGetCompressedTextureImage({0}, {1}, {2}, (void*)&({3}[0]))", texture, level, bufSize, pixels); }

        inline static function glGetNamedBufferParameteriv(buffer:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetNamedBufferParameteriv({0}, {1}, (GLint*)&({2}[0]))", buffer, pname, params); }

        inline static function glGetNamedBufferSubData(buffer:UInt, offset:Int, size:Int, data:BytesData) : Void
          { untyped __cpp__("glGetNamedBufferSubData({0}, {1}, {2}, (void*)&({3}[0]))", buffer, offset, size, data); }

        inline static function glGetNamedFramebufferAttachmentParameteriv(framebuffer:UInt, attachment:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetNamedFramebufferAttachmentParameteriv({0}, {1}, {2}, (GLint*)&({3}[0]))", framebuffer, attachment, pname, params); }

        inline static function glGetNamedFramebufferParameteriv(framebuffer:UInt, pname:Int, param:Array<Int>) : Void
          { untyped __cpp__("glGetNamedFramebufferParameteriv({0}, {1}, (GLint*)&({2}[0]))", framebuffer, pname, param); }

        inline static function glGetNamedRenderbufferParameteriv(renderbuffer:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetNamedRenderbufferParameteriv({0}, {1}, (GLint*)&({2}[0]))", renderbuffer, pname, params); }

        inline static function glGetTextureImage(texture:UInt, level:Int, format:Int, type:Int, bufSize:Int, pixels:BytesData) : Void
          { untyped __cpp__("glGetTextureImage({0}, {1}, {2}, {3}, {4}, (void*)&({5}[0]))", texture, level, format, type, bufSize, pixels); }

        inline static function glGetTextureLevelParameterfv(texture:UInt, level:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetTextureLevelParameterfv({0}, {1}, {2}, (GLfloat*)&({3}[0]))", texture, level, pname, params); }

        inline static function glGetTextureLevelParameteriv(texture:UInt, level:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetTextureLevelParameteriv({0}, {1}, {2}, (GLint*)&({3}[0]))", texture, level, pname, params); }

        inline static function glGetTextureParameterIiv(texture:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetTextureParameterIiv({0}, {1}, (GLint*)&({2}[0]))", texture, pname, params); }

        inline static function glGetTextureParameterIuiv(texture:UInt, pname:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glGetTextureParameterIuiv({0}, {1}, (GLuint*)&({2}[0]))", texture, pname, params); }

        inline static function glGetTextureParameterfv(texture:UInt, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetTextureParameterfv({0}, {1}, (GLfloat*)&({2}[0]))", texture, pname, params); }

        inline static function glGetTextureParameteriv(texture:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetTextureParameteriv({0}, {1}, (GLint*)&({2}[0]))", texture, pname, params); }

        inline static function glGetTransformFeedbacki_v(xfb:UInt, pname:Int, index:UInt, param:Array<Int>) : Void
          { untyped __cpp__("glGetTransformFeedbacki_v({0}, {1}, {2}, (GLint*)&({3}[0]))", xfb, pname, index, param); }

        inline static function glGetTransformFeedbackiv(xfb:UInt, pname:Int, param:Array<Int>) : Void
          { untyped __cpp__("glGetTransformFeedbackiv({0}, {1}, (GLint*)&({2}[0]))", xfb, pname, param); }

        inline static function glGetVertexArrayIndexediv(vaobj:UInt, index:UInt, pname:Int, param:Array<Int>) : Void
          { untyped __cpp__("glGetVertexArrayIndexediv({0}, {1}, {2}, (GLint*)&({3}[0]))", vaobj, index, pname, param); }

        inline static function glGetVertexArrayiv(vaobj:UInt, pname:Int, param:Array<Int>) : Void
          { untyped __cpp__("glGetVertexArrayiv({0}, {1}, (GLint*)&({2}[0]))", vaobj, pname, param); }

        inline static function glInvalidateNamedFramebufferData(framebuffer:UInt, numAttachments:Int, attachments:Array<Int>) : Void
          { untyped __cpp__("glInvalidateNamedFramebufferData({0}, {1}, (const GLenum*)&({2}[0]))", framebuffer, numAttachments, attachments); }

        inline static function glInvalidateNamedFramebufferSubData(framebuffer:UInt, numAttachments:Int, attachments:Array<Int>, x:Int, y:Int, width:Int, height:Int) : Void
          { untyped __cpp__("glInvalidateNamedFramebufferSubData({0}, {1}, (const GLenum*)&({2}[0]), {3}, {4}, {5}, {6})", framebuffer, numAttachments, attachments, x, y, width, height); }

        inline static function glNamedBufferData(buffer:UInt, size:Int, data:BytesData, usage:Int) : Void
          { untyped __cpp__("glNamedBufferData({0}, {1}, (const void*)&({2}[0]), {3})", buffer, size, data, usage); }

        inline static function glNamedBufferStorage(buffer:UInt, size:Int, data:BytesData, flags:Int) : Void
          { untyped __cpp__("glNamedBufferStorage({0}, {1}, (const void*)&({2}[0]), {3})", buffer, size, data, flags); }

        inline static function glNamedBufferSubData(buffer:UInt, offset:Int, size:Int, data:BytesData) : Void
          { untyped __cpp__("glNamedBufferSubData({0}, {1}, {2}, (const void*)&({3}[0]))", buffer, offset, size, data); }

        inline static function glNamedFramebufferDrawBuffers(framebuffer:UInt, n:Int, bufs:Array<Int>) : Void
          { untyped __cpp__("glNamedFramebufferDrawBuffers({0}, {1}, (const GLenum*)&({2}[0]))", framebuffer, n, bufs); }

        inline static function glTextureParameterIiv(texture:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glTextureParameterIiv({0}, {1}, (const GLint*)&({2}[0]))", texture, pname, params); }

        inline static function glTextureParameterIuiv(texture:UInt, pname:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glTextureParameterIuiv({0}, {1}, (const GLuint*)&({2}[0]))", texture, pname, params); }

        inline static function glTextureParameterfv(texture:UInt, pname:Int, param:Array<cpp.Float32>) : Void
          { untyped __cpp__("glTextureParameterfv({0}, {1}, (const GLfloat*)&({2}[0]))", texture, pname, param); }

        inline static function glTextureParameteriv(texture:UInt, pname:Int, param:Array<Int>) : Void
          { untyped __cpp__("glTextureParameteriv({0}, {1}, (const GLint*)&({2}[0]))", texture, pname, param); }

        inline static function glTextureSubImage1D(texture:UInt, level:Int, xoffset:Int, width:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glTextureSubImage1D({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]))", texture, level, xoffset, width, format, type, pixels); }

        inline static function glTextureSubImage2D(texture:UInt, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glTextureSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void*)&({8}[0]))", texture, level, xoffset, yoffset, width, height, format, type, pixels); }

        inline static function glTextureSubImage3D(texture:UInt, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, type:Int, pixels:BytesData) : Void
          { untyped __cpp__("glTextureSubImage3D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, (const void*)&({10}[0]))", texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels); }



    // TODO functions

            
        // @:native('glGetNamedBufferParameteri64v')
        // static function glGetNamedBufferParameteri64v(buffer:UInt, pname:Int, params:GLint64*) : Void;
            
        // @:native('glGetNamedBufferPointerv')
        // static function glGetNamedBufferPointerv(buffer:UInt, pname:Int, params:void**) : Void;
            
        // @:native('glGetTransformFeedbacki64_v')
        // static function glGetTransformFeedbacki64_v(xfb:UInt, pname:Int, index:UInt, param:GLint64*) : Void;
            
        // @:native('glGetVertexArrayIndexed64iv')
        // static function glGetVertexArrayIndexed64iv(vaobj:UInt, index:UInt, pname:Int, param:GLint64*) : Void;
            
        // @:native('glMapNamedBuffer')
        // static function glMapNamedBuffer(buffer:UInt, access:Int) : void *;
            
        // @:native('glMapNamedBufferRange')
        // static function glMapNamedBufferRange(buffer:UInt, offset:Int, length:Int, access:Int) : void *;
            
        // inline static function glVertexArrayVertexBuffers(vaobj:UInt, first:UInt, count:Int, buffers:Array<UInt>, offsets:const GLintptr*, strides:const GLsizei*) : Void
        // { untyped __cpp__("glVertexArrayVertexBuffers({0}, {1}, {2}, (const GLuint*)&({3}[0]), {4}, {5})", vaobj, first, count, buffers, offsets, strides); }


//GL_ARB_draw_buffers

    // GL_ARB_draw_buffers defines

        inline static var GL_ARB_draw_buffers                                             = 1;
        inline static var GL_MAX_DRAW_BUFFERS_ARB                                         = 0x8824;
        inline static var GL_DRAW_BUFFER0_ARB                                             = 0x8825;
        inline static var GL_DRAW_BUFFER1_ARB                                             = 0x8826;
        inline static var GL_DRAW_BUFFER2_ARB                                             = 0x8827;
        inline static var GL_DRAW_BUFFER3_ARB                                             = 0x8828;
        inline static var GL_DRAW_BUFFER4_ARB                                             = 0x8829;
        inline static var GL_DRAW_BUFFER5_ARB                                             = 0x882A;
        inline static var GL_DRAW_BUFFER6_ARB                                             = 0x882B;
        inline static var GL_DRAW_BUFFER7_ARB                                             = 0x882C;
        inline static var GL_DRAW_BUFFER8_ARB                                             = 0x882D;
        inline static var GL_DRAW_BUFFER9_ARB                                             = 0x882E;
        inline static var GL_DRAW_BUFFER10_ARB                                            = 0x882F;
        inline static var GL_DRAW_BUFFER11_ARB                                            = 0x8830;
        inline static var GL_DRAW_BUFFER12_ARB                                            = 0x8831;
        inline static var GL_DRAW_BUFFER13_ARB                                            = 0x8832;
        inline static var GL_DRAW_BUFFER14_ARB                                            = 0x8833;
        inline static var GL_DRAW_BUFFER15_ARB                                            = 0x8834;




    // GL_ARB_draw_buffers functions


        inline static function glDrawBuffersARB(n:Int, bufs:Array<Int>) : Void
          { untyped __cpp__("glDrawBuffersARB({0}, (const GLenum*)&({1}[0]))", n, bufs); }




//GL_ARB_draw_buffers_blend

    // GL_ARB_draw_buffers_blend defines

        inline static var GL_ARB_draw_buffers_blend                                       = 1;




    // GL_ARB_draw_buffers_blend functions

        @:native('glBlendEquationSeparateiARB')
        static function glBlendEquationSeparateiARB(buf:UInt, modeRGB:Int, modeAlpha:Int) : Void;

        @:native('glBlendEquationiARB')
        static function glBlendEquationiARB(buf:UInt, mode:Int) : Void;

        @:native('glBlendFuncSeparateiARB')
        static function glBlendFuncSeparateiARB(buf:UInt, srcRGB:Int, dstRGB:Int, srcAlpha:Int, dstAlpha:Int) : Void;

        @:native('glBlendFunciARB')
        static function glBlendFunciARB(buf:UInt, src:Int, dst:Int) : Void;





//GL_ARB_draw_elements_base_vertex

    // GL_ARB_draw_elements_base_vertex defines

        inline static var GL_ARB_draw_elements_base_vertex                                = 1;




    // GL_ARB_draw_elements_base_vertex functions


        inline static function glDrawElementsBaseVertex(mode:Int, count:Int, type:Int, indices:BytesData, basevertex:Int) : Void
          { untyped __cpp__("glDrawElementsBaseVertex({0}, {1}, {2}, (const void*)&({3}[0]), {4})", mode, count, type, indices, basevertex); }

        inline static function glDrawElementsInstancedBaseVertex(mode:Int, count:Int, type:Int, indices:BytesData, primcount:Int, basevertex:Int) : Void
          { untyped __cpp__("glDrawElementsInstancedBaseVertex({0}, {1}, {2}, (const void*)&({3}[0]), {4}, {5})", mode, count, type, indices, primcount, basevertex); }

        inline static function glDrawRangeElementsBaseVertex(mode:Int, start:UInt, end:UInt, count:Int, type:Int, indices:BytesData, basevertex:Int) : Void
          { untyped __cpp__("glDrawRangeElementsBaseVertex({0}, {1}, {2}, {3}, {4}, (const void*)&({5}[0]), {6})", mode, start, end, count, type, indices, basevertex); }



    // TODO functions

            
        // inline static function glMultiDrawElementsBaseVertex(mode:Int, count:const GLsizei*, type:Int, indices:const void *const*, primcount:Int, basevertex:Array<Int>) : Void
        // { untyped __cpp__("glMultiDrawElementsBaseVertex({0}, {1}, {2}, {3}, {4}, (const GLint*)&({5}[0]))", mode, count, type, indices, primcount, basevertex); }


//GL_ARB_draw_indirect

    // GL_ARB_draw_indirect defines

        inline static var GL_ARB_draw_indirect                                            = 1;
        inline static var GL_DRAW_INDIRECT_BUFFER                                         = 0x8F3F;
        inline static var GL_DRAW_INDIRECT_BUFFER_BINDING                                 = 0x8F43;




    // GL_ARB_draw_indirect functions


        inline static function glDrawArraysIndirect(mode:Int, indirect:BytesData) : Void
          { untyped __cpp__("glDrawArraysIndirect({0}, (const void*)&({1}[0]))", mode, indirect); }

        inline static function glDrawElementsIndirect(mode:Int, type:Int, indirect:BytesData) : Void
          { untyped __cpp__("glDrawElementsIndirect({0}, {1}, (const void*)&({2}[0]))", mode, type, indirect); }




//GL_ARB_draw_instanced

    // GL_ARB_draw_instanced defines

        inline static var GL_ARB_draw_instanced                                           = 1;


//GL_ARB_enhanced_layouts

    // GL_ARB_enhanced_layouts defines

        inline static var GL_ARB_enhanced_layouts                                         = 1;
        inline static var GL_LOCATION_COMPONENT                                           = 0x934A;
        inline static var GL_TRANSFORM_FEEDBACK_BUFFER_INDEX                              = 0x934B;
        inline static var GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE                             = 0x934C;


//GL_ARB_explicit_attrib_location

    // GL_ARB_explicit_attrib_location defines

        inline static var GL_ARB_explicit_attrib_location                                 = 1;


//GL_ARB_explicit_uniform_location

    // GL_ARB_explicit_uniform_location defines

        inline static var GL_ARB_explicit_uniform_location                                = 1;
        inline static var GL_MAX_UNIFORM_LOCATIONS                                        = 0x826E;


//GL_ARB_fragment_coord_conventions

    // GL_ARB_fragment_coord_conventions defines

        inline static var GL_ARB_fragment_coord_conventions                               = 1;


//GL_ARB_fragment_layer_viewport

    // GL_ARB_fragment_layer_viewport defines

        inline static var GL_ARB_fragment_layer_viewport                                  = 1;


//GL_ARB_fragment_program

    // GL_ARB_fragment_program defines

        inline static var GL_ARB_fragment_program                                         = 1;
        inline static var GL_FRAGMENT_PROGRAM_ARB                                         = 0x8804;
        inline static var GL_PROGRAM_ALU_INSTRUCTIONS_ARB                                 = 0x8805;
        inline static var GL_PROGRAM_TEX_INSTRUCTIONS_ARB                                 = 0x8806;
        inline static var GL_PROGRAM_TEX_INDIRECTIONS_ARB                                 = 0x8807;
        inline static var GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB                          = 0x8808;
        inline static var GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB                          = 0x8809;
        inline static var GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB                          = 0x880A;
        inline static var GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB                             = 0x880B;
        inline static var GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB                             = 0x880C;
        inline static var GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB                             = 0x880D;
        inline static var GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB                      = 0x880E;
        inline static var GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB                      = 0x880F;
        inline static var GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB                      = 0x8810;
        inline static var GL_MAX_TEXTURE_COORDS_ARB                                       = 0x8871;
        inline static var GL_MAX_TEXTURE_IMAGE_UNITS_ARB                                  = 0x8872;


//GL_ARB_fragment_program_shadow

    // GL_ARB_fragment_program_shadow defines

        inline static var GL_ARB_fragment_program_shadow                                  = 1;


//GL_ARB_fragment_shader

    // GL_ARB_fragment_shader defines

        inline static var GL_ARB_fragment_shader                                          = 1;
        inline static var GL_FRAGMENT_SHADER_ARB                                          = 0x8B30;
        inline static var GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB                          = 0x8B49;
        inline static var GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB                          = 0x8B8B;


//GL_ARB_framebuffer_no_attachments

    // GL_ARB_framebuffer_no_attachments defines

        inline static var GL_ARB_framebuffer_no_attachments                               = 1;
        inline static var GL_FRAMEBUFFER_DEFAULT_WIDTH                                    = 0x9310;
        inline static var GL_FRAMEBUFFER_DEFAULT_HEIGHT                                   = 0x9311;
        inline static var GL_FRAMEBUFFER_DEFAULT_LAYERS                                   = 0x9312;
        inline static var GL_FRAMEBUFFER_DEFAULT_SAMPLES                                  = 0x9313;
        inline static var GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS                   = 0x9314;
        inline static var GL_MAX_FRAMEBUFFER_WIDTH                                        = 0x9315;
        inline static var GL_MAX_FRAMEBUFFER_HEIGHT                                       = 0x9316;
        inline static var GL_MAX_FRAMEBUFFER_LAYERS                                       = 0x9317;
        inline static var GL_MAX_FRAMEBUFFER_SAMPLES                                      = 0x9318;




    // GL_ARB_framebuffer_no_attachments functions

        @:native('glFramebufferParameteri')
        static function glFramebufferParameteri(target:Int, pname:Int, param:Int) : Void;

        @:native('glNamedFramebufferParameteriEXT')
        static function glNamedFramebufferParameteriEXT(framebuffer:UInt, pname:Int, param:Int) : Void;


        inline static function glGetFramebufferParameteriv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetFramebufferParameteriv({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }

        inline static function glGetNamedFramebufferParameterivEXT(framebuffer:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetNamedFramebufferParameterivEXT({0}, {1}, (GLint*)&({2}[0]))", framebuffer, pname, params); }




//GL_ARB_framebuffer_object

    // GL_ARB_framebuffer_object defines

        inline static var GL_ARB_framebuffer_object                                       = 1;
        inline static var GL_INVALID_FRAMEBUFFER_OPERATION                                = 0x0506;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING                        = 0x8210;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE                        = 0x8211;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE                              = 0x8212;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE                            = 0x8213;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE                             = 0x8214;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE                            = 0x8215;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE                            = 0x8216;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE                          = 0x8217;
        inline static var GL_FRAMEBUFFER_DEFAULT                                          = 0x8218;
        inline static var GL_FRAMEBUFFER_UNDEFINED                                        = 0x8219;
        inline static var GL_DEPTH_STENCIL_ATTACHMENT                                     = 0x821A;
        inline static var GL_INDEX                                                        = 0x8222;
        inline static var GL_MAX_RENDERBUFFER_SIZE                                        = 0x84E8;
        inline static var GL_DEPTH_STENCIL                                                = 0x84F9;
        inline static var GL_UNSIGNED_INT_24_8                                            = 0x84FA;
        inline static var GL_DEPTH24_STENCIL8                                             = 0x88F0;
        inline static var GL_TEXTURE_STENCIL_SIZE                                         = 0x88F1;
        inline static var GL_UNSIGNED_NORMALIZED                                          = 0x8C17;
        inline static var GL_DRAW_FRAMEBUFFER_BINDING                                     = 0x8CA6;
        inline static var GL_FRAMEBUFFER_BINDING                                          = 0x8CA6;
        inline static var GL_RENDERBUFFER_BINDING                                         = 0x8CA7;
        inline static var GL_READ_FRAMEBUFFER                                             = 0x8CA8;
        inline static var GL_DRAW_FRAMEBUFFER                                             = 0x8CA9;
        inline static var GL_READ_FRAMEBUFFER_BINDING                                     = 0x8CAA;
        inline static var GL_RENDERBUFFER_SAMPLES                                         = 0x8CAB;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE                           = 0x8CD0;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME                           = 0x8CD1;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL                         = 0x8CD2;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE                 = 0x8CD3;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER                         = 0x8CD4;
        inline static var GL_FRAMEBUFFER_COMPLETE                                         = 0x8CD5;
        inline static var GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT                            = 0x8CD6;
        inline static var GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT                    = 0x8CD7;
        inline static var GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER                           = 0x8CDB;
        inline static var GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER                           = 0x8CDC;
        inline static var GL_FRAMEBUFFER_UNSUPPORTED                                      = 0x8CDD;
        inline static var GL_MAX_COLOR_ATTACHMENTS                                        = 0x8CDF;
        inline static var GL_COLOR_ATTACHMENT0                                            = 0x8CE0;
        inline static var GL_COLOR_ATTACHMENT1                                            = 0x8CE1;
        inline static var GL_COLOR_ATTACHMENT2                                            = 0x8CE2;
        inline static var GL_COLOR_ATTACHMENT3                                            = 0x8CE3;
        inline static var GL_COLOR_ATTACHMENT4                                            = 0x8CE4;
        inline static var GL_COLOR_ATTACHMENT5                                            = 0x8CE5;
        inline static var GL_COLOR_ATTACHMENT6                                            = 0x8CE6;
        inline static var GL_COLOR_ATTACHMENT7                                            = 0x8CE7;
        inline static var GL_COLOR_ATTACHMENT8                                            = 0x8CE8;
        inline static var GL_COLOR_ATTACHMENT9                                            = 0x8CE9;
        inline static var GL_COLOR_ATTACHMENT10                                           = 0x8CEA;
        inline static var GL_COLOR_ATTACHMENT11                                           = 0x8CEB;
        inline static var GL_COLOR_ATTACHMENT12                                           = 0x8CEC;
        inline static var GL_COLOR_ATTACHMENT13                                           = 0x8CED;
        inline static var GL_COLOR_ATTACHMENT14                                           = 0x8CEE;
        inline static var GL_COLOR_ATTACHMENT15                                           = 0x8CEF;
        inline static var GL_DEPTH_ATTACHMENT                                             = 0x8D00;
        inline static var GL_STENCIL_ATTACHMENT                                           = 0x8D20;
        inline static var GL_FRAMEBUFFER                                                  = 0x8D40;
        inline static var GL_RENDERBUFFER                                                 = 0x8D41;
        inline static var GL_RENDERBUFFER_WIDTH                                           = 0x8D42;
        inline static var GL_RENDERBUFFER_HEIGHT                                          = 0x8D43;
        inline static var GL_RENDERBUFFER_INTERNAL_FORMAT                                 = 0x8D44;
        inline static var GL_STENCIL_INDEX1                                               = 0x8D46;
        inline static var GL_STENCIL_INDEX4                                               = 0x8D47;
        inline static var GL_STENCIL_INDEX8                                               = 0x8D48;
        inline static var GL_STENCIL_INDEX16                                              = 0x8D49;
        inline static var GL_RENDERBUFFER_RED_SIZE                                        = 0x8D50;
        inline static var GL_RENDERBUFFER_GREEN_SIZE                                      = 0x8D51;
        inline static var GL_RENDERBUFFER_BLUE_SIZE                                       = 0x8D52;
        inline static var GL_RENDERBUFFER_ALPHA_SIZE                                      = 0x8D53;
        inline static var GL_RENDERBUFFER_DEPTH_SIZE                                      = 0x8D54;
        inline static var GL_RENDERBUFFER_STENCIL_SIZE                                    = 0x8D55;
        inline static var GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE                           = 0x8D56;
        inline static var GL_MAX_SAMPLES                                                  = 0x8D57;




    // GL_ARB_framebuffer_object functions

        @:native('glBindFramebuffer')
        static function glBindFramebuffer(target:Int, framebuffer:UInt) : Void;

        @:native('glBindRenderbuffer')
        static function glBindRenderbuffer(target:Int, renderbuffer:UInt) : Void;

        @:native('glBlitFramebuffer')
        static function glBlitFramebuffer(srcX0:Int, srcY0:Int, srcX1:Int, srcY1:Int, dstX0:Int, dstY0:Int, dstX1:Int, dstY1:Int, mask:Int, filter:Int) : Void;

        @:native('glCheckFramebufferStatus')
        static function glCheckFramebufferStatus(target:Int) : Int;

        @:native('glFramebufferRenderbuffer')
        static function glFramebufferRenderbuffer(target:Int, attachment:Int, renderbuffertarget:Int, renderbuffer:UInt) : Void;

        @:native('glFramebufferTexture1D')
        static function glFramebufferTexture1D(target:Int, attachment:Int, textarget:Int, texture:UInt, level:Int) : Void;

        @:native('glFramebufferTexture2D')
        static function glFramebufferTexture2D(target:Int, attachment:Int, textarget:Int, texture:UInt, level:Int) : Void;

        @:native('glFramebufferTexture3D')
        static function glFramebufferTexture3D(target:Int, attachment:Int, textarget:Int, texture:UInt, level:Int, layer:Int) : Void;

        @:native('glFramebufferTextureLayer')
        static function glFramebufferTextureLayer(target:Int, attachment:Int, texture:UInt, level:Int, layer:Int) : Void;

        @:native('glGenerateMipmap')
        static function glGenerateMipmap(target:Int) : Void;

        @:native('glIsFramebuffer')
        static function glIsFramebuffer(framebuffer:UInt) : Bool;

        @:native('glIsRenderbuffer')
        static function glIsRenderbuffer(renderbuffer:UInt) : Bool;

        @:native('glRenderbufferStorage')
        static function glRenderbufferStorage(target:Int, internalformat:Int, width:Int, height:Int) : Void;

        @:native('glRenderbufferStorageMultisample')
        static function glRenderbufferStorageMultisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int) : Void;


        inline static function glDeleteFramebuffers(n:Int, framebuffers:Array<UInt>) : Void
          { untyped __cpp__("glDeleteFramebuffers({0}, (const GLuint*)&({1}[0]))", n, framebuffers); }

        inline static function glDeleteRenderbuffers(n:Int, renderbuffers:Array<UInt>) : Void
          { untyped __cpp__("glDeleteRenderbuffers({0}, (const GLuint*)&({1}[0]))", n, renderbuffers); }

        inline static function glGenFramebuffers(n:Int, framebuffers:Array<UInt>) : Void
          { untyped __cpp__("glGenFramebuffers({0}, (GLuint*)&({1}[0]))", n, framebuffers); }

        inline static function glGenRenderbuffers(n:Int, renderbuffers:Array<UInt>) : Void
          { untyped __cpp__("glGenRenderbuffers({0}, (GLuint*)&({1}[0]))", n, renderbuffers); }

        inline static function glGetFramebufferAttachmentParameteriv(target:Int, attachment:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetFramebufferAttachmentParameteriv({0}, {1}, {2}, (GLint*)&({3}[0]))", target, attachment, pname, params); }

        inline static function glGetRenderbufferParameteriv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetRenderbufferParameteriv({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }




//GL_ARB_framebuffer_sRGB

    // GL_ARB_framebuffer_sRGB defines

        inline static var GL_ARB_framebuffer_sRGB                                         = 1;
        inline static var GL_FRAMEBUFFER_SRGB                                             = 0x8DB9;


//GL_ARB_geometry_shader4

    // GL_ARB_geometry_shader4 defines

        inline static var GL_ARB_geometry_shader4                                         = 1;
        inline static var GL_LINES_ADJACENCY_ARB                                          = 0xA;
        inline static var GL_LINE_STRIP_ADJACENCY_ARB                                     = 0xB;
        inline static var GL_TRIANGLES_ADJACENCY_ARB                                      = 0xC;
        inline static var GL_TRIANGLE_STRIP_ADJACENCY_ARB                                 = 0xD;
        inline static var GL_PROGRAM_POINT_SIZE_ARB                                       = 0x8642;
        inline static var GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB                         = 0x8C29;
        inline static var GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB                           = 0x8DA7;
        inline static var GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB                     = 0x8DA8;
        inline static var GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB                       = 0x8DA9;
        inline static var GL_GEOMETRY_SHADER_ARB                                          = 0x8DD9;
        inline static var GL_GEOMETRY_VERTICES_OUT_ARB                                    = 0x8DDA;
        inline static var GL_GEOMETRY_INPUT_TYPE_ARB                                      = 0x8DDB;
        inline static var GL_GEOMETRY_OUTPUT_TYPE_ARB                                     = 0x8DDC;
        inline static var GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB                          = 0x8DDD;
        inline static var GL_MAX_VERTEX_VARYING_COMPONENTS_ARB                            = 0x8DDE;
        inline static var GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB                          = 0x8DDF;
        inline static var GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB                             = 0x8DE0;
        inline static var GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB                     = 0x8DE1;




    // GL_ARB_geometry_shader4 functions

        @:native('glFramebufferTextureARB')
        static function glFramebufferTextureARB(target:Int, attachment:Int, texture:UInt, level:Int) : Void;

        @:native('glFramebufferTextureFaceARB')
        static function glFramebufferTextureFaceARB(target:Int, attachment:Int, texture:UInt, level:Int, face:Int) : Void;

        @:native('glFramebufferTextureLayerARB')
        static function glFramebufferTextureLayerARB(target:Int, attachment:Int, texture:UInt, level:Int, layer:Int) : Void;

        @:native('glProgramParameteriARB')
        static function glProgramParameteriARB(program:UInt, pname:Int, value:Int) : Void;





//GL_ARB_get_program_binary

    // GL_ARB_get_program_binary defines

        inline static var GL_ARB_get_program_binary                                       = 1;
        inline static var GL_PROGRAM_BINARY_RETRIEVABLE_HINT                              = 0x8257;
        inline static var GL_PROGRAM_BINARY_LENGTH                                        = 0x8741;
        inline static var GL_NUM_PROGRAM_BINARY_FORMATS                                   = 0x87FE;
        inline static var GL_PROGRAM_BINARY_FORMATS                                       = 0x87FF;




    // GL_ARB_get_program_binary functions

        @:native('glProgramParameteri')
        static function glProgramParameteri(program:UInt, pname:Int, value:Int) : Void;


        inline static function glProgramBinary(program:UInt, binaryFormat:Int, binary:BytesData, length:Int) : Void
          { untyped __cpp__("glProgramBinary({0}, {1}, (const void*)&({2}[0]), {3})", program, binaryFormat, binary, length); }



    // TODO functions

            
        // @:native('glGetProgramBinary')
        // static function glGetProgramBinary(program:UInt, bufSize:Int, length:GLsizei*, binaryFormat:GLenum*, void*binary:) : Void;


//GL_ARB_get_texture_sub_image

    // GL_ARB_get_texture_sub_image defines

        inline static var GL_ARB_get_texture_sub_image                                    = 1;




    // GL_ARB_get_texture_sub_image functions


        inline static function glGetCompressedTextureSubImage(texture:UInt, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, bufSize:Int, pixels:BytesData) : Void
          { untyped __cpp__("glGetCompressedTextureSubImage({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, (void*)&({9}[0]))", texture, level, xoffset, yoffset, zoffset, width, height, depth, bufSize, pixels); }

        inline static function glGetTextureSubImage(texture:UInt, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, type:Int, bufSize:Int, pixels:BytesData) : Void
          { untyped __cpp__("glGetTextureSubImage({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, {10}, (void*)&({11}[0]))", texture, level, xoffset, yoffset, zoffset, width, height, depth, format, type, bufSize, pixels); }




//GL_ARB_gpu_shader5

    // GL_ARB_gpu_shader5 defines

        inline static var GL_ARB_gpu_shader5                                              = 1;
        inline static var GL_GEOMETRY_SHADER_INVOCATIONS                                  = 0x887F;
        inline static var GL_MAX_GEOMETRY_SHADER_INVOCATIONS                              = 0x8E5A;
        inline static var GL_MIN_FRAGMENT_INTERPOLATION_OFFSET                            = 0x8E5B;
        inline static var GL_MAX_FRAGMENT_INTERPOLATION_OFFSET                            = 0x8E5C;
        inline static var GL_FRAGMENT_INTERPOLATION_OFFSET_BITS                           = 0x8E5D;
        inline static var GL_MAX_VERTEX_STREAMS                                           = 0x8E71;


//GL_ARB_gpu_shader_fp64

    // GL_ARB_gpu_shader_fp64 defines

        inline static var GL_ARB_gpu_shader_fp64                                          = 1;
        inline static var GL_DOUBLE_MAT2                                                  = 0x8F46;
        inline static var GL_DOUBLE_MAT3                                                  = 0x8F47;
        inline static var GL_DOUBLE_MAT4                                                  = 0x8F48;
        inline static var GL_DOUBLE_MAT2x3                                                = 0x8F49;
        inline static var GL_DOUBLE_MAT2x4                                                = 0x8F4A;
        inline static var GL_DOUBLE_MAT3x2                                                = 0x8F4B;
        inline static var GL_DOUBLE_MAT3x4                                                = 0x8F4C;
        inline static var GL_DOUBLE_MAT4x2                                                = 0x8F4D;
        inline static var GL_DOUBLE_MAT4x3                                                = 0x8F4E;
        inline static var GL_DOUBLE_VEC2                                                  = 0x8FFC;
        inline static var GL_DOUBLE_VEC3                                                  = 0x8FFD;
        inline static var GL_DOUBLE_VEC4                                                  = 0x8FFE;




    // GL_ARB_gpu_shader_fp64 functions

        @:native('glUniform1d')
        static function glUniform1d(location:Int, x:cpp.Float64) : Void;

        @:native('glUniform2d')
        static function glUniform2d(location:Int, x:cpp.Float64, y:cpp.Float64) : Void;

        @:native('glUniform3d')
        static function glUniform3d(location:Int, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glUniform4d')
        static function glUniform4d(location:Int, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64, w:cpp.Float64) : Void;


        inline static function glGetUniformdv(program:UInt, location:Int, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetUniformdv({0}, {1}, (GLdouble*)&({2}[0]))", program, location, params); }

        inline static function glUniform1dv(location:Int, count:Int, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniform1dv({0}, {1}, (const GLdouble*)&({2}[0]))", location, count, value); }

        inline static function glUniform2dv(location:Int, count:Int, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniform2dv({0}, {1}, (const GLdouble*)&({2}[0]))", location, count, value); }

        inline static function glUniform3dv(location:Int, count:Int, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniform3dv({0}, {1}, (const GLdouble*)&({2}[0]))", location, count, value); }

        inline static function glUniform4dv(location:Int, count:Int, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniform4dv({0}, {1}, (const GLdouble*)&({2}[0]))", location, count, value); }

        inline static function glUniformMatrix2dv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniformMatrix2dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix2x3dv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniformMatrix2x3dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix2x4dv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniformMatrix2x4dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix3dv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniformMatrix3dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix3x2dv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniformMatrix3x2dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix3x4dv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniformMatrix3x4dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix4dv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniformMatrix4dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix4x2dv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniformMatrix4x2dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix4x3dv(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glUniformMatrix4x3dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", location, count, transpose, value); }




//GL_ARB_half_float_pixel

    // GL_ARB_half_float_pixel defines

        inline static var GL_ARB_half_float_pixel                                         = 1;
        inline static var GL_HALF_FLOAT_ARB                                               = 0x140B;


//GL_ARB_half_float_vertex

    // GL_ARB_half_float_vertex defines

        inline static var GL_ARB_half_float_vertex                                        = 1;
        inline static var GL_HALF_FLOAT                                                   = 0x140B;


//GL_ARB_imaging

    // GL_ARB_imaging defines

        inline static var GL_ARB_imaging                                                  = 1;
        inline static var GL_CONSTANT_COLOR                                               = 0x8001;
        inline static var GL_ONE_MINUS_CONSTANT_COLOR                                     = 0x8002;
        inline static var GL_CONSTANT_ALPHA                                               = 0x8003;
        inline static var GL_ONE_MINUS_CONSTANT_ALPHA                                     = 0x8004;
        inline static var GL_BLEND_COLOR                                                  = 0x8005;
        inline static var GL_FUNC_ADD                                                     = 0x8006;
        inline static var GL_MIN                                                          = 0x8007;
        inline static var GL_MAX                                                          = 0x8008;
        inline static var GL_BLEND_EQUATION                                               = 0x8009;
        inline static var GL_FUNC_SUBTRACT                                                = 0x800A;
        inline static var GL_FUNC_REVERSE_SUBTRACT                                        = 0x800B;
        inline static var GL_CONVOLUTION_1D                                               = 0x8010;
        inline static var GL_CONVOLUTION_2D                                               = 0x8011;
        inline static var GL_SEPARABLE_2D                                                 = 0x8012;
        inline static var GL_CONVOLUTION_BORDER_MODE                                      = 0x8013;
        inline static var GL_CONVOLUTION_FILTER_SCALE                                     = 0x8014;
        inline static var GL_CONVOLUTION_FILTER_BIAS                                      = 0x8015;
        inline static var GL_REDUCE                                                       = 0x8016;
        inline static var GL_CONVOLUTION_FORMAT                                           = 0x8017;
        inline static var GL_CONVOLUTION_WIDTH                                            = 0x8018;
        inline static var GL_CONVOLUTION_HEIGHT                                           = 0x8019;
        inline static var GL_MAX_CONVOLUTION_WIDTH                                        = 0x801A;
        inline static var GL_MAX_CONVOLUTION_HEIGHT                                       = 0x801B;
        inline static var GL_POST_CONVOLUTION_RED_SCALE                                   = 0x801C;
        inline static var GL_POST_CONVOLUTION_GREEN_SCALE                                 = 0x801D;
        inline static var GL_POST_CONVOLUTION_BLUE_SCALE                                  = 0x801E;
        inline static var GL_POST_CONVOLUTION_ALPHA_SCALE                                 = 0x801F;
        inline static var GL_POST_CONVOLUTION_RED_BIAS                                    = 0x8020;
        inline static var GL_POST_CONVOLUTION_GREEN_BIAS                                  = 0x8021;
        inline static var GL_POST_CONVOLUTION_BLUE_BIAS                                   = 0x8022;
        inline static var GL_POST_CONVOLUTION_ALPHA_BIAS                                  = 0x8023;
        inline static var GL_HISTOGRAM                                                    = 0x8024;
        inline static var GL_PROXY_HISTOGRAM                                              = 0x8025;
        inline static var GL_HISTOGRAM_WIDTH                                              = 0x8026;
        inline static var GL_HISTOGRAM_FORMAT                                             = 0x8027;
        inline static var GL_HISTOGRAM_RED_SIZE                                           = 0x8028;
        inline static var GL_HISTOGRAM_GREEN_SIZE                                         = 0x8029;
        inline static var GL_HISTOGRAM_BLUE_SIZE                                          = 0x802A;
        inline static var GL_HISTOGRAM_ALPHA_SIZE                                         = 0x802B;
        inline static var GL_HISTOGRAM_LUMINANCE_SIZE                                     = 0x802C;
        inline static var GL_HISTOGRAM_SINK                                               = 0x802D;
        inline static var GL_MINMAX                                                       = 0x802E;
        inline static var GL_MINMAX_FORMAT                                                = 0x802F;
        inline static var GL_MINMAX_SINK                                                  = 0x8030;
        inline static var GL_TABLE_TOO_LARGE                                              = 0x8031;
        inline static var GL_COLOR_MATRIX                                                 = 0x80B1;
        inline static var GL_COLOR_MATRIX_STACK_DEPTH                                     = 0x80B2;
        inline static var GL_MAX_COLOR_MATRIX_STACK_DEPTH                                 = 0x80B3;
        inline static var GL_POST_COLOR_MATRIX_RED_SCALE                                  = 0x80B4;
        inline static var GL_POST_COLOR_MATRIX_GREEN_SCALE                                = 0x80B5;
        inline static var GL_POST_COLOR_MATRIX_BLUE_SCALE                                 = 0x80B6;
        inline static var GL_POST_COLOR_MATRIX_ALPHA_SCALE                                = 0x80B7;
        inline static var GL_POST_COLOR_MATRIX_RED_BIAS                                   = 0x80B8;
        inline static var GL_POST_COLOR_MATRIX_GREEN_BIAS                                 = 0x80B9;
        inline static var GL_POST_COLOR_MATRIX_BLUE_BIAS                                  = 0x80BA;
        inline static var GL_POST_COLOR_MATRIX_ALPHA_BIAS                                 = 0x80BB;
        inline static var GL_COLOR_TABLE                                                  = 0x80D0;
        inline static var GL_POST_CONVOLUTION_COLOR_TABLE                                 = 0x80D1;
        inline static var GL_POST_COLOR_MATRIX_COLOR_TABLE                                = 0x80D2;
        inline static var GL_PROXY_COLOR_TABLE                                            = 0x80D3;
        inline static var GL_PROXY_POST_CONVOLUTION_COLOR_TABLE                           = 0x80D4;
        inline static var GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE                          = 0x80D5;
        inline static var GL_COLOR_TABLE_SCALE                                            = 0x80D6;
        inline static var GL_COLOR_TABLE_BIAS                                             = 0x80D7;
        inline static var GL_COLOR_TABLE_FORMAT                                           = 0x80D8;
        inline static var GL_COLOR_TABLE_WIDTH                                            = 0x80D9;
        inline static var GL_COLOR_TABLE_RED_SIZE                                         = 0x80DA;
        inline static var GL_COLOR_TABLE_GREEN_SIZE                                       = 0x80DB;
        inline static var GL_COLOR_TABLE_BLUE_SIZE                                        = 0x80DC;
        inline static var GL_COLOR_TABLE_ALPHA_SIZE                                       = 0x80DD;
        inline static var GL_COLOR_TABLE_LUMINANCE_SIZE                                   = 0x80DE;
        inline static var GL_COLOR_TABLE_INTENSITY_SIZE                                   = 0x80DF;
        inline static var GL_IGNORE_BORDER                                                = 0x8150;
        inline static var GL_CONSTANT_BORDER                                              = 0x8151;
        inline static var GL_WRAP_BORDER                                                  = 0x8152;
        inline static var GL_REPLICATE_BORDER                                             = 0x8153;
        inline static var GL_CONVOLUTION_BORDER_COLOR                                     = 0x8154;




    // GL_ARB_imaging functions

        @:native('glConvolutionParameterf')
        static function glConvolutionParameterf(target:Int, pname:Int, params:cpp.Float32) : Void;

        @:native('glConvolutionParameteri')
        static function glConvolutionParameteri(target:Int, pname:Int, params:Int) : Void;

        @:native('glCopyColorSubTable')
        static function glCopyColorSubTable(target:Int, start:Int, x:Int, y:Int, width:Int) : Void;

        @:native('glCopyColorTable')
        static function glCopyColorTable(target:Int, internalformat:Int, x:Int, y:Int, width:Int) : Void;

        @:native('glCopyConvolutionFilter1D')
        static function glCopyConvolutionFilter1D(target:Int, internalformat:Int, x:Int, y:Int, width:Int) : Void;

        @:native('glCopyConvolutionFilter2D')
        static function glCopyConvolutionFilter2D(target:Int, internalformat:Int, x:Int, y:Int, width:Int, height:Int) : Void;

        @:native('glHistogram')
        static function glHistogram(target:Int, width:Int, internalformat:Int, sink:Bool) : Void;

        @:native('glMinmax')
        static function glMinmax(target:Int, internalformat:Int, sink:Bool) : Void;

        @:native('glResetHistogram')
        static function glResetHistogram(target:Int) : Void;

        @:native('glResetMinmax')
        static function glResetMinmax(target:Int) : Void;


        inline static function glColorSubTable(target:Int, start:Int, count:Int, format:Int, type:Int, data:BytesData) : Void
          { untyped __cpp__("glColorSubTable({0}, {1}, {2}, {3}, {4}, (const void*)&({5}[0]))", target, start, count, format, type, data); }

        inline static function glColorTable(target:Int, internalformat:Int, width:Int, format:Int, type:Int, table:BytesData) : Void
          { untyped __cpp__("glColorTable({0}, {1}, {2}, {3}, {4}, (const void*)&({5}[0]))", target, internalformat, width, format, type, table); }

        inline static function glColorTableParameterfv(target:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glColorTableParameterfv({0}, {1}, (const GLfloat*)&({2}[0]))", target, pname, params); }

        inline static function glColorTableParameteriv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glColorTableParameteriv({0}, {1}, (const GLint*)&({2}[0]))", target, pname, params); }

        inline static function glConvolutionFilter1D(target:Int, internalformat:Int, width:Int, format:Int, type:Int, image:BytesData) : Void
          { untyped __cpp__("glConvolutionFilter1D({0}, {1}, {2}, {3}, {4}, (const void*)&({5}[0]))", target, internalformat, width, format, type, image); }

        inline static function glConvolutionFilter2D(target:Int, internalformat:Int, width:Int, height:Int, format:Int, type:Int, image:BytesData) : Void
          { untyped __cpp__("glConvolutionFilter2D({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]))", target, internalformat, width, height, format, type, image); }

        inline static function glConvolutionParameterfv(target:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glConvolutionParameterfv({0}, {1}, (const GLfloat*)&({2}[0]))", target, pname, params); }

        inline static function glConvolutionParameteriv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glConvolutionParameteriv({0}, {1}, (const GLint*)&({2}[0]))", target, pname, params); }

        inline static function glGetColorTable(target:Int, format:Int, type:Int, table:BytesData) : Void
          { untyped __cpp__("glGetColorTable({0}, {1}, {2}, (void*)&({3}[0]))", target, format, type, table); }

        inline static function glGetColorTableParameterfv(target:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetColorTableParameterfv({0}, {1}, (GLfloat*)&({2}[0]))", target, pname, params); }

        inline static function glGetColorTableParameteriv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetColorTableParameteriv({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }

        inline static function glGetConvolutionFilter(target:Int, format:Int, type:Int, image:BytesData) : Void
          { untyped __cpp__("glGetConvolutionFilter({0}, {1}, {2}, (void*)&({3}[0]))", target, format, type, image); }

        inline static function glGetConvolutionParameterfv(target:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetConvolutionParameterfv({0}, {1}, (GLfloat*)&({2}[0]))", target, pname, params); }

        inline static function glGetConvolutionParameteriv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetConvolutionParameteriv({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }

        inline static function glGetHistogram(target:Int, reset:Bool, format:Int, type:Int, values:BytesData) : Void
          { untyped __cpp__("glGetHistogram({0}, {1}, {2}, {3}, (void*)&({4}[0]))", target, reset, format, type, values); }

        inline static function glGetHistogramParameterfv(target:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetHistogramParameterfv({0}, {1}, (GLfloat*)&({2}[0]))", target, pname, params); }

        inline static function glGetHistogramParameteriv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetHistogramParameteriv({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }

        inline static function glGetMinmax(target:Int, reset:Bool, format:Int, types:Int, values:BytesData) : Void
          { untyped __cpp__("glGetMinmax({0}, {1}, {2}, {3}, (void*)&({4}[0]))", target, reset, format, types, values); }

        inline static function glGetMinmaxParameterfv(target:Int, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetMinmaxParameterfv({0}, {1}, (GLfloat*)&({2}[0]))", target, pname, params); }

        inline static function glGetMinmaxParameteriv(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetMinmaxParameteriv({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }

        inline static function glGetSeparableFilter(target:Int, format:Int, type:Int, row:BytesData, column:BytesData, span:BytesData) : Void
          { untyped __cpp__("glGetSeparableFilter({0}, {1}, {2}, (void*)&({3}[0]), (void*)&({4}[0]), (void*)&({5}[0]))", target, format, type, row, column, span); }

        inline static function glSeparableFilter2D(target:Int, internalformat:Int, width:Int, height:Int, format:Int, type:Int, row:BytesData, column:BytesData) : Void
          { untyped __cpp__("glSeparableFilter2D({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]), (const void*)&({7}[0]))", target, internalformat, width, height, format, type, row, column); }




//GL_ARB_indirect_parameters

    // GL_ARB_indirect_parameters defines

        inline static var GL_ARB_indirect_parameters                                      = 1;
        inline static var GL_PARAMETER_BUFFER_ARB                                         = 0x80EE;
        inline static var GL_PARAMETER_BUFFER_BINDING_ARB                                 = 0x80EF;




    // GL_ARB_indirect_parameters functions


        inline static function glMultiDrawArraysIndirectCountARB(mode:Int, indirect:BytesData, drawcount:Int, maxdrawcount:Int, stride:Int) : Void
          { untyped __cpp__("glMultiDrawArraysIndirectCountARB({0}, (const void*)&({1}[0]), {2}, {3}, {4})", mode, indirect, drawcount, maxdrawcount, stride); }

        inline static function glMultiDrawElementsIndirectCountARB(mode:Int, type:Int, indirect:BytesData, drawcount:Int, maxdrawcount:Int, stride:Int) : Void
          { untyped __cpp__("glMultiDrawElementsIndirectCountARB({0}, {1}, (const void*)&({2}[0]), {3}, {4}, {5})", mode, type, indirect, drawcount, maxdrawcount, stride); }




//GL_ARB_instanced_arrays

    // GL_ARB_instanced_arrays defines

        inline static var GL_ARB_instanced_arrays                                         = 1;
        inline static var GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB                              = 0x88FE;




    // GL_ARB_instanced_arrays functions

        @:native('glDrawArraysInstancedARB')
        static function glDrawArraysInstancedARB(mode:Int, first:Int, count:Int, primcount:Int) : Void;

        @:native('glVertexAttribDivisorARB')
        static function glVertexAttribDivisorARB(index:UInt, divisor:UInt) : Void;


        inline static function glDrawElementsInstancedARB(mode:Int, count:Int, type:Int, indices:BytesData, primcount:Int) : Void
          { untyped __cpp__("glDrawElementsInstancedARB({0}, {1}, {2}, (const void*)&({3}[0]), {4})", mode, count, type, indices, primcount); }




//GL_ARB_internalformat_query

    // GL_ARB_internalformat_query defines

        inline static var GL_ARB_internalformat_query                                     = 1;
        inline static var GL_NUM_SAMPLE_COUNTS                                            = 0x9380;




    // GL_ARB_internalformat_query functions


        inline static function glGetInternalformativ(target:Int, internalformat:Int, pname:Int, bufSize:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetInternalformativ({0}, {1}, {2}, {3}, (GLint*)&({4}[0]))", target, internalformat, pname, bufSize, params); }




//GL_ARB_internalformat_query2

    // GL_ARB_internalformat_query2 defines

        inline static var GL_ARB_internalformat_query2                                    = 1;
        inline static var GL_INTERNALFORMAT_SUPPORTED                                     = 0x826F;
        inline static var GL_INTERNALFORMAT_PREFERRED                                     = 0x8270;
        inline static var GL_INTERNALFORMAT_RED_SIZE                                      = 0x8271;
        inline static var GL_INTERNALFORMAT_GREEN_SIZE                                    = 0x8272;
        inline static var GL_INTERNALFORMAT_BLUE_SIZE                                     = 0x8273;
        inline static var GL_INTERNALFORMAT_ALPHA_SIZE                                    = 0x8274;
        inline static var GL_INTERNALFORMAT_DEPTH_SIZE                                    = 0x8275;
        inline static var GL_INTERNALFORMAT_STENCIL_SIZE                                  = 0x8276;
        inline static var GL_INTERNALFORMAT_SHARED_SIZE                                   = 0x8277;
        inline static var GL_INTERNALFORMAT_RED_TYPE                                      = 0x8278;
        inline static var GL_INTERNALFORMAT_GREEN_TYPE                                    = 0x8279;
        inline static var GL_INTERNALFORMAT_BLUE_TYPE                                     = 0x827A;
        inline static var GL_INTERNALFORMAT_ALPHA_TYPE                                    = 0x827B;
        inline static var GL_INTERNALFORMAT_DEPTH_TYPE                                    = 0x827C;
        inline static var GL_INTERNALFORMAT_STENCIL_TYPE                                  = 0x827D;
        inline static var GL_MAX_WIDTH                                                    = 0x827E;
        inline static var GL_MAX_HEIGHT                                                   = 0x827F;
        inline static var GL_MAX_DEPTH                                                    = 0x8280;
        inline static var GL_MAX_LAYERS                                                   = 0x8281;
        inline static var GL_MAX_COMBINED_DIMENSIONS                                      = 0x8282;
        inline static var GL_COLOR_COMPONENTS                                             = 0x8283;
        inline static var GL_DEPTH_COMPONENTS                                             = 0x8284;
        inline static var GL_STENCIL_COMPONENTS                                           = 0x8285;
        inline static var GL_COLOR_RENDERABLE                                             = 0x8286;
        inline static var GL_DEPTH_RENDERABLE                                             = 0x8287;
        inline static var GL_STENCIL_RENDERABLE                                           = 0x8288;
        inline static var GL_FRAMEBUFFER_RENDERABLE                                       = 0x8289;
        inline static var GL_FRAMEBUFFER_RENDERABLE_LAYERED                               = 0x828A;
        inline static var GL_FRAMEBUFFER_BLEND                                            = 0x828B;
        inline static var GL_READ_PIXELS                                                  = 0x828C;
        inline static var GL_READ_PIXELS_FORMAT                                           = 0x828D;
        inline static var GL_READ_PIXELS_TYPE                                             = 0x828E;
        inline static var GL_TEXTURE_IMAGE_FORMAT                                         = 0x828F;
        inline static var GL_TEXTURE_IMAGE_TYPE                                           = 0x8290;
        inline static var GL_GET_TEXTURE_IMAGE_FORMAT                                     = 0x8291;
        inline static var GL_GET_TEXTURE_IMAGE_TYPE                                       = 0x8292;
        inline static var GL_MIPMAP                                                       = 0x8293;
        inline static var GL_MANUAL_GENERATE_MIPMAP                                       = 0x8294;
        inline static var GL_AUTO_GENERATE_MIPMAP                                         = 0x8295;
        inline static var GL_COLOR_ENCODING                                               = 0x8296;
        inline static var GL_SRGB_READ                                                    = 0x8297;
        inline static var GL_SRGB_WRITE                                                   = 0x8298;
        inline static var GL_SRGB_DECODE_ARB                                              = 0x8299;
        inline static var GL_FILTER                                                       = 0x829A;
        inline static var GL_VERTEX_TEXTURE                                               = 0x829B;
        inline static var GL_TESS_CONTROL_TEXTURE                                         = 0x829C;
        inline static var GL_TESS_EVALUATION_TEXTURE                                      = 0x829D;
        inline static var GL_GEOMETRY_TEXTURE                                             = 0x829E;
        inline static var GL_FRAGMENT_TEXTURE                                             = 0x829F;
        inline static var GL_COMPUTE_TEXTURE                                              = 0x82A0;
        inline static var GL_TEXTURE_SHADOW                                               = 0x82A1;
        inline static var GL_TEXTURE_GATHER                                               = 0x82A2;
        inline static var GL_TEXTURE_GATHER_SHADOW                                        = 0x82A3;
        inline static var GL_SHADER_IMAGE_LOAD                                            = 0x82A4;
        inline static var GL_SHADER_IMAGE_STORE                                           = 0x82A5;
        inline static var GL_SHADER_IMAGE_ATOMIC                                          = 0x82A6;
        inline static var GL_IMAGE_TEXEL_SIZE                                             = 0x82A7;
        inline static var GL_IMAGE_COMPATIBILITY_CLASS                                    = 0x82A8;
        inline static var GL_IMAGE_PIXEL_FORMAT                                           = 0x82A9;
        inline static var GL_IMAGE_PIXEL_TYPE                                             = 0x82AA;
        inline static var GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST                          = 0x82AC;
        inline static var GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST                        = 0x82AD;
        inline static var GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE                         = 0x82AE;
        inline static var GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE                       = 0x82AF;
        inline static var GL_TEXTURE_COMPRESSED_BLOCK_WIDTH                               = 0x82B1;
        inline static var GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT                              = 0x82B2;
        inline static var GL_TEXTURE_COMPRESSED_BLOCK_SIZE                                = 0x82B3;
        inline static var GL_CLEAR_BUFFER                                                 = 0x82B4;
        inline static var GL_TEXTURE_VIEW                                                 = 0x82B5;
        inline static var GL_VIEW_COMPATIBILITY_CLASS                                     = 0x82B6;
        inline static var GL_FULL_SUPPORT                                                 = 0x82B7;
        inline static var GL_CAVEAT_SUPPORT                                               = 0x82B8;
        inline static var GL_IMAGE_CLASS_4_X_32                                           = 0x82B9;
        inline static var GL_IMAGE_CLASS_2_X_32                                           = 0x82BA;
        inline static var GL_IMAGE_CLASS_1_X_32                                           = 0x82BB;
        inline static var GL_IMAGE_CLASS_4_X_16                                           = 0x82BC;
        inline static var GL_IMAGE_CLASS_2_X_16                                           = 0x82BD;
        inline static var GL_IMAGE_CLASS_1_X_16                                           = 0x82BE;
        inline static var GL_IMAGE_CLASS_4_X_8                                            = 0x82BF;
        inline static var GL_IMAGE_CLASS_2_X_8                                            = 0x82C0;
        inline static var GL_IMAGE_CLASS_1_X_8                                            = 0x82C1;
        inline static var GL_IMAGE_CLASS_11_11_10                                         = 0x82C2;
        inline static var GL_IMAGE_CLASS_10_10_10_2                                       = 0x82C3;
        inline static var GL_VIEW_CLASS_128_BITS                                          = 0x82C4;
        inline static var GL_VIEW_CLASS_96_BITS                                           = 0x82C5;
        inline static var GL_VIEW_CLASS_64_BITS                                           = 0x82C6;
        inline static var GL_VIEW_CLASS_48_BITS                                           = 0x82C7;
        inline static var GL_VIEW_CLASS_32_BITS                                           = 0x82C8;
        inline static var GL_VIEW_CLASS_24_BITS                                           = 0x82C9;
        inline static var GL_VIEW_CLASS_16_BITS                                           = 0x82CA;
        inline static var GL_VIEW_CLASS_8_BITS                                            = 0x82CB;
        inline static var GL_VIEW_CLASS_S3TC_DXT1_RGB                                     = 0x82CC;
        inline static var GL_VIEW_CLASS_S3TC_DXT1_RGBA                                    = 0x82CD;
        inline static var GL_VIEW_CLASS_S3TC_DXT3_RGBA                                    = 0x82CE;
        inline static var GL_VIEW_CLASS_S3TC_DXT5_RGBA                                    = 0x82CF;
        inline static var GL_VIEW_CLASS_RGTC1_RED                                         = 0x82D0;
        inline static var GL_VIEW_CLASS_RGTC2_RG                                          = 0x82D1;
        inline static var GL_VIEW_CLASS_BPTC_UNORM                                        = 0x82D2;
        inline static var GL_VIEW_CLASS_BPTC_FLOAT                                        = 0x82D3;




    // GL_ARB_internalformat_query2 functions




    // TODO functions

            
        // @:native('glGetInternalformati64v')
        // static function glGetInternalformati64v(target:Int, internalformat:Int, pname:Int, bufSize:Int, params:GLint64*) : Void;


//GL_ARB_invalidate_subdata

    // GL_ARB_invalidate_subdata defines

        inline static var GL_ARB_invalidate_subdata                                       = 1;




    // GL_ARB_invalidate_subdata functions

        @:native('glInvalidateBufferData')
        static function glInvalidateBufferData(buffer:UInt) : Void;

        @:native('glInvalidateBufferSubData')
        static function glInvalidateBufferSubData(buffer:UInt, offset:Int, length:Int) : Void;

        @:native('glInvalidateTexImage')
        static function glInvalidateTexImage(texture:UInt, level:Int) : Void;

        @:native('glInvalidateTexSubImage')
        static function glInvalidateTexSubImage(texture:UInt, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int) : Void;


        inline static function glInvalidateFramebuffer(target:Int, numAttachments:Int, attachments:Array<Int>) : Void
          { untyped __cpp__("glInvalidateFramebuffer({0}, {1}, (const GLenum*)&({2}[0]))", target, numAttachments, attachments); }

        inline static function glInvalidateSubFramebuffer(target:Int, numAttachments:Int, attachments:Array<Int>, x:Int, y:Int, width:Int, height:Int) : Void
          { untyped __cpp__("glInvalidateSubFramebuffer({0}, {1}, (const GLenum*)&({2}[0]), {3}, {4}, {5}, {6})", target, numAttachments, attachments, x, y, width, height); }




//GL_ARB_map_buffer_alignment

    // GL_ARB_map_buffer_alignment defines

        inline static var GL_ARB_map_buffer_alignment                                     = 1;
        inline static var GL_MIN_MAP_BUFFER_ALIGNMENT                                     = 0x90BC;


//GL_ARB_map_buffer_range

    // GL_ARB_map_buffer_range defines

        inline static var GL_ARB_map_buffer_range                                         = 1;
        inline static var GL_MAP_INVALIDATE_RANGE_BIT                                     = 0x0004;
        inline static var GL_MAP_INVALIDATE_BUFFER_BIT                                    = 0x0008;
        inline static var GL_MAP_FLUSH_EXPLICIT_BIT                                       = 0x0010;
        inline static var GL_MAP_UNSYNCHRONIZED_BIT                                       = 0x0020;




    // GL_ARB_map_buffer_range functions

        @:native('glFlushMappedBufferRange')
        static function glFlushMappedBufferRange(target:Int, offset:Int, length:Int) : Void;




    // TODO functions

            
        // @:native('glMapBufferRange')
        // static function glMapBufferRange(target:Int, offset:Int, length:Int, access:Int) : void *;


//GL_ARB_matrix_palette

    // GL_ARB_matrix_palette defines

        inline static var GL_ARB_matrix_palette                                           = 1;
        inline static var GL_MATRIX_PALETTE_ARB                                           = 0x8840;
        inline static var GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB                           = 0x8841;
        inline static var GL_MAX_PALETTE_MATRICES_ARB                                     = 0x8842;
        inline static var GL_CURRENT_PALETTE_MATRIX_ARB                                   = 0x8843;
        inline static var GL_MATRIX_INDEX_ARRAY_ARB                                       = 0x8844;
        inline static var GL_CURRENT_MATRIX_INDEX_ARB                                     = 0x8845;
        inline static var GL_MATRIX_INDEX_ARRAY_SIZE_ARB                                  = 0x8846;
        inline static var GL_MATRIX_INDEX_ARRAY_TYPE_ARB                                  = 0x8847;
        inline static var GL_MATRIX_INDEX_ARRAY_STRIDE_ARB                                = 0x8848;
        inline static var GL_MATRIX_INDEX_ARRAY_POINTER_ARB                               = 0x8849;




    // GL_ARB_matrix_palette functions

        @:native('glCurrentPaletteMatrixARB')
        static function glCurrentPaletteMatrixARB(index:Int) : Void;


        inline static function glMatrixIndexPointerARB(size:Int, type:Int, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glMatrixIndexPointerARB({0}, {1}, {2}, (void*)&({3}[0]))", size, type, stride, pointer); }

        inline static function glMatrixIndexubvARB(size:Int, indices:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glMatrixIndexubvARB({0}, (GLubyte*)&({1}[0]))", size, indices); }

        inline static function glMatrixIndexuivARB(size:Int, indices:Array<UInt>) : Void
          { untyped __cpp__("glMatrixIndexuivARB({0}, (GLuint*)&({1}[0]))", size, indices); }

        inline static function glMatrixIndexusvARB(size:Int, indices:Array<UInt>) : Void
          { untyped __cpp__("glMatrixIndexusvARB({0}, (GLushort*)&({1}[0]))", size, indices); }




//GL_ARB_multi_bind

    // GL_ARB_multi_bind defines

        inline static var GL_ARB_multi_bind                                               = 1;




    // GL_ARB_multi_bind functions


        inline static function glBindBuffersBase(target:Int, first:UInt, count:Int, buffers:Array<UInt>) : Void
          { untyped __cpp__("glBindBuffersBase({0}, {1}, {2}, (const GLuint*)&({3}[0]))", target, first, count, buffers); }

        inline static function glBindImageTextures(first:UInt, count:Int, textures:Array<UInt>) : Void
          { untyped __cpp__("glBindImageTextures({0}, {1}, (const GLuint*)&({2}[0]))", first, count, textures); }

        inline static function glBindSamplers(first:UInt, count:Int, samplers:Array<UInt>) : Void
          { untyped __cpp__("glBindSamplers({0}, {1}, (const GLuint*)&({2}[0]))", first, count, samplers); }

        inline static function glBindTextures(first:UInt, count:Int, textures:Array<UInt>) : Void
          { untyped __cpp__("glBindTextures({0}, {1}, (const GLuint*)&({2}[0]))", first, count, textures); }



    // TODO functions

            
        // inline static function glBindBuffersRange(target:Int, first:UInt, count:Int, buffers:Array<UInt>, offsets:const GLintptr*, sizes:const GLsizeiptr*) : Void
        // { untyped __cpp__("glBindBuffersRange({0}, {1}, {2}, (const GLuint*)&({3}[0]), {4}, {5})", target, first, count, buffers, offsets, sizes); }
            
        // inline static function glBindVertexBuffers(first:UInt, count:Int, buffers:Array<UInt>, offsets:const GLintptr*, strides:const GLsizei*) : Void
        // { untyped __cpp__("glBindVertexBuffers({0}, {1}, (const GLuint*)&({2}[0]), {3}, {4})", first, count, buffers, offsets, strides); }


//GL_ARB_multi_draw_indirect

    // GL_ARB_multi_draw_indirect defines

        inline static var GL_ARB_multi_draw_indirect                                      = 1;




    // GL_ARB_multi_draw_indirect functions


        inline static function glMultiDrawArraysIndirect(mode:Int, indirect:BytesData, primcount:Int, stride:Int) : Void
          { untyped __cpp__("glMultiDrawArraysIndirect({0}, (const void*)&({1}[0]), {2}, {3})", mode, indirect, primcount, stride); }

        inline static function glMultiDrawElementsIndirect(mode:Int, type:Int, indirect:BytesData, primcount:Int, stride:Int) : Void
          { untyped __cpp__("glMultiDrawElementsIndirect({0}, {1}, (const void*)&({2}[0]), {3}, {4})", mode, type, indirect, primcount, stride); }




//GL_ARB_multisample

    // GL_ARB_multisample defines

        inline static var GL_ARB_multisample                                              = 1;
        inline static var GL_MULTISAMPLE_ARB                                              = 0x809D;
        inline static var GL_SAMPLE_ALPHA_TO_COVERAGE_ARB                                 = 0x809E;
        inline static var GL_SAMPLE_ALPHA_TO_ONE_ARB                                      = 0x809F;
        inline static var GL_SAMPLE_COVERAGE_ARB                                          = 0x80A0;
        inline static var GL_SAMPLE_BUFFERS_ARB                                           = 0x80A8;
        inline static var GL_SAMPLES_ARB                                                  = 0x80A9;
        inline static var GL_SAMPLE_COVERAGE_VALUE_ARB                                    = 0x80AA;
        inline static var GL_SAMPLE_COVERAGE_INVERT_ARB                                   = 0x80AB;
        inline static var GL_MULTISAMPLE_BIT_ARB                                          = 0x20000000;




    // GL_ARB_multisample functions

        @:native('glSampleCoverageARB')
        static function glSampleCoverageARB(value:cpp.Float32, invert:Bool) : Void;





//GL_ARB_multitexture

    // GL_ARB_multitexture defines

        inline static var GL_ARB_multitexture                                             = 1;
        inline static var GL_TEXTURE0_ARB                                                 = 0x84C0;
        inline static var GL_TEXTURE1_ARB                                                 = 0x84C1;
        inline static var GL_TEXTURE2_ARB                                                 = 0x84C2;
        inline static var GL_TEXTURE3_ARB                                                 = 0x84C3;
        inline static var GL_TEXTURE4_ARB                                                 = 0x84C4;
        inline static var GL_TEXTURE5_ARB                                                 = 0x84C5;
        inline static var GL_TEXTURE6_ARB                                                 = 0x84C6;
        inline static var GL_TEXTURE7_ARB                                                 = 0x84C7;
        inline static var GL_TEXTURE8_ARB                                                 = 0x84C8;
        inline static var GL_TEXTURE9_ARB                                                 = 0x84C9;
        inline static var GL_TEXTURE10_ARB                                                = 0x84CA;
        inline static var GL_TEXTURE11_ARB                                                = 0x84CB;
        inline static var GL_TEXTURE12_ARB                                                = 0x84CC;
        inline static var GL_TEXTURE13_ARB                                                = 0x84CD;
        inline static var GL_TEXTURE14_ARB                                                = 0x84CE;
        inline static var GL_TEXTURE15_ARB                                                = 0x84CF;
        inline static var GL_TEXTURE16_ARB                                                = 0x84D0;
        inline static var GL_TEXTURE17_ARB                                                = 0x84D1;
        inline static var GL_TEXTURE18_ARB                                                = 0x84D2;
        inline static var GL_TEXTURE19_ARB                                                = 0x84D3;
        inline static var GL_TEXTURE20_ARB                                                = 0x84D4;
        inline static var GL_TEXTURE21_ARB                                                = 0x84D5;
        inline static var GL_TEXTURE22_ARB                                                = 0x84D6;
        inline static var GL_TEXTURE23_ARB                                                = 0x84D7;
        inline static var GL_TEXTURE24_ARB                                                = 0x84D8;
        inline static var GL_TEXTURE25_ARB                                                = 0x84D9;
        inline static var GL_TEXTURE26_ARB                                                = 0x84DA;
        inline static var GL_TEXTURE27_ARB                                                = 0x84DB;
        inline static var GL_TEXTURE28_ARB                                                = 0x84DC;
        inline static var GL_TEXTURE29_ARB                                                = 0x84DD;
        inline static var GL_TEXTURE30_ARB                                                = 0x84DE;
        inline static var GL_TEXTURE31_ARB                                                = 0x84DF;
        inline static var GL_ACTIVE_TEXTURE_ARB                                           = 0x84E0;
        inline static var GL_CLIENT_ACTIVE_TEXTURE_ARB                                    = 0x84E1;
        inline static var GL_MAX_TEXTURE_UNITS_ARB                                        = 0x84E2;




    // GL_ARB_multitexture functions

        @:native('glActiveTextureARB')
        static function glActiveTextureARB(texture:Int) : Void;

        @:native('glClientActiveTextureARB')
        static function glClientActiveTextureARB(texture:Int) : Void;

        @:native('glMultiTexCoord1dARB')
        static function glMultiTexCoord1dARB(target:Int, s:cpp.Float64) : Void;

        @:native('glMultiTexCoord1fARB')
        static function glMultiTexCoord1fARB(target:Int, s:cpp.Float32) : Void;

        @:native('glMultiTexCoord1iARB')
        static function glMultiTexCoord1iARB(target:Int, s:Int) : Void;

        @:native('glMultiTexCoord1sARB')
        static function glMultiTexCoord1sARB(target:Int, s:Int) : Void;

        @:native('glMultiTexCoord2dARB')
        static function glMultiTexCoord2dARB(target:Int, s:cpp.Float64, t:cpp.Float64) : Void;

        @:native('glMultiTexCoord2fARB')
        static function glMultiTexCoord2fARB(target:Int, s:cpp.Float32, t:cpp.Float32) : Void;

        @:native('glMultiTexCoord2iARB')
        static function glMultiTexCoord2iARB(target:Int, s:Int, t:Int) : Void;

        @:native('glMultiTexCoord2sARB')
        static function glMultiTexCoord2sARB(target:Int, s:Int, t:Int) : Void;

        @:native('glMultiTexCoord3dARB')
        static function glMultiTexCoord3dARB(target:Int, s:cpp.Float64, t:cpp.Float64, r:cpp.Float64) : Void;

        @:native('glMultiTexCoord3fARB')
        static function glMultiTexCoord3fARB(target:Int, s:cpp.Float32, t:cpp.Float32, r:cpp.Float32) : Void;

        @:native('glMultiTexCoord3iARB')
        static function glMultiTexCoord3iARB(target:Int, s:Int, t:Int, r:Int) : Void;

        @:native('glMultiTexCoord3sARB')
        static function glMultiTexCoord3sARB(target:Int, s:Int, t:Int, r:Int) : Void;

        @:native('glMultiTexCoord4dARB')
        static function glMultiTexCoord4dARB(target:Int, s:cpp.Float64, t:cpp.Float64, r:cpp.Float64, q:cpp.Float64) : Void;

        @:native('glMultiTexCoord4fARB')
        static function glMultiTexCoord4fARB(target:Int, s:cpp.Float32, t:cpp.Float32, r:cpp.Float32, q:cpp.Float32) : Void;

        @:native('glMultiTexCoord4iARB')
        static function glMultiTexCoord4iARB(target:Int, s:Int, t:Int, r:Int, q:Int) : Void;

        @:native('glMultiTexCoord4sARB')
        static function glMultiTexCoord4sARB(target:Int, s:Int, t:Int, r:Int, q:Int) : Void;


        inline static function glMultiTexCoord1dvARB(target:Int, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glMultiTexCoord1dvARB({0}, (const GLdouble*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord1fvARB(target:Int, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMultiTexCoord1fvARB({0}, (const GLfloat*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord1ivARB(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord1ivARB({0}, (const GLint*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord1svARB(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord1svARB({0}, (const GLshort*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord2dvARB(target:Int, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glMultiTexCoord2dvARB({0}, (const GLdouble*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord2fvARB(target:Int, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMultiTexCoord2fvARB({0}, (const GLfloat*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord2ivARB(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord2ivARB({0}, (const GLint*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord2svARB(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord2svARB({0}, (const GLshort*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord3dvARB(target:Int, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glMultiTexCoord3dvARB({0}, (const GLdouble*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord3fvARB(target:Int, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMultiTexCoord3fvARB({0}, (const GLfloat*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord3ivARB(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord3ivARB({0}, (const GLint*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord3svARB(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord3svARB({0}, (const GLshort*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord4dvARB(target:Int, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glMultiTexCoord4dvARB({0}, (const GLdouble*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord4fvARB(target:Int, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glMultiTexCoord4fvARB({0}, (const GLfloat*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord4ivARB(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord4ivARB({0}, (const GLint*)&({1}[0]))", target, v); }

        inline static function glMultiTexCoord4svARB(target:Int, v:Array<Int>) : Void
          { untyped __cpp__("glMultiTexCoord4svARB({0}, (const GLshort*)&({1}[0]))", target, v); }




//GL_ARB_occlusion_query

    // GL_ARB_occlusion_query defines

        inline static var GL_ARB_occlusion_query                                          = 1;
        inline static var GL_QUERY_COUNTER_BITS_ARB                                       = 0x8864;
        inline static var GL_CURRENT_QUERY_ARB                                            = 0x8865;
        inline static var GL_QUERY_RESULT_ARB                                             = 0x8866;
        inline static var GL_QUERY_RESULT_AVAILABLE_ARB                                   = 0x8867;
        inline static var GL_SAMPLES_PASSED_ARB                                           = 0x8914;




    // GL_ARB_occlusion_query functions

        @:native('glBeginQueryARB')
        static function glBeginQueryARB(target:Int, id:UInt) : Void;

        @:native('glEndQueryARB')
        static function glEndQueryARB(target:Int) : Void;

        @:native('glIsQueryARB')
        static function glIsQueryARB(id:UInt) : Bool;


        inline static function glDeleteQueriesARB(n:Int, ids:Array<UInt>) : Void
          { untyped __cpp__("glDeleteQueriesARB({0}, (const GLuint*)&({1}[0]))", n, ids); }

        inline static function glGenQueriesARB(n:Int, ids:Array<UInt>) : Void
          { untyped __cpp__("glGenQueriesARB({0}, (GLuint*)&({1}[0]))", n, ids); }

        inline static function glGetQueryObjectivARB(id:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetQueryObjectivARB({0}, {1}, (GLint*)&({2}[0]))", id, pname, params); }

        inline static function glGetQueryObjectuivARB(id:UInt, pname:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glGetQueryObjectuivARB({0}, {1}, (GLuint*)&({2}[0]))", id, pname, params); }

        inline static function glGetQueryivARB(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetQueryivARB({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }




//GL_ARB_occlusion_query2

    // GL_ARB_occlusion_query2 defines

        inline static var GL_ARB_occlusion_query2                                         = 1;
        inline static var GL_ANY_SAMPLES_PASSED                                           = 0x8C2F;


//GL_ARB_pipeline_statistics_query

    // GL_ARB_pipeline_statistics_query defines

        inline static var GL_ARB_pipeline_statistics_query                                = 1;
        inline static var GL_VERTICES_SUBMITTED_ARB                                       = 0x82EE;
        inline static var GL_PRIMITIVES_SUBMITTED_ARB                                     = 0x82EF;
        inline static var GL_VERTEX_SHADER_INVOCATIONS_ARB                                = 0x82F0;
        inline static var GL_TESS_CONTROL_SHADER_PATCHES_ARB                              = 0x82F1;
        inline static var GL_TESS_EVALUATION_SHADER_INVOCATIONS_ARB                       = 0x82F2;
        inline static var GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB                       = 0x82F3;
        inline static var GL_FRAGMENT_SHADER_INVOCATIONS_ARB                              = 0x82F4;
        inline static var GL_COMPUTE_SHADER_INVOCATIONS_ARB                               = 0x82F5;
        inline static var GL_CLIPPING_INPUT_PRIMITIVES_ARB                                = 0x82F6;
        inline static var GL_CLIPPING_OUTPUT_PRIMITIVES_ARB                               = 0x82F7;


//GL_ARB_pixel_buffer_object

    // GL_ARB_pixel_buffer_object defines

        inline static var GL_ARB_pixel_buffer_object                                      = 1;
        inline static var GL_PIXEL_PACK_BUFFER_ARB                                        = 0x88EB;
        inline static var GL_PIXEL_UNPACK_BUFFER_ARB                                      = 0x88EC;
        inline static var GL_PIXEL_PACK_BUFFER_BINDING_ARB                                = 0x88ED;
        inline static var GL_PIXEL_UNPACK_BUFFER_BINDING_ARB                              = 0x88EF;


//GL_ARB_point_parameters

    // GL_ARB_point_parameters defines

        inline static var GL_ARB_point_parameters                                         = 1;
        inline static var GL_POINT_SIZE_MIN_ARB                                           = 0x8126;
        inline static var GL_POINT_SIZE_MAX_ARB                                           = 0x8127;
        inline static var GL_POINT_FADE_THRESHOLD_SIZE_ARB                                = 0x8128;
        inline static var GL_POINT_DISTANCE_ATTENUATION_ARB                               = 0x8129;




    // GL_ARB_point_parameters functions

        @:native('glPointParameterfARB')
        static function glPointParameterfARB(pname:Int, param:cpp.Float32) : Void;


        inline static function glPointParameterfvARB(pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glPointParameterfvARB({0}, (const GLfloat*)&({1}[0]))", pname, params); }




//GL_ARB_point_sprite

    // GL_ARB_point_sprite defines

        inline static var GL_ARB_point_sprite                                             = 1;
        inline static var GL_POINT_SPRITE_ARB                                             = 0x8861;
        inline static var GL_COORD_REPLACE_ARB                                            = 0x8862;


//GL_ARB_program_interface_query

    // GL_ARB_program_interface_query defines

        inline static var GL_ARB_program_interface_query                                  = 1;
        inline static var GL_UNIFORM                                                      = 0x92E1;
        inline static var GL_UNIFORM_BLOCK                                                = 0x92E2;
        inline static var GL_PROGRAM_INPUT                                                = 0x92E3;
        inline static var GL_PROGRAM_OUTPUT                                               = 0x92E4;
        inline static var GL_BUFFER_VARIABLE                                              = 0x92E5;
        inline static var GL_SHADER_STORAGE_BLOCK                                         = 0x92E6;
        inline static var GL_IS_PER_PATCH                                                 = 0x92E7;
        inline static var GL_VERTEX_SUBROUTINE                                            = 0x92E8;
        inline static var GL_TESS_CONTROL_SUBROUTINE                                      = 0x92E9;
        inline static var GL_TESS_EVALUATION_SUBROUTINE                                   = 0x92EA;
        inline static var GL_GEOMETRY_SUBROUTINE                                          = 0x92EB;
        inline static var GL_FRAGMENT_SUBROUTINE                                          = 0x92EC;
        inline static var GL_COMPUTE_SUBROUTINE                                           = 0x92ED;
        inline static var GL_VERTEX_SUBROUTINE_UNIFORM                                    = 0x92EE;
        inline static var GL_TESS_CONTROL_SUBROUTINE_UNIFORM                              = 0x92EF;
        inline static var GL_TESS_EVALUATION_SUBROUTINE_UNIFORM                           = 0x92F0;
        inline static var GL_GEOMETRY_SUBROUTINE_UNIFORM                                  = 0x92F1;
        inline static var GL_FRAGMENT_SUBROUTINE_UNIFORM                                  = 0x92F2;
        inline static var GL_COMPUTE_SUBROUTINE_UNIFORM                                   = 0x92F3;
        inline static var GL_TRANSFORM_FEEDBACK_VARYING                                   = 0x92F4;
        inline static var GL_ACTIVE_RESOURCES                                             = 0x92F5;
        inline static var GL_MAX_NAME_LENGTH                                              = 0x92F6;
        inline static var GL_MAX_NUM_ACTIVE_VARIABLES                                     = 0x92F7;
        inline static var GL_MAX_NUM_COMPATIBLE_SUBROUTINES                               = 0x92F8;
        inline static var GL_NAME_LENGTH                                                  = 0x92F9;
        inline static var GL_TYPE                                                         = 0x92FA;
        inline static var GL_ARRAY_SIZE                                                   = 0x92FB;
        inline static var GL_OFFSET                                                       = 0x92FC;
        inline static var GL_BLOCK_INDEX                                                  = 0x92FD;
        inline static var GL_ARRAY_STRIDE                                                 = 0x92FE;
        inline static var GL_MATRIX_STRIDE                                                = 0x92FF;
        inline static var GL_IS_ROW_MAJOR                                                 = 0x9300;
        inline static var GL_ATOMIC_COUNTER_BUFFER_INDEX                                  = 0x9301;
        inline static var GL_BUFFER_BINDING                                               = 0x9302;
        inline static var GL_BUFFER_DATA_SIZE                                             = 0x9303;
        inline static var GL_NUM_ACTIVE_VARIABLES                                         = 0x9304;
        inline static var GL_ACTIVE_VARIABLES                                             = 0x9305;
        inline static var GL_REFERENCED_BY_VERTEX_SHADER                                  = 0x9306;
        inline static var GL_REFERENCED_BY_TESS_CONTROL_SHADER                            = 0x9307;
        inline static var GL_REFERENCED_BY_TESS_EVALUATION_SHADER                         = 0x9308;
        inline static var GL_REFERENCED_BY_GEOMETRY_SHADER                                = 0x9309;
        inline static var GL_REFERENCED_BY_FRAGMENT_SHADER                                = 0x930A;
        inline static var GL_REFERENCED_BY_COMPUTE_SHADER                                 = 0x930B;
        inline static var GL_TOP_LEVEL_ARRAY_SIZE                                         = 0x930C;
        inline static var GL_TOP_LEVEL_ARRAY_STRIDE                                       = 0x930D;
        inline static var GL_LOCATION                                                     = 0x930E;
        inline static var GL_LOCATION_INDEX                                               = 0x930F;




    // GL_ARB_program_interface_query functions

        @:native('glGetProgramResourceIndex')
        static function glGetProgramResourceIndex(program:UInt, programInterface:Int, name:String) : UInt;

        @:native('glGetProgramResourceLocation')
        static function glGetProgramResourceLocation(program:UInt, programInterface:Int, name:String) : Int;

        @:native('glGetProgramResourceLocationIndex')
        static function glGetProgramResourceLocationIndex(program:UInt, programInterface:Int, name:String) : Int;


        inline static function glGetProgramInterfaceiv(program:UInt, programInterface:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetProgramInterfaceiv({0}, {1}, {2}, (GLint*)&({3}[0]))", program, programInterface, pname, params); }



    // TODO functions

            
        // @:native('glGetProgramResourceName')
        // static function glGetProgramResourceName(program:UInt, programInterface:Int, index:UInt, bufSize:Int, length:GLsizei*, name:String) : Void;
            
        // inline static function glGetProgramResourceiv(program:UInt, programInterface:Int, index:UInt, propCount:Int, props:Array<Int>, bufSize:Int, length:GLsizei*, params:Array<Int>) : Void
        // { untyped __cpp__("glGetProgramResourceiv({0}, {1}, {2}, {3}, (const GLenum*)&({4}[0]), {5}, {6}, (GLint*)&({7}[0]))", program, programInterface, index, propCount, props, bufSize, length, params); }


//GL_ARB_provoking_vertex

    // GL_ARB_provoking_vertex defines

        inline static var GL_ARB_provoking_vertex                                         = 1;
        inline static var GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION                     = 0x8E4C;
        inline static var GL_FIRST_VERTEX_CONVENTION                                      = 0x8E4D;
        inline static var GL_LAST_VERTEX_CONVENTION                                       = 0x8E4E;
        inline static var GL_PROVOKING_VERTEX                                             = 0x8E4F;




    // GL_ARB_provoking_vertex functions

        @:native('glProvokingVertex')
        static function glProvokingVertex(mode:Int) : Void;





//GL_ARB_query_buffer_object

    // GL_ARB_query_buffer_object defines

        inline static var GL_ARB_query_buffer_object                                      = 1;
        inline static var GL_QUERY_BUFFER_BARRIER_BIT                                     = 0x00008000;
        inline static var GL_QUERY_BUFFER                                                 = 0x9192;
        inline static var GL_QUERY_BUFFER_BINDING                                         = 0x9193;
        inline static var GL_QUERY_RESULT_NO_WAIT                                         = 0x9194;


//GL_ARB_robust_buffer_access_behavior

    // GL_ARB_robust_buffer_access_behavior defines

        inline static var GL_ARB_robust_buffer_access_behavior                            = 1;


//GL_ARB_robustness

    // GL_ARB_robustness defines

        inline static var GL_ARB_robustness                                               = 1;
        inline static var GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB                           = 0x00000004;
        inline static var GL_LOSE_CONTEXT_ON_RESET_ARB                                    = 0x8252;
        inline static var GL_GUILTY_CONTEXT_RESET_ARB                                     = 0x8253;
        inline static var GL_INNOCENT_CONTEXT_RESET_ARB                                   = 0x8254;
        inline static var GL_UNKNOWN_CONTEXT_RESET_ARB                                    = 0x8255;
        inline static var GL_RESET_NOTIFICATION_STRATEGY_ARB                              = 0x8256;
        inline static var GL_NO_RESET_NOTIFICATION_ARB                                    = 0x8261;




    // GL_ARB_robustness functions

        @:native('glGetGraphicsResetStatusARB')
        static function glGetGraphicsResetStatusARB() : Int;


        inline static function glGetnColorTableARB(target:Int, format:Int, type:Int, bufSize:Int, table:BytesData) : Void
          { untyped __cpp__("glGetnColorTableARB({0}, {1}, {2}, {3}, (void*)&({4}[0]))", target, format, type, bufSize, table); }

        inline static function glGetnCompressedTexImageARB(target:Int, lod:Int, bufSize:Int, img:BytesData) : Void
          { untyped __cpp__("glGetnCompressedTexImageARB({0}, {1}, {2}, (void*)&({3}[0]))", target, lod, bufSize, img); }

        inline static function glGetnConvolutionFilterARB(target:Int, format:Int, type:Int, bufSize:Int, image:BytesData) : Void
          { untyped __cpp__("glGetnConvolutionFilterARB({0}, {1}, {2}, {3}, (void*)&({4}[0]))", target, format, type, bufSize, image); }

        inline static function glGetnHistogramARB(target:Int, reset:Bool, format:Int, type:Int, bufSize:Int, values:BytesData) : Void
          { untyped __cpp__("glGetnHistogramARB({0}, {1}, {2}, {3}, {4}, (void*)&({5}[0]))", target, reset, format, type, bufSize, values); }

        inline static function glGetnMapdvARB(target:Int, query:Int, bufSize:Int, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetnMapdvARB({0}, {1}, {2}, (GLdouble*)&({3}[0]))", target, query, bufSize, v); }

        inline static function glGetnMapfvARB(target:Int, query:Int, bufSize:Int, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetnMapfvARB({0}, {1}, {2}, (GLfloat*)&({3}[0]))", target, query, bufSize, v); }

        inline static function glGetnMapivARB(target:Int, query:Int, bufSize:Int, v:Array<Int>) : Void
          { untyped __cpp__("glGetnMapivARB({0}, {1}, {2}, (GLint*)&({3}[0]))", target, query, bufSize, v); }

        inline static function glGetnMinmaxARB(target:Int, reset:Bool, format:Int, type:Int, bufSize:Int, values:BytesData) : Void
          { untyped __cpp__("glGetnMinmaxARB({0}, {1}, {2}, {3}, {4}, (void*)&({5}[0]))", target, reset, format, type, bufSize, values); }

        inline static function glGetnPixelMapfvARB(map:Int, bufSize:Int, values:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetnPixelMapfvARB({0}, {1}, (GLfloat*)&({2}[0]))", map, bufSize, values); }

        inline static function glGetnPixelMapuivARB(map:Int, bufSize:Int, values:Array<UInt>) : Void
          { untyped __cpp__("glGetnPixelMapuivARB({0}, {1}, (GLuint*)&({2}[0]))", map, bufSize, values); }

        inline static function glGetnPixelMapusvARB(map:Int, bufSize:Int, values:Array<UInt>) : Void
          { untyped __cpp__("glGetnPixelMapusvARB({0}, {1}, (GLushort*)&({2}[0]))", map, bufSize, values); }

        inline static function glGetnPolygonStippleARB(bufSize:Int, pattern:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glGetnPolygonStippleARB({0}, (GLubyte*)&({1}[0]))", bufSize, pattern); }

        inline static function glGetnTexImageARB(target:Int, level:Int, format:Int, type:Int, bufSize:Int, img:BytesData) : Void
          { untyped __cpp__("glGetnTexImageARB({0}, {1}, {2}, {3}, {4}, (void*)&({5}[0]))", target, level, format, type, bufSize, img); }

        inline static function glGetnUniformdvARB(program:UInt, location:Int, bufSize:Int, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetnUniformdvARB({0}, {1}, {2}, (GLdouble*)&({3}[0]))", program, location, bufSize, params); }

        inline static function glGetnUniformfvARB(program:UInt, location:Int, bufSize:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetnUniformfvARB({0}, {1}, {2}, (GLfloat*)&({3}[0]))", program, location, bufSize, params); }

        inline static function glGetnUniformivARB(program:UInt, location:Int, bufSize:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetnUniformivARB({0}, {1}, {2}, (GLint*)&({3}[0]))", program, location, bufSize, params); }

        inline static function glGetnUniformuivARB(program:UInt, location:Int, bufSize:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glGetnUniformuivARB({0}, {1}, {2}, (GLuint*)&({3}[0]))", program, location, bufSize, params); }

        inline static function glReadnPixelsARB(x:Int, y:Int, width:Int, height:Int, format:Int, type:Int, bufSize:Int, data:BytesData) : Void
          { untyped __cpp__("glReadnPixelsARB({0}, {1}, {2}, {3}, {4}, {5}, {6}, (void*)&({7}[0]))", x, y, width, height, format, type, bufSize, data); }



    // TODO functions

            
        // inline static function glGetnSeparableFilterARB(target:Int, format:Int, type:Int, rowBufSize:Int, row:BytesData, columnBufSize:Int, void*column:, void*span:) : Void
        // { untyped __cpp__("glGetnSeparableFilterARB({0}, {1}, {2}, {3}, (void*)&({4}[0]), {5}, {6}, {7})", target, format, type, rowBufSize, row, columnBufSize, void*column, void*span); }


//GL_ARB_robustness_application_isolation

    // GL_ARB_robustness_application_isolation defines

        inline static var GL_ARB_robustness_application_isolation                         = 1;


//GL_ARB_robustness_share_group_isolation

    // GL_ARB_robustness_share_group_isolation defines

        inline static var GL_ARB_robustness_share_group_isolation                         = 1;


//GL_ARB_sample_shading

    // GL_ARB_sample_shading defines

        inline static var GL_ARB_sample_shading                                           = 1;
        inline static var GL_SAMPLE_SHADING_ARB                                           = 0x8C36;
        inline static var GL_MIN_SAMPLE_SHADING_VALUE_ARB                                 = 0x8C37;




    // GL_ARB_sample_shading functions

        @:native('glMinSampleShadingARB')
        static function glMinSampleShadingARB(value:cpp.Float32) : Void;





//GL_ARB_sampler_objects

    // GL_ARB_sampler_objects defines

        inline static var GL_ARB_sampler_objects                                          = 1;
        inline static var GL_SAMPLER_BINDING                                              = 0x8919;




    // GL_ARB_sampler_objects functions

        @:native('glBindSampler')
        static function glBindSampler(unit:UInt, sampler:UInt) : Void;

        @:native('glIsSampler')
        static function glIsSampler(sampler:UInt) : Bool;

        @:native('glSamplerParameterf')
        static function glSamplerParameterf(sampler:UInt, pname:Int, param:cpp.Float32) : Void;

        @:native('glSamplerParameteri')
        static function glSamplerParameteri(sampler:UInt, pname:Int, param:Int) : Void;


        inline static function glGenSamplers(count:Int, samplers:Array<UInt>) : Void
          { untyped __cpp__("glGenSamplers({0}, (GLuint*)&({1}[0]))", count, samplers); }

        inline static function glGetSamplerParameterIiv(sampler:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetSamplerParameterIiv({0}, {1}, (GLint*)&({2}[0]))", sampler, pname, params); }

        inline static function glGetSamplerParameterIuiv(sampler:UInt, pname:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glGetSamplerParameterIuiv({0}, {1}, (GLuint*)&({2}[0]))", sampler, pname, params); }

        inline static function glGetSamplerParameterfv(sampler:UInt, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetSamplerParameterfv({0}, {1}, (GLfloat*)&({2}[0]))", sampler, pname, params); }

        inline static function glGetSamplerParameteriv(sampler:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetSamplerParameteriv({0}, {1}, (GLint*)&({2}[0]))", sampler, pname, params); }

        inline static function glSamplerParameterIiv(sampler:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glSamplerParameterIiv({0}, {1}, (const GLint*)&({2}[0]))", sampler, pname, params); }

        inline static function glSamplerParameterIuiv(sampler:UInt, pname:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glSamplerParameterIuiv({0}, {1}, (const GLuint*)&({2}[0]))", sampler, pname, params); }

        inline static function glSamplerParameterfv(sampler:UInt, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glSamplerParameterfv({0}, {1}, (const GLfloat*)&({2}[0]))", sampler, pname, params); }

        inline static function glSamplerParameteriv(sampler:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glSamplerParameteriv({0}, {1}, (const GLint*)&({2}[0]))", sampler, pname, params); }



    // TODO functions

            
        // @:native('glDeleteSamplers')
        // static function glDeleteSamplers(count:Int, samplers:const GLuint *) : Void;


//GL_ARB_seamless_cube_map

    // GL_ARB_seamless_cube_map defines

        inline static var GL_ARB_seamless_cube_map                                        = 1;
        inline static var GL_TEXTURE_CUBE_MAP_SEAMLESS                                    = 0x884F;


//GL_ARB_seamless_cubemap_per_texture

    // GL_ARB_seamless_cubemap_per_texture defines

        inline static var GL_ARB_seamless_cubemap_per_texture                             = 1;


//GL_ARB_separate_shader_objects

    // GL_ARB_separate_shader_objects defines

        inline static var GL_ARB_separate_shader_objects                                  = 1;
        inline static var GL_VERTEX_SHADER_BIT                                            = 0x00000001;
        inline static var GL_FRAGMENT_SHADER_BIT                                          = 0x00000002;
        inline static var GL_GEOMETRY_SHADER_BIT                                          = 0x00000004;
        inline static var GL_TESS_CONTROL_SHADER_BIT                                      = 0x00000008;
        inline static var GL_TESS_EVALUATION_SHADER_BIT                                   = 0x00000010;
        inline static var GL_PROGRAM_SEPARABLE                                            = 0x8258;
        inline static var GL_ACTIVE_PROGRAM                                               = 0x8259;
        inline static var GL_PROGRAM_PIPELINE_BINDING                                     = 0x825A;
        inline static var GL_ALL_SHADER_BITS                                              = 0xFFFFFFFF;




    // GL_ARB_separate_shader_objects functions

        @:native('glActiveShaderProgram')
        static function glActiveShaderProgram(pipeline:UInt, program:UInt) : Void;

        @:native('glBindProgramPipeline')
        static function glBindProgramPipeline(pipeline:UInt) : Void;

        @:native('glIsProgramPipeline')
        static function glIsProgramPipeline(pipeline:UInt) : Bool;

        @:native('glProgramUniform1d')
        static function glProgramUniform1d(program:UInt, location:Int, x:cpp.Float64) : Void;

        @:native('glProgramUniform1f')
        static function glProgramUniform1f(program:UInt, location:Int, x:cpp.Float32) : Void;

        @:native('glProgramUniform1i')
        static function glProgramUniform1i(program:UInt, location:Int, x:Int) : Void;

        @:native('glProgramUniform1ui')
        static function glProgramUniform1ui(program:UInt, location:Int, x:UInt) : Void;

        @:native('glProgramUniform2d')
        static function glProgramUniform2d(program:UInt, location:Int, x:cpp.Float64, y:cpp.Float64) : Void;

        @:native('glProgramUniform2f')
        static function glProgramUniform2f(program:UInt, location:Int, x:cpp.Float32, y:cpp.Float32) : Void;

        @:native('glProgramUniform2i')
        static function glProgramUniform2i(program:UInt, location:Int, x:Int, y:Int) : Void;

        @:native('glProgramUniform2ui')
        static function glProgramUniform2ui(program:UInt, location:Int, x:UInt, y:UInt) : Void;

        @:native('glProgramUniform3d')
        static function glProgramUniform3d(program:UInt, location:Int, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glProgramUniform3f')
        static function glProgramUniform3f(program:UInt, location:Int, x:cpp.Float32, y:cpp.Float32, z:cpp.Float32) : Void;

        @:native('glProgramUniform3i')
        static function glProgramUniform3i(program:UInt, location:Int, x:Int, y:Int, z:Int) : Void;

        @:native('glProgramUniform3ui')
        static function glProgramUniform3ui(program:UInt, location:Int, x:UInt, y:UInt, z:UInt) : Void;

        @:native('glProgramUniform4d')
        static function glProgramUniform4d(program:UInt, location:Int, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64, w:cpp.Float64) : Void;

        @:native('glProgramUniform4f')
        static function glProgramUniform4f(program:UInt, location:Int, x:cpp.Float32, y:cpp.Float32, z:cpp.Float32, w:cpp.Float32) : Void;

        @:native('glProgramUniform4i')
        static function glProgramUniform4i(program:UInt, location:Int, x:Int, y:Int, z:Int, w:Int) : Void;

        @:native('glProgramUniform4ui')
        static function glProgramUniform4ui(program:UInt, location:Int, x:UInt, y:UInt, z:UInt, w:UInt) : Void;

        @:native('glUseProgramStages')
        static function glUseProgramStages(pipeline:UInt, stages:Int, program:UInt) : Void;

        @:native('glValidateProgramPipeline')
        static function glValidateProgramPipeline(pipeline:UInt) : Void;


        inline static function glDeleteProgramPipelines(n:Int, pipelines:Array<UInt>) : Void
          { untyped __cpp__("glDeleteProgramPipelines({0}, (const GLuint*)&({1}[0]))", n, pipelines); }

        inline static function glGenProgramPipelines(n:Int, pipelines:Array<UInt>) : Void
          { untyped __cpp__("glGenProgramPipelines({0}, (GLuint*)&({1}[0]))", n, pipelines); }

        inline static function glGetProgramPipelineiv(pipeline:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetProgramPipelineiv({0}, {1}, (GLint*)&({2}[0]))", pipeline, pname, params); }

        inline static function glProgramUniform1dv(program:UInt, location:Int, count:Int, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniform1dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform1fv(program:UInt, location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniform1fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform1iv(program:UInt, location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glProgramUniform1iv({0}, {1}, {2}, (const GLint*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform1uiv(program:UInt, location:Int, count:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glProgramUniform1uiv({0}, {1}, {2}, (const GLuint*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform2dv(program:UInt, location:Int, count:Int, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniform2dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform2fv(program:UInt, location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniform2fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform2iv(program:UInt, location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glProgramUniform2iv({0}, {1}, {2}, (const GLint*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform2uiv(program:UInt, location:Int, count:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glProgramUniform2uiv({0}, {1}, {2}, (const GLuint*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform3dv(program:UInt, location:Int, count:Int, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniform3dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform3fv(program:UInt, location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniform3fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform3iv(program:UInt, location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glProgramUniform3iv({0}, {1}, {2}, (const GLint*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform3uiv(program:UInt, location:Int, count:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glProgramUniform3uiv({0}, {1}, {2}, (const GLuint*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform4dv(program:UInt, location:Int, count:Int, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniform4dv({0}, {1}, {2}, (const GLdouble*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform4fv(program:UInt, location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniform4fv({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform4iv(program:UInt, location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glProgramUniform4iv({0}, {1}, {2}, (const GLint*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniform4uiv(program:UInt, location:Int, count:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glProgramUniform4uiv({0}, {1}, {2}, (const GLuint*)&({3}[0]))", program, location, count, value); }

        inline static function glProgramUniformMatrix2dv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniformMatrix2dv({0}, {1}, {2}, {3}, (const GLdouble*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix2fv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniformMatrix2fv({0}, {1}, {2}, {3}, (const GLfloat*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix2x3dv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniformMatrix2x3dv({0}, {1}, {2}, {3}, (const GLdouble*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix2x3fv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniformMatrix2x3fv({0}, {1}, {2}, {3}, (const GLfloat*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix2x4dv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniformMatrix2x4dv({0}, {1}, {2}, {3}, (const GLdouble*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix2x4fv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniformMatrix2x4fv({0}, {1}, {2}, {3}, (const GLfloat*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix3dv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniformMatrix3dv({0}, {1}, {2}, {3}, (const GLdouble*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix3fv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniformMatrix3fv({0}, {1}, {2}, {3}, (const GLfloat*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix3x2dv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniformMatrix3x2dv({0}, {1}, {2}, {3}, (const GLdouble*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix3x2fv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniformMatrix3x2fv({0}, {1}, {2}, {3}, (const GLfloat*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix3x4dv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniformMatrix3x4dv({0}, {1}, {2}, {3}, (const GLdouble*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix3x4fv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniformMatrix3x4fv({0}, {1}, {2}, {3}, (const GLfloat*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix4dv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniformMatrix4dv({0}, {1}, {2}, {3}, (const GLdouble*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix4fv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniformMatrix4fv({0}, {1}, {2}, {3}, (const GLfloat*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix4x2dv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniformMatrix4x2dv({0}, {1}, {2}, {3}, (const GLdouble*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix4x2fv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniformMatrix4x2fv({0}, {1}, {2}, {3}, (const GLfloat*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix4x3dv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramUniformMatrix4x3dv({0}, {1}, {2}, {3}, (const GLdouble*)&({4}[0]))", program, location, count, transpose, value); }

        inline static function glProgramUniformMatrix4x3fv(program:UInt, location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramUniformMatrix4x3fv({0}, {1}, {2}, {3}, (const GLfloat*)&({4}[0]))", program, location, count, transpose, value); }



    // TODO functions

            
        // @:native('glCreateShaderProgramv')
        // static function glCreateShaderProgramv(type:Int, count:Int, strings:const GLchar * const *) : UInt;
            
        // @:native('glGetProgramPipelineInfoLog')
        // static function glGetProgramPipelineInfoLog(pipeline:UInt, bufSize:Int, length:GLsizei*, infoLog:String) : Void;


//GL_ARB_shader_atomic_counters

    // GL_ARB_shader_atomic_counters defines

        inline static var GL_ARB_shader_atomic_counters                                   = 1;
        inline static var GL_ATOMIC_COUNTER_BUFFER                                        = 0x92C0;
        inline static var GL_ATOMIC_COUNTER_BUFFER_BINDING                                = 0x92C1;
        inline static var GL_ATOMIC_COUNTER_BUFFER_START                                  = 0x92C2;
        inline static var GL_ATOMIC_COUNTER_BUFFER_SIZE                                   = 0x92C3;
        inline static var GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE                              = 0x92C4;
        inline static var GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS                 = 0x92C5;
        inline static var GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES          = 0x92C6;
        inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER            = 0x92C7;
        inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER      = 0x92C8;
        inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER   = 0x92C9;
        inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER          = 0x92CA;
        inline static var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER          = 0x92CB;
        inline static var GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS                            = 0x92CC;
        inline static var GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS                      = 0x92CD;
        inline static var GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS                   = 0x92CE;
        inline static var GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS                          = 0x92CF;
        inline static var GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS                          = 0x92D0;
        inline static var GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS                          = 0x92D1;
        inline static var GL_MAX_VERTEX_ATOMIC_COUNTERS                                   = 0x92D2;
        inline static var GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS                             = 0x92D3;
        inline static var GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS                          = 0x92D4;
        inline static var GL_MAX_GEOMETRY_ATOMIC_COUNTERS                                 = 0x92D5;
        inline static var GL_MAX_FRAGMENT_ATOMIC_COUNTERS                                 = 0x92D6;
        inline static var GL_MAX_COMBINED_ATOMIC_COUNTERS                                 = 0x92D7;
        inline static var GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE                               = 0x92D8;
        inline static var GL_ACTIVE_ATOMIC_COUNTER_BUFFERS                                = 0x92D9;
        inline static var GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX                          = 0x92DA;
        inline static var GL_UNSIGNED_INT_ATOMIC_COUNTER                                  = 0x92DB;
        inline static var GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS                           = 0x92DC;




    // GL_ARB_shader_atomic_counters functions


        inline static function glGetActiveAtomicCounterBufferiv(program:UInt, bufferIndex:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetActiveAtomicCounterBufferiv({0}, {1}, {2}, (GLint*)&({3}[0]))", program, bufferIndex, pname, params); }




//GL_ARB_shader_bit_encoding

    // GL_ARB_shader_bit_encoding defines

        inline static var GL_ARB_shader_bit_encoding                                      = 1;


//GL_ARB_shader_draw_parameters

    // GL_ARB_shader_draw_parameters defines

        inline static var GL_ARB_shader_draw_parameters                                   = 1;


//GL_ARB_shader_group_vote

    // GL_ARB_shader_group_vote defines

        inline static var GL_ARB_shader_group_vote                                        = 1;


//GL_ARB_shader_image_load_store

    // GL_ARB_shader_image_load_store defines

        inline static var GL_ARB_shader_image_load_store                                  = 1;
        inline static var GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT                              = 0x00000001;
        inline static var GL_ELEMENT_ARRAY_BARRIER_BIT                                    = 0x00000002;
        inline static var GL_UNIFORM_BARRIER_BIT                                          = 0x00000004;
        inline static var GL_TEXTURE_FETCH_BARRIER_BIT                                    = 0x00000008;
        inline static var GL_SHADER_IMAGE_ACCESS_BARRIER_BIT                              = 0x00000020;
        inline static var GL_COMMAND_BARRIER_BIT                                          = 0x00000040;
        inline static var GL_PIXEL_BUFFER_BARRIER_BIT                                     = 0x00000080;
        inline static var GL_TEXTURE_UPDATE_BARRIER_BIT                                   = 0x00000100;
        inline static var GL_BUFFER_UPDATE_BARRIER_BIT                                    = 0x00000200;
        inline static var GL_FRAMEBUFFER_BARRIER_BIT                                      = 0x00000400;
        inline static var GL_TRANSFORM_FEEDBACK_BARRIER_BIT                               = 0x00000800;
        inline static var GL_ATOMIC_COUNTER_BARRIER_BIT                                   = 0x00001000;
        inline static var GL_MAX_IMAGE_UNITS                                              = 0x8F38;
        inline static var GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS                = 0x8F39;
        inline static var GL_IMAGE_BINDING_NAME                                           = 0x8F3A;
        inline static var GL_IMAGE_BINDING_LEVEL                                          = 0x8F3B;
        inline static var GL_IMAGE_BINDING_LAYERED                                        = 0x8F3C;
        inline static var GL_IMAGE_BINDING_LAYER                                          = 0x8F3D;
        inline static var GL_IMAGE_BINDING_ACCESS                                         = 0x8F3E;
        inline static var GL_IMAGE_1D                                                     = 0x904C;
        inline static var GL_IMAGE_2D                                                     = 0x904D;
        inline static var GL_IMAGE_3D                                                     = 0x904E;
        inline static var GL_IMAGE_2D_RECT                                                = 0x904F;
        inline static var GL_IMAGE_CUBE                                                   = 0x9050;
        inline static var GL_IMAGE_BUFFER                                                 = 0x9051;
        inline static var GL_IMAGE_1D_ARRAY                                               = 0x9052;
        inline static var GL_IMAGE_2D_ARRAY                                               = 0x9053;
        inline static var GL_IMAGE_CUBE_MAP_ARRAY                                         = 0x9054;
        inline static var GL_IMAGE_2D_MULTISAMPLE                                         = 0x9055;
        inline static var GL_IMAGE_2D_MULTISAMPLE_ARRAY                                   = 0x9056;
        inline static var GL_INT_IMAGE_1D                                                 = 0x9057;
        inline static var GL_INT_IMAGE_2D                                                 = 0x9058;
        inline static var GL_INT_IMAGE_3D                                                 = 0x9059;
        inline static var GL_INT_IMAGE_2D_RECT                                            = 0x905A;
        inline static var GL_INT_IMAGE_CUBE                                               = 0x905B;
        inline static var GL_INT_IMAGE_BUFFER                                             = 0x905C;
        inline static var GL_INT_IMAGE_1D_ARRAY                                           = 0x905D;
        inline static var GL_INT_IMAGE_2D_ARRAY                                           = 0x905E;
        inline static var GL_INT_IMAGE_CUBE_MAP_ARRAY                                     = 0x905F;
        inline static var GL_INT_IMAGE_2D_MULTISAMPLE                                     = 0x9060;
        inline static var GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY                               = 0x9061;
        inline static var GL_UNSIGNED_INT_IMAGE_1D                                        = 0x9062;
        inline static var GL_UNSIGNED_INT_IMAGE_2D                                        = 0x9063;
        inline static var GL_UNSIGNED_INT_IMAGE_3D                                        = 0x9064;
        inline static var GL_UNSIGNED_INT_IMAGE_2D_RECT                                   = 0x9065;
        inline static var GL_UNSIGNED_INT_IMAGE_CUBE                                      = 0x9066;
        inline static var GL_UNSIGNED_INT_IMAGE_BUFFER                                    = 0x9067;
        inline static var GL_UNSIGNED_INT_IMAGE_1D_ARRAY                                  = 0x9068;
        inline static var GL_UNSIGNED_INT_IMAGE_2D_ARRAY                                  = 0x9069;
        inline static var GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY                            = 0x906A;
        inline static var GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE                            = 0x906B;
        inline static var GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY                      = 0x906C;
        inline static var GL_MAX_IMAGE_SAMPLES                                            = 0x906D;
        inline static var GL_IMAGE_BINDING_FORMAT                                         = 0x906E;
        inline static var GL_IMAGE_FORMAT_COMPATIBILITY_TYPE                              = 0x90C7;
        inline static var GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE                           = 0x90C8;
        inline static var GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS                          = 0x90C9;
        inline static var GL_MAX_VERTEX_IMAGE_UNIFORMS                                    = 0x90CA;
        inline static var GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS                              = 0x90CB;
        inline static var GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS                           = 0x90CC;
        inline static var GL_MAX_GEOMETRY_IMAGE_UNIFORMS                                  = 0x90CD;
        inline static var GL_MAX_FRAGMENT_IMAGE_UNIFORMS                                  = 0x90CE;
        inline static var GL_MAX_COMBINED_IMAGE_UNIFORMS                                  = 0x90CF;
        inline static var GL_ALL_BARRIER_BITS                                             = 0xFFFFFFFF;




    // GL_ARB_shader_image_load_store functions

        @:native('glBindImageTexture')
        static function glBindImageTexture(unit:UInt, texture:UInt, level:Int, layered:Bool, layer:Int, access:Int, format:Int) : Void;

        @:native('glMemoryBarrier')
        static function glMemoryBarrier(barriers:Int) : Void;





//GL_ARB_shader_image_size

    // GL_ARB_shader_image_size defines

        inline static var GL_ARB_shader_image_size                                        = 1;


//GL_ARB_shader_objects

    // GL_ARB_shader_objects defines

        inline static var GL_ARB_shader_objects                                           = 1;
        inline static var GL_PROGRAM_OBJECT_ARB                                           = 0x8B40;
        inline static var GL_SHADER_OBJECT_ARB                                            = 0x8B48;
        inline static var GL_OBJECT_TYPE_ARB                                              = 0x8B4E;
        inline static var GL_OBJECT_SUBTYPE_ARB                                           = 0x8B4F;
        inline static var GL_FLOAT_VEC2_ARB                                               = 0x8B50;
        inline static var GL_FLOAT_VEC3_ARB                                               = 0x8B51;
        inline static var GL_FLOAT_VEC4_ARB                                               = 0x8B52;
        inline static var GL_INT_VEC2_ARB                                                 = 0x8B53;
        inline static var GL_INT_VEC3_ARB                                                 = 0x8B54;
        inline static var GL_INT_VEC4_ARB                                                 = 0x8B55;
        inline static var GL_BOOL_ARB                                                     = 0x8B56;
        inline static var GL_BOOL_VEC2_ARB                                                = 0x8B57;
        inline static var GL_BOOL_VEC3_ARB                                                = 0x8B58;
        inline static var GL_BOOL_VEC4_ARB                                                = 0x8B59;
        inline static var GL_FLOAT_MAT2_ARB                                               = 0x8B5A;
        inline static var GL_FLOAT_MAT3_ARB                                               = 0x8B5B;
        inline static var GL_FLOAT_MAT4_ARB                                               = 0x8B5C;
        inline static var GL_SAMPLER_1D_ARB                                               = 0x8B5D;
        inline static var GL_SAMPLER_2D_ARB                                               = 0x8B5E;
        inline static var GL_SAMPLER_3D_ARB                                               = 0x8B5F;
        inline static var GL_SAMPLER_CUBE_ARB                                             = 0x8B60;
        inline static var GL_SAMPLER_1D_SHADOW_ARB                                        = 0x8B61;
        inline static var GL_SAMPLER_2D_SHADOW_ARB                                        = 0x8B62;
        inline static var GL_SAMPLER_2D_RECT_ARB                                          = 0x8B63;
        inline static var GL_SAMPLER_2D_RECT_SHADOW_ARB                                   = 0x8B64;
        inline static var GL_OBJECT_DELETE_STATUS_ARB                                     = 0x8B80;
        inline static var GL_OBJECT_COMPILE_STATUS_ARB                                    = 0x8B81;
        inline static var GL_OBJECT_LINK_STATUS_ARB                                       = 0x8B82;
        inline static var GL_OBJECT_VALIDATE_STATUS_ARB                                   = 0x8B83;
        inline static var GL_OBJECT_INFO_LOG_LENGTH_ARB                                   = 0x8B84;
        inline static var GL_OBJECT_ATTACHED_OBJECTS_ARB                                  = 0x8B85;
        inline static var GL_OBJECT_ACTIVE_UNIFORMS_ARB                                   = 0x8B86;
        inline static var GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB                         = 0x8B87;
        inline static var GL_OBJECT_SHADER_SOURCE_LENGTH_ARB                              = 0x8B88;




    // GL_ARB_shader_objects functions

        @:native('glAttachObjectARB')
        static function glAttachObjectARB(containerObj:UInt, obj:UInt) : Void;

        @:native('glCompileShaderARB')
        static function glCompileShaderARB(shaderObj:UInt) : Void;

        @:native('glCreateProgramObjectARB')
        static function glCreateProgramObjectARB() : UInt;

        @:native('glCreateShaderObjectARB')
        static function glCreateShaderObjectARB(shaderType:Int) : UInt;

        @:native('glDeleteObjectARB')
        static function glDeleteObjectARB(obj:UInt) : Void;

        @:native('glDetachObjectARB')
        static function glDetachObjectARB(containerObj:UInt, attachedObj:UInt) : Void;

        @:native('glGetHandleARB')
        static function glGetHandleARB(pname:Int) : UInt;

        @:native('glLinkProgramARB')
        static function glLinkProgramARB(programObj:UInt) : Void;

        @:native('glUniform1fARB')
        static function glUniform1fARB(location:Int, v0:cpp.Float32) : Void;

        @:native('glUniform1iARB')
        static function glUniform1iARB(location:Int, v0:Int) : Void;

        @:native('glUniform2fARB')
        static function glUniform2fARB(location:Int, v0:cpp.Float32, v1:cpp.Float32) : Void;

        @:native('glUniform2iARB')
        static function glUniform2iARB(location:Int, v0:Int, v1:Int) : Void;

        @:native('glUniform3fARB')
        static function glUniform3fARB(location:Int, v0:cpp.Float32, v1:cpp.Float32, v2:cpp.Float32) : Void;

        @:native('glUniform3iARB')
        static function glUniform3iARB(location:Int, v0:Int, v1:Int, v2:Int) : Void;

        @:native('glUniform4fARB')
        static function glUniform4fARB(location:Int, v0:cpp.Float32, v1:cpp.Float32, v2:cpp.Float32, v3:cpp.Float32) : Void;

        @:native('glUniform4iARB')
        static function glUniform4iARB(location:Int, v0:Int, v1:Int, v2:Int, v3:Int) : Void;

        @:native('glUseProgramObjectARB')
        static function glUseProgramObjectARB(programObj:UInt) : Void;

        @:native('glValidateProgramARB')
        static function glValidateProgramARB(programObj:UInt) : Void;


        inline static function glGetObjectParameterfvARB(obj:UInt, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetObjectParameterfvARB({0}, {1}, (GLfloat*)&({2}[0]))", obj, pname, params); }

        inline static function glGetObjectParameterivARB(obj:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetObjectParameterivARB({0}, {1}, (GLint*)&({2}[0]))", obj, pname, params); }

        inline static function glGetUniformfvARB(programObj:UInt, location:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetUniformfvARB({0}, {1}, (GLfloat*)&({2}[0]))", programObj, location, params); }

        inline static function glGetUniformivARB(programObj:UInt, location:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetUniformivARB({0}, {1}, (GLint*)&({2}[0]))", programObj, location, params); }

        inline static function glUniform1fvARB(location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniform1fvARB({0}, {1}, (const GLfloat*)&({2}[0]))", location, count, value); }

        inline static function glUniform1ivARB(location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glUniform1ivARB({0}, {1}, (const GLint*)&({2}[0]))", location, count, value); }

        inline static function glUniform2fvARB(location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniform2fvARB({0}, {1}, (const GLfloat*)&({2}[0]))", location, count, value); }

        inline static function glUniform2ivARB(location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glUniform2ivARB({0}, {1}, (const GLint*)&({2}[0]))", location, count, value); }

        inline static function glUniform3fvARB(location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniform3fvARB({0}, {1}, (const GLfloat*)&({2}[0]))", location, count, value); }

        inline static function glUniform3ivARB(location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glUniform3ivARB({0}, {1}, (const GLint*)&({2}[0]))", location, count, value); }

        inline static function glUniform4fvARB(location:Int, count:Int, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniform4fvARB({0}, {1}, (const GLfloat*)&({2}[0]))", location, count, value); }

        inline static function glUniform4ivARB(location:Int, count:Int, value:Array<Int>) : Void
          { untyped __cpp__("glUniform4ivARB({0}, {1}, (const GLint*)&({2}[0]))", location, count, value); }

        inline static function glUniformMatrix2fvARB(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix2fvARB({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix3fvARB(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix3fvARB({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }

        inline static function glUniformMatrix4fvARB(location:Int, count:Int, transpose:Bool, value:Array<cpp.Float32>) : Void
          { untyped __cpp__("glUniformMatrix4fvARB({0}, {1}, {2}, (const GLfloat*)&({3}[0]))", location, count, transpose, value); }



    // TODO functions

            
        // inline static function glGetActiveUniformARB(programObj:UInt, index:UInt, maxLength:Int, length:GLsizei*, size:Array<Int>, type:GLenum*, name:GLcharARB*) : Void
        // { untyped __cpp__("glGetActiveUniformARB({0}, {1}, {2}, {3}, (GLint*)&({4}[0]), {5}, {6})", programObj, index, maxLength, length, size, type, name); }
            
        // @:native('glGetAttachedObjectsARB')
        // static function glGetAttachedObjectsARB(containerObj:UInt, maxCount:Int, count:GLsizei*, obj:GLhandleARB*) : Void;
            
        // @:native('glGetInfoLogARB')
        // static function glGetInfoLogARB(obj:UInt, maxLength:Int, length:GLsizei*, infoLog:GLcharARB*) : Void;
            
        // @:native('glGetShaderSourceARB')
        // static function glGetShaderSourceARB(obj:UInt, maxLength:Int, length:GLsizei*, source:GLcharARB*) : Void;
            
        // @:native('glGetUniformLocationARB')
        // static function glGetUniformLocationARB(programObj:UInt, name:const GLcharARB*) : Int;
            
        // inline static function glShaderSourceARB(shaderObj:UInt, count:Int, string:const GLcharARB **, length:Array<Int>) : Void
        // { untyped __cpp__("glShaderSourceARB({0}, {1}, {2}, (const GLint*)&({3}[0]))", shaderObj, count, string, length); }


//GL_ARB_shader_precision

    // GL_ARB_shader_precision defines

        inline static var GL_ARB_shader_precision                                         = 1;


//GL_ARB_shader_stencil_export

    // GL_ARB_shader_stencil_export defines

        inline static var GL_ARB_shader_stencil_export                                    = 1;


//GL_ARB_shader_storage_buffer_object

    // GL_ARB_shader_storage_buffer_object defines

        inline static var GL_ARB_shader_storage_buffer_object                             = 1;
        inline static var GL_SHADER_STORAGE_BARRIER_BIT                                   = 0x2000;
        inline static var GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES                         = 0x8F39;
        inline static var GL_SHADER_STORAGE_BUFFER                                        = 0x90D2;
        inline static var GL_SHADER_STORAGE_BUFFER_BINDING                                = 0x90D3;
        inline static var GL_SHADER_STORAGE_BUFFER_START                                  = 0x90D4;
        inline static var GL_SHADER_STORAGE_BUFFER_SIZE                                   = 0x90D5;
        inline static var GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS                             = 0x90D6;
        inline static var GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS                           = 0x90D7;
        inline static var GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS                       = 0x90D8;
        inline static var GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS                    = 0x90D9;
        inline static var GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS                           = 0x90DA;
        inline static var GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS                            = 0x90DB;
        inline static var GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS                           = 0x90DC;
        inline static var GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS                           = 0x90DD;
        inline static var GL_MAX_SHADER_STORAGE_BLOCK_SIZE                                = 0x90DE;
        inline static var GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT                       = 0x90DF;




    // GL_ARB_shader_storage_buffer_object functions

        @:native('glShaderStorageBlockBinding')
        static function glShaderStorageBlockBinding(program:UInt, storageBlockIndex:UInt, storageBlockBinding:UInt) : Void;





//GL_ARB_shader_subroutine

    // GL_ARB_shader_subroutine defines

        inline static var GL_ARB_shader_subroutine                                        = 1;
        inline static var GL_ACTIVE_SUBROUTINES                                           = 0x8DE5;
        inline static var GL_ACTIVE_SUBROUTINE_UNIFORMS                                   = 0x8DE6;
        inline static var GL_MAX_SUBROUTINES                                              = 0x8DE7;
        inline static var GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS                             = 0x8DE8;
        inline static var GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS                          = 0x8E47;
        inline static var GL_ACTIVE_SUBROUTINE_MAX_LENGTH                                 = 0x8E48;
        inline static var GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH                         = 0x8E49;
        inline static var GL_NUM_COMPATIBLE_SUBROUTINES                                   = 0x8E4A;
        inline static var GL_COMPATIBLE_SUBROUTINES                                       = 0x8E4B;




    // GL_ARB_shader_subroutine functions

        @:native('glGetSubroutineIndex')
        static function glGetSubroutineIndex(program:UInt, shadertype:Int, name:String) : UInt;

        @:native('glGetSubroutineUniformLocation')
        static function glGetSubroutineUniformLocation(program:UInt, shadertype:Int, name:String) : Int;


        inline static function glGetActiveSubroutineUniformiv(program:UInt, shadertype:Int, index:UInt, pname:Int, values:Array<Int>) : Void
          { untyped __cpp__("glGetActiveSubroutineUniformiv({0}, {1}, {2}, {3}, (GLint*)&({4}[0]))", program, shadertype, index, pname, values); }

        inline static function glGetProgramStageiv(program:UInt, shadertype:Int, pname:Int, values:Array<Int>) : Void
          { untyped __cpp__("glGetProgramStageiv({0}, {1}, {2}, (GLint*)&({3}[0]))", program, shadertype, pname, values); }

        inline static function glGetUniformSubroutineuiv(shadertype:Int, location:Int, params:Array<UInt>) : Void
          { untyped __cpp__("glGetUniformSubroutineuiv({0}, {1}, (GLuint*)&({2}[0]))", shadertype, location, params); }

        inline static function glUniformSubroutinesuiv(shadertype:Int, count:Int, indices:Array<UInt>) : Void
          { untyped __cpp__("glUniformSubroutinesuiv({0}, {1}, (const GLuint*)&({2}[0]))", shadertype, count, indices); }



    // TODO functions

            
        // @:native('glGetActiveSubroutineName')
        // static function glGetActiveSubroutineName(program:UInt, shadertype:Int, index:UInt, bufsize:Int, length:GLsizei*, name:String) : Void;
            
        // @:native('glGetActiveSubroutineUniformName')
        // static function glGetActiveSubroutineUniformName(program:UInt, shadertype:Int, index:UInt, bufsize:Int, length:GLsizei*, name:String) : Void;


//GL_ARB_shader_texture_image_samples

    // GL_ARB_shader_texture_image_samples defines

        inline static var GL_ARB_shader_texture_image_samples                             = 1;


//GL_ARB_shader_texture_lod

    // GL_ARB_shader_texture_lod defines

        inline static var GL_ARB_shader_texture_lod                                       = 1;


//GL_ARB_shading_language_100

    // GL_ARB_shading_language_100 defines

        inline static var GL_ARB_shading_language_100                                     = 1;
        inline static var GL_SHADING_LANGUAGE_VERSION_ARB                                 = 0x8B8C;


//GL_ARB_shading_language_420pack

    // GL_ARB_shading_language_420pack defines

        inline static var GL_ARB_shading_language_420pack                                 = 1;


//GL_ARB_shading_language_include

    // GL_ARB_shading_language_include defines

        inline static var GL_ARB_shading_language_include                                 = 1;
        inline static var GL_SHADER_INCLUDE_ARB                                           = 0x8DAE;
        inline static var GL_NAMED_STRING_LENGTH_ARB                                      = 0x8DE9;
        inline static var GL_NAMED_STRING_TYPE_ARB                                        = 0x8DEA;




    // GL_ARB_shading_language_include functions

        @:native('glDeleteNamedStringARB')
        static function glDeleteNamedStringARB(namelen:Int, name:String) : Void;

        @:native('glIsNamedStringARB')
        static function glIsNamedStringARB(namelen:Int, name:String) : Bool;

        @:native('glNamedStringARB')
        static function glNamedStringARB(type:Int, namelen:Int, name:String, stringlen:Int, string:String) : Void;


        inline static function glGetNamedStringARB(namelen:Int, name:String, bufSize:Int, stringlen:Array<Int>, string:String) : Void
          { untyped __cpp__("glGetNamedStringARB({0}, {1}, {2}, (GLint*)&({3}[0]), {4})", namelen, name, bufSize, stringlen, string); }

        inline static function glGetNamedStringivARB(namelen:Int, name:String, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetNamedStringivARB({0}, {1}, {2}, (GLint*)&({3}[0]))", namelen, name, pname, params); }



    // TODO functions

            
        // inline static function glCompileShaderIncludeARB(shader:UInt, count:Int, path:const GLchar* const*, length:Array<Int>) : Void
        // { untyped __cpp__("glCompileShaderIncludeARB({0}, {1}, {2}, (const GLint*)&({3}[0]))", shader, count, path, length); }


//GL_ARB_shading_language_packing

    // GL_ARB_shading_language_packing defines

        inline static var GL_ARB_shading_language_packing                                 = 1;


//GL_ARB_shadow

    // GL_ARB_shadow defines

        inline static var GL_ARB_shadow                                                   = 1;
        inline static var GL_TEXTURE_COMPARE_MODE_ARB                                     = 0x884C;
        inline static var GL_TEXTURE_COMPARE_FUNC_ARB                                     = 0x884D;
        inline static var GL_COMPARE_R_TO_TEXTURE_ARB                                     = 0x884E;


//GL_ARB_shadow_ambient

    // GL_ARB_shadow_ambient defines

        inline static var GL_ARB_shadow_ambient                                           = 1;
        inline static var GL_TEXTURE_COMPARE_FAIL_VALUE_ARB                               = 0x80BF;


//GL_ARB_sparse_buffer

    // GL_ARB_sparse_buffer defines

        inline static var GL_ARB_sparse_buffer                                            = 1;
        inline static var GL_SPARSE_STORAGE_BIT_ARB                                       = 0x0400;
        inline static var GL_SPARSE_BUFFER_PAGE_SIZE_ARB                                  = 0x82F8;




    // GL_ARB_sparse_buffer functions

        @:native('glBufferPageCommitmentARB')
        static function glBufferPageCommitmentARB(target:Int, offset:Int, size:Int, commit:Bool) : Void;





//GL_ARB_sparse_texture

    // GL_ARB_sparse_texture defines

        inline static var GL_ARB_sparse_texture                                           = 1;
        inline static var GL_VIRTUAL_PAGE_SIZE_X_ARB                                      = 0x9195;
        inline static var GL_VIRTUAL_PAGE_SIZE_Y_ARB                                      = 0x9196;
        inline static var GL_VIRTUAL_PAGE_SIZE_Z_ARB                                      = 0x9197;
        inline static var GL_MAX_SPARSE_TEXTURE_SIZE_ARB                                  = 0x9198;
        inline static var GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB                               = 0x9199;
        inline static var GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB                          = 0x919A;
        inline static var GL_TEXTURE_SPARSE_ARB                                           = 0x91A6;
        inline static var GL_VIRTUAL_PAGE_SIZE_INDEX_ARB                                  = 0x91A7;
        inline static var GL_NUM_VIRTUAL_PAGE_SIZES_ARB                                   = 0x91A8;
        inline static var GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB                   = 0x91A9;
        inline static var GL_NUM_SPARSE_LEVELS_ARB                                        = 0x91AA;




    // GL_ARB_sparse_texture functions

        @:native('glTexPageCommitmentARB')
        static function glTexPageCommitmentARB(target:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, commit:Bool) : Void;

        @:native('glTexturePageCommitmentEXT')
        static function glTexturePageCommitmentEXT(texture:UInt, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, commit:Bool) : Void;





//GL_ARB_stencil_texturing

    // GL_ARB_stencil_texturing defines

        inline static var GL_ARB_stencil_texturing                                        = 1;
        inline static var GL_DEPTH_STENCIL_TEXTURE_MODE                                   = 0x90EA;


//GL_ARB_sync

    // GL_ARB_sync defines

        inline static var GL_ARB_sync                                                     = 1;
        inline static var GL_SYNC_FLUSH_COMMANDS_BIT                                      = 0x00000001;
        inline static var GL_MAX_SERVER_WAIT_TIMEOUT                                      = 0x9111;
        inline static var GL_OBJECT_TYPE                                                  = 0x9112;
        inline static var GL_SYNC_CONDITION                                               = 0x9113;
        inline static var GL_SYNC_STATUS                                                  = 0x9114;
        inline static var GL_SYNC_FLAGS                                                   = 0x9115;
        inline static var GL_SYNC_FENCE                                                   = 0x9116;
        inline static var GL_SYNC_GPU_COMMANDS_COMPLETE                                   = 0x9117;
        inline static var GL_UNSIGNALED                                                   = 0x9118;
        inline static var GL_SIGNALED                                                     = 0x9119;
        inline static var GL_ALREADY_SIGNALED                                             = 0x911A;
        inline static var GL_TIMEOUT_EXPIRED                                              = 0x911B;
        inline static var GL_CONDITION_SATISFIED                                          = 0x911C;
        inline static var GL_WAIT_FAILED                                                  = 0x911D;
        // inline static var GL_TIMEOUT_IGNORED                                              = 0xFFFFFFFFFFFFFFFF;




    // GL_ARB_sync functions




    // TODO functions

            
        // @:native('glClientWaitSync')
        // static function glClientWaitSync(GLsync:GLsync, flags:Int, timeout:cpp.UInt64) : Int;
            
        // @:native('glDeleteSync')
        // static function glDeleteSync(GLsync:GLsync) : Void;
            
        // @:native('glFenceSync')
        // static function glFenceSync(condition:Int, flags:Int) : GLsync;
            
        // @:native('glGetInteger64v')
        // static function glGetInteger64v(pname:Int, params:GLint64*) : Void;
            
        // inline static function glGetSynciv(GLsync:GLsync, pname:Int, bufSize:Int, length:GLsizei*, values:Array<Int>) : Void
        // { untyped __cpp__("glGetSynciv({0}, {1}, {2}, {3}, (GLint*)&({4}[0]))", GLsync, pname, bufSize, length, values); }
            
        // @:native('glIsSync')
        // static function glIsSync(GLsync:GLsync) : Bool;
            
        // @:native('glWaitSync')
        // static function glWaitSync(GLsync:GLsync, flags:Int, timeout:cpp.UInt64) : Void;


//GL_ARB_tessellation_shader

    // GL_ARB_tessellation_shader defines

        inline static var GL_ARB_tessellation_shader                                      = 1;
        inline static var GL_PATCHES                                                      = 0xE;
        inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER              = 0x84F0;
        inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER           = 0x84F1;
        inline static var GL_MAX_TESS_CONTROL_INPUT_COMPONENTS                            = 0x886C;
        inline static var GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS                         = 0x886D;
        inline static var GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS                 = 0x8E1E;
        inline static var GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS              = 0x8E1F;
        inline static var GL_PATCH_VERTICES                                               = 0x8E72;
        inline static var GL_PATCH_DEFAULT_INNER_LEVEL                                    = 0x8E73;
        inline static var GL_PATCH_DEFAULT_OUTER_LEVEL                                    = 0x8E74;
        inline static var GL_TESS_CONTROL_OUTPUT_VERTICES                                 = 0x8E75;
        inline static var GL_TESS_GEN_MODE                                                = 0x8E76;
        inline static var GL_TESS_GEN_SPACING                                             = 0x8E77;
        inline static var GL_TESS_GEN_VERTEX_ORDER                                        = 0x8E78;
        inline static var GL_TESS_GEN_POINT_MODE                                          = 0x8E79;
        inline static var GL_ISOLINES                                                     = 0x8E7A;
        inline static var GL_FRACTIONAL_ODD                                               = 0x8E7B;
        inline static var GL_FRACTIONAL_EVEN                                              = 0x8E7C;
        inline static var GL_MAX_PATCH_VERTICES                                           = 0x8E7D;
        inline static var GL_MAX_TESS_GEN_LEVEL                                           = 0x8E7E;
        inline static var GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS                          = 0x8E7F;
        inline static var GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS                       = 0x8E80;
        inline static var GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS                         = 0x8E81;
        inline static var GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS                      = 0x8E82;
        inline static var GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS                           = 0x8E83;
        inline static var GL_MAX_TESS_PATCH_COMPONENTS                                    = 0x8E84;
        inline static var GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS                     = 0x8E85;
        inline static var GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS                        = 0x8E86;
        inline static var GL_TESS_EVALUATION_SHADER                                       = 0x8E87;
        inline static var GL_TESS_CONTROL_SHADER                                          = 0x8E88;
        inline static var GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS                              = 0x8E89;
        inline static var GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS                           = 0x8E8A;




    // GL_ARB_tessellation_shader functions

        @:native('glPatchParameteri')
        static function glPatchParameteri(pname:Int, value:Int) : Void;


        inline static function glPatchParameterfv(pname:Int, values:Array<cpp.Float32>) : Void
          { untyped __cpp__("glPatchParameterfv({0}, (const GLfloat*)&({1}[0]))", pname, values); }




//GL_ARB_texture_barrier

    // GL_ARB_texture_barrier defines

        inline static var GL_ARB_texture_barrier                                          = 1;




    // GL_ARB_texture_barrier functions

        @:native('glTextureBarrier')
        static function glTextureBarrier() : Void;





//GL_ARB_texture_border_clamp

    // GL_ARB_texture_border_clamp defines

        inline static var GL_ARB_texture_border_clamp                                     = 1;
        inline static var GL_CLAMP_TO_BORDER_ARB                                          = 0x812D;


//GL_ARB_texture_buffer_object

    // GL_ARB_texture_buffer_object defines

        inline static var GL_ARB_texture_buffer_object                                    = 1;
        inline static var GL_TEXTURE_BUFFER_ARB                                           = 0x8C2A;
        inline static var GL_MAX_TEXTURE_BUFFER_SIZE_ARB                                  = 0x8C2B;
        inline static var GL_TEXTURE_BINDING_BUFFER_ARB                                   = 0x8C2C;
        inline static var GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB                        = 0x8C2D;
        inline static var GL_TEXTURE_BUFFER_FORMAT_ARB                                    = 0x8C2E;




    // GL_ARB_texture_buffer_object functions

        @:native('glTexBufferARB')
        static function glTexBufferARB(target:Int, internalformat:Int, buffer:UInt) : Void;





//GL_ARB_texture_buffer_object_rgb32

    // GL_ARB_texture_buffer_object_rgb32 defines

        inline static var GL_ARB_texture_buffer_object_rgb32                              = 1;


//GL_ARB_texture_buffer_range

    // GL_ARB_texture_buffer_range defines

        inline static var GL_ARB_texture_buffer_range                                     = 1;
        inline static var GL_TEXTURE_BUFFER_OFFSET                                        = 0x919D;
        inline static var GL_TEXTURE_BUFFER_SIZE                                          = 0x919E;
        inline static var GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT                              = 0x919F;




    // GL_ARB_texture_buffer_range functions

        @:native('glTexBufferRange')
        static function glTexBufferRange(target:Int, internalformat:Int, buffer:UInt, offset:Int, size:Int) : Void;

        @:native('glTextureBufferRangeEXT')
        static function glTextureBufferRangeEXT(texture:UInt, target:Int, internalformat:Int, buffer:UInt, offset:Int, size:Int) : Void;





//GL_ARB_texture_compression

    // GL_ARB_texture_compression defines

        inline static var GL_ARB_texture_compression                                      = 1;
        inline static var GL_COMPRESSED_ALPHA_ARB                                         = 0x84E9;
        inline static var GL_COMPRESSED_LUMINANCE_ARB                                     = 0x84EA;
        inline static var GL_COMPRESSED_LUMINANCE_ALPHA_ARB                               = 0x84EB;
        inline static var GL_COMPRESSED_INTENSITY_ARB                                     = 0x84EC;
        inline static var GL_COMPRESSED_RGB_ARB                                           = 0x84ED;
        inline static var GL_COMPRESSED_RGBA_ARB                                          = 0x84EE;
        inline static var GL_TEXTURE_COMPRESSION_HINT_ARB                                 = 0x84EF;
        inline static var GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB                            = 0x86A0;
        inline static var GL_TEXTURE_COMPRESSED_ARB                                       = 0x86A1;
        inline static var GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB                           = 0x86A2;
        inline static var GL_COMPRESSED_TEXTURE_FORMATS_ARB                               = 0x86A3;




    // GL_ARB_texture_compression functions


        inline static function glCompressedTexImage1DARB(target:Int, level:Int, internalformat:Int, width:Int, border:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexImage1DARB({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]))", target, level, internalformat, width, border, imageSize, data); }

        inline static function glCompressedTexImage2DARB(target:Int, level:Int, internalformat:Int, width:Int, height:Int, border:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexImage2DARB({0}, {1}, {2}, {3}, {4}, {5}, {6}, (const void*)&({7}[0]))", target, level, internalformat, width, height, border, imageSize, data); }

        inline static function glCompressedTexImage3DARB(target:Int, level:Int, internalformat:Int, width:Int, height:Int, depth:Int, border:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexImage3DARB({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void*)&({8}[0]))", target, level, internalformat, width, height, depth, border, imageSize, data); }

        inline static function glCompressedTexSubImage1DARB(target:Int, level:Int, xoffset:Int, width:Int, format:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexSubImage1DARB({0}, {1}, {2}, {3}, {4}, {5}, (const void*)&({6}[0]))", target, level, xoffset, width, format, imageSize, data); }

        inline static function glCompressedTexSubImage2DARB(target:Int, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexSubImage2DARB({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (const void*)&({8}[0]))", target, level, xoffset, yoffset, width, height, format, imageSize, data); }

        inline static function glCompressedTexSubImage3DARB(target:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, imageSize:Int, data:BytesData) : Void
          { untyped __cpp__("glCompressedTexSubImage3DARB({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9}, (const void*)&({10}[0]))", target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data); }

        inline static function glGetCompressedTexImageARB(target:Int, lod:Int, img:BytesData) : Void
          { untyped __cpp__("glGetCompressedTexImageARB({0}, {1}, (void*)&({2}[0]))", target, lod, img); }




//GL_ARB_texture_compression_bptc

    // GL_ARB_texture_compression_bptc defines

        inline static var GL_ARB_texture_compression_bptc                                 = 1;
        inline static var GL_COMPRESSED_RGBA_BPTC_UNORM_ARB                               = 0x8E8C;
        inline static var GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB                         = 0x8E8D;
        inline static var GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB                         = 0x8E8E;
        inline static var GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB                       = 0x8E8F;


//GL_ARB_texture_compression_rgtc

    // GL_ARB_texture_compression_rgtc defines

        inline static var GL_ARB_texture_compression_rgtc                                 = 1;
        inline static var GL_COMPRESSED_RED_RGTC1                                         = 0x8DBB;
        inline static var GL_COMPRESSED_SIGNED_RED_RGTC1                                  = 0x8DBC;
        inline static var GL_COMPRESSED_RG_RGTC2                                          = 0x8DBD;
        inline static var GL_COMPRESSED_SIGNED_RG_RGTC2                                   = 0x8DBE;


//GL_ARB_texture_cube_map

    // GL_ARB_texture_cube_map defines

        inline static var GL_ARB_texture_cube_map                                         = 1;
        inline static var GL_NORMAL_MAP_ARB                                               = 0x8511;
        inline static var GL_REFLECTION_MAP_ARB                                           = 0x8512;
        inline static var GL_TEXTURE_CUBE_MAP_ARB                                         = 0x8513;
        inline static var GL_TEXTURE_BINDING_CUBE_MAP_ARB                                 = 0x8514;
        inline static var GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB                              = 0x8515;
        inline static var GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB                              = 0x8516;
        inline static var GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB                              = 0x8517;
        inline static var GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB                              = 0x8518;
        inline static var GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB                              = 0x8519;
        inline static var GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB                              = 0x851A;
        inline static var GL_PROXY_TEXTURE_CUBE_MAP_ARB                                   = 0x851B;
        inline static var GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB                                = 0x851C;


//GL_ARB_texture_cube_map_array

    // GL_ARB_texture_cube_map_array defines

        inline static var GL_ARB_texture_cube_map_array                                   = 1;
        inline static var GL_TEXTURE_CUBE_MAP_ARRAY_ARB                                   = 0x9009;
        inline static var GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB                           = 0x900A;
        inline static var GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB                             = 0x900B;
        inline static var GL_SAMPLER_CUBE_MAP_ARRAY_ARB                                   = 0x900C;
        inline static var GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB                            = 0x900D;
        inline static var GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB                               = 0x900E;
        inline static var GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB                      = 0x900F;


//GL_ARB_texture_env_add

    // GL_ARB_texture_env_add defines

        inline static var GL_ARB_texture_env_add                                          = 1;


//GL_ARB_texture_env_combine

    // GL_ARB_texture_env_combine defines

        inline static var GL_ARB_texture_env_combine                                      = 1;
        inline static var GL_SUBTRACT_ARB                                                 = 0x84E7;
        inline static var GL_COMBINE_ARB                                                  = 0x8570;
        inline static var GL_COMBINE_RGB_ARB                                              = 0x8571;
        inline static var GL_COMBINE_ALPHA_ARB                                            = 0x8572;
        inline static var GL_RGB_SCALE_ARB                                                = 0x8573;
        inline static var GL_ADD_SIGNED_ARB                                               = 0x8574;
        inline static var GL_INTERPOLATE_ARB                                              = 0x8575;
        inline static var GL_CONSTANT_ARB                                                 = 0x8576;
        inline static var GL_PRIMARY_COLOR_ARB                                            = 0x8577;
        inline static var GL_PREVIOUS_ARB                                                 = 0x8578;
        inline static var GL_SOURCE0_RGB_ARB                                              = 0x8580;
        inline static var GL_SOURCE1_RGB_ARB                                              = 0x8581;
        inline static var GL_SOURCE2_RGB_ARB                                              = 0x8582;
        inline static var GL_SOURCE0_ALPHA_ARB                                            = 0x8588;
        inline static var GL_SOURCE1_ALPHA_ARB                                            = 0x8589;
        inline static var GL_SOURCE2_ALPHA_ARB                                            = 0x858A;
        inline static var GL_OPERAND0_RGB_ARB                                             = 0x8590;
        inline static var GL_OPERAND1_RGB_ARB                                             = 0x8591;
        inline static var GL_OPERAND2_RGB_ARB                                             = 0x8592;
        inline static var GL_OPERAND0_ALPHA_ARB                                           = 0x8598;
        inline static var GL_OPERAND1_ALPHA_ARB                                           = 0x8599;
        inline static var GL_OPERAND2_ALPHA_ARB                                           = 0x859A;


//GL_ARB_texture_env_crossbar

    // GL_ARB_texture_env_crossbar defines

        inline static var GL_ARB_texture_env_crossbar                                     = 1;


//GL_ARB_texture_env_dot3

    // GL_ARB_texture_env_dot3 defines

        inline static var GL_ARB_texture_env_dot3                                         = 1;
        inline static var GL_DOT3_RGB_ARB                                                 = 0x86AE;
        inline static var GL_DOT3_RGBA_ARB                                                = 0x86AF;


//GL_ARB_texture_float

    // GL_ARB_texture_float defines

        inline static var GL_ARB_texture_float                                            = 1;
        inline static var GL_RGBA32F_ARB                                                  = 0x8814;
        inline static var GL_RGB32F_ARB                                                   = 0x8815;
        inline static var GL_ALPHA32F_ARB                                                 = 0x8816;
        inline static var GL_INTENSITY32F_ARB                                             = 0x8817;
        inline static var GL_LUMINANCE32F_ARB                                             = 0x8818;
        inline static var GL_LUMINANCE_ALPHA32F_ARB                                       = 0x8819;
        inline static var GL_RGBA16F_ARB                                                  = 0x881A;
        inline static var GL_RGB16F_ARB                                                   = 0x881B;
        inline static var GL_ALPHA16F_ARB                                                 = 0x881C;
        inline static var GL_INTENSITY16F_ARB                                             = 0x881D;
        inline static var GL_LUMINANCE16F_ARB                                             = 0x881E;
        inline static var GL_LUMINANCE_ALPHA16F_ARB                                       = 0x881F;
        inline static var GL_TEXTURE_RED_TYPE_ARB                                         = 0x8C10;
        inline static var GL_TEXTURE_GREEN_TYPE_ARB                                       = 0x8C11;
        inline static var GL_TEXTURE_BLUE_TYPE_ARB                                        = 0x8C12;
        inline static var GL_TEXTURE_ALPHA_TYPE_ARB                                       = 0x8C13;
        inline static var GL_TEXTURE_LUMINANCE_TYPE_ARB                                   = 0x8C14;
        inline static var GL_TEXTURE_INTENSITY_TYPE_ARB                                   = 0x8C15;
        inline static var GL_TEXTURE_DEPTH_TYPE_ARB                                       = 0x8C16;
        inline static var GL_UNSIGNED_NORMALIZED_ARB                                      = 0x8C17;


//GL_ARB_texture_gather

    // GL_ARB_texture_gather defines

        inline static var GL_ARB_texture_gather                                           = 1;
        inline static var GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB                        = 0x8E5E;
        inline static var GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB                        = 0x8E5F;
        inline static var GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB                    = 0x8F9F;


//GL_ARB_texture_mirror_clamp_to_edge

    // GL_ARB_texture_mirror_clamp_to_edge defines

        inline static var GL_ARB_texture_mirror_clamp_to_edge                             = 1;
        inline static var GL_MIRROR_CLAMP_TO_EDGE                                         = 0x8743;


//GL_ARB_texture_mirrored_repeat

    // GL_ARB_texture_mirrored_repeat defines

        inline static var GL_ARB_texture_mirrored_repeat                                  = 1;
        inline static var GL_MIRRORED_REPEAT_ARB                                          = 0x8370;


//GL_ARB_texture_multisample

    // GL_ARB_texture_multisample defines

        inline static var GL_ARB_texture_multisample                                      = 1;
        inline static var GL_SAMPLE_POSITION                                              = 0x8E50;
        inline static var GL_SAMPLE_MASK                                                  = 0x8E51;
        inline static var GL_SAMPLE_MASK_VALUE                                            = 0x8E52;
        inline static var GL_MAX_SAMPLE_MASK_WORDS                                        = 0x8E59;
        inline static var GL_TEXTURE_2D_MULTISAMPLE                                       = 0x9100;
        inline static var GL_PROXY_TEXTURE_2D_MULTISAMPLE                                 = 0x9101;
        inline static var GL_TEXTURE_2D_MULTISAMPLE_ARRAY                                 = 0x9102;
        inline static var GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY                           = 0x9103;
        inline static var GL_TEXTURE_BINDING_2D_MULTISAMPLE                               = 0x9104;
        inline static var GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY                         = 0x9105;
        inline static var GL_TEXTURE_SAMPLES                                              = 0x9106;
        inline static var GL_TEXTURE_FIXED_SAMPLE_LOCATIONS                               = 0x9107;
        inline static var GL_SAMPLER_2D_MULTISAMPLE                                       = 0x9108;
        inline static var GL_INT_SAMPLER_2D_MULTISAMPLE                                   = 0x9109;
        inline static var GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE                          = 0x910A;
        inline static var GL_SAMPLER_2D_MULTISAMPLE_ARRAY                                 = 0x910B;
        inline static var GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY                             = 0x910C;
        inline static var GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY                    = 0x910D;
        inline static var GL_MAX_COLOR_TEXTURE_SAMPLES                                    = 0x910E;
        inline static var GL_MAX_DEPTH_TEXTURE_SAMPLES                                    = 0x910F;
        inline static var GL_MAX_INTEGER_SAMPLES                                          = 0x9110;




    // GL_ARB_texture_multisample functions

        @:native('glSampleMaski')
        static function glSampleMaski(index:UInt, mask:Int) : Void;

        @:native('glTexImage2DMultisample')
        static function glTexImage2DMultisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int, fixedsamplelocations:Bool) : Void;

        @:native('glTexImage3DMultisample')
        static function glTexImage3DMultisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int, depth:Int, fixedsamplelocations:Bool) : Void;


        inline static function glGetMultisamplefv(pname:Int, index:UInt, val:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetMultisamplefv({0}, {1}, (GLfloat*)&({2}[0]))", pname, index, val); }




//GL_ARB_texture_non_power_of_two

    // GL_ARB_texture_non_power_of_two defines

        inline static var GL_ARB_texture_non_power_of_two                                 = 1;


//GL_ARB_texture_query_levels

    // GL_ARB_texture_query_levels defines

        inline static var GL_ARB_texture_query_levels                                     = 1;


//GL_ARB_texture_query_lod

    // GL_ARB_texture_query_lod defines

        inline static var GL_ARB_texture_query_lod                                        = 1;


//GL_ARB_texture_rectangle

    // GL_ARB_texture_rectangle defines

        inline static var GL_ARB_texture_rectangle                                        = 1;
        inline static var GL_TEXTURE_RECTANGLE_ARB                                        = 0x84F5;
        inline static var GL_TEXTURE_BINDING_RECTANGLE_ARB                                = 0x84F6;
        inline static var GL_PROXY_TEXTURE_RECTANGLE_ARB                                  = 0x84F7;
        inline static var GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB                               = 0x84F8;


//GL_ARB_texture_rg

    // GL_ARB_texture_rg defines

        inline static var GL_ARB_texture_rg                                               = 1;
        inline static var GL_COMPRESSED_RED                                               = 0x8225;
        inline static var GL_COMPRESSED_RG                                                = 0x8226;
        inline static var GL_RG                                                           = 0x8227;
        inline static var GL_RG_INTEGER                                                   = 0x8228;
        inline static var GL_R8                                                           = 0x8229;
        inline static var GL_R16                                                          = 0x822A;
        inline static var GL_RG8                                                          = 0x822B;
        inline static var GL_RG16                                                         = 0x822C;
        inline static var GL_R16F                                                         = 0x822D;
        inline static var GL_R32F                                                         = 0x822E;
        inline static var GL_RG16F                                                        = 0x822F;
        inline static var GL_RG32F                                                        = 0x8230;
        inline static var GL_R8I                                                          = 0x8231;
        inline static var GL_R8UI                                                         = 0x8232;
        inline static var GL_R16I                                                         = 0x8233;
        inline static var GL_R16UI                                                        = 0x8234;
        inline static var GL_R32I                                                         = 0x8235;
        inline static var GL_R32UI                                                        = 0x8236;
        inline static var GL_RG8I                                                         = 0x8237;
        inline static var GL_RG8UI                                                        = 0x8238;
        inline static var GL_RG16I                                                        = 0x8239;
        inline static var GL_RG16UI                                                       = 0x823A;
        inline static var GL_RG32I                                                        = 0x823B;
        inline static var GL_RG32UI                                                       = 0x823C;


//GL_ARB_texture_rgb10_a2ui

    // GL_ARB_texture_rgb10_a2ui defines

        inline static var GL_ARB_texture_rgb10_a2ui                                       = 1;


//GL_ARB_texture_stencil8

    // GL_ARB_texture_stencil8 defines

        inline static var GL_ARB_texture_stencil8                                         = 1;


//GL_ARB_texture_storage

    // GL_ARB_texture_storage defines

        inline static var GL_ARB_texture_storage                                          = 1;
        inline static var GL_TEXTURE_IMMUTABLE_FORMAT                                     = 0x912F;




    // GL_ARB_texture_storage functions

        @:native('glTexStorage1D')
        static function glTexStorage1D(target:Int, levels:Int, internalformat:Int, width:Int) : Void;

        @:native('glTexStorage2D')
        static function glTexStorage2D(target:Int, levels:Int, internalformat:Int, width:Int, height:Int) : Void;

        @:native('glTexStorage3D')
        static function glTexStorage3D(target:Int, levels:Int, internalformat:Int, width:Int, height:Int, depth:Int) : Void;

        @:native('glTextureStorage1DEXT')
        static function glTextureStorage1DEXT(texture:UInt, target:Int, levels:Int, internalformat:Int, width:Int) : Void;

        @:native('glTextureStorage2DEXT')
        static function glTextureStorage2DEXT(texture:UInt, target:Int, levels:Int, internalformat:Int, width:Int, height:Int) : Void;

        @:native('glTextureStorage3DEXT')
        static function glTextureStorage3DEXT(texture:UInt, target:Int, levels:Int, internalformat:Int, width:Int, height:Int, depth:Int) : Void;





//GL_ARB_texture_storage_multisample

    // GL_ARB_texture_storage_multisample defines

        inline static var GL_ARB_texture_storage_multisample                              = 1;




    // GL_ARB_texture_storage_multisample functions

        @:native('glTexStorage2DMultisample')
        static function glTexStorage2DMultisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int, fixedsamplelocations:Bool) : Void;

        @:native('glTexStorage3DMultisample')
        static function glTexStorage3DMultisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int, depth:Int, fixedsamplelocations:Bool) : Void;

        @:native('glTextureStorage2DMultisampleEXT')
        static function glTextureStorage2DMultisampleEXT(texture:UInt, target:Int, samples:Int, internalformat:Int, width:Int, height:Int, fixedsamplelocations:Bool) : Void;

        @:native('glTextureStorage3DMultisampleEXT')
        static function glTextureStorage3DMultisampleEXT(texture:UInt, target:Int, samples:Int, internalformat:Int, width:Int, height:Int, depth:Int, fixedsamplelocations:Bool) : Void;





//GL_ARB_texture_swizzle

    // GL_ARB_texture_swizzle defines

        inline static var GL_ARB_texture_swizzle                                          = 1;
        inline static var GL_TEXTURE_SWIZZLE_R                                            = 0x8E42;
        inline static var GL_TEXTURE_SWIZZLE_G                                            = 0x8E43;
        inline static var GL_TEXTURE_SWIZZLE_B                                            = 0x8E44;
        inline static var GL_TEXTURE_SWIZZLE_A                                            = 0x8E45;
        inline static var GL_TEXTURE_SWIZZLE_RGBA                                         = 0x8E46;


//GL_ARB_texture_view

    // GL_ARB_texture_view defines

        inline static var GL_ARB_texture_view                                             = 1;
        inline static var GL_TEXTURE_VIEW_MIN_LEVEL                                       = 0x82DB;
        inline static var GL_TEXTURE_VIEW_NUM_LEVELS                                      = 0x82DC;
        inline static var GL_TEXTURE_VIEW_MIN_LAYER                                       = 0x82DD;
        inline static var GL_TEXTURE_VIEW_NUM_LAYERS                                      = 0x82DE;




    // GL_ARB_texture_view functions

        @:native('glTextureView')
        static function glTextureView(texture:UInt, target:Int, origtexture:UInt, internalformat:Int, minlevel:UInt, numlevels:UInt, minlayer:UInt, numlayers:UInt) : Void;





//GL_ARB_timer_query

    // GL_ARB_timer_query defines

        inline static var GL_ARB_timer_query                                              = 1;
        inline static var GL_TIME_ELAPSED                                                 = 0x88BF;
        inline static var GL_TIMESTAMP                                                    = 0x8E28;




    // GL_ARB_timer_query functions

        @:native('glQueryCounter')
        static function glQueryCounter(id:UInt, target:Int) : Void;




    // TODO functions

            
        // @:native('glGetQueryObjecti64v')
        // static function glGetQueryObjecti64v(id:UInt, pname:Int, params:GLint64*) : Void;
            
        // @:native('glGetQueryObjectui64v')
        // static function glGetQueryObjectui64v(id:UInt, pname:Int, params:GLuint64*) : Void;


//GL_ARB_transform_feedback2

    // GL_ARB_transform_feedback2 defines

        inline static var GL_ARB_transform_feedback2                                      = 1;
        inline static var GL_TRANSFORM_FEEDBACK                                           = 0x8E22;
        inline static var GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED                             = 0x8E23;
        inline static var GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE                             = 0x8E24;
        inline static var GL_TRANSFORM_FEEDBACK_BINDING                                   = 0x8E25;




    // GL_ARB_transform_feedback2 functions

        @:native('glBindTransformFeedback')
        static function glBindTransformFeedback(target:Int, id:UInt) : Void;

        @:native('glDrawTransformFeedback')
        static function glDrawTransformFeedback(mode:Int, id:UInt) : Void;

        @:native('glIsTransformFeedback')
        static function glIsTransformFeedback(id:UInt) : Bool;

        @:native('glPauseTransformFeedback')
        static function glPauseTransformFeedback() : Void;

        @:native('glResumeTransformFeedback')
        static function glResumeTransformFeedback() : Void;


        inline static function glDeleteTransformFeedbacks(n:Int, ids:Array<UInt>) : Void
          { untyped __cpp__("glDeleteTransformFeedbacks({0}, (const GLuint*)&({1}[0]))", n, ids); }

        inline static function glGenTransformFeedbacks(n:Int, ids:Array<UInt>) : Void
          { untyped __cpp__("glGenTransformFeedbacks({0}, (GLuint*)&({1}[0]))", n, ids); }




//GL_ARB_transform_feedback3

    // GL_ARB_transform_feedback3 defines

        inline static var GL_ARB_transform_feedback3                                      = 1;
        inline static var GL_MAX_TRANSFORM_FEEDBACK_BUFFERS                               = 0x8E70;




    // GL_ARB_transform_feedback3 functions

        @:native('glBeginQueryIndexed')
        static function glBeginQueryIndexed(target:Int, index:UInt, id:UInt) : Void;

        @:native('glDrawTransformFeedbackStream')
        static function glDrawTransformFeedbackStream(mode:Int, id:UInt, stream:UInt) : Void;

        @:native('glEndQueryIndexed')
        static function glEndQueryIndexed(target:Int, index:UInt) : Void;


        inline static function glGetQueryIndexediv(target:Int, index:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetQueryIndexediv({0}, {1}, {2}, (GLint*)&({3}[0]))", target, index, pname, params); }




//GL_ARB_transform_feedback_instanced

    // GL_ARB_transform_feedback_instanced defines

        inline static var GL_ARB_transform_feedback_instanced                             = 1;




    // GL_ARB_transform_feedback_instanced functions

        @:native('glDrawTransformFeedbackInstanced')
        static function glDrawTransformFeedbackInstanced(mode:Int, id:UInt, primcount:Int) : Void;

        @:native('glDrawTransformFeedbackStreamInstanced')
        static function glDrawTransformFeedbackStreamInstanced(mode:Int, id:UInt, stream:UInt, primcount:Int) : Void;





//GL_ARB_transform_feedback_overflow_query

    // GL_ARB_transform_feedback_overflow_query defines

        inline static var GL_ARB_transform_feedback_overflow_query                        = 1;
        inline static var GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB                              = 0x82EC;
        inline static var GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB                       = 0x82ED;


//GL_ARB_transpose_matrix

    // GL_ARB_transpose_matrix defines

        inline static var GL_ARB_transpose_matrix                                         = 1;
        inline static var GL_TRANSPOSE_MODELVIEW_MATRIX_ARB                               = 0x84E3;
        inline static var GL_TRANSPOSE_PROJECTION_MATRIX_ARB                              = 0x84E4;
        inline static var GL_TRANSPOSE_TEXTURE_MATRIX_ARB                                 = 0x84E5;
        inline static var GL_TRANSPOSE_COLOR_MATRIX_ARB                                   = 0x84E6;




    // GL_ARB_transpose_matrix functions




    // TODO functions

            
        // @:native('glLoadTransposeMatrixdARB')
        // static function glLoadTransposeMatrixdARB(m:Array<cpp.Float64>) : Void;
            
        // @:native('glLoadTransposeMatrixfARB')
        // static function glLoadTransposeMatrixfARB(m:Array<cpp.Float32>) : Void;
            
        // @:native('glMultTransposeMatrixdARB')
        // static function glMultTransposeMatrixdARB(m:Array<cpp.Float64>) : Void;
            
        // @:native('glMultTransposeMatrixfARB')
        // static function glMultTransposeMatrixfARB(m:Array<cpp.Float32>) : Void;


//GL_ARB_uniform_buffer_object

    // GL_ARB_uniform_buffer_object defines

        inline static var GL_ARB_uniform_buffer_object                                    = 1;
        inline static var GL_UNIFORM_BUFFER                                               = 0x8A11;
        inline static var GL_UNIFORM_BUFFER_BINDING                                       = 0x8A28;
        inline static var GL_UNIFORM_BUFFER_START                                         = 0x8A29;
        inline static var GL_UNIFORM_BUFFER_SIZE                                          = 0x8A2A;
        inline static var GL_MAX_VERTEX_UNIFORM_BLOCKS                                    = 0x8A2B;
        inline static var GL_MAX_GEOMETRY_UNIFORM_BLOCKS                                  = 0x8A2C;
        inline static var GL_MAX_FRAGMENT_UNIFORM_BLOCKS                                  = 0x8A2D;
        inline static var GL_MAX_COMBINED_UNIFORM_BLOCKS                                  = 0x8A2E;
        inline static var GL_MAX_UNIFORM_BUFFER_BINDINGS                                  = 0x8A2F;
        inline static var GL_MAX_UNIFORM_BLOCK_SIZE                                       = 0x8A30;
        inline static var GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS                       = 0x8A31;
        inline static var GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS                     = 0x8A32;
        inline static var GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS                     = 0x8A33;
        inline static var GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT                              = 0x8A34;
        inline static var GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH                         = 0x8A35;
        inline static var GL_ACTIVE_UNIFORM_BLOCKS                                        = 0x8A36;
        inline static var GL_UNIFORM_TYPE                                                 = 0x8A37;
        inline static var GL_UNIFORM_SIZE                                                 = 0x8A38;
        inline static var GL_UNIFORM_NAME_LENGTH                                          = 0x8A39;
        inline static var GL_UNIFORM_BLOCK_INDEX                                          = 0x8A3A;
        inline static var GL_UNIFORM_OFFSET                                               = 0x8A3B;
        inline static var GL_UNIFORM_ARRAY_STRIDE                                         = 0x8A3C;
        inline static var GL_UNIFORM_MATRIX_STRIDE                                        = 0x8A3D;
        inline static var GL_UNIFORM_IS_ROW_MAJOR                                         = 0x8A3E;
        inline static var GL_UNIFORM_BLOCK_BINDING                                        = 0x8A3F;
        inline static var GL_UNIFORM_BLOCK_DATA_SIZE                                      = 0x8A40;
        inline static var GL_UNIFORM_BLOCK_NAME_LENGTH                                    = 0x8A41;
        inline static var GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS                                = 0x8A42;
        inline static var GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES                         = 0x8A43;
        inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER                    = 0x8A44;
        inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER                  = 0x8A45;
        inline static var GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER                  = 0x8A46;
        inline static var GL_INVALID_INDEX                                                = 0xFFFFFFFF;




    // GL_ARB_uniform_buffer_object functions

        @:native('glBindBufferBase')
        static function glBindBufferBase(target:Int, index:UInt, buffer:UInt) : Void;

        @:native('glBindBufferRange')
        static function glBindBufferRange(target:Int, index:UInt, buffer:UInt, offset:Int, size:Int) : Void;

        @:native('glGetUniformBlockIndex')
        static function glGetUniformBlockIndex(program:UInt, uniformBlockName:String) : UInt;

        @:native('glUniformBlockBinding')
        static function glUniformBlockBinding(program:UInt, uniformBlockIndex:UInt, uniformBlockBinding:UInt) : Void;


        inline static function glGetActiveUniformBlockiv(program:UInt, uniformBlockIndex:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetActiveUniformBlockiv({0}, {1}, {2}, (GLint*)&({3}[0]))", program, uniformBlockIndex, pname, params); }

        inline static function glGetActiveUniformsiv(program:UInt, uniformCount:Int, uniformIndices:Array<UInt>, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetActiveUniformsiv({0}, {1}, (const GLuint*)&({2}[0]), {3}, (GLint*)&({4}[0]))", program, uniformCount, uniformIndices, pname, params); }

        inline static function glGetIntegeri_v(target:Int, index:UInt, data:Array<Int>) : Void
          { untyped __cpp__("glGetIntegeri_v({0}, {1}, (GLint*)&({2}[0]))", target, index, data); }



    // TODO functions

            
        // @:native('glGetActiveUniformBlockName')
        // static function glGetActiveUniformBlockName(program:UInt, uniformBlockIndex:UInt, bufSize:Int, length:GLsizei*, uniformBlockName:String) : Void;
            
        // @:native('glGetActiveUniformName')
        // static function glGetActiveUniformName(program:UInt, uniformIndex:UInt, bufSize:Int, length:GLsizei*, uniformName:String) : Void;
            
        // inline static function glGetUniformIndices(program:UInt, uniformCount:Int, uniformNames:const GLchar* const *, uniformIndices:Array<UInt>) : Void
        // { untyped __cpp__("glGetUniformIndices({0}, {1}, {2}, (GLuint*)&({3}[0]))", program, uniformCount, uniformNames, uniformIndices); }


//GL_ARB_vertex_array_bgra

    // GL_ARB_vertex_array_bgra defines

        inline static var GL_ARB_vertex_array_bgra                                        = 1;


//GL_ARB_vertex_array_object

    // GL_ARB_vertex_array_object defines

        inline static var GL_ARB_vertex_array_object                                      = 1;
        inline static var GL_VERTEX_ARRAY_BINDING                                         = 0x85B5;




    // GL_ARB_vertex_array_object functions

        @:native('glBindVertexArray')
        static function glBindVertexArray(array:UInt) : Void;

        @:native('glIsVertexArray')
        static function glIsVertexArray(array:UInt) : Bool;


        inline static function glDeleteVertexArrays(n:Int, arrays:Array<UInt>) : Void
          { untyped __cpp__("glDeleteVertexArrays({0}, (const GLuint*)&({1}[0]))", n, arrays); }

        inline static function glGenVertexArrays(n:Int, arrays:Array<UInt>) : Void
          { untyped __cpp__("glGenVertexArrays({0}, (GLuint*)&({1}[0]))", n, arrays); }




//GL_ARB_vertex_attrib_64bit

    // GL_ARB_vertex_attrib_64bit defines

        inline static var GL_ARB_vertex_attrib_64bit                                      = 1;




    // GL_ARB_vertex_attrib_64bit functions

        @:native('glVertexAttribL1d')
        static function glVertexAttribL1d(index:UInt, x:cpp.Float64) : Void;

        @:native('glVertexAttribL2d')
        static function glVertexAttribL2d(index:UInt, x:cpp.Float64, y:cpp.Float64) : Void;

        @:native('glVertexAttribL3d')
        static function glVertexAttribL3d(index:UInt, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glVertexAttribL4d')
        static function glVertexAttribL4d(index:UInt, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64, w:cpp.Float64) : Void;


        inline static function glGetVertexAttribLdv(index:UInt, pname:Int, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetVertexAttribLdv({0}, {1}, (GLdouble*)&({2}[0]))", index, pname, params); }

        inline static function glVertexAttribL1dv(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttribL1dv({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttribL2dv(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttribL2dv({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttribL3dv(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttribL3dv({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttribL4dv(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttribL4dv({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttribLPointer(index:UInt, size:Int, type:Int, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glVertexAttribLPointer({0}, {1}, {2}, {3}, (const void*)&({4}[0]))", index, size, type, stride, pointer); }




//GL_ARB_vertex_attrib_binding

    // GL_ARB_vertex_attrib_binding defines

        inline static var GL_ARB_vertex_attrib_binding                                    = 1;
        inline static var GL_VERTEX_ATTRIB_BINDING                                        = 0x82D4;
        inline static var GL_VERTEX_ATTRIB_RELATIVE_OFFSET                                = 0x82D5;
        inline static var GL_VERTEX_BINDING_DIVISOR                                       = 0x82D6;
        inline static var GL_VERTEX_BINDING_OFFSET                                        = 0x82D7;
        inline static var GL_VERTEX_BINDING_STRIDE                                        = 0x82D8;
        inline static var GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET                            = 0x82D9;
        inline static var GL_MAX_VERTEX_ATTRIB_BINDINGS                                   = 0x82DA;
        inline static var GL_VERTEX_BINDING_BUFFER                                        = 0x8F4F;




    // GL_ARB_vertex_attrib_binding functions

        @:native('glBindVertexBuffer')
        static function glBindVertexBuffer(bindingindex:UInt, buffer:UInt, offset:Int, stride:Int) : Void;

        @:native('glVertexArrayBindVertexBufferEXT')
        static function glVertexArrayBindVertexBufferEXT(vaobj:UInt, bindingindex:UInt, buffer:UInt, offset:Int, stride:Int) : Void;

        @:native('glVertexArrayVertexAttribBindingEXT')
        static function glVertexArrayVertexAttribBindingEXT(vaobj:UInt, attribindex:UInt, bindingindex:UInt) : Void;

        @:native('glVertexArrayVertexAttribFormatEXT')
        static function glVertexArrayVertexAttribFormatEXT(vaobj:UInt, attribindex:UInt, size:Int, type:Int, normalized:Bool, relativeoffset:UInt) : Void;

        @:native('glVertexArrayVertexAttribIFormatEXT')
        static function glVertexArrayVertexAttribIFormatEXT(vaobj:UInt, attribindex:UInt, size:Int, type:Int, relativeoffset:UInt) : Void;

        @:native('glVertexArrayVertexAttribLFormatEXT')
        static function glVertexArrayVertexAttribLFormatEXT(vaobj:UInt, attribindex:UInt, size:Int, type:Int, relativeoffset:UInt) : Void;

        @:native('glVertexArrayVertexBindingDivisorEXT')
        static function glVertexArrayVertexBindingDivisorEXT(vaobj:UInt, bindingindex:UInt, divisor:UInt) : Void;

        @:native('glVertexAttribBinding')
        static function glVertexAttribBinding(attribindex:UInt, bindingindex:UInt) : Void;

        @:native('glVertexAttribFormat')
        static function glVertexAttribFormat(attribindex:UInt, size:Int, type:Int, normalized:Bool, relativeoffset:UInt) : Void;

        @:native('glVertexAttribIFormat')
        static function glVertexAttribIFormat(attribindex:UInt, size:Int, type:Int, relativeoffset:UInt) : Void;

        @:native('glVertexAttribLFormat')
        static function glVertexAttribLFormat(attribindex:UInt, size:Int, type:Int, relativeoffset:UInt) : Void;

        @:native('glVertexBindingDivisor')
        static function glVertexBindingDivisor(bindingindex:UInt, divisor:UInt) : Void;





//GL_ARB_vertex_blend

    // GL_ARB_vertex_blend defines

        inline static var GL_ARB_vertex_blend                                             = 1;
        inline static var GL_MODELVIEW0_ARB                                               = 0x1700;
        inline static var GL_MODELVIEW1_ARB                                               = 0x850A;
        inline static var GL_MAX_VERTEX_UNITS_ARB                                         = 0x86A4;
        inline static var GL_ACTIVE_VERTEX_UNITS_ARB                                      = 0x86A5;
        inline static var GL_WEIGHT_SUM_UNITY_ARB                                         = 0x86A6;
        inline static var GL_VERTEX_BLEND_ARB                                             = 0x86A7;
        inline static var GL_CURRENT_WEIGHT_ARB                                           = 0x86A8;
        inline static var GL_WEIGHT_ARRAY_TYPE_ARB                                        = 0x86A9;
        inline static var GL_WEIGHT_ARRAY_STRIDE_ARB                                      = 0x86AA;
        inline static var GL_WEIGHT_ARRAY_SIZE_ARB                                        = 0x86AB;
        inline static var GL_WEIGHT_ARRAY_POINTER_ARB                                     = 0x86AC;
        inline static var GL_WEIGHT_ARRAY_ARB                                             = 0x86AD;
        inline static var GL_MODELVIEW2_ARB                                               = 0x8722;
        inline static var GL_MODELVIEW3_ARB                                               = 0x8723;
        inline static var GL_MODELVIEW4_ARB                                               = 0x8724;
        inline static var GL_MODELVIEW5_ARB                                               = 0x8725;
        inline static var GL_MODELVIEW6_ARB                                               = 0x8726;
        inline static var GL_MODELVIEW7_ARB                                               = 0x8727;
        inline static var GL_MODELVIEW8_ARB                                               = 0x8728;
        inline static var GL_MODELVIEW9_ARB                                               = 0x8729;
        inline static var GL_MODELVIEW10_ARB                                              = 0x872A;
        inline static var GL_MODELVIEW11_ARB                                              = 0x872B;
        inline static var GL_MODELVIEW12_ARB                                              = 0x872C;
        inline static var GL_MODELVIEW13_ARB                                              = 0x872D;
        inline static var GL_MODELVIEW14_ARB                                              = 0x872E;
        inline static var GL_MODELVIEW15_ARB                                              = 0x872F;
        inline static var GL_MODELVIEW16_ARB                                              = 0x8730;
        inline static var GL_MODELVIEW17_ARB                                              = 0x8731;
        inline static var GL_MODELVIEW18_ARB                                              = 0x8732;
        inline static var GL_MODELVIEW19_ARB                                              = 0x8733;
        inline static var GL_MODELVIEW20_ARB                                              = 0x8734;
        inline static var GL_MODELVIEW21_ARB                                              = 0x8735;
        inline static var GL_MODELVIEW22_ARB                                              = 0x8736;
        inline static var GL_MODELVIEW23_ARB                                              = 0x8737;
        inline static var GL_MODELVIEW24_ARB                                              = 0x8738;
        inline static var GL_MODELVIEW25_ARB                                              = 0x8739;
        inline static var GL_MODELVIEW26_ARB                                              = 0x873A;
        inline static var GL_MODELVIEW27_ARB                                              = 0x873B;
        inline static var GL_MODELVIEW28_ARB                                              = 0x873C;
        inline static var GL_MODELVIEW29_ARB                                              = 0x873D;
        inline static var GL_MODELVIEW30_ARB                                              = 0x873E;
        inline static var GL_MODELVIEW31_ARB                                              = 0x873F;




    // GL_ARB_vertex_blend functions

        @:native('glVertexBlendARB')
        static function glVertexBlendARB(count:Int) : Void;


        inline static function glWeightPointerARB(size:Int, type:Int, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glWeightPointerARB({0}, {1}, {2}, (void*)&({3}[0]))", size, type, stride, pointer); }

        inline static function glWeightdvARB(size:Int, weights:Array<cpp.Float64>) : Void
          { untyped __cpp__("glWeightdvARB({0}, (GLdouble*)&({1}[0]))", size, weights); }

        inline static function glWeightfvARB(size:Int, weights:Array<cpp.Float32>) : Void
          { untyped __cpp__("glWeightfvARB({0}, (GLfloat*)&({1}[0]))", size, weights); }

        inline static function glWeightivARB(size:Int, weights:Array<Int>) : Void
          { untyped __cpp__("glWeightivARB({0}, (GLint*)&({1}[0]))", size, weights); }

        inline static function glWeightubvARB(size:Int, weights:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glWeightubvARB({0}, (GLubyte*)&({1}[0]))", size, weights); }

        inline static function glWeightuivARB(size:Int, weights:Array<UInt>) : Void
          { untyped __cpp__("glWeightuivARB({0}, (GLuint*)&({1}[0]))", size, weights); }

        inline static function glWeightusvARB(size:Int, weights:Array<UInt>) : Void
          { untyped __cpp__("glWeightusvARB({0}, (GLushort*)&({1}[0]))", size, weights); }



    // TODO functions

            
        // @:native('glWeightbvARB')
        // static function glWeightbvARB(size:Int, weights:GLbyte*) : Void;
            
        // @:native('glWeightsvARB')
        // static function glWeightsvARB(size:Int, weights:GLshort*) : Void;


//GL_ARB_vertex_buffer_object

    // GL_ARB_vertex_buffer_object defines

        inline static var GL_ARB_vertex_buffer_object                                     = 1;
        inline static var GL_BUFFER_SIZE_ARB                                              = 0x8764;
        inline static var GL_BUFFER_USAGE_ARB                                             = 0x8765;
        inline static var GL_ARRAY_BUFFER_ARB                                             = 0x8892;
        inline static var GL_ELEMENT_ARRAY_BUFFER_ARB                                     = 0x8893;
        inline static var GL_ARRAY_BUFFER_BINDING_ARB                                     = 0x8894;
        inline static var GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB                             = 0x8895;
        inline static var GL_VERTEX_ARRAY_BUFFER_BINDING_ARB                              = 0x8896;
        inline static var GL_NORMAL_ARRAY_BUFFER_BINDING_ARB                              = 0x8897;
        inline static var GL_COLOR_ARRAY_BUFFER_BINDING_ARB                               = 0x8898;
        inline static var GL_INDEX_ARRAY_BUFFER_BINDING_ARB                               = 0x8899;
        inline static var GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB                       = 0x889A;
        inline static var GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB                           = 0x889B;
        inline static var GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB                     = 0x889C;
        inline static var GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB                      = 0x889D;
        inline static var GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB                              = 0x889E;
        inline static var GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB                       = 0x889F;
        inline static var GL_READ_ONLY_ARB                                                = 0x88B8;
        inline static var GL_WRITE_ONLY_ARB                                               = 0x88B9;
        inline static var GL_READ_WRITE_ARB                                               = 0x88BA;
        inline static var GL_BUFFER_ACCESS_ARB                                            = 0x88BB;
        inline static var GL_BUFFER_MAPPED_ARB                                            = 0x88BC;
        inline static var GL_BUFFER_MAP_POINTER_ARB                                       = 0x88BD;
        inline static var GL_STREAM_DRAW_ARB                                              = 0x88E0;
        inline static var GL_STREAM_READ_ARB                                              = 0x88E1;
        inline static var GL_STREAM_COPY_ARB                                              = 0x88E2;
        inline static var GL_STATIC_DRAW_ARB                                              = 0x88E4;
        inline static var GL_STATIC_READ_ARB                                              = 0x88E5;
        inline static var GL_STATIC_COPY_ARB                                              = 0x88E6;
        inline static var GL_DYNAMIC_DRAW_ARB                                             = 0x88E8;
        inline static var GL_DYNAMIC_READ_ARB                                             = 0x88E9;
        inline static var GL_DYNAMIC_COPY_ARB                                             = 0x88EA;




    // GL_ARB_vertex_buffer_object functions

        @:native('glBindBufferARB')
        static function glBindBufferARB(target:Int, buffer:UInt) : Void;

        @:native('glIsBufferARB')
        static function glIsBufferARB(buffer:UInt) : Bool;

        @:native('glUnmapBufferARB')
        static function glUnmapBufferARB(target:Int) : Bool;


        inline static function glDeleteBuffersARB(n:Int, buffers:Array<UInt>) : Void
          { untyped __cpp__("glDeleteBuffersARB({0}, (const GLuint*)&({1}[0]))", n, buffers); }

        inline static function glGenBuffersARB(n:Int, buffers:Array<UInt>) : Void
          { untyped __cpp__("glGenBuffersARB({0}, (GLuint*)&({1}[0]))", n, buffers); }

        inline static function glGetBufferParameterivARB(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetBufferParameterivARB({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }



    // TODO functions

            
        // inline static function glBufferDataARB(target:Int, size:GLsizeiptrARB, data:BytesData, usage:Int) : Void
        // { untyped __cpp__("glBufferDataARB({0}, {1}, (const void*)&({2}[0]), {3})", target, size, data, usage); }
            
        // inline static function glBufferSubDataARB(target:Int, offset:GLintptrARB, size:GLsizeiptrARB, data:BytesData) : Void
        // { untyped __cpp__("glBufferSubDataARB({0}, {1}, {2}, (const void*)&({3}[0]))", target, offset, size, data); }
            
        // @:native('glGetBufferPointervARB')
        // static function glGetBufferPointervARB(target:Int, pname:Int, params:void**) : Void;
            
        // inline static function glGetBufferSubDataARB(target:Int, offset:GLintptrARB, size:GLsizeiptrARB, data:BytesData) : Void
        // { untyped __cpp__("glGetBufferSubDataARB({0}, {1}, {2}, (void*)&({3}[0]))", target, offset, size, data); }
            
        // @:native('glMapBufferARB')
        // static function glMapBufferARB(target:Int, access:Int) : void *;


//GL_ARB_vertex_program

    // GL_ARB_vertex_program defines

        inline static var GL_ARB_vertex_program                                           = 1;
        inline static var GL_COLOR_SUM_ARB                                                = 0x8458;
        inline static var GL_VERTEX_PROGRAM_ARB                                           = 0x8620;
        inline static var GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB                              = 0x8622;
        inline static var GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB                                 = 0x8623;
        inline static var GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB                               = 0x8624;
        inline static var GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB                                 = 0x8625;
        inline static var GL_CURRENT_VERTEX_ATTRIB_ARB                                    = 0x8626;
        inline static var GL_PROGRAM_LENGTH_ARB                                           = 0x8627;
        inline static var GL_PROGRAM_STRING_ARB                                           = 0x8628;
        inline static var GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB                           = 0x862E;
        inline static var GL_MAX_PROGRAM_MATRICES_ARB                                     = 0x862F;
        inline static var GL_CURRENT_MATRIX_STACK_DEPTH_ARB                               = 0x8640;
        inline static var GL_CURRENT_MATRIX_ARB                                           = 0x8641;
        inline static var GL_VERTEX_PROGRAM_POINT_SIZE_ARB                                = 0x8642;
        inline static var GL_VERTEX_PROGRAM_TWO_SIDE_ARB                                  = 0x8643;
        inline static var GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB                              = 0x8645;
        inline static var GL_PROGRAM_ERROR_POSITION_ARB                                   = 0x864B;
        inline static var GL_PROGRAM_BINDING_ARB                                          = 0x8677;
        inline static var GL_MAX_VERTEX_ATTRIBS_ARB                                       = 0x8869;
        inline static var GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB                           = 0x886A;
        inline static var GL_PROGRAM_ERROR_STRING_ARB                                     = 0x8874;
        inline static var GL_PROGRAM_FORMAT_ASCII_ARB                                     = 0x8875;
        inline static var GL_PROGRAM_FORMAT_ARB                                           = 0x8876;
        inline static var GL_PROGRAM_INSTRUCTIONS_ARB                                     = 0x88A0;
        inline static var GL_MAX_PROGRAM_INSTRUCTIONS_ARB                                 = 0x88A1;
        inline static var GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB                              = 0x88A2;
        inline static var GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB                          = 0x88A3;
        inline static var GL_PROGRAM_TEMPORARIES_ARB                                      = 0x88A4;
        inline static var GL_MAX_PROGRAM_TEMPORARIES_ARB                                  = 0x88A5;
        inline static var GL_PROGRAM_NATIVE_TEMPORARIES_ARB                               = 0x88A6;
        inline static var GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB                           = 0x88A7;
        inline static var GL_PROGRAM_PARAMETERS_ARB                                       = 0x88A8;
        inline static var GL_MAX_PROGRAM_PARAMETERS_ARB                                   = 0x88A9;
        inline static var GL_PROGRAM_NATIVE_PARAMETERS_ARB                                = 0x88AA;
        inline static var GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB                            = 0x88AB;
        inline static var GL_PROGRAM_ATTRIBS_ARB                                          = 0x88AC;
        inline static var GL_MAX_PROGRAM_ATTRIBS_ARB                                      = 0x88AD;
        inline static var GL_PROGRAM_NATIVE_ATTRIBS_ARB                                   = 0x88AE;
        inline static var GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB                               = 0x88AF;
        inline static var GL_PROGRAM_ADDRESS_REGISTERS_ARB                                = 0x88B0;
        inline static var GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB                            = 0x88B1;
        inline static var GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB                         = 0x88B2;
        inline static var GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB                     = 0x88B3;
        inline static var GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB                             = 0x88B4;
        inline static var GL_MAX_PROGRAM_ENV_PARAMETERS_ARB                               = 0x88B5;
        inline static var GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB                              = 0x88B6;
        inline static var GL_TRANSPOSE_CURRENT_MATRIX_ARB                                 = 0x88B7;
        inline static var GL_MATRIX0_ARB                                                  = 0x88C0;
        inline static var GL_MATRIX1_ARB                                                  = 0x88C1;
        inline static var GL_MATRIX2_ARB                                                  = 0x88C2;
        inline static var GL_MATRIX3_ARB                                                  = 0x88C3;
        inline static var GL_MATRIX4_ARB                                                  = 0x88C4;
        inline static var GL_MATRIX5_ARB                                                  = 0x88C5;
        inline static var GL_MATRIX6_ARB                                                  = 0x88C6;
        inline static var GL_MATRIX7_ARB                                                  = 0x88C7;
        inline static var GL_MATRIX8_ARB                                                  = 0x88C8;
        inline static var GL_MATRIX9_ARB                                                  = 0x88C9;
        inline static var GL_MATRIX10_ARB                                                 = 0x88CA;
        inline static var GL_MATRIX11_ARB                                                 = 0x88CB;
        inline static var GL_MATRIX12_ARB                                                 = 0x88CC;
        inline static var GL_MATRIX13_ARB                                                 = 0x88CD;
        inline static var GL_MATRIX14_ARB                                                 = 0x88CE;
        inline static var GL_MATRIX15_ARB                                                 = 0x88CF;
        inline static var GL_MATRIX16_ARB                                                 = 0x88D0;
        inline static var GL_MATRIX17_ARB                                                 = 0x88D1;
        inline static var GL_MATRIX18_ARB                                                 = 0x88D2;
        inline static var GL_MATRIX19_ARB                                                 = 0x88D3;
        inline static var GL_MATRIX20_ARB                                                 = 0x88D4;
        inline static var GL_MATRIX21_ARB                                                 = 0x88D5;
        inline static var GL_MATRIX22_ARB                                                 = 0x88D6;
        inline static var GL_MATRIX23_ARB                                                 = 0x88D7;
        inline static var GL_MATRIX24_ARB                                                 = 0x88D8;
        inline static var GL_MATRIX25_ARB                                                 = 0x88D9;
        inline static var GL_MATRIX26_ARB                                                 = 0x88DA;
        inline static var GL_MATRIX27_ARB                                                 = 0x88DB;
        inline static var GL_MATRIX28_ARB                                                 = 0x88DC;
        inline static var GL_MATRIX29_ARB                                                 = 0x88DD;
        inline static var GL_MATRIX30_ARB                                                 = 0x88DE;
        inline static var GL_MATRIX31_ARB                                                 = 0x88DF;




    // GL_ARB_vertex_program functions

        @:native('glBindProgramARB')
        static function glBindProgramARB(target:Int, program:UInt) : Void;

        @:native('glDisableVertexAttribArrayARB')
        static function glDisableVertexAttribArrayARB(index:UInt) : Void;

        @:native('glEnableVertexAttribArrayARB')
        static function glEnableVertexAttribArrayARB(index:UInt) : Void;

        @:native('glIsProgramARB')
        static function glIsProgramARB(program:UInt) : Bool;

        @:native('glProgramEnvParameter4dARB')
        static function glProgramEnvParameter4dARB(target:Int, index:UInt, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64, w:cpp.Float64) : Void;

        @:native('glProgramEnvParameter4fARB')
        static function glProgramEnvParameter4fARB(target:Int, index:UInt, x:cpp.Float32, y:cpp.Float32, z:cpp.Float32, w:cpp.Float32) : Void;

        @:native('glProgramLocalParameter4dARB')
        static function glProgramLocalParameter4dARB(target:Int, index:UInt, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64, w:cpp.Float64) : Void;

        @:native('glProgramLocalParameter4fARB')
        static function glProgramLocalParameter4fARB(target:Int, index:UInt, x:cpp.Float32, y:cpp.Float32, z:cpp.Float32, w:cpp.Float32) : Void;

        @:native('glVertexAttrib1dARB')
        static function glVertexAttrib1dARB(index:UInt, x:cpp.Float64) : Void;

        @:native('glVertexAttrib1fARB')
        static function glVertexAttrib1fARB(index:UInt, x:cpp.Float32) : Void;

        @:native('glVertexAttrib1sARB')
        static function glVertexAttrib1sARB(index:UInt, x:Int) : Void;

        @:native('glVertexAttrib2dARB')
        static function glVertexAttrib2dARB(index:UInt, x:cpp.Float64, y:cpp.Float64) : Void;

        @:native('glVertexAttrib2fARB')
        static function glVertexAttrib2fARB(index:UInt, x:cpp.Float32, y:cpp.Float32) : Void;

        @:native('glVertexAttrib2sARB')
        static function glVertexAttrib2sARB(index:UInt, x:Int, y:Int) : Void;

        @:native('glVertexAttrib3dARB')
        static function glVertexAttrib3dARB(index:UInt, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glVertexAttrib3fARB')
        static function glVertexAttrib3fARB(index:UInt, x:cpp.Float32, y:cpp.Float32, z:cpp.Float32) : Void;

        @:native('glVertexAttrib3sARB')
        static function glVertexAttrib3sARB(index:UInt, x:Int, y:Int, z:Int) : Void;

        @:native('glVertexAttrib4NubARB')
        static function glVertexAttrib4NubARB(index:UInt, x:cpp.UInt8, y:cpp.UInt8, z:cpp.UInt8, w:cpp.UInt8) : Void;

        @:native('glVertexAttrib4dARB')
        static function glVertexAttrib4dARB(index:UInt, x:cpp.Float64, y:cpp.Float64, z:cpp.Float64, w:cpp.Float64) : Void;

        @:native('glVertexAttrib4fARB')
        static function glVertexAttrib4fARB(index:UInt, x:cpp.Float32, y:cpp.Float32, z:cpp.Float32, w:cpp.Float32) : Void;

        @:native('glVertexAttrib4sARB')
        static function glVertexAttrib4sARB(index:UInt, x:Int, y:Int, z:Int, w:Int) : Void;


        inline static function glDeleteProgramsARB(n:Int, programs:Array<UInt>) : Void
          { untyped __cpp__("glDeleteProgramsARB({0}, (const GLuint*)&({1}[0]))", n, programs); }

        inline static function glGenProgramsARB(n:Int, programs:Array<UInt>) : Void
          { untyped __cpp__("glGenProgramsARB({0}, (GLuint*)&({1}[0]))", n, programs); }

        inline static function glGetProgramEnvParameterdvARB(target:Int, index:UInt, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetProgramEnvParameterdvARB({0}, {1}, (GLdouble*)&({2}[0]))", target, index, params); }

        inline static function glGetProgramEnvParameterfvARB(target:Int, index:UInt, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetProgramEnvParameterfvARB({0}, {1}, (GLfloat*)&({2}[0]))", target, index, params); }

        inline static function glGetProgramLocalParameterdvARB(target:Int, index:UInt, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetProgramLocalParameterdvARB({0}, {1}, (GLdouble*)&({2}[0]))", target, index, params); }

        inline static function glGetProgramLocalParameterfvARB(target:Int, index:UInt, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetProgramLocalParameterfvARB({0}, {1}, (GLfloat*)&({2}[0]))", target, index, params); }

        inline static function glGetProgramStringARB(target:Int, pname:Int, string:BytesData) : Void
          { untyped __cpp__("glGetProgramStringARB({0}, {1}, (void*)&({2}[0]))", target, pname, string); }

        inline static function glGetProgramivARB(target:Int, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetProgramivARB({0}, {1}, (GLint*)&({2}[0]))", target, pname, params); }

        inline static function glGetVertexAttribdvARB(index:UInt, pname:Int, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetVertexAttribdvARB({0}, {1}, (GLdouble*)&({2}[0]))", index, pname, params); }

        inline static function glGetVertexAttribfvARB(index:UInt, pname:Int, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetVertexAttribfvARB({0}, {1}, (GLfloat*)&({2}[0]))", index, pname, params); }

        inline static function glGetVertexAttribivARB(index:UInt, pname:Int, params:Array<Int>) : Void
          { untyped __cpp__("glGetVertexAttribivARB({0}, {1}, (GLint*)&({2}[0]))", index, pname, params); }

        inline static function glProgramEnvParameter4dvARB(target:Int, index:UInt, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramEnvParameter4dvARB({0}, {1}, (const GLdouble*)&({2}[0]))", target, index, params); }

        inline static function glProgramEnvParameter4fvARB(target:Int, index:UInt, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramEnvParameter4fvARB({0}, {1}, (const GLfloat*)&({2}[0]))", target, index, params); }

        inline static function glProgramLocalParameter4dvARB(target:Int, index:UInt, params:Array<cpp.Float64>) : Void
          { untyped __cpp__("glProgramLocalParameter4dvARB({0}, {1}, (const GLdouble*)&({2}[0]))", target, index, params); }

        inline static function glProgramLocalParameter4fvARB(target:Int, index:UInt, params:Array<cpp.Float32>) : Void
          { untyped __cpp__("glProgramLocalParameter4fvARB({0}, {1}, (const GLfloat*)&({2}[0]))", target, index, params); }

        inline static function glProgramStringARB(target:Int, format:Int, len:Int, string:BytesData) : Void
          { untyped __cpp__("glProgramStringARB({0}, {1}, {2}, (const void*)&({3}[0]))", target, format, len, string); }

        inline static function glVertexAttrib1dvARB(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttrib1dvARB({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib1fvARB(index:UInt, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glVertexAttrib1fvARB({0}, (const GLfloat*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib1svARB(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib1svARB({0}, (const GLshort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib2dvARB(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttrib2dvARB({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib2fvARB(index:UInt, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glVertexAttrib2fvARB({0}, (const GLfloat*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib2svARB(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib2svARB({0}, (const GLshort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib3dvARB(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttrib3dvARB({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib3fvARB(index:UInt, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glVertexAttrib3fvARB({0}, (const GLfloat*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib3svARB(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib3svARB({0}, (const GLshort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4NbvARB(index:UInt, v:Array<cpp.Int8>) : Void
          { untyped __cpp__("glVertexAttrib4NbvARB({0}, (const GLbyte*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4NivARB(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib4NivARB({0}, (const GLint*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4NsvARB(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib4NsvARB({0}, (const GLshort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4NubvARB(index:UInt, v:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glVertexAttrib4NubvARB({0}, (const GLubyte*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4NuivARB(index:UInt, v:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttrib4NuivARB({0}, (const GLuint*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4NusvARB(index:UInt, v:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttrib4NusvARB({0}, (const GLushort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4bvARB(index:UInt, v:Array<cpp.Int8>) : Void
          { untyped __cpp__("glVertexAttrib4bvARB({0}, (const GLbyte*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4dvARB(index:UInt, v:Array<cpp.Float64>) : Void
          { untyped __cpp__("glVertexAttrib4dvARB({0}, (const GLdouble*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4fvARB(index:UInt, v:Array<cpp.Float32>) : Void
          { untyped __cpp__("glVertexAttrib4fvARB({0}, (const GLfloat*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4ivARB(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib4ivARB({0}, (const GLint*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4svARB(index:UInt, v:Array<Int>) : Void
          { untyped __cpp__("glVertexAttrib4svARB({0}, (const GLshort*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4ubvARB(index:UInt, v:Array<cpp.UInt8>) : Void
          { untyped __cpp__("glVertexAttrib4ubvARB({0}, (const GLubyte*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4uivARB(index:UInt, v:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttrib4uivARB({0}, (const GLuint*)&({1}[0]))", index, v); }

        inline static function glVertexAttrib4usvARB(index:UInt, v:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttrib4usvARB({0}, (const GLushort*)&({1}[0]))", index, v); }

        inline static function glVertexAttribPointerARB(index:UInt, size:Int, type:Int, normalized:Bool, stride:Int, pointer:BytesData) : Void
          { untyped __cpp__("glVertexAttribPointerARB({0}, {1}, {2}, {3}, {4}, (const void*)&({5}[0]))", index, size, type, normalized, stride, pointer); }



    // TODO functions

            
        // @:native('glGetVertexAttribPointervARB')
        // static function glGetVertexAttribPointervARB(index:UInt, pname:Int, pointer:void**) : Void;


//GL_ARB_vertex_shader

    // GL_ARB_vertex_shader defines

        inline static var GL_ARB_vertex_shader                                            = 1;
        inline static var GL_VERTEX_SHADER_ARB                                            = 0x8B31;
        inline static var GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB                            = 0x8B4A;
        inline static var GL_MAX_VARYING_FLOATS_ARB                                       = 0x8B4B;
        inline static var GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB                           = 0x8B4C;
        inline static var GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB                         = 0x8B4D;
        inline static var GL_OBJECT_ACTIVE_ATTRIBUTES_ARB                                 = 0x8B89;
        inline static var GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB                       = 0x8B8A;




    // GL_ARB_vertex_shader functions




    // TODO functions

            
        // @:native('glBindAttribLocationARB')
        // static function glBindAttribLocationARB(programObj:UInt, index:UInt, name:const GLcharARB*) : Void;
            
        // inline static function glGetActiveAttribARB(programObj:UInt, index:UInt, maxLength:Int, length:GLsizei*, size:Array<Int>, type:GLenum*, name:GLcharARB*) : Void
        // { untyped __cpp__("glGetActiveAttribARB({0}, {1}, {2}, {3}, (GLint*)&({4}[0]), {5}, {6})", programObj, index, maxLength, length, size, type, name); }
            
        // @:native('glGetAttribLocationARB')
        // static function glGetAttribLocationARB(programObj:UInt, name:const GLcharARB*) : Int;


//GL_ARB_vertex_type_10f_11f_11f_rev

    // GL_ARB_vertex_type_10f_11f_11f_rev defines

        inline static var GL_ARB_vertex_type_10f_11f_11f_rev                              = 1;


//GL_ARB_vertex_type_2_10_10_10_rev

    // GL_ARB_vertex_type_2_10_10_10_rev defines

        inline static var GL_ARB_vertex_type_2_10_10_10_rev                               = 1;
        inline static var GL_UNSIGNED_INT_2_10_10_10_REV                                  = 0x8368;
        inline static var GL_INT_2_10_10_10_REV                                           = 0x8D9F;




    // GL_ARB_vertex_type_2_10_10_10_rev functions

        @:native('glColorP3ui')
        static function glColorP3ui(type:Int, color:UInt) : Void;

        @:native('glColorP4ui')
        static function glColorP4ui(type:Int, color:UInt) : Void;

        @:native('glMultiTexCoordP1ui')
        static function glMultiTexCoordP1ui(texture:Int, type:Int, coords:UInt) : Void;

        @:native('glMultiTexCoordP2ui')
        static function glMultiTexCoordP2ui(texture:Int, type:Int, coords:UInt) : Void;

        @:native('glMultiTexCoordP3ui')
        static function glMultiTexCoordP3ui(texture:Int, type:Int, coords:UInt) : Void;

        @:native('glMultiTexCoordP4ui')
        static function glMultiTexCoordP4ui(texture:Int, type:Int, coords:UInt) : Void;

        @:native('glNormalP3ui')
        static function glNormalP3ui(type:Int, coords:UInt) : Void;

        @:native('glSecondaryColorP3ui')
        static function glSecondaryColorP3ui(type:Int, color:UInt) : Void;

        @:native('glTexCoordP1ui')
        static function glTexCoordP1ui(type:Int, coords:UInt) : Void;

        @:native('glTexCoordP2ui')
        static function glTexCoordP2ui(type:Int, coords:UInt) : Void;

        @:native('glTexCoordP3ui')
        static function glTexCoordP3ui(type:Int, coords:UInt) : Void;

        @:native('glTexCoordP4ui')
        static function glTexCoordP4ui(type:Int, coords:UInt) : Void;

        @:native('glVertexAttribP1ui')
        static function glVertexAttribP1ui(index:UInt, type:Int, normalized:Bool, value:UInt) : Void;

        @:native('glVertexAttribP2ui')
        static function glVertexAttribP2ui(index:UInt, type:Int, normalized:Bool, value:UInt) : Void;

        @:native('glVertexAttribP3ui')
        static function glVertexAttribP3ui(index:UInt, type:Int, normalized:Bool, value:UInt) : Void;

        @:native('glVertexAttribP4ui')
        static function glVertexAttribP4ui(index:UInt, type:Int, normalized:Bool, value:UInt) : Void;

        @:native('glVertexP2ui')
        static function glVertexP2ui(type:Int, value:UInt) : Void;

        @:native('glVertexP3ui')
        static function glVertexP3ui(type:Int, value:UInt) : Void;

        @:native('glVertexP4ui')
        static function glVertexP4ui(type:Int, value:UInt) : Void;


        inline static function glColorP3uiv(type:Int, color:Array<UInt>) : Void
          { untyped __cpp__("glColorP3uiv({0}, (const GLuint*)&({1}[0]))", type, color); }

        inline static function glColorP4uiv(type:Int, color:Array<UInt>) : Void
          { untyped __cpp__("glColorP4uiv({0}, (const GLuint*)&({1}[0]))", type, color); }

        inline static function glMultiTexCoordP1uiv(texture:Int, type:Int, coords:Array<UInt>) : Void
          { untyped __cpp__("glMultiTexCoordP1uiv({0}, {1}, (const GLuint*)&({2}[0]))", texture, type, coords); }

        inline static function glMultiTexCoordP2uiv(texture:Int, type:Int, coords:Array<UInt>) : Void
          { untyped __cpp__("glMultiTexCoordP2uiv({0}, {1}, (const GLuint*)&({2}[0]))", texture, type, coords); }

        inline static function glMultiTexCoordP3uiv(texture:Int, type:Int, coords:Array<UInt>) : Void
          { untyped __cpp__("glMultiTexCoordP3uiv({0}, {1}, (const GLuint*)&({2}[0]))", texture, type, coords); }

        inline static function glMultiTexCoordP4uiv(texture:Int, type:Int, coords:Array<UInt>) : Void
          { untyped __cpp__("glMultiTexCoordP4uiv({0}, {1}, (const GLuint*)&({2}[0]))", texture, type, coords); }

        inline static function glNormalP3uiv(type:Int, coords:Array<UInt>) : Void
          { untyped __cpp__("glNormalP3uiv({0}, (const GLuint*)&({1}[0]))", type, coords); }

        inline static function glSecondaryColorP3uiv(type:Int, color:Array<UInt>) : Void
          { untyped __cpp__("glSecondaryColorP3uiv({0}, (const GLuint*)&({1}[0]))", type, color); }

        inline static function glTexCoordP1uiv(type:Int, coords:Array<UInt>) : Void
          { untyped __cpp__("glTexCoordP1uiv({0}, (const GLuint*)&({1}[0]))", type, coords); }

        inline static function glTexCoordP2uiv(type:Int, coords:Array<UInt>) : Void
          { untyped __cpp__("glTexCoordP2uiv({0}, (const GLuint*)&({1}[0]))", type, coords); }

        inline static function glTexCoordP3uiv(type:Int, coords:Array<UInt>) : Void
          { untyped __cpp__("glTexCoordP3uiv({0}, (const GLuint*)&({1}[0]))", type, coords); }

        inline static function glTexCoordP4uiv(type:Int, coords:Array<UInt>) : Void
          { untyped __cpp__("glTexCoordP4uiv({0}, (const GLuint*)&({1}[0]))", type, coords); }

        inline static function glVertexAttribP1uiv(index:UInt, type:Int, normalized:Bool, value:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttribP1uiv({0}, {1}, {2}, (const GLuint*)&({3}[0]))", index, type, normalized, value); }

        inline static function glVertexAttribP2uiv(index:UInt, type:Int, normalized:Bool, value:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttribP2uiv({0}, {1}, {2}, (const GLuint*)&({3}[0]))", index, type, normalized, value); }

        inline static function glVertexAttribP3uiv(index:UInt, type:Int, normalized:Bool, value:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttribP3uiv({0}, {1}, {2}, (const GLuint*)&({3}[0]))", index, type, normalized, value); }

        inline static function glVertexAttribP4uiv(index:UInt, type:Int, normalized:Bool, value:Array<UInt>) : Void
          { untyped __cpp__("glVertexAttribP4uiv({0}, {1}, {2}, (const GLuint*)&({3}[0]))", index, type, normalized, value); }

        inline static function glVertexP2uiv(type:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glVertexP2uiv({0}, (const GLuint*)&({1}[0]))", type, value); }

        inline static function glVertexP3uiv(type:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glVertexP3uiv({0}, (const GLuint*)&({1}[0]))", type, value); }

        inline static function glVertexP4uiv(type:Int, value:Array<UInt>) : Void
          { untyped __cpp__("glVertexP4uiv({0}, (const GLuint*)&({1}[0]))", type, value); }




//GL_ARB_viewport_array

    // GL_ARB_viewport_array defines

        inline static var GL_ARB_viewport_array                                           = 1;
        inline static var GL_MAX_VIEWPORTS                                                = 0x825B;
        inline static var GL_VIEWPORT_SUBPIXEL_BITS                                       = 0x825C;
        inline static var GL_VIEWPORT_BOUNDS_RANGE                                        = 0x825D;
        inline static var GL_LAYER_PROVOKING_VERTEX                                       = 0x825E;
        inline static var GL_VIEWPORT_INDEX_PROVOKING_VERTEX                              = 0x825F;
        inline static var GL_UNDEFINED_VERTEX                                             = 0x8260;




    // GL_ARB_viewport_array functions

        @:native('glDepthRangeIndexed')
        static function glDepthRangeIndexed(index:UInt, n:cpp.Float64, f:cpp.Float64) : Void;

        @:native('glScissorIndexed')
        static function glScissorIndexed(index:UInt, left:Int, bottom:Int, width:Int, height:Int) : Void;

        @:native('glViewportIndexedf')
        static function glViewportIndexedf(index:UInt, x:cpp.Float32, y:cpp.Float32, w:cpp.Float32, h:cpp.Float32) : Void;


        inline static function glGetDoublei_v(target:Int, index:UInt, data:Array<cpp.Float64>) : Void
          { untyped __cpp__("glGetDoublei_v({0}, {1}, (GLdouble*)&({2}[0]))", target, index, data); }

        inline static function glGetFloati_v(target:Int, index:UInt, data:Array<cpp.Float32>) : Void
          { untyped __cpp__("glGetFloati_v({0}, {1}, (GLfloat*)&({2}[0]))", target, index, data); }



    // TODO functions

            
        // @:native('glDepthRangeArrayv')
        // static function glDepthRangeArrayv(first:UInt, count:Int, v:const GLclampd *) : Void;
            
        // @:native('glScissorArrayv')
        // static function glScissorArrayv(first:UInt, count:Int, v:const GLint *) : Void;
            
        // @:native('glScissorIndexedv')
        // static function glScissorIndexedv(index:UInt, v:const GLint *) : Void;
            
        // @:native('glViewportArrayv')
        // static function glViewportArrayv(first:UInt, count:Int, v:const GLfloat *) : Void;
            
        // @:native('glViewportIndexedfv')
        // static function glViewportIndexedfv(index:UInt, v:const GLfloat *) : Void;


//GL_ARB_window_pos

    // GL_ARB_window_pos defines

        inline static var GL_ARB_window_pos                                               = 1;




    // GL_ARB_window_pos functions

        @:native('glWindowPos2dARB')
        static function glWindowPos2dARB(x:cpp.Float64, y:cpp.Float64) : Void;

        @:native('glWindowPos2fARB')
        static function glWindowPos2fARB(x:cpp.Float32, y:cpp.Float32) : Void;

        @:native('glWindowPos2iARB')
        static function glWindowPos2iARB(x:Int, y:Int) : Void;

        @:native('glWindowPos2sARB')
        static function glWindowPos2sARB(x:Int, y:Int) : Void;

        @:native('glWindowPos3dARB')
        static function glWindowPos3dARB(x:cpp.Float64, y:cpp.Float64, z:cpp.Float64) : Void;

        @:native('glWindowPos3fARB')
        static function glWindowPos3fARB(x:cpp.Float32, y:cpp.Float32, z:cpp.Float32) : Void;

        @:native('glWindowPos3iARB')
        static function glWindowPos3iARB(x:Int, y:Int, z:Int) : Void;

        @:native('glWindowPos3sARB')
        static function glWindowPos3sARB(x:Int, y:Int, z:Int) : Void;


        inline static function glWindowPos2dvARB(p:Array<cpp.Float64>) : Void
          { untyped __cpp__("glWindowPos2dvARB((const GLdouble*)&({0}[0]))", p); }

        inline static function glWindowPos2fvARB(p:Array<cpp.Float32>) : Void
          { untyped __cpp__("glWindowPos2fvARB((const GLfloat*)&({0}[0]))", p); }

        inline static function glWindowPos2ivARB(p:Array<Int>) : Void
          { untyped __cpp__("glWindowPos2ivARB((const GLint*)&({0}[0]))", p); }

        inline static function glWindowPos2svARB(p:Array<Int>) : Void
          { untyped __cpp__("glWindowPos2svARB((const GLshort*)&({0}[0]))", p); }

        inline static function glWindowPos3dvARB(p:Array<cpp.Float64>) : Void
          { untyped __cpp__("glWindowPos3dvARB((const GLdouble*)&({0}[0]))", p); }

        inline static function glWindowPos3fvARB(p:Array<cpp.Float32>) : Void
          { untyped __cpp__("glWindowPos3fvARB((const GLfloat*)&({0}[0]))", p); }

        inline static function glWindowPos3ivARB(p:Array<Int>) : Void
          { untyped __cpp__("glWindowPos3ivARB((const GLint*)&({0}[0]))", p); }

        inline static function glWindowPos3svARB(p:Array<Int>) : Void
          { untyped __cpp__("glWindowPos3svARB((const GLshort*)&({0}[0]))", p); }






}