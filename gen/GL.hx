@:publicFields
class GL {

//GL 1.1
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


//GL 1.2
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


//GL 1.2
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


//GL 1.4
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


//GL 1.5
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


//GL 2.0
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


//GL 2.1
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


//GL 3.0
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


//GL 3.1
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


//GL 3.2
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


//GL 3.3
    inline static var GL_VERTEX_ATTRIB_ARRAY_DIVISOR                                  = 0x88FE;
    inline static var GL_RGB10_A2UI                                                   = 0x906F;


//GL 4.0
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


//GL 4.1


//GL 4.2
    inline static var GL_COMPRESSED_RGBA_BPTC_UNORM                                   = 0x8E8C;
    inline static var GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM                             = 0x8E8D;
    inline static var GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT                             = 0x8E8E;
    inline static var GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT                           = 0x8E8F;
    inline static var GL_COPY_READ_BUFFER_BINDING                                     = 0x8F36;
    inline static var GL_COPY_WRITE_BUFFER_BINDING                                    = 0x8F37;


//GL 4.3
    inline static var GL_NUM_SHADING_LANGUAGE_VERSIONS                                = 0x82E9;
    inline static var GL_VERTEX_ATTRIB_ARRAY_LONG                                     = 0x874E;


//GL 4.4
    inline static var GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED                      = 0x8221;
    inline static var GL_MAX_VERTEX_ATTRIB_STRIDE                                     = 0x82E5;
    inline static var GL_TEXTURE_BUFFER_BINDING                                       = 0x8C2A;


//GL 4.5




//GL_ARB_ES2_compatibility
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


//GL_ARB_ES3_1_compatibility
    inline static var GL_ARB_ES3_1_compatibility                                      = 1;


//GL_ARB_ES3_compatibility
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
    inline static var GL_ARB_arrays_of_arrays                                         = 1;


//GL_ARB_base_instance
    inline static var GL_ARB_base_instance                                            = 1;


//GL_ARB_bindless_texture
    inline static var GL_ARB_bindless_texture                                         = 1;
    inline static var GL_UNSIGNED_INT64_ARB                                           = 0x140F;


//GL_ARB_blend_func_extended
    inline static var GL_ARB_blend_func_extended                                      = 1;
    inline static var GL_SRC1_COLOR                                                   = 0x88F9;
    inline static var GL_ONE_MINUS_SRC1_COLOR                                         = 0x88FA;
    inline static var GL_ONE_MINUS_SRC1_ALPHA                                         = 0x88FB;
    inline static var GL_MAX_DUAL_SOURCE_DRAW_BUFFERS                                 = 0x88FC;


//GL_ARB_buffer_storage
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


//GL_ARB_cl_event
    inline static var GL_ARB_cl_event                                                 = 1;
    inline static var GL_SYNC_CL_EVENT_ARB                                            = 0x8240;
    inline static var GL_SYNC_CL_EVENT_COMPLETE_ARB                                   = 0x8241;


//GL_ARB_clear_buffer_object
    inline static var GL_ARB_clear_buffer_object                                      = 1;


//GL_ARB_clear_texture
    inline static var GL_ARB_clear_texture                                            = 1;
    inline static var GL_CLEAR_TEXTURE                                                = 0x9365;


//GL_ARB_clip_control
    inline static var GL_ARB_clip_control                                             = 1;
    inline static var GL_CLIP_ORIGIN                                                  = 0x935C;
    inline static var GL_CLIP_DEPTH_MODE                                              = 0x935D;
    inline static var GL_NEGATIVE_ONE_TO_ONE                                          = 0x935E;
    inline static var GL_ZERO_TO_ONE                                                  = 0x935F;


//GL_ARB_color_buffer_float
    inline static var GL_ARB_color_buffer_float                                       = 1;
    inline static var GL_RGBA_FLOAT_MODE_ARB                                          = 0x8820;
    inline static var GL_CLAMP_VERTEX_COLOR_ARB                                       = 0x891A;
    inline static var GL_CLAMP_FRAGMENT_COLOR_ARB                                     = 0x891B;
    inline static var GL_CLAMP_READ_COLOR_ARB                                         = 0x891C;
    inline static var GL_FIXED_ONLY_ARB                                               = 0x891D;


//GL_ARB_compatibility
    inline static var GL_ARB_compatibility                                            = 1;


//GL_ARB_compressed_texture_pixel_storage
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


//GL_ARB_compute_variable_group_size
    inline static var GL_ARB_compute_variable_group_size                              = 1;
    inline static var GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB                      = 0x90EB;
    inline static var GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB                             = 0x91BF;
    inline static var GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB                   = 0x9344;
    inline static var GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB                          = 0x9345;


//GL_ARB_conditional_render_inverted
    inline static var GL_ARB_conditional_render_inverted                              = 1;
    inline static var GL_QUERY_WAIT_INVERTED                                          = 0x8E17;
    inline static var GL_QUERY_NO_WAIT_INVERTED                                       = 0x8E18;
    inline static var GL_QUERY_BY_REGION_WAIT_INVERTED                                = 0x8E19;
    inline static var GL_QUERY_BY_REGION_NO_WAIT_INVERTED                             = 0x8E1A;


//GL_ARB_conservative_depth
    inline static var GL_ARB_conservative_depth                                       = 1;


//GL_ARB_copy_buffer
    inline static var GL_ARB_copy_buffer                                              = 1;
    inline static var GL_COPY_READ_BUFFER                                             = 0x8F36;
    inline static var GL_COPY_WRITE_BUFFER                                            = 0x8F37;


//GL_ARB_copy_image
    inline static var GL_ARB_copy_image                                               = 1;


//GL_ARB_cull_distance
    inline static var GL_ARB_cull_distance                                            = 1;
    inline static var GL_MAX_CULL_DISTANCES                                           = 0x82F9;
    inline static var GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES                         = 0x82FA;


//GL_ARB_debug_output
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


//GL_ARB_depth_buffer_float
    inline static var GL_ARB_depth_buffer_float                                       = 1;
    inline static var GL_DEPTH_COMPONENT32F                                           = 0x8CAC;
    inline static var GL_DEPTH32F_STENCIL8                                            = 0x8CAD;
    inline static var GL_FLOAT_32_UNSIGNED_INT_24_8_REV                               = 0x8DAD;


//GL_ARB_depth_clamp
    inline static var GL_ARB_depth_clamp                                              = 1;
    inline static var GL_DEPTH_CLAMP                                                  = 0x864F;


//GL_ARB_depth_texture
    inline static var GL_ARB_depth_texture                                            = 1;
    inline static var GL_DEPTH_COMPONENT16_ARB                                        = 0x81A5;
    inline static var GL_DEPTH_COMPONENT24_ARB                                        = 0x81A6;
    inline static var GL_DEPTH_COMPONENT32_ARB                                        = 0x81A7;
    inline static var GL_TEXTURE_DEPTH_SIZE_ARB                                       = 0x884A;
    inline static var GL_DEPTH_TEXTURE_MODE_ARB                                       = 0x884B;


//GL_ARB_derivative_control
    inline static var GL_ARB_derivative_control                                       = 1;


//GL_ARB_direct_state_access
    inline static var GL_ARB_direct_state_access                                      = 1;
    inline static var GL_TEXTURE_TARGET                                               = 0x1006;
    inline static var GL_QUERY_TARGET                                                 = 0x82EA;


//GL_ARB_draw_buffers
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


//GL_ARB_draw_buffers_blend
    inline static var GL_ARB_draw_buffers_blend                                       = 1;


//GL_ARB_draw_elements_base_vertex
    inline static var GL_ARB_draw_elements_base_vertex                                = 1;


//GL_ARB_draw_indirect
    inline static var GL_ARB_draw_indirect                                            = 1;
    inline static var GL_DRAW_INDIRECT_BUFFER                                         = 0x8F3F;
    inline static var GL_DRAW_INDIRECT_BUFFER_BINDING                                 = 0x8F43;


//GL_ARB_draw_instanced
    inline static var GL_ARB_draw_instanced                                           = 1;


//GL_ARB_enhanced_layouts
    inline static var GL_ARB_enhanced_layouts                                         = 1;
    inline static var GL_LOCATION_COMPONENT                                           = 0x934A;
    inline static var GL_TRANSFORM_FEEDBACK_BUFFER_INDEX                              = 0x934B;
    inline static var GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE                             = 0x934C;


//GL_ARB_explicit_attrib_location
    inline static var GL_ARB_explicit_attrib_location                                 = 1;


//GL_ARB_explicit_uniform_location
    inline static var GL_ARB_explicit_uniform_location                                = 1;
    inline static var GL_MAX_UNIFORM_LOCATIONS                                        = 0x826E;


//GL_ARB_fragment_coord_conventions
    inline static var GL_ARB_fragment_coord_conventions                               = 1;


//GL_ARB_fragment_layer_viewport
    inline static var GL_ARB_fragment_layer_viewport                                  = 1;


//GL_ARB_fragment_program
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
    inline static var GL_ARB_fragment_program_shadow                                  = 1;


//GL_ARB_fragment_shader
    inline static var GL_ARB_fragment_shader                                          = 1;
    inline static var GL_FRAGMENT_SHADER_ARB                                          = 0x8B30;
    inline static var GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB                          = 0x8B49;
    inline static var GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB                          = 0x8B8B;


//GL_ARB_framebuffer_no_attachments
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


//GL_ARB_framebuffer_object
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


//GL_ARB_framebuffer_sRGB
    inline static var GL_ARB_framebuffer_sRGB                                         = 1;
    inline static var GL_FRAMEBUFFER_SRGB                                             = 0x8DB9;


//GL_ARB_geometry_shader4
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


//GL_ARB_get_program_binary
    inline static var GL_ARB_get_program_binary                                       = 1;
    inline static var GL_PROGRAM_BINARY_RETRIEVABLE_HINT                              = 0x8257;
    inline static var GL_PROGRAM_BINARY_LENGTH                                        = 0x8741;
    inline static var GL_NUM_PROGRAM_BINARY_FORMATS                                   = 0x87FE;
    inline static var GL_PROGRAM_BINARY_FORMATS                                       = 0x87FF;


//GL_ARB_get_texture_sub_image
    inline static var GL_ARB_get_texture_sub_image                                    = 1;


//GL_ARB_gpu_shader5
    inline static var GL_ARB_gpu_shader5                                              = 1;
    inline static var GL_GEOMETRY_SHADER_INVOCATIONS                                  = 0x887F;
    inline static var GL_MAX_GEOMETRY_SHADER_INVOCATIONS                              = 0x8E5A;
    inline static var GL_MIN_FRAGMENT_INTERPOLATION_OFFSET                            = 0x8E5B;
    inline static var GL_MAX_FRAGMENT_INTERPOLATION_OFFSET                            = 0x8E5C;
    inline static var GL_FRAGMENT_INTERPOLATION_OFFSET_BITS                           = 0x8E5D;
    inline static var GL_MAX_VERTEX_STREAMS                                           = 0x8E71;


//GL_ARB_gpu_shader_fp64
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


//GL_ARB_half_float_pixel
    inline static var GL_ARB_half_float_pixel                                         = 1;
    inline static var GL_HALF_FLOAT_ARB                                               = 0x140B;


//GL_ARB_half_float_vertex
    inline static var GL_ARB_half_float_vertex                                        = 1;
    inline static var GL_HALF_FLOAT                                                   = 0x140B;


//GL_ARB_imaging
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


//GL_ARB_indirect_parameters
    inline static var GL_ARB_indirect_parameters                                      = 1;
    inline static var GL_PARAMETER_BUFFER_ARB                                         = 0x80EE;
    inline static var GL_PARAMETER_BUFFER_BINDING_ARB                                 = 0x80EF;


//GL_ARB_instanced_arrays
    inline static var GL_ARB_instanced_arrays                                         = 1;
    inline static var GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB                              = 0x88FE;


//GL_ARB_internalformat_query
    inline static var GL_ARB_internalformat_query                                     = 1;
    inline static var GL_NUM_SAMPLE_COUNTS                                            = 0x9380;


//GL_ARB_internalformat_query2
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


//GL_ARB_invalidate_subdata
    inline static var GL_ARB_invalidate_subdata                                       = 1;


//GL_ARB_map_buffer_alignment
    inline static var GL_ARB_map_buffer_alignment                                     = 1;
    inline static var GL_MIN_MAP_BUFFER_ALIGNMENT                                     = 0x90BC;


//GL_ARB_map_buffer_range
    inline static var GL_ARB_map_buffer_range                                         = 1;
    inline static var GL_MAP_INVALIDATE_RANGE_BIT                                     = 0x0004;
    inline static var GL_MAP_INVALIDATE_BUFFER_BIT                                    = 0x0008;
    inline static var GL_MAP_FLUSH_EXPLICIT_BIT                                       = 0x0010;
    inline static var GL_MAP_UNSYNCHRONIZED_BIT                                       = 0x0020;


//GL_ARB_matrix_palette
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


//GL_ARB_multi_bind
    inline static var GL_ARB_multi_bind                                               = 1;


//GL_ARB_multi_draw_indirect
    inline static var GL_ARB_multi_draw_indirect                                      = 1;


//GL_ARB_multisample
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


//GL_ARB_multitexture
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


//GL_ARB_occlusion_query
    inline static var GL_ARB_occlusion_query                                          = 1;
    inline static var GL_QUERY_COUNTER_BITS_ARB                                       = 0x8864;
    inline static var GL_CURRENT_QUERY_ARB                                            = 0x8865;
    inline static var GL_QUERY_RESULT_ARB                                             = 0x8866;
    inline static var GL_QUERY_RESULT_AVAILABLE_ARB                                   = 0x8867;
    inline static var GL_SAMPLES_PASSED_ARB                                           = 0x8914;


//GL_ARB_occlusion_query2
    inline static var GL_ARB_occlusion_query2                                         = 1;
    inline static var GL_ANY_SAMPLES_PASSED                                           = 0x8C2F;


//GL_ARB_pipeline_statistics_query
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
    inline static var GL_ARB_pixel_buffer_object                                      = 1;
    inline static var GL_PIXEL_PACK_BUFFER_ARB                                        = 0x88EB;
    inline static var GL_PIXEL_UNPACK_BUFFER_ARB                                      = 0x88EC;
    inline static var GL_PIXEL_PACK_BUFFER_BINDING_ARB                                = 0x88ED;
    inline static var GL_PIXEL_UNPACK_BUFFER_BINDING_ARB                              = 0x88EF;


//GL_ARB_point_parameters
    inline static var GL_ARB_point_parameters                                         = 1;
    inline static var GL_POINT_SIZE_MIN_ARB                                           = 0x8126;
    inline static var GL_POINT_SIZE_MAX_ARB                                           = 0x8127;
    inline static var GL_POINT_FADE_THRESHOLD_SIZE_ARB                                = 0x8128;
    inline static var GL_POINT_DISTANCE_ATTENUATION_ARB                               = 0x8129;


//GL_ARB_point_sprite
    inline static var GL_ARB_point_sprite                                             = 1;
    inline static var GL_POINT_SPRITE_ARB                                             = 0x8861;
    inline static var GL_COORD_REPLACE_ARB                                            = 0x8862;


//GL_ARB_program_interface_query
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


//GL_ARB_provoking_vertex
    inline static var GL_ARB_provoking_vertex                                         = 1;
    inline static var GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION                     = 0x8E4C;
    inline static var GL_FIRST_VERTEX_CONVENTION                                      = 0x8E4D;
    inline static var GL_LAST_VERTEX_CONVENTION                                       = 0x8E4E;
    inline static var GL_PROVOKING_VERTEX                                             = 0x8E4F;


//GL_ARB_query_buffer_object
    inline static var GL_ARB_query_buffer_object                                      = 1;
    inline static var GL_QUERY_BUFFER_BARRIER_BIT                                     = 0x00008000;
    inline static var GL_QUERY_BUFFER                                                 = 0x9192;
    inline static var GL_QUERY_BUFFER_BINDING                                         = 0x9193;
    inline static var GL_QUERY_RESULT_NO_WAIT                                         = 0x9194;


//GL_ARB_robust_buffer_access_behavior
    inline static var GL_ARB_robust_buffer_access_behavior                            = 1;


//GL_ARB_robustness
    inline static var GL_ARB_robustness                                               = 1;
    inline static var GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB                           = 0x00000004;
    inline static var GL_LOSE_CONTEXT_ON_RESET_ARB                                    = 0x8252;
    inline static var GL_GUILTY_CONTEXT_RESET_ARB                                     = 0x8253;
    inline static var GL_INNOCENT_CONTEXT_RESET_ARB                                   = 0x8254;
    inline static var GL_UNKNOWN_CONTEXT_RESET_ARB                                    = 0x8255;
    inline static var GL_RESET_NOTIFICATION_STRATEGY_ARB                              = 0x8256;
    inline static var GL_NO_RESET_NOTIFICATION_ARB                                    = 0x8261;


//GL_ARB_robustness_application_isolation
    inline static var GL_ARB_robustness_application_isolation                         = 1;


//GL_ARB_robustness_share_group_isolation
    inline static var GL_ARB_robustness_share_group_isolation                         = 1;


//GL_ARB_sample_shading
    inline static var GL_ARB_sample_shading                                           = 1;
    inline static var GL_SAMPLE_SHADING_ARB                                           = 0x8C36;
    inline static var GL_MIN_SAMPLE_SHADING_VALUE_ARB                                 = 0x8C37;


//GL_ARB_sampler_objects
    inline static var GL_ARB_sampler_objects                                          = 1;
    inline static var GL_SAMPLER_BINDING                                              = 0x8919;


//GL_ARB_seamless_cube_map
    inline static var GL_ARB_seamless_cube_map                                        = 1;
    inline static var GL_TEXTURE_CUBE_MAP_SEAMLESS                                    = 0x884F;


//GL_ARB_seamless_cubemap_per_texture
    inline static var GL_ARB_seamless_cubemap_per_texture                             = 1;


//GL_ARB_separate_shader_objects
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


//GL_ARB_shader_atomic_counters
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


//GL_ARB_shader_bit_encoding
    inline static var GL_ARB_shader_bit_encoding                                      = 1;


//GL_ARB_shader_draw_parameters
    inline static var GL_ARB_shader_draw_parameters                                   = 1;


//GL_ARB_shader_group_vote
    inline static var GL_ARB_shader_group_vote                                        = 1;


//GL_ARB_shader_image_load_store
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


//GL_ARB_shader_image_size
    inline static var GL_ARB_shader_image_size                                        = 1;


//GL_ARB_shader_objects
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


//GL_ARB_shader_precision
    inline static var GL_ARB_shader_precision                                         = 1;


//GL_ARB_shader_stencil_export
    inline static var GL_ARB_shader_stencil_export                                    = 1;


//GL_ARB_shader_storage_buffer_object
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


//GL_ARB_shader_subroutine
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


//GL_ARB_shader_texture_image_samples
    inline static var GL_ARB_shader_texture_image_samples                             = 1;


//GL_ARB_shader_texture_lod
    inline static var GL_ARB_shader_texture_lod                                       = 1;


//GL_ARB_shading_language_100
    inline static var GL_ARB_shading_language_100                                     = 1;
    inline static var GL_SHADING_LANGUAGE_VERSION_ARB                                 = 0x8B8C;


//GL_ARB_shading_language_420pack
    inline static var GL_ARB_shading_language_420pack                                 = 1;


//GL_ARB_shading_language_include
    inline static var GL_ARB_shading_language_include                                 = 1;
    inline static var GL_SHADER_INCLUDE_ARB                                           = 0x8DAE;
    inline static var GL_NAMED_STRING_LENGTH_ARB                                      = 0x8DE9;
    inline static var GL_NAMED_STRING_TYPE_ARB                                        = 0x8DEA;


//GL_ARB_shading_language_packing
    inline static var GL_ARB_shading_language_packing                                 = 1;


//GL_ARB_shadow
    inline static var GL_ARB_shadow                                                   = 1;
    inline static var GL_TEXTURE_COMPARE_MODE_ARB                                     = 0x884C;
    inline static var GL_TEXTURE_COMPARE_FUNC_ARB                                     = 0x884D;
    inline static var GL_COMPARE_R_TO_TEXTURE_ARB                                     = 0x884E;


//GL_ARB_shadow_ambient
    inline static var GL_ARB_shadow_ambient                                           = 1;
    inline static var GL_TEXTURE_COMPARE_FAIL_VALUE_ARB                               = 0x80BF;


//GL_ARB_sparse_buffer
    inline static var GL_ARB_sparse_buffer                                            = 1;
    inline static var GL_SPARSE_STORAGE_BIT_ARB                                       = 0x0400;
    inline static var GL_SPARSE_BUFFER_PAGE_SIZE_ARB                                  = 0x82F8;


//GL_ARB_sparse_texture
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


//GL_ARB_stencil_texturing
    inline static var GL_ARB_stencil_texturing                                        = 1;
    inline static var GL_DEPTH_STENCIL_TEXTURE_MODE                                   = 0x90EA;


//GL_ARB_sync
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
    inline static var GL_TIMEOUT_IGNORED                                              = 0xFFFFFFFFFFFFFFFF;


//GL_ARB_tessellation_shader
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


//GL_ARB_texture_barrier
    inline static var GL_ARB_texture_barrier                                          = 1;


//GL_ARB_texture_border_clamp
    inline static var GL_ARB_texture_border_clamp                                     = 1;
    inline static var GL_CLAMP_TO_BORDER_ARB                                          = 0x812D;


//GL_ARB_texture_buffer_object
    inline static var GL_ARB_texture_buffer_object                                    = 1;
    inline static var GL_TEXTURE_BUFFER_ARB                                           = 0x8C2A;
    inline static var GL_MAX_TEXTURE_BUFFER_SIZE_ARB                                  = 0x8C2B;
    inline static var GL_TEXTURE_BINDING_BUFFER_ARB                                   = 0x8C2C;
    inline static var GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB                        = 0x8C2D;
    inline static var GL_TEXTURE_BUFFER_FORMAT_ARB                                    = 0x8C2E;


//GL_ARB_texture_buffer_object_rgb32
    inline static var GL_ARB_texture_buffer_object_rgb32                              = 1;


//GL_ARB_texture_buffer_range
    inline static var GL_ARB_texture_buffer_range                                     = 1;
    inline static var GL_TEXTURE_BUFFER_OFFSET                                        = 0x919D;
    inline static var GL_TEXTURE_BUFFER_SIZE                                          = 0x919E;
    inline static var GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT                              = 0x919F;


//GL_ARB_texture_compression
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


//GL_ARB_texture_compression_bptc
    inline static var GL_ARB_texture_compression_bptc                                 = 1;
    inline static var GL_COMPRESSED_RGBA_BPTC_UNORM_ARB                               = 0x8E8C;
    inline static var GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB                         = 0x8E8D;
    inline static var GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB                         = 0x8E8E;
    inline static var GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB                       = 0x8E8F;


//GL_ARB_texture_compression_rgtc
    inline static var GL_ARB_texture_compression_rgtc                                 = 1;
    inline static var GL_COMPRESSED_RED_RGTC1                                         = 0x8DBB;
    inline static var GL_COMPRESSED_SIGNED_RED_RGTC1                                  = 0x8DBC;
    inline static var GL_COMPRESSED_RG_RGTC2                                          = 0x8DBD;
    inline static var GL_COMPRESSED_SIGNED_RG_RGTC2                                   = 0x8DBE;


//GL_ARB_texture_cube_map
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
    inline static var GL_ARB_texture_cube_map_array                                   = 1;
    inline static var GL_TEXTURE_CUBE_MAP_ARRAY_ARB                                   = 0x9009;
    inline static var GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB                           = 0x900A;
    inline static var GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB                             = 0x900B;
    inline static var GL_SAMPLER_CUBE_MAP_ARRAY_ARB                                   = 0x900C;
    inline static var GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB                            = 0x900D;
    inline static var GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB                               = 0x900E;
    inline static var GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB                      = 0x900F;


//GL_ARB_texture_env_add
    inline static var GL_ARB_texture_env_add                                          = 1;


//GL_ARB_texture_env_combine
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
    inline static var GL_ARB_texture_env_crossbar                                     = 1;


//GL_ARB_texture_env_dot3
    inline static var GL_ARB_texture_env_dot3                                         = 1;
    inline static var GL_DOT3_RGB_ARB                                                 = 0x86AE;
    inline static var GL_DOT3_RGBA_ARB                                                = 0x86AF;


//GL_ARB_texture_float
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
    inline static var GL_ARB_texture_gather                                           = 1;
    inline static var GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB                        = 0x8E5E;
    inline static var GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB                        = 0x8E5F;
    inline static var GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB                    = 0x8F9F;


//GL_ARB_texture_mirror_clamp_to_edge
    inline static var GL_ARB_texture_mirror_clamp_to_edge                             = 1;
    inline static var GL_MIRROR_CLAMP_TO_EDGE                                         = 0x8743;


//GL_ARB_texture_mirrored_repeat
    inline static var GL_ARB_texture_mirrored_repeat                                  = 1;
    inline static var GL_MIRRORED_REPEAT_ARB                                          = 0x8370;


//GL_ARB_texture_multisample
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


//GL_ARB_texture_non_power_of_two
    inline static var GL_ARB_texture_non_power_of_two                                 = 1;


//GL_ARB_texture_query_levels
    inline static var GL_ARB_texture_query_levels                                     = 1;


//GL_ARB_texture_query_lod
    inline static var GL_ARB_texture_query_lod                                        = 1;


//GL_ARB_texture_rectangle
    inline static var GL_ARB_texture_rectangle                                        = 1;
    inline static var GL_TEXTURE_RECTANGLE_ARB                                        = 0x84F5;
    inline static var GL_TEXTURE_BINDING_RECTANGLE_ARB                                = 0x84F6;
    inline static var GL_PROXY_TEXTURE_RECTANGLE_ARB                                  = 0x84F7;
    inline static var GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB                               = 0x84F8;


//GL_ARB_texture_rg
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
    inline static var GL_ARB_texture_rgb10_a2ui                                       = 1;


//GL_ARB_texture_stencil8
    inline static var GL_ARB_texture_stencil8                                         = 1;


//GL_ARB_texture_storage
    inline static var GL_ARB_texture_storage                                          = 1;
    inline static var GL_TEXTURE_IMMUTABLE_FORMAT                                     = 0x912F;


//GL_ARB_texture_storage_multisample
    inline static var GL_ARB_texture_storage_multisample                              = 1;


//GL_ARB_texture_swizzle
    inline static var GL_ARB_texture_swizzle                                          = 1;
    inline static var GL_TEXTURE_SWIZZLE_R                                            = 0x8E42;
    inline static var GL_TEXTURE_SWIZZLE_G                                            = 0x8E43;
    inline static var GL_TEXTURE_SWIZZLE_B                                            = 0x8E44;
    inline static var GL_TEXTURE_SWIZZLE_A                                            = 0x8E45;
    inline static var GL_TEXTURE_SWIZZLE_RGBA                                         = 0x8E46;


//GL_ARB_texture_view
    inline static var GL_ARB_texture_view                                             = 1;
    inline static var GL_TEXTURE_VIEW_MIN_LEVEL                                       = 0x82DB;
    inline static var GL_TEXTURE_VIEW_NUM_LEVELS                                      = 0x82DC;
    inline static var GL_TEXTURE_VIEW_MIN_LAYER                                       = 0x82DD;
    inline static var GL_TEXTURE_VIEW_NUM_LAYERS                                      = 0x82DE;


//GL_ARB_timer_query
    inline static var GL_ARB_timer_query                                              = 1;
    inline static var GL_TIME_ELAPSED                                                 = 0x88BF;
    inline static var GL_TIMESTAMP                                                    = 0x8E28;


//GL_ARB_transform_feedback2
    inline static var GL_ARB_transform_feedback2                                      = 1;
    inline static var GL_TRANSFORM_FEEDBACK                                           = 0x8E22;
    inline static var GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED                             = 0x8E23;
    inline static var GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE                             = 0x8E24;
    inline static var GL_TRANSFORM_FEEDBACK_BINDING                                   = 0x8E25;


//GL_ARB_transform_feedback3
    inline static var GL_ARB_transform_feedback3                                      = 1;
    inline static var GL_MAX_TRANSFORM_FEEDBACK_BUFFERS                               = 0x8E70;


//GL_ARB_transform_feedback_instanced
    inline static var GL_ARB_transform_feedback_instanced                             = 1;


//GL_ARB_transform_feedback_overflow_query
    inline static var GL_ARB_transform_feedback_overflow_query                        = 1;
    inline static var GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB                              = 0x82EC;
    inline static var GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB                       = 0x82ED;


//GL_ARB_transpose_matrix
    inline static var GL_ARB_transpose_matrix                                         = 1;
    inline static var GL_TRANSPOSE_MODELVIEW_MATRIX_ARB                               = 0x84E3;
    inline static var GL_TRANSPOSE_PROJECTION_MATRIX_ARB                              = 0x84E4;
    inline static var GL_TRANSPOSE_TEXTURE_MATRIX_ARB                                 = 0x84E5;
    inline static var GL_TRANSPOSE_COLOR_MATRIX_ARB                                   = 0x84E6;


//GL_ARB_uniform_buffer_object
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


//GL_ARB_vertex_array_bgra
    inline static var GL_ARB_vertex_array_bgra                                        = 1;


//GL_ARB_vertex_array_object
    inline static var GL_ARB_vertex_array_object                                      = 1;
    inline static var GL_VERTEX_ARRAY_BINDING                                         = 0x85B5;


//GL_ARB_vertex_attrib_64bit
    inline static var GL_ARB_vertex_attrib_64bit                                      = 1;


//GL_ARB_vertex_attrib_binding
    inline static var GL_ARB_vertex_attrib_binding                                    = 1;
    inline static var GL_VERTEX_ATTRIB_BINDING                                        = 0x82D4;
    inline static var GL_VERTEX_ATTRIB_RELATIVE_OFFSET                                = 0x82D5;
    inline static var GL_VERTEX_BINDING_DIVISOR                                       = 0x82D6;
    inline static var GL_VERTEX_BINDING_OFFSET                                        = 0x82D7;
    inline static var GL_VERTEX_BINDING_STRIDE                                        = 0x82D8;
    inline static var GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET                            = 0x82D9;
    inline static var GL_MAX_VERTEX_ATTRIB_BINDINGS                                   = 0x82DA;
    inline static var GL_VERTEX_BINDING_BUFFER                                        = 0x8F4F;


//GL_ARB_vertex_blend
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


//GL_ARB_vertex_buffer_object
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


//GL_ARB_vertex_program
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


//GL_ARB_vertex_shader
    inline static var GL_ARB_vertex_shader                                            = 1;
    inline static var GL_VERTEX_SHADER_ARB                                            = 0x8B31;
    inline static var GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB                            = 0x8B4A;
    inline static var GL_MAX_VARYING_FLOATS_ARB                                       = 0x8B4B;
    inline static var GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB                           = 0x8B4C;
    inline static var GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB                         = 0x8B4D;
    inline static var GL_OBJECT_ACTIVE_ATTRIBUTES_ARB                                 = 0x8B89;
    inline static var GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB                       = 0x8B8A;


//GL_ARB_vertex_type_10f_11f_11f_rev
    inline static var GL_ARB_vertex_type_10f_11f_11f_rev                              = 1;


//GL_ARB_vertex_type_2_10_10_10_rev
    inline static var GL_ARB_vertex_type_2_10_10_10_rev                               = 1;
    inline static var GL_UNSIGNED_INT_2_10_10_10_REV                                  = 0x8368;
    inline static var GL_INT_2_10_10_10_REV                                           = 0x8D9F;


//GL_ARB_viewport_array
    inline static var GL_ARB_viewport_array                                           = 1;
    inline static var GL_MAX_VIEWPORTS                                                = 0x825B;
    inline static var GL_VIEWPORT_SUBPIXEL_BITS                                       = 0x825C;
    inline static var GL_VIEWPORT_BOUNDS_RANGE                                        = 0x825D;
    inline static var GL_LAYER_PROVOKING_VERTEX                                       = 0x825E;
    inline static var GL_VIEWPORT_INDEX_PROVOKING_VERTEX                              = 0x825F;
    inline static var GL_UNDEFINED_VERTEX                                             = 0x8260;


//GL_ARB_window_pos
    inline static var GL_ARB_window_pos                                               = 1;




}