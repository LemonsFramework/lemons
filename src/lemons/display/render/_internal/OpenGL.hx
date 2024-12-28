/*
	Generated with liblemons' GLADGenerator https://github.com/LemonsFramework/liblemons
*/

package lemons.display.render._internal;

@:hlNative('lemons', 'gl_')
class OpenGL {
	public static final GL_DEPTH_BUFFER_BIT:Int = 0x00000100;
	public static final GL_STENCIL_BUFFER_BIT:Int = 0x00000400;
	public static final GL_COLOR_BUFFER_BIT:Int = 0x00004000;
	public static final GL_DYNAMIC_STORAGE_BIT:Int = 0x0100;
	public static final GL_CLIENT_STORAGE_BIT:Int = 0x0200;
	public static final GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT:Int = 0x00000001;
	public static final GL_CONTEXT_FLAG_DEBUG_BIT:Int = 0x00000002;
	public static final GL_CONTEXT_CORE_PROFILE_BIT:Int = 0x00000001;
	public static final GL_CONTEXT_COMPATIBILITY_PROFILE_BIT:Int = 0x00000002;
	public static final GL_MAP_READ_BIT:Int = 0x0001;
	public static final GL_MAP_WRITE_BIT:Int = 0x0002;
	public static final GL_MAP_INVALIDATE_RANGE_BIT:Int = 0x0004;
	public static final GL_MAP_INVALIDATE_BUFFER_BIT:Int = 0x0008;
	public static final GL_MAP_FLUSH_EXPLICIT_BIT:Int = 0x0010;
	public static final GL_MAP_UNSYNCHRONIZED_BIT:Int = 0x0020;
	public static final GL_MAP_PERSISTENT_BIT:Int = 0x0040;
	public static final GL_MAP_COHERENT_BIT:Int = 0x0080;
	public static final GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT:Int = 0x00000001;
	public static final GL_ELEMENT_ARRAY_BARRIER_BIT:Int = 0x00000002;
	public static final GL_UNIFORM_BARRIER_BIT:Int = 0x00000004;
	public static final GL_TEXTURE_FETCH_BARRIER_BIT:Int = 0x00000008;
	public static final GL_SHADER_IMAGE_ACCESS_BARRIER_BIT:Int = 0x00000020;
	public static final GL_COMMAND_BARRIER_BIT:Int = 0x00000040;
	public static final GL_PIXEL_BUFFER_BARRIER_BIT:Int = 0x00000080;
	public static final GL_TEXTURE_UPDATE_BARRIER_BIT:Int = 0x00000100;
	public static final GL_BUFFER_UPDATE_BARRIER_BIT:Int = 0x00000200;
	public static final GL_FRAMEBUFFER_BARRIER_BIT:Int = 0x00000400;
	public static final GL_TRANSFORM_FEEDBACK_BARRIER_BIT:Int = 0x00000800;
	public static final GL_ATOMIC_COUNTER_BARRIER_BIT:Int = 0x00001000;
	public static final GL_SHADER_STORAGE_BARRIER_BIT:Int = 0x00002000;
	public static final GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT:Int = 0x00004000;
	public static final GL_QUERY_BUFFER_BARRIER_BIT:Int = 0x00008000;
	public static final GL_ALL_BARRIER_BITS:Int = 0xFFFFFFFF;
	public static final GL_SYNC_FLUSH_COMMANDS_BIT:Int = 0x00000001;
	public static final GL_VERTEX_SHADER_BIT:Int = 0x00000001;
	public static final GL_FRAGMENT_SHADER_BIT:Int = 0x00000002;
	public static final GL_GEOMETRY_SHADER_BIT:Int = 0x00000004;
	public static final GL_TESS_CONTROL_SHADER_BIT:Int = 0x00000008;
	public static final GL_TESS_EVALUATION_SHADER_BIT:Int = 0x00000010;
	public static final GL_COMPUTE_SHADER_BIT:Int = 0x00000020;
	public static final GL_ALL_SHADER_BITS:Int = 0xFFFFFFFF;
	public static final GL_FALSE:Int = 0;
	public static final GL_NO_ERROR:Int = 0;
	public static final GL_ZERO:Int = 0;
	public static final GL_NONE:Int = 0;
	public static final GL_TRUE:Int = 1;
	public static final GL_ONE:Int = 1;
	public static final GL_INVALID_INDEX:Int = 0xFFFFFFFF;
	// public static final GL_TIMEOUT_IGNORED:haxe.Int64 = 0xFFFFFFFFFFFFFFFF;
	public static final GL_POINTS:Int = 0x0000;
	public static final GL_LINES:Int = 0x0001;
	public static final GL_LINE_LOOP:Int = 0x0002;
	public static final GL_LINE_STRIP:Int = 0x0003;
	public static final GL_TRIANGLES:Int = 0x0004;
	public static final GL_TRIANGLE_STRIP:Int = 0x0005;
	public static final GL_TRIANGLE_FAN:Int = 0x0006;
	public static final GL_QUADS:Int = 0x0007;
	public static final GL_LINES_ADJACENCY:Int = 0x000A;
	public static final GL_LINE_STRIP_ADJACENCY:Int = 0x000B;
	public static final GL_TRIANGLES_ADJACENCY:Int = 0x000C;
	public static final GL_TRIANGLE_STRIP_ADJACENCY:Int = 0x000D;
	public static final GL_PATCHES:Int = 0x000E;
	public static final GL_NEVER:Int = 0x0200;
	public static final GL_LESS:Int = 0x0201;
	public static final GL_EQUAL:Int = 0x0202;
	public static final GL_LEQUAL:Int = 0x0203;
	public static final GL_GREATER:Int = 0x0204;
	public static final GL_NOTEQUAL:Int = 0x0205;
	public static final GL_GEQUAL:Int = 0x0206;
	public static final GL_ALWAYS:Int = 0x0207;
	public static final GL_SRC_COLOR:Int = 0x0300;
	public static final GL_ONE_MINUS_SRC_COLOR:Int = 0x0301;
	public static final GL_SRC_ALPHA:Int = 0x0302;
	public static final GL_ONE_MINUS_SRC_ALPHA:Int = 0x0303;
	public static final GL_DST_ALPHA:Int = 0x0304;
	public static final GL_ONE_MINUS_DST_ALPHA:Int = 0x0305;
	public static final GL_DST_COLOR:Int = 0x0306;
	public static final GL_ONE_MINUS_DST_COLOR:Int = 0x0307;
	public static final GL_SRC_ALPHA_SATURATE:Int = 0x0308;
	public static final GL_FRONT_LEFT:Int = 0x0400;
	public static final GL_FRONT_RIGHT:Int = 0x0401;
	public static final GL_BACK_LEFT:Int = 0x0402;
	public static final GL_BACK_RIGHT:Int = 0x0403;
	public static final GL_FRONT:Int = 0x0404;
	public static final GL_BACK:Int = 0x0405;
	public static final GL_LEFT:Int = 0x0406;
	public static final GL_RIGHT:Int = 0x0407;
	public static final GL_FRONT_AND_BACK:Int = 0x0408;
	public static final GL_INVALID_ENUM:Int = 0x0500;
	public static final GL_INVALID_VALUE:Int = 0x0501;
	public static final GL_INVALID_OPERATION:Int = 0x0502;
	public static final GL_STACK_OVERFLOW:Int = 0x0503;
	public static final GL_STACK_UNDERFLOW:Int = 0x0504;
	public static final GL_OUT_OF_MEMORY:Int = 0x0505;
	public static final GL_INVALID_FRAMEBUFFER_OPERATION:Int = 0x0506;
	public static final GL_CW:Int = 0x0900;
	public static final GL_CCW:Int = 0x0901;
	public static final GL_POINT_SIZE:Int = 0x0B11;
	public static final GL_POINT_SIZE_RANGE:Int = 0x0B12;
	public static final GL_SMOOTH_POINT_SIZE_RANGE:Int = 0x0B12;
	public static final GL_POINT_SIZE_GRANULARITY:Int = 0x0B13;
	public static final GL_SMOOTH_POINT_SIZE_GRANULARITY:Int = 0x0B13;
	public static final GL_LINE_SMOOTH:Int = 0x0B20;
	public static final GL_LINE_WIDTH:Int = 0x0B21;
	public static final GL_LINE_WIDTH_RANGE:Int = 0x0B22;
	public static final GL_SMOOTH_LINE_WIDTH_RANGE:Int = 0x0B22;
	public static final GL_LINE_WIDTH_GRANULARITY:Int = 0x0B23;
	public static final GL_SMOOTH_LINE_WIDTH_GRANULARITY:Int = 0x0B23;
	public static final GL_POLYGON_MODE:Int = 0x0B40;
	public static final GL_POLYGON_SMOOTH:Int = 0x0B41;
	public static final GL_CULL_FACE:Int = 0x0B44;
	public static final GL_CULL_FACE_MODE:Int = 0x0B45;
	public static final GL_FRONT_FACE:Int = 0x0B46;
	public static final GL_DEPTH_RANGE:Int = 0x0B70;
	public static final GL_DEPTH_TEST:Int = 0x0B71;
	public static final GL_DEPTH_WRITEMASK:Int = 0x0B72;
	public static final GL_DEPTH_CLEAR_VALUE:Int = 0x0B73;
	public static final GL_DEPTH_FUNC:Int = 0x0B74;
	public static final GL_STENCIL_TEST:Int = 0x0B90;
	public static final GL_STENCIL_CLEAR_VALUE:Int = 0x0B91;
	public static final GL_STENCIL_FUNC:Int = 0x0B92;
	public static final GL_STENCIL_VALUE_MASK:Int = 0x0B93;
	public static final GL_STENCIL_FAIL:Int = 0x0B94;
	public static final GL_STENCIL_PASS_DEPTH_FAIL:Int = 0x0B95;
	public static final GL_STENCIL_PASS_DEPTH_PASS:Int = 0x0B96;
	public static final GL_STENCIL_REF:Int = 0x0B97;
	public static final GL_STENCIL_WRITEMASK:Int = 0x0B98;
	public static final GL_VIEWPORT:Int = 0x0BA2;
	public static final GL_DITHER:Int = 0x0BD0;
	public static final GL_BLEND_DST:Int = 0x0BE0;
	public static final GL_BLEND_SRC:Int = 0x0BE1;
	public static final GL_BLEND:Int = 0x0BE2;
	public static final GL_LOGIC_OP_MODE:Int = 0x0BF0;
	public static final GL_COLOR_LOGIC_OP:Int = 0x0BF2;
	public static final GL_DRAW_BUFFER:Int = 0x0C01;
	public static final GL_READ_BUFFER:Int = 0x0C02;
	public static final GL_SCISSOR_BOX:Int = 0x0C10;
	public static final GL_SCISSOR_TEST:Int = 0x0C11;
	public static final GL_COLOR_CLEAR_VALUE:Int = 0x0C22;
	public static final GL_COLOR_WRITEMASK:Int = 0x0C23;
	public static final GL_DOUBLEBUFFER:Int = 0x0C32;
	public static final GL_STEREO:Int = 0x0C33;
	public static final GL_LINE_SMOOTH_HINT:Int = 0x0C52;
	public static final GL_POLYGON_SMOOTH_HINT:Int = 0x0C53;
	public static final GL_UNPACK_SWAP_BYTES:Int = 0x0CF0;
	public static final GL_UNPACK_LSB_FIRST:Int = 0x0CF1;
	public static final GL_UNPACK_ROW_LENGTH:Int = 0x0CF2;
	public static final GL_UNPACK_SKIP_ROWS:Int = 0x0CF3;
	public static final GL_UNPACK_SKIP_PIXELS:Int = 0x0CF4;
	public static final GL_UNPACK_ALIGNMENT:Int = 0x0CF5;
	public static final GL_PACK_SWAP_BYTES:Int = 0x0D00;
	public static final GL_PACK_LSB_FIRST:Int = 0x0D01;
	public static final GL_PACK_ROW_LENGTH:Int = 0x0D02;
	public static final GL_PACK_SKIP_ROWS:Int = 0x0D03;
	public static final GL_PACK_SKIP_PIXELS:Int = 0x0D04;
	public static final GL_PACK_ALIGNMENT:Int = 0x0D05;
	public static final GL_MAX_CLIP_DISTANCES:Int = 0x0D32;
	public static final GL_MAX_TEXTURE_SIZE:Int = 0x0D33;
	public static final GL_MAX_VIEWPORT_DIMS:Int = 0x0D3A;
	public static final GL_SUBPIXEL_BITS:Int = 0x0D50;
	public static final GL_TEXTURE_1D:Int = 0x0DE0;
	public static final GL_TEXTURE_2D:Int = 0x0DE1;
	public static final GL_TEXTURE_WIDTH:Int = 0x1000;
	public static final GL_TEXTURE_HEIGHT:Int = 0x1001;
	public static final GL_TEXTURE_INTERNAL_FORMAT:Int = 0x1003;
	public static final GL_TEXTURE_BORDER_COLOR:Int = 0x1004;
	public static final GL_DONT_CARE:Int = 0x1100;
	public static final GL_FASTEST:Int = 0x1101;
	public static final GL_NICEST:Int = 0x1102;
	public static final GL_BYTE:Int = 0x1400;
	public static final GL_UNSIGNED_BYTE:Int = 0x1401;
	public static final GL_SHORT:Int = 0x1402;
	public static final GL_UNSIGNED_SHORT:Int = 0x1403;
	public static final GL_INT:Int = 0x1404;
	public static final GL_UNSIGNED_INT:Int = 0x1405;
	public static final GL_FLOAT:Int = 0x1406;
	public static final GL_DOUBLE:Int = 0x140A;
	public static final GL_HALF_FLOAT:Int = 0x140B;
	public static final GL_FIXED:Int = 0x140C;
	public static final GL_CLEAR:Int = 0x1500;
	public static final GL_AND:Int = 0x1501;
	public static final GL_AND_REVERSE:Int = 0x1502;
	public static final GL_COPY:Int = 0x1503;
	public static final GL_AND_INVERTED:Int = 0x1504;
	public static final GL_NOOP:Int = 0x1505;
	public static final GL_XOR:Int = 0x1506;
	public static final GL_OR:Int = 0x1507;
	public static final GL_NOR:Int = 0x1508;
	public static final GL_EQUIV:Int = 0x1509;
	public static final GL_INVERT:Int = 0x150A;
	public static final GL_OR_REVERSE:Int = 0x150B;
	public static final GL_COPY_INVERTED:Int = 0x150C;
	public static final GL_OR_INVERTED:Int = 0x150D;
	public static final GL_NAND:Int = 0x150E;
	public static final GL_SET:Int = 0x150F;
	public static final GL_TEXTURE:Int = 0x1702;
	public static final GL_COLOR:Int = 0x1800;
	public static final GL_DEPTH:Int = 0x1801;
	public static final GL_STENCIL:Int = 0x1802;
	public static final GL_STENCIL_INDEX:Int = 0x1901;
	public static final GL_DEPTH_COMPONENT:Int = 0x1902;
	public static final GL_RED:Int = 0x1903;
	public static final GL_GREEN:Int = 0x1904;
	public static final GL_BLUE:Int = 0x1905;
	public static final GL_ALPHA:Int = 0x1906;
	public static final GL_RGB:Int = 0x1907;
	public static final GL_RGBA:Int = 0x1908;
	public static final GL_POINT:Int = 0x1B00;
	public static final GL_LINE:Int = 0x1B01;
	public static final GL_FILL:Int = 0x1B02;
	public static final GL_KEEP:Int = 0x1E00;
	public static final GL_REPLACE:Int = 0x1E01;
	public static final GL_INCR:Int = 0x1E02;
	public static final GL_DECR:Int = 0x1E03;
	public static final GL_VENDOR:Int = 0x1F00;
	public static final GL_RENDERER:Int = 0x1F01;
	public static final GL_VERSION:Int = 0x1F02;
	public static final GL_EXTENSIONS:Int = 0x1F03;
	public static final GL_NEAREST:Int = 0x2600;
	public static final GL_LINEAR:Int = 0x2601;
	public static final GL_NEAREST_MIPMAP_NEAREST:Int = 0x2700;
	public static final GL_LINEAR_MIPMAP_NEAREST:Int = 0x2701;
	public static final GL_NEAREST_MIPMAP_LINEAR:Int = 0x2702;
	public static final GL_LINEAR_MIPMAP_LINEAR:Int = 0x2703;
	public static final GL_TEXTURE_MAG_FILTER:Int = 0x2800;
	public static final GL_TEXTURE_MIN_FILTER:Int = 0x2801;
	public static final GL_TEXTURE_WRAP_S:Int = 0x2802;
	public static final GL_TEXTURE_WRAP_T:Int = 0x2803;
	public static final GL_REPEAT:Int = 0x2901;
	public static final GL_POLYGON_OFFSET_UNITS:Int = 0x2A00;
	public static final GL_POLYGON_OFFSET_POINT:Int = 0x2A01;
	public static final GL_POLYGON_OFFSET_LINE:Int = 0x2A02;
	public static final GL_R3_G3_B2:Int = 0x2A10;
	public static final GL_CLIP_DISTANCE0:Int = 0x3000;
	public static final GL_CLIP_DISTANCE1:Int = 0x3001;
	public static final GL_CLIP_DISTANCE2:Int = 0x3002;
	public static final GL_CLIP_DISTANCE3:Int = 0x3003;
	public static final GL_CLIP_DISTANCE4:Int = 0x3004;
	public static final GL_CLIP_DISTANCE5:Int = 0x3005;
	public static final GL_CLIP_DISTANCE6:Int = 0x3006;
	public static final GL_CLIP_DISTANCE7:Int = 0x3007;
	public static final GL_CONSTANT_COLOR:Int = 0x8001;
	public static final GL_ONE_MINUS_CONSTANT_COLOR:Int = 0x8002;
	public static final GL_CONSTANT_ALPHA:Int = 0x8003;
	public static final GL_ONE_MINUS_CONSTANT_ALPHA:Int = 0x8004;
	public static final GL_BLEND_COLOR:Int = 0x8005;
	public static final GL_FUNC_ADD:Int = 0x8006;
	public static final GL_MIN:Int = 0x8007;
	public static final GL_MAX:Int = 0x8008;
	public static final GL_BLEND_EQUATION:Int = 0x8009;
	public static final GL_BLEND_EQUATION_RGB:Int = 0x8009;
	public static final GL_FUNC_SUBTRACT:Int = 0x800A;
	public static final GL_FUNC_REVERSE_SUBTRACT:Int = 0x800B;
	public static final GL_UNSIGNED_BYTE_3_3_2:Int = 0x8032;
	public static final GL_UNSIGNED_SHORT_4_4_4_4:Int = 0x8033;
	public static final GL_UNSIGNED_SHORT_5_5_5_1:Int = 0x8034;
	public static final GL_UNSIGNED_INT_8_8_8_8:Int = 0x8035;
	public static final GL_UNSIGNED_INT_10_10_10_2:Int = 0x8036;
	public static final GL_POLYGON_OFFSET_FILL:Int = 0x8037;
	public static final GL_POLYGON_OFFSET_FACTOR:Int = 0x8038;
	public static final GL_RGB4:Int = 0x804F;
	public static final GL_RGB5:Int = 0x8050;
	public static final GL_RGB8:Int = 0x8051;
	public static final GL_RGB10:Int = 0x8052;
	public static final GL_RGB12:Int = 0x8053;
	public static final GL_RGB16:Int = 0x8054;
	public static final GL_RGBA2:Int = 0x8055;
	public static final GL_RGBA4:Int = 0x8056;
	public static final GL_RGB5_A1:Int = 0x8057;
	public static final GL_RGBA8:Int = 0x8058;
	public static final GL_RGB10_A2:Int = 0x8059;
	public static final GL_RGBA12:Int = 0x805A;
	public static final GL_RGBA16:Int = 0x805B;
	public static final GL_TEXTURE_RED_SIZE:Int = 0x805C;
	public static final GL_TEXTURE_GREEN_SIZE:Int = 0x805D;
	public static final GL_TEXTURE_BLUE_SIZE:Int = 0x805E;
	public static final GL_TEXTURE_ALPHA_SIZE:Int = 0x805F;
	public static final GL_PROXY_TEXTURE_1D:Int = 0x8063;
	public static final GL_PROXY_TEXTURE_2D:Int = 0x8064;
	public static final GL_TEXTURE_BINDING_1D:Int = 0x8068;
	public static final GL_TEXTURE_BINDING_2D:Int = 0x8069;
	public static final GL_TEXTURE_BINDING_3D:Int = 0x806A;
	public static final GL_PACK_SKIP_IMAGES:Int = 0x806B;
	public static final GL_PACK_IMAGE_HEIGHT:Int = 0x806C;
	public static final GL_UNPACK_SKIP_IMAGES:Int = 0x806D;
	public static final GL_UNPACK_IMAGE_HEIGHT:Int = 0x806E;
	public static final GL_TEXTURE_3D:Int = 0x806F;
	public static final GL_PROXY_TEXTURE_3D:Int = 0x8070;
	public static final GL_TEXTURE_DEPTH:Int = 0x8071;
	public static final GL_TEXTURE_WRAP_R:Int = 0x8072;
	public static final GL_MAX_3D_TEXTURE_SIZE:Int = 0x8073;
	public static final GL_VERTEX_ARRAY:Int = 0x8074;
	public static final GL_MULTISAMPLE:Int = 0x809D;
	public static final GL_SAMPLE_ALPHA_TO_COVERAGE:Int = 0x809E;
	public static final GL_SAMPLE_ALPHA_TO_ONE:Int = 0x809F;
	public static final GL_SAMPLE_COVERAGE:Int = 0x80A0;
	public static final GL_SAMPLE_BUFFERS:Int = 0x80A8;
	public static final GL_SAMPLES:Int = 0x80A9;
	public static final GL_SAMPLE_COVERAGE_VALUE:Int = 0x80AA;
	public static final GL_SAMPLE_COVERAGE_INVERT:Int = 0x80AB;
	public static final GL_BLEND_DST_RGB:Int = 0x80C8;
	public static final GL_BLEND_SRC_RGB:Int = 0x80C9;
	public static final GL_BLEND_DST_ALPHA:Int = 0x80CA;
	public static final GL_BLEND_SRC_ALPHA:Int = 0x80CB;
	public static final GL_BGR:Int = 0x80E0;
	public static final GL_BGRA:Int = 0x80E1;
	public static final GL_MAX_ELEMENTS_VERTICES:Int = 0x80E8;
	public static final GL_MAX_ELEMENTS_INDICES:Int = 0x80E9;
	public static final GL_POINT_FADE_THRESHOLD_SIZE:Int = 0x8128;
	public static final GL_CLAMP_TO_BORDER:Int = 0x812D;
	public static final GL_CLAMP_TO_EDGE:Int = 0x812F;
	public static final GL_TEXTURE_MIN_LOD:Int = 0x813A;
	public static final GL_TEXTURE_MAX_LOD:Int = 0x813B;
	public static final GL_TEXTURE_BASE_LEVEL:Int = 0x813C;
	public static final GL_TEXTURE_MAX_LEVEL:Int = 0x813D;
	public static final GL_DEPTH_COMPONENT16:Int = 0x81A5;
	public static final GL_DEPTH_COMPONENT24:Int = 0x81A6;
	public static final GL_DEPTH_COMPONENT32:Int = 0x81A7;
	public static final GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING:Int = 0x8210;
	public static final GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE:Int = 0x8211;
	public static final GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE:Int = 0x8212;
	public static final GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE:Int = 0x8213;
	public static final GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE:Int = 0x8214;
	public static final GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE:Int = 0x8215;
	public static final GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE:Int = 0x8216;
	public static final GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE:Int = 0x8217;
	public static final GL_FRAMEBUFFER_DEFAULT:Int = 0x8218;
	public static final GL_FRAMEBUFFER_UNDEFINED:Int = 0x8219;
	public static final GL_DEPTH_STENCIL_ATTACHMENT:Int = 0x821A;
	public static final GL_MAJOR_VERSION:Int = 0x821B;
	public static final GL_MINOR_VERSION:Int = 0x821C;
	public static final GL_NUM_EXTENSIONS:Int = 0x821D;
	public static final GL_CONTEXT_FLAGS:Int = 0x821E;
	public static final GL_BUFFER_IMMUTABLE_STORAGE:Int = 0x821F;
	public static final GL_BUFFER_STORAGE_FLAGS:Int = 0x8220;
	public static final GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED:Int = 0x8221;
	public static final GL_COMPRESSED_RED:Int = 0x8225;
	public static final GL_COMPRESSED_RG:Int = 0x8226;
	public static final GL_RG:Int = 0x8227;
	public static final GL_RG_INTEGER:Int = 0x8228;
	public static final GL_R8:Int = 0x8229;
	public static final GL_R16:Int = 0x822A;
	public static final GL_RG8:Int = 0x822B;
	public static final GL_RG16:Int = 0x822C;
	public static final GL_R16F:Int = 0x822D;
	public static final GL_R32F:Int = 0x822E;
	public static final GL_RG16F:Int = 0x822F;
	public static final GL_RG32F:Int = 0x8230;
	public static final GL_R8I:Int = 0x8231;
	public static final GL_R8UI:Int = 0x8232;
	public static final GL_R16I:Int = 0x8233;
	public static final GL_R16UI:Int = 0x8234;
	public static final GL_R32I:Int = 0x8235;
	public static final GL_R32UI:Int = 0x8236;
	public static final GL_RG8I:Int = 0x8237;
	public static final GL_RG8UI:Int = 0x8238;
	public static final GL_RG16I:Int = 0x8239;
	public static final GL_RG16UI:Int = 0x823A;
	public static final GL_RG32I:Int = 0x823B;
	public static final GL_RG32UI:Int = 0x823C;
	public static final GL_DEBUG_OUTPUT_SYNCHRONOUS:Int = 0x8242;
	public static final GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH:Int = 0x8243;
	public static final GL_DEBUG_CALLBACK_FUNCTION:Int = 0x8244;
	public static final GL_DEBUG_CALLBACK_USER_PARAM:Int = 0x8245;
	public static final GL_DEBUG_SOURCE_API:Int = 0x8246;
	public static final GL_DEBUG_SOURCE_WINDOW_SYSTEM:Int = 0x8247;
	public static final GL_DEBUG_SOURCE_SHADER_COMPILER:Int = 0x8248;
	public static final GL_DEBUG_SOURCE_THIRD_PARTY:Int = 0x8249;
	public static final GL_DEBUG_SOURCE_APPLICATION:Int = 0x824A;
	public static final GL_DEBUG_SOURCE_OTHER:Int = 0x824B;
	public static final GL_DEBUG_TYPE_ERROR:Int = 0x824C;
	public static final GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR:Int = 0x824D;
	public static final GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR:Int = 0x824E;
	public static final GL_DEBUG_TYPE_PORTABILITY:Int = 0x824F;
	public static final GL_DEBUG_TYPE_PERFORMANCE:Int = 0x8250;
	public static final GL_DEBUG_TYPE_OTHER:Int = 0x8251;
	public static final GL_PROGRAM_BINARY_RETRIEVABLE_HINT:Int = 0x8257;
	public static final GL_PROGRAM_SEPARABLE:Int = 0x8258;
	public static final GL_ACTIVE_PROGRAM:Int = 0x8259;
	public static final GL_PROGRAM_PIPELINE_BINDING:Int = 0x825A;
	public static final GL_MAX_VIEWPORTS:Int = 0x825B;
	public static final GL_VIEWPORT_SUBPIXEL_BITS:Int = 0x825C;
	public static final GL_VIEWPORT_BOUNDS_RANGE:Int = 0x825D;
	public static final GL_LAYER_PROVOKING_VERTEX:Int = 0x825E;
	public static final GL_VIEWPORT_INDEX_PROVOKING_VERTEX:Int = 0x825F;
	public static final GL_UNDEFINED_VERTEX:Int = 0x8260;
	public static final GL_MAX_COMPUTE_SHARED_MEMORY_SIZE:Int = 0x8262;
	public static final GL_MAX_COMPUTE_UNIFORM_COMPONENTS:Int = 0x8263;
	public static final GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS:Int = 0x8264;
	public static final GL_MAX_COMPUTE_ATOMIC_COUNTERS:Int = 0x8265;
	public static final GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS:Int = 0x8266;
	public static final GL_COMPUTE_WORK_GROUP_SIZE:Int = 0x8267;
	public static final GL_DEBUG_TYPE_MARKER:Int = 0x8268;
	public static final GL_DEBUG_TYPE_PUSH_GROUP:Int = 0x8269;
	public static final GL_DEBUG_TYPE_POP_GROUP:Int = 0x826A;
	public static final GL_DEBUG_SEVERITY_NOTIFICATION:Int = 0x826B;
	public static final GL_MAX_DEBUG_GROUP_STACK_DEPTH:Int = 0x826C;
	public static final GL_DEBUG_GROUP_STACK_DEPTH:Int = 0x826D;
	public static final GL_MAX_UNIFORM_LOCATIONS:Int = 0x826E;
	public static final GL_INTERNALFORMAT_SUPPORTED:Int = 0x826F;
	public static final GL_INTERNALFORMAT_PREFERRED:Int = 0x8270;
	public static final GL_INTERNALFORMAT_RED_SIZE:Int = 0x8271;
	public static final GL_INTERNALFORMAT_GREEN_SIZE:Int = 0x8272;
	public static final GL_INTERNALFORMAT_BLUE_SIZE:Int = 0x8273;
	public static final GL_INTERNALFORMAT_ALPHA_SIZE:Int = 0x8274;
	public static final GL_INTERNALFORMAT_DEPTH_SIZE:Int = 0x8275;
	public static final GL_INTERNALFORMAT_STENCIL_SIZE:Int = 0x8276;
	public static final GL_INTERNALFORMAT_SHARED_SIZE:Int = 0x8277;
	public static final GL_INTERNALFORMAT_RED_TYPE:Int = 0x8278;
	public static final GL_INTERNALFORMAT_GREEN_TYPE:Int = 0x8279;
	public static final GL_INTERNALFORMAT_BLUE_TYPE:Int = 0x827A;
	public static final GL_INTERNALFORMAT_ALPHA_TYPE:Int = 0x827B;
	public static final GL_INTERNALFORMAT_DEPTH_TYPE:Int = 0x827C;
	public static final GL_INTERNALFORMAT_STENCIL_TYPE:Int = 0x827D;
	public static final GL_MAX_WIDTH:Int = 0x827E;
	public static final GL_MAX_HEIGHT:Int = 0x827F;
	public static final GL_MAX_DEPTH:Int = 0x8280;
	public static final GL_MAX_LAYERS:Int = 0x8281;
	public static final GL_MAX_COMBINED_DIMENSIONS:Int = 0x8282;
	public static final GL_COLOR_COMPONENTS:Int = 0x8283;
	public static final GL_DEPTH_COMPONENTS:Int = 0x8284;
	public static final GL_STENCIL_COMPONENTS:Int = 0x8285;
	public static final GL_COLOR_RENDERABLE:Int = 0x8286;
	public static final GL_DEPTH_RENDERABLE:Int = 0x8287;
	public static final GL_STENCIL_RENDERABLE:Int = 0x8288;
	public static final GL_FRAMEBUFFER_RENDERABLE:Int = 0x8289;
	public static final GL_FRAMEBUFFER_RENDERABLE_LAYERED:Int = 0x828A;
	public static final GL_FRAMEBUFFER_BLEND:Int = 0x828B;
	public static final GL_READ_PIXELS:Int = 0x828C;
	public static final GL_READ_PIXELS_FORMAT:Int = 0x828D;
	public static final GL_READ_PIXELS_TYPE:Int = 0x828E;
	public static final GL_TEXTURE_IMAGE_FORMAT:Int = 0x828F;
	public static final GL_TEXTURE_IMAGE_TYPE:Int = 0x8290;
	public static final GL_GET_TEXTURE_IMAGE_FORMAT:Int = 0x8291;
	public static final GL_GET_TEXTURE_IMAGE_TYPE:Int = 0x8292;
	public static final GL_MIPMAP:Int = 0x8293;
	public static final GL_MANUAL_GENERATE_MIPMAP:Int = 0x8294;
	public static final GL_AUTO_GENERATE_MIPMAP:Int = 0x8295;
	public static final GL_COLOR_ENCODING:Int = 0x8296;
	public static final GL_SRGB_READ:Int = 0x8297;
	public static final GL_SRGB_WRITE:Int = 0x8298;
	public static final GL_FILTER:Int = 0x829A;
	public static final GL_VERTEX_TEXTURE:Int = 0x829B;
	public static final GL_TESS_CONTROL_TEXTURE:Int = 0x829C;
	public static final GL_TESS_EVALUATION_TEXTURE:Int = 0x829D;
	public static final GL_GEOMETRY_TEXTURE:Int = 0x829E;
	public static final GL_FRAGMENT_TEXTURE:Int = 0x829F;
	public static final GL_COMPUTE_TEXTURE:Int = 0x82A0;
	public static final GL_TEXTURE_SHADOW:Int = 0x82A1;
	public static final GL_TEXTURE_GATHER:Int = 0x82A2;
	public static final GL_TEXTURE_GATHER_SHADOW:Int = 0x82A3;
	public static final GL_SHADER_IMAGE_LOAD:Int = 0x82A4;
	public static final GL_SHADER_IMAGE_STORE:Int = 0x82A5;
	public static final GL_SHADER_IMAGE_ATOMIC:Int = 0x82A6;
	public static final GL_IMAGE_TEXEL_SIZE:Int = 0x82A7;
	public static final GL_IMAGE_COMPATIBILITY_CLASS:Int = 0x82A8;
	public static final GL_IMAGE_PIXEL_FORMAT:Int = 0x82A9;
	public static final GL_IMAGE_PIXEL_TYPE:Int = 0x82AA;
	public static final GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST:Int = 0x82AC;
	public static final GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST:Int = 0x82AD;
	public static final GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE:Int = 0x82AE;
	public static final GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE:Int = 0x82AF;
	public static final GL_TEXTURE_COMPRESSED_BLOCK_WIDTH:Int = 0x82B1;
	public static final GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT:Int = 0x82B2;
	public static final GL_TEXTURE_COMPRESSED_BLOCK_SIZE:Int = 0x82B3;
	public static final GL_CLEAR_BUFFER:Int = 0x82B4;
	public static final GL_TEXTURE_VIEW:Int = 0x82B5;
	public static final GL_VIEW_COMPATIBILITY_CLASS:Int = 0x82B6;
	public static final GL_FULL_SUPPORT:Int = 0x82B7;
	public static final GL_CAVEAT_SUPPORT:Int = 0x82B8;
	public static final GL_IMAGE_CLASS_4_X_32:Int = 0x82B9;
	public static final GL_IMAGE_CLASS_2_X_32:Int = 0x82BA;
	public static final GL_IMAGE_CLASS_1_X_32:Int = 0x82BB;
	public static final GL_IMAGE_CLASS_4_X_16:Int = 0x82BC;
	public static final GL_IMAGE_CLASS_2_X_16:Int = 0x82BD;
	public static final GL_IMAGE_CLASS_1_X_16:Int = 0x82BE;
	public static final GL_IMAGE_CLASS_4_X_8:Int = 0x82BF;
	public static final GL_IMAGE_CLASS_2_X_8:Int = 0x82C0;
	public static final GL_IMAGE_CLASS_1_X_8:Int = 0x82C1;
	public static final GL_IMAGE_CLASS_11_11_10:Int = 0x82C2;
	public static final GL_IMAGE_CLASS_10_10_10_2:Int = 0x82C3;
	public static final GL_VIEW_CLASS_128_BITS:Int = 0x82C4;
	public static final GL_VIEW_CLASS_96_BITS:Int = 0x82C5;
	public static final GL_VIEW_CLASS_64_BITS:Int = 0x82C6;
	public static final GL_VIEW_CLASS_48_BITS:Int = 0x82C7;
	public static final GL_VIEW_CLASS_32_BITS:Int = 0x82C8;
	public static final GL_VIEW_CLASS_24_BITS:Int = 0x82C9;
	public static final GL_VIEW_CLASS_16_BITS:Int = 0x82CA;
	public static final GL_VIEW_CLASS_8_BITS:Int = 0x82CB;
	public static final GL_VIEW_CLASS_S3TC_DXT1_RGB:Int = 0x82CC;
	public static final GL_VIEW_CLASS_S3TC_DXT1_RGBA:Int = 0x82CD;
	public static final GL_VIEW_CLASS_S3TC_DXT3_RGBA:Int = 0x82CE;
	public static final GL_VIEW_CLASS_S3TC_DXT5_RGBA:Int = 0x82CF;
	public static final GL_VIEW_CLASS_RGTC1_RED:Int = 0x82D0;
	public static final GL_VIEW_CLASS_RGTC2_RG:Int = 0x82D1;
	public static final GL_VIEW_CLASS_BPTC_UNORM:Int = 0x82D2;
	public static final GL_VIEW_CLASS_BPTC_FLOAT:Int = 0x82D3;
	public static final GL_VERTEX_ATTRIB_BINDING:Int = 0x82D4;
	public static final GL_VERTEX_ATTRIB_RELATIVE_OFFSET:Int = 0x82D5;
	public static final GL_VERTEX_BINDING_DIVISOR:Int = 0x82D6;
	public static final GL_VERTEX_BINDING_OFFSET:Int = 0x82D7;
	public static final GL_VERTEX_BINDING_STRIDE:Int = 0x82D8;
	public static final GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET:Int = 0x82D9;
	public static final GL_MAX_VERTEX_ATTRIB_BINDINGS:Int = 0x82DA;
	public static final GL_TEXTURE_VIEW_MIN_LEVEL:Int = 0x82DB;
	public static final GL_TEXTURE_VIEW_NUM_LEVELS:Int = 0x82DC;
	public static final GL_TEXTURE_VIEW_MIN_LAYER:Int = 0x82DD;
	public static final GL_TEXTURE_VIEW_NUM_LAYERS:Int = 0x82DE;
	public static final GL_TEXTURE_IMMUTABLE_LEVELS:Int = 0x82DF;
	public static final GL_BUFFER:Int = 0x82E0;
	public static final GL_SHADER:Int = 0x82E1;
	public static final GL_PROGRAM:Int = 0x82E2;
	public static final GL_QUERY:Int = 0x82E3;
	public static final GL_PROGRAM_PIPELINE:Int = 0x82E4;
	public static final GL_MAX_VERTEX_ATTRIB_STRIDE:Int = 0x82E5;
	public static final GL_SAMPLER:Int = 0x82E6;
	public static final GL_DISPLAY_LIST:Int = 0x82E7;
	public static final GL_MAX_LABEL_LENGTH:Int = 0x82E8;
	public static final GL_NUM_SHADING_LANGUAGE_VERSIONS:Int = 0x82E9;
	public static final GL_UNSIGNED_BYTE_2_3_3_REV:Int = 0x8362;
	public static final GL_UNSIGNED_SHORT_5_6_5:Int = 0x8363;
	public static final GL_UNSIGNED_SHORT_5_6_5_REV:Int = 0x8364;
	public static final GL_UNSIGNED_SHORT_4_4_4_4_REV:Int = 0x8365;
	public static final GL_UNSIGNED_SHORT_1_5_5_5_REV:Int = 0x8366;
	public static final GL_UNSIGNED_INT_8_8_8_8_REV:Int = 0x8367;
	public static final GL_UNSIGNED_INT_2_10_10_10_REV:Int = 0x8368;
	public static final GL_MIRRORED_REPEAT:Int = 0x8370;
	public static final GL_ALIASED_LINE_WIDTH_RANGE:Int = 0x846E;
	public static final GL_TEXTURE0:Int = 0x84C0;
	public static final GL_TEXTURE1:Int = 0x84C1;
	public static final GL_TEXTURE2:Int = 0x84C2;
	public static final GL_TEXTURE3:Int = 0x84C3;
	public static final GL_TEXTURE4:Int = 0x84C4;
	public static final GL_TEXTURE5:Int = 0x84C5;
	public static final GL_TEXTURE6:Int = 0x84C6;
	public static final GL_TEXTURE7:Int = 0x84C7;
	public static final GL_TEXTURE8:Int = 0x84C8;
	public static final GL_TEXTURE9:Int = 0x84C9;
	public static final GL_TEXTURE10:Int = 0x84CA;
	public static final GL_TEXTURE11:Int = 0x84CB;
	public static final GL_TEXTURE12:Int = 0x84CC;
	public static final GL_TEXTURE13:Int = 0x84CD;
	public static final GL_TEXTURE14:Int = 0x84CE;
	public static final GL_TEXTURE15:Int = 0x84CF;
	public static final GL_TEXTURE16:Int = 0x84D0;
	public static final GL_TEXTURE17:Int = 0x84D1;
	public static final GL_TEXTURE18:Int = 0x84D2;
	public static final GL_TEXTURE19:Int = 0x84D3;
	public static final GL_TEXTURE20:Int = 0x84D4;
	public static final GL_TEXTURE21:Int = 0x84D5;
	public static final GL_TEXTURE22:Int = 0x84D6;
	public static final GL_TEXTURE23:Int = 0x84D7;
	public static final GL_TEXTURE24:Int = 0x84D8;
	public static final GL_TEXTURE25:Int = 0x84D9;
	public static final GL_TEXTURE26:Int = 0x84DA;
	public static final GL_TEXTURE27:Int = 0x84DB;
	public static final GL_TEXTURE28:Int = 0x84DC;
	public static final GL_TEXTURE29:Int = 0x84DD;
	public static final GL_TEXTURE30:Int = 0x84DE;
	public static final GL_TEXTURE31:Int = 0x84DF;
	public static final GL_ACTIVE_TEXTURE:Int = 0x84E0;
	public static final GL_MAX_RENDERBUFFER_SIZE:Int = 0x84E8;
	public static final GL_COMPRESSED_RGB:Int = 0x84ED;
	public static final GL_COMPRESSED_RGBA:Int = 0x84EE;
	public static final GL_TEXTURE_COMPRESSION_HINT:Int = 0x84EF;
	public static final GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER:Int = 0x84F0;
	public static final GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER:Int = 0x84F1;
	public static final GL_TEXTURE_RECTANGLE:Int = 0x84F5;
	public static final GL_TEXTURE_BINDING_RECTANGLE:Int = 0x84F6;
	public static final GL_PROXY_TEXTURE_RECTANGLE:Int = 0x84F7;
	public static final GL_MAX_RECTANGLE_TEXTURE_SIZE:Int = 0x84F8;
	public static final GL_DEPTH_STENCIL:Int = 0x84F9;
	public static final GL_UNSIGNED_INT_24_8:Int = 0x84FA;
	public static final GL_MAX_TEXTURE_LOD_BIAS:Int = 0x84FD;
	public static final GL_TEXTURE_LOD_BIAS:Int = 0x8501;
	public static final GL_INCR_WRAP:Int = 0x8507;
	public static final GL_DECR_WRAP:Int = 0x8508;
	public static final GL_TEXTURE_CUBE_MAP:Int = 0x8513;
	public static final GL_TEXTURE_BINDING_CUBE_MAP:Int = 0x8514;
	public static final GL_TEXTURE_CUBE_MAP_POSITIVE_X:Int = 0x8515;
	public static final GL_TEXTURE_CUBE_MAP_NEGATIVE_X:Int = 0x8516;
	public static final GL_TEXTURE_CUBE_MAP_POSITIVE_Y:Int = 0x8517;
	public static final GL_TEXTURE_CUBE_MAP_NEGATIVE_Y:Int = 0x8518;
	public static final GL_TEXTURE_CUBE_MAP_POSITIVE_Z:Int = 0x8519;
	public static final GL_TEXTURE_CUBE_MAP_NEGATIVE_Z:Int = 0x851A;
	public static final GL_PROXY_TEXTURE_CUBE_MAP:Int = 0x851B;
	public static final GL_MAX_CUBE_MAP_TEXTURE_SIZE:Int = 0x851C;
	public static final GL_SRC1_ALPHA:Int = 0x8589;
	public static final GL_VERTEX_ARRAY_BINDING:Int = 0x85B5;
	public static final GL_VERTEX_ATTRIB_ARRAY_ENABLED:Int = 0x8622;
	public static final GL_VERTEX_ATTRIB_ARRAY_SIZE:Int = 0x8623;
	public static final GL_VERTEX_ATTRIB_ARRAY_STRIDE:Int = 0x8624;
	public static final GL_VERTEX_ATTRIB_ARRAY_TYPE:Int = 0x8625;
	public static final GL_CURRENT_VERTEX_ATTRIB:Int = 0x8626;
	public static final GL_VERTEX_PROGRAM_POINT_SIZE:Int = 0x8642;
	public static final GL_PROGRAM_POINT_SIZE:Int = 0x8642;
	public static final GL_VERTEX_ATTRIB_ARRAY_POINTER:Int = 0x8645;
	public static final GL_DEPTH_CLAMP:Int = 0x864F;
	public static final GL_TEXTURE_COMPRESSED_IMAGE_SIZE:Int = 0x86A0;
	public static final GL_TEXTURE_COMPRESSED:Int = 0x86A1;
	public static final GL_NUM_COMPRESSED_TEXTURE_FORMATS:Int = 0x86A2;
	public static final GL_COMPRESSED_TEXTURE_FORMATS:Int = 0x86A3;
	public static final GL_PROGRAM_BINARY_LENGTH:Int = 0x8741;
	public static final GL_MIRROR_CLAMP_TO_EDGE:Int = 0x8743;
	public static final GL_VERTEX_ATTRIB_ARRAY_LONG:Int = 0x874E;
	public static final GL_BUFFER_SIZE:Int = 0x8764;
	public static final GL_BUFFER_USAGE:Int = 0x8765;
	public static final GL_NUM_PROGRAM_BINARY_FORMATS:Int = 0x87FE;
	public static final GL_PROGRAM_BINARY_FORMATS:Int = 0x87FF;
	public static final GL_STENCIL_BACK_FUNC:Int = 0x8800;
	public static final GL_STENCIL_BACK_FAIL:Int = 0x8801;
	public static final GL_STENCIL_BACK_PASS_DEPTH_FAIL:Int = 0x8802;
	public static final GL_STENCIL_BACK_PASS_DEPTH_PASS:Int = 0x8803;
	public static final GL_RGBA32F:Int = 0x8814;
	public static final GL_RGB32F:Int = 0x8815;
	public static final GL_RGBA16F:Int = 0x881A;
	public static final GL_RGB16F:Int = 0x881B;
	public static final GL_MAX_DRAW_BUFFERS:Int = 0x8824;
	public static final GL_DRAW_BUFFER0:Int = 0x8825;
	public static final GL_DRAW_BUFFER1:Int = 0x8826;
	public static final GL_DRAW_BUFFER2:Int = 0x8827;
	public static final GL_DRAW_BUFFER3:Int = 0x8828;
	public static final GL_DRAW_BUFFER4:Int = 0x8829;
	public static final GL_DRAW_BUFFER5:Int = 0x882A;
	public static final GL_DRAW_BUFFER6:Int = 0x882B;
	public static final GL_DRAW_BUFFER7:Int = 0x882C;
	public static final GL_DRAW_BUFFER8:Int = 0x882D;
	public static final GL_DRAW_BUFFER9:Int = 0x882E;
	public static final GL_DRAW_BUFFER10:Int = 0x882F;
	public static final GL_DRAW_BUFFER11:Int = 0x8830;
	public static final GL_DRAW_BUFFER12:Int = 0x8831;
	public static final GL_DRAW_BUFFER13:Int = 0x8832;
	public static final GL_DRAW_BUFFER14:Int = 0x8833;
	public static final GL_DRAW_BUFFER15:Int = 0x8834;
	public static final GL_BLEND_EQUATION_ALPHA:Int = 0x883D;
	public static final GL_TEXTURE_DEPTH_SIZE:Int = 0x884A;
	public static final GL_TEXTURE_COMPARE_MODE:Int = 0x884C;
	public static final GL_TEXTURE_COMPARE_FUNC:Int = 0x884D;
	public static final GL_COMPARE_REF_TO_TEXTURE:Int = 0x884E;
	public static final GL_TEXTURE_CUBE_MAP_SEAMLESS:Int = 0x884F;
	public static final GL_QUERY_COUNTER_BITS:Int = 0x8864;
	public static final GL_CURRENT_QUERY:Int = 0x8865;
	public static final GL_QUERY_RESULT:Int = 0x8866;
	public static final GL_QUERY_RESULT_AVAILABLE:Int = 0x8867;
	public static final GL_MAX_VERTEX_ATTRIBS:Int = 0x8869;
	public static final GL_VERTEX_ATTRIB_ARRAY_NORMALIZED:Int = 0x886A;
	public static final GL_MAX_TESS_CONTROL_INPUT_COMPONENTS:Int = 0x886C;
	public static final GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS:Int = 0x886D;
	public static final GL_MAX_TEXTURE_IMAGE_UNITS:Int = 0x8872;
	public static final GL_GEOMETRY_SHADER_INVOCATIONS:Int = 0x887F;
	public static final GL_ARRAY_BUFFER:Int = 0x8892;
	public static final GL_ELEMENT_ARRAY_BUFFER:Int = 0x8893;
	public static final GL_ARRAY_BUFFER_BINDING:Int = 0x8894;
	public static final GL_ELEMENT_ARRAY_BUFFER_BINDING:Int = 0x8895;
	public static final GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:Int = 0x889F;
	public static final GL_READ_ONLY:Int = 0x88B8;
	public static final GL_WRITE_ONLY:Int = 0x88B9;
	public static final GL_READ_WRITE:Int = 0x88BA;
	public static final GL_BUFFER_ACCESS:Int = 0x88BB;
	public static final GL_BUFFER_MAPPED:Int = 0x88BC;
	public static final GL_BUFFER_MAP_POINTER:Int = 0x88BD;
	public static final GL_TIME_ELAPSED:Int = 0x88BF;
	public static final GL_STREAM_DRAW:Int = 0x88E0;
	public static final GL_STREAM_READ:Int = 0x88E1;
	public static final GL_STREAM_COPY:Int = 0x88E2;
	public static final GL_STATIC_DRAW:Int = 0x88E4;
	public static final GL_STATIC_READ:Int = 0x88E5;
	public static final GL_STATIC_COPY:Int = 0x88E6;
	public static final GL_DYNAMIC_DRAW:Int = 0x88E8;
	public static final GL_DYNAMIC_READ:Int = 0x88E9;
	public static final GL_DYNAMIC_COPY:Int = 0x88EA;
	public static final GL_PIXEL_PACK_BUFFER:Int = 0x88EB;
	public static final GL_PIXEL_UNPACK_BUFFER:Int = 0x88EC;
	public static final GL_PIXEL_PACK_BUFFER_BINDING:Int = 0x88ED;
	public static final GL_PIXEL_UNPACK_BUFFER_BINDING:Int = 0x88EF;
	public static final GL_DEPTH24_STENCIL8:Int = 0x88F0;
	public static final GL_TEXTURE_STENCIL_SIZE:Int = 0x88F1;
	public static final GL_SRC1_COLOR:Int = 0x88F9;
	public static final GL_ONE_MINUS_SRC1_COLOR:Int = 0x88FA;
	public static final GL_ONE_MINUS_SRC1_ALPHA:Int = 0x88FB;
	public static final GL_MAX_DUAL_SOURCE_DRAW_BUFFERS:Int = 0x88FC;
	public static final GL_VERTEX_ATTRIB_ARRAY_INTEGER:Int = 0x88FD;
	public static final GL_VERTEX_ATTRIB_ARRAY_DIVISOR:Int = 0x88FE;
	public static final GL_MAX_ARRAY_TEXTURE_LAYERS:Int = 0x88FF;
	public static final GL_MIN_PROGRAM_TEXEL_OFFSET:Int = 0x8904;
	public static final GL_MAX_PROGRAM_TEXEL_OFFSET:Int = 0x8905;
	public static final GL_SAMPLES_PASSED:Int = 0x8914;
	public static final GL_GEOMETRY_VERTICES_OUT:Int = 0x8916;
	public static final GL_GEOMETRY_INPUT_TYPE:Int = 0x8917;
	public static final GL_GEOMETRY_OUTPUT_TYPE:Int = 0x8918;
	public static final GL_SAMPLER_BINDING:Int = 0x8919;
	public static final GL_CLAMP_READ_COLOR:Int = 0x891C;
	public static final GL_FIXED_ONLY:Int = 0x891D;
	public static final GL_UNIFORM_BUFFER:Int = 0x8A11;
	public static final GL_UNIFORM_BUFFER_BINDING:Int = 0x8A28;
	public static final GL_UNIFORM_BUFFER_START:Int = 0x8A29;
	public static final GL_UNIFORM_BUFFER_SIZE:Int = 0x8A2A;
	public static final GL_MAX_VERTEX_UNIFORM_BLOCKS:Int = 0x8A2B;
	public static final GL_MAX_GEOMETRY_UNIFORM_BLOCKS:Int = 0x8A2C;
	public static final GL_MAX_FRAGMENT_UNIFORM_BLOCKS:Int = 0x8A2D;
	public static final GL_MAX_COMBINED_UNIFORM_BLOCKS:Int = 0x8A2E;
	public static final GL_MAX_UNIFORM_BUFFER_BINDINGS:Int = 0x8A2F;
	public static final GL_MAX_UNIFORM_BLOCK_SIZE:Int = 0x8A30;
	public static final GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS:Int = 0x8A31;
	public static final GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS:Int = 0x8A32;
	public static final GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS:Int = 0x8A33;
	public static final GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT:Int = 0x8A34;
	public static final GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH:Int = 0x8A35;
	public static final GL_ACTIVE_UNIFORM_BLOCKS:Int = 0x8A36;
	public static final GL_UNIFORM_TYPE:Int = 0x8A37;
	public static final GL_UNIFORM_SIZE:Int = 0x8A38;
	public static final GL_UNIFORM_NAME_LENGTH:Int = 0x8A39;
	public static final GL_UNIFORM_BLOCK_INDEX:Int = 0x8A3A;
	public static final GL_UNIFORM_OFFSET:Int = 0x8A3B;
	public static final GL_UNIFORM_ARRAY_STRIDE:Int = 0x8A3C;
	public static final GL_UNIFORM_MATRIX_STRIDE:Int = 0x8A3D;
	public static final GL_UNIFORM_IS_ROW_MAJOR:Int = 0x8A3E;
	public static final GL_UNIFORM_BLOCK_BINDING:Int = 0x8A3F;
	public static final GL_UNIFORM_BLOCK_DATA_SIZE:Int = 0x8A40;
	public static final GL_UNIFORM_BLOCK_NAME_LENGTH:Int = 0x8A41;
	public static final GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS:Int = 0x8A42;
	public static final GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES:Int = 0x8A43;
	public static final GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER:Int = 0x8A44;
	public static final GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER:Int = 0x8A45;
	public static final GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER:Int = 0x8A46;
	public static final GL_FRAGMENT_SHADER:Int = 0x8B30;
	public static final GL_VERTEX_SHADER:Int = 0x8B31;
	public static final GL_MAX_FRAGMENT_UNIFORM_COMPONENTS:Int = 0x8B49;
	public static final GL_MAX_VERTEX_UNIFORM_COMPONENTS:Int = 0x8B4A;
	public static final GL_MAX_VARYING_FLOATS:Int = 0x8B4B;
	public static final GL_MAX_VARYING_COMPONENTS:Int = 0x8B4B;
	public static final GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS:Int = 0x8B4C;
	public static final GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS:Int = 0x8B4D;
	public static final GL_SHADER_TYPE:Int = 0x8B4F;
	public static final GL_FLOAT_VEC2:Int = 0x8B50;
	public static final GL_FLOAT_VEC3:Int = 0x8B51;
	public static final GL_FLOAT_VEC4:Int = 0x8B52;
	public static final GL_INT_VEC2:Int = 0x8B53;
	public static final GL_INT_VEC3:Int = 0x8B54;
	public static final GL_INT_VEC4:Int = 0x8B55;
	public static final GL_BOOL:Int = 0x8B56;
	public static final GL_BOOL_VEC2:Int = 0x8B57;
	public static final GL_BOOL_VEC3:Int = 0x8B58;
	public static final GL_BOOL_VEC4:Int = 0x8B59;
	public static final GL_FLOAT_MAT2:Int = 0x8B5A;
	public static final GL_FLOAT_MAT3:Int = 0x8B5B;
	public static final GL_FLOAT_MAT4:Int = 0x8B5C;
	public static final GL_SAMPLER_1D:Int = 0x8B5D;
	public static final GL_SAMPLER_2D:Int = 0x8B5E;
	public static final GL_SAMPLER_3D:Int = 0x8B5F;
	public static final GL_SAMPLER_CUBE:Int = 0x8B60;
	public static final GL_SAMPLER_1D_SHADOW:Int = 0x8B61;
	public static final GL_SAMPLER_2D_SHADOW:Int = 0x8B62;
	public static final GL_SAMPLER_2D_RECT:Int = 0x8B63;
	public static final GL_SAMPLER_2D_RECT_SHADOW:Int = 0x8B64;
	public static final GL_FLOAT_MAT2x3:Int = 0x8B65;
	public static final GL_FLOAT_MAT2x4:Int = 0x8B66;
	public static final GL_FLOAT_MAT3x2:Int = 0x8B67;
	public static final GL_FLOAT_MAT3x4:Int = 0x8B68;
	public static final GL_FLOAT_MAT4x2:Int = 0x8B69;
	public static final GL_FLOAT_MAT4x3:Int = 0x8B6A;
	public static final GL_DELETE_STATUS:Int = 0x8B80;
	public static final GL_COMPILE_STATUS:Int = 0x8B81;
	public static final GL_LINK_STATUS:Int = 0x8B82;
	public static final GL_VALIDATE_STATUS:Int = 0x8B83;
	public static final GL_INFO_LOG_LENGTH:Int = 0x8B84;
	public static final GL_ATTACHED_SHADERS:Int = 0x8B85;
	public static final GL_ACTIVE_UNIFORMS:Int = 0x8B86;
	public static final GL_ACTIVE_UNIFORM_MAX_LENGTH:Int = 0x8B87;
	public static final GL_SHADER_SOURCE_LENGTH:Int = 0x8B88;
	public static final GL_ACTIVE_ATTRIBUTES:Int = 0x8B89;
	public static final GL_ACTIVE_ATTRIBUTE_MAX_LENGTH:Int = 0x8B8A;
	public static final GL_FRAGMENT_SHADER_DERIVATIVE_HINT:Int = 0x8B8B;
	public static final GL_SHADING_LANGUAGE_VERSION:Int = 0x8B8C;
	public static final GL_CURRENT_PROGRAM:Int = 0x8B8D;
	public static final GL_IMPLEMENTATION_COLOR_READ_TYPE:Int = 0x8B9A;
	public static final GL_IMPLEMENTATION_COLOR_READ_FORMAT:Int = 0x8B9B;
	public static final GL_TEXTURE_RED_TYPE:Int = 0x8C10;
	public static final GL_TEXTURE_GREEN_TYPE:Int = 0x8C11;
	public static final GL_TEXTURE_BLUE_TYPE:Int = 0x8C12;
	public static final GL_TEXTURE_ALPHA_TYPE:Int = 0x8C13;
	public static final GL_TEXTURE_DEPTH_TYPE:Int = 0x8C16;
	public static final GL_UNSIGNED_NORMALIZED:Int = 0x8C17;
	public static final GL_TEXTURE_1D_ARRAY:Int = 0x8C18;
	public static final GL_PROXY_TEXTURE_1D_ARRAY:Int = 0x8C19;
	public static final GL_TEXTURE_2D_ARRAY:Int = 0x8C1A;
	public static final GL_PROXY_TEXTURE_2D_ARRAY:Int = 0x8C1B;
	public static final GL_TEXTURE_BINDING_1D_ARRAY:Int = 0x8C1C;
	public static final GL_TEXTURE_BINDING_2D_ARRAY:Int = 0x8C1D;
	public static final GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS:Int = 0x8C29;
	public static final GL_TEXTURE_BUFFER:Int = 0x8C2A;
	public static final GL_TEXTURE_BUFFER_BINDING:Int = 0x8C2A;
	public static final GL_MAX_TEXTURE_BUFFER_SIZE:Int = 0x8C2B;
	public static final GL_TEXTURE_BINDING_BUFFER:Int = 0x8C2C;
	public static final GL_TEXTURE_BUFFER_DATA_STORE_BINDING:Int = 0x8C2D;
	public static final GL_ANY_SAMPLES_PASSED:Int = 0x8C2F;
	public static final GL_SAMPLE_SHADING:Int = 0x8C36;
	public static final GL_MIN_SAMPLE_SHADING_VALUE:Int = 0x8C37;
	public static final GL_R11F_G11F_B10F:Int = 0x8C3A;
	public static final GL_UNSIGNED_INT_10F_11F_11F_REV:Int = 0x8C3B;
	public static final GL_RGB9_E5:Int = 0x8C3D;
	public static final GL_UNSIGNED_INT_5_9_9_9_REV:Int = 0x8C3E;
	public static final GL_TEXTURE_SHARED_SIZE:Int = 0x8C3F;
	public static final GL_SRGB:Int = 0x8C40;
	public static final GL_SRGB8:Int = 0x8C41;
	public static final GL_SRGB_ALPHA:Int = 0x8C42;
	public static final GL_SRGB8_ALPHA8:Int = 0x8C43;
	public static final GL_COMPRESSED_SRGB:Int = 0x8C48;
	public static final GL_COMPRESSED_SRGB_ALPHA:Int = 0x8C49;
	public static final GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH:Int = 0x8C76;
	public static final GL_TRANSFORM_FEEDBACK_BUFFER_MODE:Int = 0x8C7F;
	public static final GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS:Int = 0x8C80;
	public static final GL_TRANSFORM_FEEDBACK_VARYINGS:Int = 0x8C83;
	public static final GL_TRANSFORM_FEEDBACK_BUFFER_START:Int = 0x8C84;
	public static final GL_TRANSFORM_FEEDBACK_BUFFER_SIZE:Int = 0x8C85;
	public static final GL_PRIMITIVES_GENERATED:Int = 0x8C87;
	public static final GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN:Int = 0x8C88;
	public static final GL_RASTERIZER_DISCARD:Int = 0x8C89;
	public static final GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS:Int = 0x8C8A;
	public static final GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS:Int = 0x8C8B;
	public static final GL_INTERLEAVED_ATTRIBS:Int = 0x8C8C;
	public static final GL_SEPARATE_ATTRIBS:Int = 0x8C8D;
	public static final GL_TRANSFORM_FEEDBACK_BUFFER:Int = 0x8C8E;
	public static final GL_TRANSFORM_FEEDBACK_BUFFER_BINDING:Int = 0x8C8F;
	public static final GL_POINT_SPRITE_COORD_ORIGIN:Int = 0x8CA0;
	public static final GL_LOWER_LEFT:Int = 0x8CA1;
	public static final GL_UPPER_LEFT:Int = 0x8CA2;
	public static final GL_STENCIL_BACK_REF:Int = 0x8CA3;
	public static final GL_STENCIL_BACK_VALUE_MASK:Int = 0x8CA4;
	public static final GL_STENCIL_BACK_WRITEMASK:Int = 0x8CA5;
	public static final GL_DRAW_FRAMEBUFFER_BINDING:Int = 0x8CA6;
	public static final GL_FRAMEBUFFER_BINDING:Int = 0x8CA6;
	public static final GL_RENDERBUFFER_BINDING:Int = 0x8CA7;
	public static final GL_READ_FRAMEBUFFER:Int = 0x8CA8;
	public static final GL_DRAW_FRAMEBUFFER:Int = 0x8CA9;
	public static final GL_READ_FRAMEBUFFER_BINDING:Int = 0x8CAA;
	public static final GL_RENDERBUFFER_SAMPLES:Int = 0x8CAB;
	public static final GL_DEPTH_COMPONENT32F:Int = 0x8CAC;
	public static final GL_DEPTH32F_STENCIL8:Int = 0x8CAD;
	public static final GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:Int = 0x8CD0;
	public static final GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:Int = 0x8CD1;
	public static final GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:Int = 0x8CD2;
	public static final GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:Int = 0x8CD3;
	public static final GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER:Int = 0x8CD4;
	public static final GL_FRAMEBUFFER_COMPLETE:Int = 0x8CD5;
	public static final GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT:Int = 0x8CD6;
	public static final GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:Int = 0x8CD7;
	public static final GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER:Int = 0x8CDB;
	public static final GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER:Int = 0x8CDC;
	public static final GL_FRAMEBUFFER_UNSUPPORTED:Int = 0x8CDD;
	public static final GL_MAX_COLOR_ATTACHMENTS:Int = 0x8CDF;
	public static final GL_COLOR_ATTACHMENT0:Int = 0x8CE0;
	public static final GL_COLOR_ATTACHMENT1:Int = 0x8CE1;
	public static final GL_COLOR_ATTACHMENT2:Int = 0x8CE2;
	public static final GL_COLOR_ATTACHMENT3:Int = 0x8CE3;
	public static final GL_COLOR_ATTACHMENT4:Int = 0x8CE4;
	public static final GL_COLOR_ATTACHMENT5:Int = 0x8CE5;
	public static final GL_COLOR_ATTACHMENT6:Int = 0x8CE6;
	public static final GL_COLOR_ATTACHMENT7:Int = 0x8CE7;
	public static final GL_COLOR_ATTACHMENT8:Int = 0x8CE8;
	public static final GL_COLOR_ATTACHMENT9:Int = 0x8CE9;
	public static final GL_COLOR_ATTACHMENT10:Int = 0x8CEA;
	public static final GL_COLOR_ATTACHMENT11:Int = 0x8CEB;
	public static final GL_COLOR_ATTACHMENT12:Int = 0x8CEC;
	public static final GL_COLOR_ATTACHMENT13:Int = 0x8CED;
	public static final GL_COLOR_ATTACHMENT14:Int = 0x8CEE;
	public static final GL_COLOR_ATTACHMENT15:Int = 0x8CEF;
	public static final GL_COLOR_ATTACHMENT16:Int = 0x8CF0;
	public static final GL_COLOR_ATTACHMENT17:Int = 0x8CF1;
	public static final GL_COLOR_ATTACHMENT18:Int = 0x8CF2;
	public static final GL_COLOR_ATTACHMENT19:Int = 0x8CF3;
	public static final GL_COLOR_ATTACHMENT20:Int = 0x8CF4;
	public static final GL_COLOR_ATTACHMENT21:Int = 0x8CF5;
	public static final GL_COLOR_ATTACHMENT22:Int = 0x8CF6;
	public static final GL_COLOR_ATTACHMENT23:Int = 0x8CF7;
	public static final GL_COLOR_ATTACHMENT24:Int = 0x8CF8;
	public static final GL_COLOR_ATTACHMENT25:Int = 0x8CF9;
	public static final GL_COLOR_ATTACHMENT26:Int = 0x8CFA;
	public static final GL_COLOR_ATTACHMENT27:Int = 0x8CFB;
	public static final GL_COLOR_ATTACHMENT28:Int = 0x8CFC;
	public static final GL_COLOR_ATTACHMENT29:Int = 0x8CFD;
	public static final GL_COLOR_ATTACHMENT30:Int = 0x8CFE;
	public static final GL_COLOR_ATTACHMENT31:Int = 0x8CFF;
	public static final GL_DEPTH_ATTACHMENT:Int = 0x8D00;
	public static final GL_STENCIL_ATTACHMENT:Int = 0x8D20;
	public static final GL_FRAMEBUFFER:Int = 0x8D40;
	public static final GL_RENDERBUFFER:Int = 0x8D41;
	public static final GL_RENDERBUFFER_WIDTH:Int = 0x8D42;
	public static final GL_RENDERBUFFER_HEIGHT:Int = 0x8D43;
	public static final GL_RENDERBUFFER_INTERNAL_FORMAT:Int = 0x8D44;
	public static final GL_STENCIL_INDEX1:Int = 0x8D46;
	public static final GL_STENCIL_INDEX4:Int = 0x8D47;
	public static final GL_STENCIL_INDEX8:Int = 0x8D48;
	public static final GL_STENCIL_INDEX16:Int = 0x8D49;
	public static final GL_RENDERBUFFER_RED_SIZE:Int = 0x8D50;
	public static final GL_RENDERBUFFER_GREEN_SIZE:Int = 0x8D51;
	public static final GL_RENDERBUFFER_BLUE_SIZE:Int = 0x8D52;
	public static final GL_RENDERBUFFER_ALPHA_SIZE:Int = 0x8D53;
	public static final GL_RENDERBUFFER_DEPTH_SIZE:Int = 0x8D54;
	public static final GL_RENDERBUFFER_STENCIL_SIZE:Int = 0x8D55;
	public static final GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE:Int = 0x8D56;
	public static final GL_MAX_SAMPLES:Int = 0x8D57;
	public static final GL_RGB565:Int = 0x8D62;
	public static final GL_PRIMITIVE_RESTART_FIXED_INDEX:Int = 0x8D69;
	public static final GL_ANY_SAMPLES_PASSED_CONSERVATIVE:Int = 0x8D6A;
	public static final GL_MAX_ELEMENT_INDEX:Int = 0x8D6B;
	public static final GL_RGBA32UI:Int = 0x8D70;
	public static final GL_RGB32UI:Int = 0x8D71;
	public static final GL_RGBA16UI:Int = 0x8D76;
	public static final GL_RGB16UI:Int = 0x8D77;
	public static final GL_RGBA8UI:Int = 0x8D7C;
	public static final GL_RGB8UI:Int = 0x8D7D;
	public static final GL_RGBA32I:Int = 0x8D82;
	public static final GL_RGB32I:Int = 0x8D83;
	public static final GL_RGBA16I:Int = 0x8D88;
	public static final GL_RGB16I:Int = 0x8D89;
	public static final GL_RGBA8I:Int = 0x8D8E;
	public static final GL_RGB8I:Int = 0x8D8F;
	public static final GL_RED_INTEGER:Int = 0x8D94;
	public static final GL_GREEN_INTEGER:Int = 0x8D95;
	public static final GL_BLUE_INTEGER:Int = 0x8D96;
	public static final GL_RGB_INTEGER:Int = 0x8D98;
	public static final GL_RGBA_INTEGER:Int = 0x8D99;
	public static final GL_BGR_INTEGER:Int = 0x8D9A;
	public static final GL_BGRA_INTEGER:Int = 0x8D9B;
	public static final GL_INT_2_10_10_10_REV:Int = 0x8D9F;
	public static final GL_FRAMEBUFFER_ATTACHMENT_LAYERED:Int = 0x8DA7;
	public static final GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS:Int = 0x8DA8;
	public static final GL_FLOAT_32_UNSIGNED_INT_24_8_REV:Int = 0x8DAD;
	public static final GL_FRAMEBUFFER_SRGB:Int = 0x8DB9;
	public static final GL_COMPRESSED_RED_RGTC1:Int = 0x8DBB;
	public static final GL_COMPRESSED_SIGNED_RED_RGTC1:Int = 0x8DBC;
	public static final GL_COMPRESSED_RG_RGTC2:Int = 0x8DBD;
	public static final GL_COMPRESSED_SIGNED_RG_RGTC2:Int = 0x8DBE;
	public static final GL_SAMPLER_1D_ARRAY:Int = 0x8DC0;
	public static final GL_SAMPLER_2D_ARRAY:Int = 0x8DC1;
	public static final GL_SAMPLER_BUFFER:Int = 0x8DC2;
	public static final GL_SAMPLER_1D_ARRAY_SHADOW:Int = 0x8DC3;
	public static final GL_SAMPLER_2D_ARRAY_SHADOW:Int = 0x8DC4;
	public static final GL_SAMPLER_CUBE_SHADOW:Int = 0x8DC5;
	public static final GL_UNSIGNED_INT_VEC2:Int = 0x8DC6;
	public static final GL_UNSIGNED_INT_VEC3:Int = 0x8DC7;
	public static final GL_UNSIGNED_INT_VEC4:Int = 0x8DC8;
	public static final GL_INT_SAMPLER_1D:Int = 0x8DC9;
	public static final GL_INT_SAMPLER_2D:Int = 0x8DCA;
	public static final GL_INT_SAMPLER_3D:Int = 0x8DCB;
	public static final GL_INT_SAMPLER_CUBE:Int = 0x8DCC;
	public static final GL_INT_SAMPLER_2D_RECT:Int = 0x8DCD;
	public static final GL_INT_SAMPLER_1D_ARRAY:Int = 0x8DCE;
	public static final GL_INT_SAMPLER_2D_ARRAY:Int = 0x8DCF;
	public static final GL_INT_SAMPLER_BUFFER:Int = 0x8DD0;
	public static final GL_UNSIGNED_INT_SAMPLER_1D:Int = 0x8DD1;
	public static final GL_UNSIGNED_INT_SAMPLER_2D:Int = 0x8DD2;
	public static final GL_UNSIGNED_INT_SAMPLER_3D:Int = 0x8DD3;
	public static final GL_UNSIGNED_INT_SAMPLER_CUBE:Int = 0x8DD4;
	public static final GL_UNSIGNED_INT_SAMPLER_2D_RECT:Int = 0x8DD5;
	public static final GL_UNSIGNED_INT_SAMPLER_1D_ARRAY:Int = 0x8DD6;
	public static final GL_UNSIGNED_INT_SAMPLER_2D_ARRAY:Int = 0x8DD7;
	public static final GL_UNSIGNED_INT_SAMPLER_BUFFER:Int = 0x8DD8;
	public static final GL_GEOMETRY_SHADER:Int = 0x8DD9;
	public static final GL_MAX_GEOMETRY_UNIFORM_COMPONENTS:Int = 0x8DDF;
	public static final GL_MAX_GEOMETRY_OUTPUT_VERTICES:Int = 0x8DE0;
	public static final GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS:Int = 0x8DE1;
	public static final GL_ACTIVE_SUBROUTINES:Int = 0x8DE5;
	public static final GL_ACTIVE_SUBROUTINE_UNIFORMS:Int = 0x8DE6;
	public static final GL_MAX_SUBROUTINES:Int = 0x8DE7;
	public static final GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS:Int = 0x8DE8;
	public static final GL_LOW_FLOAT:Int = 0x8DF0;
	public static final GL_MEDIUM_FLOAT:Int = 0x8DF1;
	public static final GL_HIGH_FLOAT:Int = 0x8DF2;
	public static final GL_LOW_INT:Int = 0x8DF3;
	public static final GL_MEDIUM_INT:Int = 0x8DF4;
	public static final GL_HIGH_INT:Int = 0x8DF5;
	public static final GL_SHADER_BINARY_FORMATS:Int = 0x8DF8;
	public static final GL_NUM_SHADER_BINARY_FORMATS:Int = 0x8DF9;
	public static final GL_SHADER_COMPILER:Int = 0x8DFA;
	public static final GL_MAX_VERTEX_UNIFORM_VECTORS:Int = 0x8DFB;
	public static final GL_MAX_VARYING_VECTORS:Int = 0x8DFC;
	public static final GL_MAX_FRAGMENT_UNIFORM_VECTORS:Int = 0x8DFD;
	public static final GL_QUERY_WAIT:Int = 0x8E13;
	public static final GL_QUERY_NO_WAIT:Int = 0x8E14;
	public static final GL_QUERY_BY_REGION_WAIT:Int = 0x8E15;
	public static final GL_QUERY_BY_REGION_NO_WAIT:Int = 0x8E16;
	public static final GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS:Int = 0x8E1E;
	public static final GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS:Int = 0x8E1F;
	public static final GL_TRANSFORM_FEEDBACK:Int = 0x8E22;
	public static final GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED:Int = 0x8E23;
	public static final GL_TRANSFORM_FEEDBACK_PAUSED:Int = 0x8E23;
	public static final GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE:Int = 0x8E24;
	public static final GL_TRANSFORM_FEEDBACK_ACTIVE:Int = 0x8E24;
	public static final GL_TRANSFORM_FEEDBACK_BINDING:Int = 0x8E25;
	public static final GL_TIMESTAMP:Int = 0x8E28;
	public static final GL_TEXTURE_SWIZZLE_R:Int = 0x8E42;
	public static final GL_TEXTURE_SWIZZLE_G:Int = 0x8E43;
	public static final GL_TEXTURE_SWIZZLE_B:Int = 0x8E44;
	public static final GL_TEXTURE_SWIZZLE_A:Int = 0x8E45;
	public static final GL_TEXTURE_SWIZZLE_RGBA:Int = 0x8E46;
	public static final GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS:Int = 0x8E47;
	public static final GL_ACTIVE_SUBROUTINE_MAX_LENGTH:Int = 0x8E48;
	public static final GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH:Int = 0x8E49;
	public static final GL_NUM_COMPATIBLE_SUBROUTINES:Int = 0x8E4A;
	public static final GL_COMPATIBLE_SUBROUTINES:Int = 0x8E4B;
	public static final GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION:Int = 0x8E4C;
	public static final GL_FIRST_VERTEX_CONVENTION:Int = 0x8E4D;
	public static final GL_LAST_VERTEX_CONVENTION:Int = 0x8E4E;
	public static final GL_PROVOKING_VERTEX:Int = 0x8E4F;
	public static final GL_SAMPLE_POSITION:Int = 0x8E50;
	public static final GL_SAMPLE_MASK:Int = 0x8E51;
	public static final GL_SAMPLE_MASK_VALUE:Int = 0x8E52;
	public static final GL_MAX_SAMPLE_MASK_WORDS:Int = 0x8E59;
	public static final GL_MAX_GEOMETRY_SHADER_INVOCATIONS:Int = 0x8E5A;
	public static final GL_MIN_FRAGMENT_INTERPOLATION_OFFSET:Int = 0x8E5B;
	public static final GL_MAX_FRAGMENT_INTERPOLATION_OFFSET:Int = 0x8E5C;
	public static final GL_FRAGMENT_INTERPOLATION_OFFSET_BITS:Int = 0x8E5D;
	public static final GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET:Int = 0x8E5E;
	public static final GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET:Int = 0x8E5F;
	public static final GL_MAX_TRANSFORM_FEEDBACK_BUFFERS:Int = 0x8E70;
	public static final GL_MAX_VERTEX_STREAMS:Int = 0x8E71;
	public static final GL_PATCH_VERTICES:Int = 0x8E72;
	public static final GL_PATCH_DEFAULT_INNER_LEVEL:Int = 0x8E73;
	public static final GL_PATCH_DEFAULT_OUTER_LEVEL:Int = 0x8E74;
	public static final GL_TESS_CONTROL_OUTPUT_VERTICES:Int = 0x8E75;
	public static final GL_TESS_GEN_MODE:Int = 0x8E76;
	public static final GL_TESS_GEN_SPACING:Int = 0x8E77;
	public static final GL_TESS_GEN_VERTEX_ORDER:Int = 0x8E78;
	public static final GL_TESS_GEN_POINT_MODE:Int = 0x8E79;
	public static final GL_ISOLINES:Int = 0x8E7A;
	public static final GL_FRACTIONAL_ODD:Int = 0x8E7B;
	public static final GL_FRACTIONAL_EVEN:Int = 0x8E7C;
	public static final GL_MAX_PATCH_VERTICES:Int = 0x8E7D;
	public static final GL_MAX_TESS_GEN_LEVEL:Int = 0x8E7E;
	public static final GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS:Int = 0x8E7F;
	public static final GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS:Int = 0x8E80;
	public static final GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS:Int = 0x8E81;
	public static final GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS:Int = 0x8E82;
	public static final GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS:Int = 0x8E83;
	public static final GL_MAX_TESS_PATCH_COMPONENTS:Int = 0x8E84;
	public static final GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS:Int = 0x8E85;
	public static final GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS:Int = 0x8E86;
	public static final GL_TESS_EVALUATION_SHADER:Int = 0x8E87;
	public static final GL_TESS_CONTROL_SHADER:Int = 0x8E88;
	public static final GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS:Int = 0x8E89;
	public static final GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS:Int = 0x8E8A;
	public static final GL_COMPRESSED_RGBA_BPTC_UNORM:Int = 0x8E8C;
	public static final GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM:Int = 0x8E8D;
	public static final GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT:Int = 0x8E8E;
	public static final GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT:Int = 0x8E8F;
	public static final GL_COPY_READ_BUFFER:Int = 0x8F36;
	public static final GL_COPY_READ_BUFFER_BINDING:Int = 0x8F36;
	public static final GL_COPY_WRITE_BUFFER:Int = 0x8F37;
	public static final GL_COPY_WRITE_BUFFER_BINDING:Int = 0x8F37;
	public static final GL_MAX_IMAGE_UNITS:Int = 0x8F38;
	public static final GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS:Int = 0x8F39;
	public static final GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES:Int = 0x8F39;
	public static final GL_IMAGE_BINDING_NAME:Int = 0x8F3A;
	public static final GL_IMAGE_BINDING_LEVEL:Int = 0x8F3B;
	public static final GL_IMAGE_BINDING_LAYERED:Int = 0x8F3C;
	public static final GL_IMAGE_BINDING_LAYER:Int = 0x8F3D;
	public static final GL_IMAGE_BINDING_ACCESS:Int = 0x8F3E;
	public static final GL_DRAW_INDIRECT_BUFFER:Int = 0x8F3F;
	public static final GL_DRAW_INDIRECT_BUFFER_BINDING:Int = 0x8F43;
	public static final GL_DOUBLE_MAT2:Int = 0x8F46;
	public static final GL_DOUBLE_MAT3:Int = 0x8F47;
	public static final GL_DOUBLE_MAT4:Int = 0x8F48;
	public static final GL_DOUBLE_MAT2x3:Int = 0x8F49;
	public static final GL_DOUBLE_MAT2x4:Int = 0x8F4A;
	public static final GL_DOUBLE_MAT3x2:Int = 0x8F4B;
	public static final GL_DOUBLE_MAT3x4:Int = 0x8F4C;
	public static final GL_DOUBLE_MAT4x2:Int = 0x8F4D;
	public static final GL_DOUBLE_MAT4x3:Int = 0x8F4E;
	public static final GL_VERTEX_BINDING_BUFFER:Int = 0x8F4F;
	public static final GL_R8_SNORM:Int = 0x8F94;
	public static final GL_RG8_SNORM:Int = 0x8F95;
	public static final GL_RGB8_SNORM:Int = 0x8F96;
	public static final GL_RGBA8_SNORM:Int = 0x8F97;
	public static final GL_R16_SNORM:Int = 0x8F98;
	public static final GL_RG16_SNORM:Int = 0x8F99;
	public static final GL_RGB16_SNORM:Int = 0x8F9A;
	public static final GL_RGBA16_SNORM:Int = 0x8F9B;
	public static final GL_SIGNED_NORMALIZED:Int = 0x8F9C;
	public static final GL_PRIMITIVE_RESTART:Int = 0x8F9D;
	public static final GL_PRIMITIVE_RESTART_INDEX:Int = 0x8F9E;
	public static final GL_DOUBLE_VEC2:Int = 0x8FFC;
	public static final GL_DOUBLE_VEC3:Int = 0x8FFD;
	public static final GL_DOUBLE_VEC4:Int = 0x8FFE;
	public static final GL_TEXTURE_CUBE_MAP_ARRAY:Int = 0x9009;
	public static final GL_TEXTURE_BINDING_CUBE_MAP_ARRAY:Int = 0x900A;
	public static final GL_PROXY_TEXTURE_CUBE_MAP_ARRAY:Int = 0x900B;
	public static final GL_SAMPLER_CUBE_MAP_ARRAY:Int = 0x900C;
	public static final GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW:Int = 0x900D;
	public static final GL_INT_SAMPLER_CUBE_MAP_ARRAY:Int = 0x900E;
	public static final GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY:Int = 0x900F;
	public static final GL_IMAGE_1D:Int = 0x904C;
	public static final GL_IMAGE_2D:Int = 0x904D;
	public static final GL_IMAGE_3D:Int = 0x904E;
	public static final GL_IMAGE_2D_RECT:Int = 0x904F;
	public static final GL_IMAGE_CUBE:Int = 0x9050;
	public static final GL_IMAGE_BUFFER:Int = 0x9051;
	public static final GL_IMAGE_1D_ARRAY:Int = 0x9052;
	public static final GL_IMAGE_2D_ARRAY:Int = 0x9053;
	public static final GL_IMAGE_CUBE_MAP_ARRAY:Int = 0x9054;
	public static final GL_IMAGE_2D_MULTISAMPLE:Int = 0x9055;
	public static final GL_IMAGE_2D_MULTISAMPLE_ARRAY:Int = 0x9056;
	public static final GL_INT_IMAGE_1D:Int = 0x9057;
	public static final GL_INT_IMAGE_2D:Int = 0x9058;
	public static final GL_INT_IMAGE_3D:Int = 0x9059;
	public static final GL_INT_IMAGE_2D_RECT:Int = 0x905A;
	public static final GL_INT_IMAGE_CUBE:Int = 0x905B;
	public static final GL_INT_IMAGE_BUFFER:Int = 0x905C;
	public static final GL_INT_IMAGE_1D_ARRAY:Int = 0x905D;
	public static final GL_INT_IMAGE_2D_ARRAY:Int = 0x905E;
	public static final GL_INT_IMAGE_CUBE_MAP_ARRAY:Int = 0x905F;
	public static final GL_INT_IMAGE_2D_MULTISAMPLE:Int = 0x9060;
	public static final GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY:Int = 0x9061;
	public static final GL_UNSIGNED_INT_IMAGE_1D:Int = 0x9062;
	public static final GL_UNSIGNED_INT_IMAGE_2D:Int = 0x9063;
	public static final GL_UNSIGNED_INT_IMAGE_3D:Int = 0x9064;
	public static final GL_UNSIGNED_INT_IMAGE_2D_RECT:Int = 0x9065;
	public static final GL_UNSIGNED_INT_IMAGE_CUBE:Int = 0x9066;
	public static final GL_UNSIGNED_INT_IMAGE_BUFFER:Int = 0x9067;
	public static final GL_UNSIGNED_INT_IMAGE_1D_ARRAY:Int = 0x9068;
	public static final GL_UNSIGNED_INT_IMAGE_2D_ARRAY:Int = 0x9069;
	public static final GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY:Int = 0x906A;
	public static final GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE:Int = 0x906B;
	public static final GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY:Int = 0x906C;
	public static final GL_MAX_IMAGE_SAMPLES:Int = 0x906D;
	public static final GL_IMAGE_BINDING_FORMAT:Int = 0x906E;
	public static final GL_RGB10_A2UI:Int = 0x906F;
	public static final GL_MIN_MAP_BUFFER_ALIGNMENT:Int = 0x90BC;
	public static final GL_IMAGE_FORMAT_COMPATIBILITY_TYPE:Int = 0x90C7;
	public static final GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE:Int = 0x90C8;
	public static final GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS:Int = 0x90C9;
	public static final GL_MAX_VERTEX_IMAGE_UNIFORMS:Int = 0x90CA;
	public static final GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS:Int = 0x90CB;
	public static final GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS:Int = 0x90CC;
	public static final GL_MAX_GEOMETRY_IMAGE_UNIFORMS:Int = 0x90CD;
	public static final GL_MAX_FRAGMENT_IMAGE_UNIFORMS:Int = 0x90CE;
	public static final GL_MAX_COMBINED_IMAGE_UNIFORMS:Int = 0x90CF;
	public static final GL_SHADER_STORAGE_BUFFER:Int = 0x90D2;
	public static final GL_SHADER_STORAGE_BUFFER_BINDING:Int = 0x90D3;
	public static final GL_SHADER_STORAGE_BUFFER_START:Int = 0x90D4;
	public static final GL_SHADER_STORAGE_BUFFER_SIZE:Int = 0x90D5;
	public static final GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS:Int = 0x90D6;
	public static final GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS:Int = 0x90D7;
	public static final GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS:Int = 0x90D8;
	public static final GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS:Int = 0x90D9;
	public static final GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS:Int = 0x90DA;
	public static final GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS:Int = 0x90DB;
	public static final GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS:Int = 0x90DC;
	public static final GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS:Int = 0x90DD;
	public static final GL_MAX_SHADER_STORAGE_BLOCK_SIZE:Int = 0x90DE;
	public static final GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT:Int = 0x90DF;
	public static final GL_DEPTH_STENCIL_TEXTURE_MODE:Int = 0x90EA;
	public static final GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS:Int = 0x90EB;
	public static final GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER:Int = 0x90EC;
	public static final GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER:Int = 0x90ED;
	public static final GL_DISPATCH_INDIRECT_BUFFER:Int = 0x90EE;
	public static final GL_DISPATCH_INDIRECT_BUFFER_BINDING:Int = 0x90EF;
	public static final GL_TEXTURE_2D_MULTISAMPLE:Int = 0x9100;
	public static final GL_PROXY_TEXTURE_2D_MULTISAMPLE:Int = 0x9101;
	public static final GL_TEXTURE_2D_MULTISAMPLE_ARRAY:Int = 0x9102;
	public static final GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY:Int = 0x9103;
	public static final GL_TEXTURE_BINDING_2D_MULTISAMPLE:Int = 0x9104;
	public static final GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY:Int = 0x9105;
	public static final GL_TEXTURE_SAMPLES:Int = 0x9106;
	public static final GL_TEXTURE_FIXED_SAMPLE_LOCATIONS:Int = 0x9107;
	public static final GL_SAMPLER_2D_MULTISAMPLE:Int = 0x9108;
	public static final GL_INT_SAMPLER_2D_MULTISAMPLE:Int = 0x9109;
	public static final GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE:Int = 0x910A;
	public static final GL_SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 0x910B;
	public static final GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 0x910C;
	public static final GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 0x910D;
	public static final GL_MAX_COLOR_TEXTURE_SAMPLES:Int = 0x910E;
	public static final GL_MAX_DEPTH_TEXTURE_SAMPLES:Int = 0x910F;
	public static final GL_MAX_INTEGER_SAMPLES:Int = 0x9110;
	public static final GL_MAX_SERVER_WAIT_TIMEOUT:Int = 0x9111;
	public static final GL_OBJECT_TYPE:Int = 0x9112;
	public static final GL_SYNC_CONDITION:Int = 0x9113;
	public static final GL_SYNC_STATUS:Int = 0x9114;
	public static final GL_SYNC_FLAGS:Int = 0x9115;
	public static final GL_SYNC_FENCE:Int = 0x9116;
	public static final GL_SYNC_GPU_COMMANDS_COMPLETE:Int = 0x9117;
	public static final GL_UNSIGNALED:Int = 0x9118;
	public static final GL_SIGNALED:Int = 0x9119;
	public static final GL_ALREADY_SIGNALED:Int = 0x911A;
	public static final GL_TIMEOUT_EXPIRED:Int = 0x911B;
	public static final GL_CONDITION_SATISFIED:Int = 0x911C;
	public static final GL_WAIT_FAILED:Int = 0x911D;
	public static final GL_BUFFER_ACCESS_FLAGS:Int = 0x911F;
	public static final GL_BUFFER_MAP_LENGTH:Int = 0x9120;
	public static final GL_BUFFER_MAP_OFFSET:Int = 0x9121;
	public static final GL_MAX_VERTEX_OUTPUT_COMPONENTS:Int = 0x9122;
	public static final GL_MAX_GEOMETRY_INPUT_COMPONENTS:Int = 0x9123;
	public static final GL_MAX_GEOMETRY_OUTPUT_COMPONENTS:Int = 0x9124;
	public static final GL_MAX_FRAGMENT_INPUT_COMPONENTS:Int = 0x9125;
	public static final GL_CONTEXT_PROFILE_MASK:Int = 0x9126;
	public static final GL_UNPACK_COMPRESSED_BLOCK_WIDTH:Int = 0x9127;
	public static final GL_UNPACK_COMPRESSED_BLOCK_HEIGHT:Int = 0x9128;
	public static final GL_UNPACK_COMPRESSED_BLOCK_DEPTH:Int = 0x9129;
	public static final GL_UNPACK_COMPRESSED_BLOCK_SIZE:Int = 0x912A;
	public static final GL_PACK_COMPRESSED_BLOCK_WIDTH:Int = 0x912B;
	public static final GL_PACK_COMPRESSED_BLOCK_HEIGHT:Int = 0x912C;
	public static final GL_PACK_COMPRESSED_BLOCK_DEPTH:Int = 0x912D;
	public static final GL_PACK_COMPRESSED_BLOCK_SIZE:Int = 0x912E;
	public static final GL_TEXTURE_IMMUTABLE_FORMAT:Int = 0x912F;
	public static final GL_MAX_DEBUG_MESSAGE_LENGTH:Int = 0x9143;
	public static final GL_MAX_DEBUG_LOGGED_MESSAGES:Int = 0x9144;
	public static final GL_DEBUG_LOGGED_MESSAGES:Int = 0x9145;
	public static final GL_DEBUG_SEVERITY_HIGH:Int = 0x9146;
	public static final GL_DEBUG_SEVERITY_MEDIUM:Int = 0x9147;
	public static final GL_DEBUG_SEVERITY_LOW:Int = 0x9148;
	public static final GL_QUERY_BUFFER:Int = 0x9192;
	public static final GL_QUERY_BUFFER_BINDING:Int = 0x9193;
	public static final GL_QUERY_RESULT_NO_WAIT:Int = 0x9194;
	public static final GL_TEXTURE_BUFFER_OFFSET:Int = 0x919D;
	public static final GL_TEXTURE_BUFFER_SIZE:Int = 0x919E;
	public static final GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT:Int = 0x919F;
	public static final GL_COMPUTE_SHADER:Int = 0x91B9;
	public static final GL_MAX_COMPUTE_UNIFORM_BLOCKS:Int = 0x91BB;
	public static final GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS:Int = 0x91BC;
	public static final GL_MAX_COMPUTE_IMAGE_UNIFORMS:Int = 0x91BD;
	public static final GL_MAX_COMPUTE_WORK_GROUP_COUNT:Int = 0x91BE;
	public static final GL_MAX_COMPUTE_WORK_GROUP_SIZE:Int = 0x91BF;
	public static final GL_COMPRESSED_R11_EAC:Int = 0x9270;
	public static final GL_COMPRESSED_SIGNED_R11_EAC:Int = 0x9271;
	public static final GL_COMPRESSED_RG11_EAC:Int = 0x9272;
	public static final GL_COMPRESSED_SIGNED_RG11_EAC:Int = 0x9273;
	public static final GL_COMPRESSED_RGB8_ETC2:Int = 0x9274;
	public static final GL_COMPRESSED_SRGB8_ETC2:Int = 0x9275;
	public static final GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2:Int = 0x9276;
	public static final GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2:Int = 0x9277;
	public static final GL_COMPRESSED_RGBA8_ETC2_EAC:Int = 0x9278;
	public static final GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC:Int = 0x9279;
	public static final GL_ATOMIC_COUNTER_BUFFER:Int = 0x92C0;
	public static final GL_ATOMIC_COUNTER_BUFFER_BINDING:Int = 0x92C1;
	public static final GL_ATOMIC_COUNTER_BUFFER_START:Int = 0x92C2;
	public static final GL_ATOMIC_COUNTER_BUFFER_SIZE:Int = 0x92C3;
	public static final GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE:Int = 0x92C4;
	public static final GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS:Int = 0x92C5;
	public static final GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES:Int = 0x92C6;
	public static final GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER:Int = 0x92C7;
	public static final GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER:Int = 0x92C8;
	public static final GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER:Int = 0x92C9;
	public static final GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER:Int = 0x92CA;
	public static final GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER:Int = 0x92CB;
	public static final GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS:Int = 0x92CC;
	public static final GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS:Int = 0x92CD;
	public static final GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS:Int = 0x92CE;
	public static final GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS:Int = 0x92CF;
	public static final GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS:Int = 0x92D0;
	public static final GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS:Int = 0x92D1;
	public static final GL_MAX_VERTEX_ATOMIC_COUNTERS:Int = 0x92D2;
	public static final GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS:Int = 0x92D3;
	public static final GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS:Int = 0x92D4;
	public static final GL_MAX_GEOMETRY_ATOMIC_COUNTERS:Int = 0x92D5;
	public static final GL_MAX_FRAGMENT_ATOMIC_COUNTERS:Int = 0x92D6;
	public static final GL_MAX_COMBINED_ATOMIC_COUNTERS:Int = 0x92D7;
	public static final GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE:Int = 0x92D8;
	public static final GL_ACTIVE_ATOMIC_COUNTER_BUFFERS:Int = 0x92D9;
	public static final GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX:Int = 0x92DA;
	public static final GL_UNSIGNED_INT_ATOMIC_COUNTER:Int = 0x92DB;
	public static final GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS:Int = 0x92DC;
	public static final GL_DEBUG_OUTPUT:Int = 0x92E0;
	public static final GL_UNIFORM:Int = 0x92E1;
	public static final GL_UNIFORM_BLOCK:Int = 0x92E2;
	public static final GL_PROGRAM_INPUT:Int = 0x92E3;
	public static final GL_PROGRAM_OUTPUT:Int = 0x92E4;
	public static final GL_BUFFER_VARIABLE:Int = 0x92E5;
	public static final GL_SHADER_STORAGE_BLOCK:Int = 0x92E6;
	public static final GL_IS_PER_PATCH:Int = 0x92E7;
	public static final GL_VERTEX_SUBROUTINE:Int = 0x92E8;
	public static final GL_TESS_CONTROL_SUBROUTINE:Int = 0x92E9;
	public static final GL_TESS_EVALUATION_SUBROUTINE:Int = 0x92EA;
	public static final GL_GEOMETRY_SUBROUTINE:Int = 0x92EB;
	public static final GL_FRAGMENT_SUBROUTINE:Int = 0x92EC;
	public static final GL_COMPUTE_SUBROUTINE:Int = 0x92ED;
	public static final GL_VERTEX_SUBROUTINE_UNIFORM:Int = 0x92EE;
	public static final GL_TESS_CONTROL_SUBROUTINE_UNIFORM:Int = 0x92EF;
	public static final GL_TESS_EVALUATION_SUBROUTINE_UNIFORM:Int = 0x92F0;
	public static final GL_GEOMETRY_SUBROUTINE_UNIFORM:Int = 0x92F1;
	public static final GL_FRAGMENT_SUBROUTINE_UNIFORM:Int = 0x92F2;
	public static final GL_COMPUTE_SUBROUTINE_UNIFORM:Int = 0x92F3;
	public static final GL_TRANSFORM_FEEDBACK_VARYING:Int = 0x92F4;
	public static final GL_ACTIVE_RESOURCES:Int = 0x92F5;
	public static final GL_MAX_NAME_LENGTH:Int = 0x92F6;
	public static final GL_MAX_NUM_ACTIVE_VARIABLES:Int = 0x92F7;
	public static final GL_MAX_NUM_COMPATIBLE_SUBROUTINES:Int = 0x92F8;
	public static final GL_NAME_LENGTH:Int = 0x92F9;
	public static final GL_TYPE:Int = 0x92FA;
	public static final GL_ARRAY_SIZE:Int = 0x92FB;
	public static final GL_OFFSET:Int = 0x92FC;
	public static final GL_BLOCK_INDEX:Int = 0x92FD;
	public static final GL_ARRAY_STRIDE:Int = 0x92FE;
	public static final GL_MATRIX_STRIDE:Int = 0x92FF;
	public static final GL_IS_ROW_MAJOR:Int = 0x9300;
	public static final GL_ATOMIC_COUNTER_BUFFER_INDEX:Int = 0x9301;
	public static final GL_BUFFER_BINDING:Int = 0x9302;
	public static final GL_BUFFER_DATA_SIZE:Int = 0x9303;
	public static final GL_NUM_ACTIVE_VARIABLES:Int = 0x9304;
	public static final GL_ACTIVE_VARIABLES:Int = 0x9305;
	public static final GL_REFERENCED_BY_VERTEX_SHADER:Int = 0x9306;
	public static final GL_REFERENCED_BY_TESS_CONTROL_SHADER:Int = 0x9307;
	public static final GL_REFERENCED_BY_TESS_EVALUATION_SHADER:Int = 0x9308;
	public static final GL_REFERENCED_BY_GEOMETRY_SHADER:Int = 0x9309;
	public static final GL_REFERENCED_BY_FRAGMENT_SHADER:Int = 0x930A;
	public static final GL_REFERENCED_BY_COMPUTE_SHADER:Int = 0x930B;
	public static final GL_TOP_LEVEL_ARRAY_SIZE:Int = 0x930C;
	public static final GL_TOP_LEVEL_ARRAY_STRIDE:Int = 0x930D;
	public static final GL_LOCATION:Int = 0x930E;
	public static final GL_LOCATION_INDEX:Int = 0x930F;
	public static final GL_FRAMEBUFFER_DEFAULT_WIDTH:Int = 0x9310;
	public static final GL_FRAMEBUFFER_DEFAULT_HEIGHT:Int = 0x9311;
	public static final GL_FRAMEBUFFER_DEFAULT_LAYERS:Int = 0x9312;
	public static final GL_FRAMEBUFFER_DEFAULT_SAMPLES:Int = 0x9313;
	public static final GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS:Int = 0x9314;
	public static final GL_MAX_FRAMEBUFFER_WIDTH:Int = 0x9315;
	public static final GL_MAX_FRAMEBUFFER_HEIGHT:Int = 0x9316;
	public static final GL_MAX_FRAMEBUFFER_LAYERS:Int = 0x9317;
	public static final GL_MAX_FRAMEBUFFER_SAMPLES:Int = 0x9318;
	public static final GL_LOCATION_COMPONENT:Int = 0x934A;
	public static final GL_TRANSFORM_FEEDBACK_BUFFER_INDEX:Int = 0x934B;
	public static final GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE:Int = 0x934C;
	public static final GL_CLEAR_TEXTURE:Int = 0x9365;
	public static final GL_NUM_SAMPLE_COUNTS:Int = 0x9380;

	public static function glActiveShaderProgram(pipeline:Int, program:Int):Void {}
	public static function glActiveTexture(texture:Int):Void {}
	public static function glAttachShader(program:Int, shader:Int):Void {}
	public static function glBeginConditionalRender(id:Int, mode:Int):Void {}
	public static function glBeginQuery(target:Int, id:Int):Void {}
	public static function glBeginQueryIndexed(target:Int, index:Int, id:Int):Void {}
	public static function glBeginTransformFeedback(primitiveMode:Int):Void {}
	public static function glBindAttribLocation(program:Int, index:Int, name:String):Void {}
	public static function glBindBuffer(target:Int, buffer:Int):Void {}
	public static function glBindBufferBase(target:Int, index:Int, buffer:Int):Void {}
	public static function glBindBufferRange(target:Int, index:Int, buffer:Int, offset:hl.Ref<Int>, size:hl.Ref<Int>):Void {}
	public static function glBindBuffersBase(target:Int, first:Int, count:Int, buffers:hl.Ref<Int>):Void {}
	public static function glBindBuffersRange(target:Int, first:Int, count:Int, buffers:hl.Ref<Int>, offsets:hl.NativeArray<hl.Ref<Int>>, sizes:hl.NativeArray<hl.Ref<Int>>):Void {}
	public static function glBindFragDataLocation(program:Int, color:Int, name:String):Void {}
	public static function glBindFragDataLocationIndexed(program:Int, colorNumber:Int, index:Int, name:String):Void {}
	public static function glBindFramebuffer(target:Int, framebuffer:Int):Void {}
	public static function glBindImageTexture(unit:Int, texture:Int, level:Int, layered:Int, layer:Int, access:Int, format:Int):Void {}
	public static function glBindImageTextures(first:Int, count:Int, textures:hl.Ref<Int>):Void {}
	public static function glBindProgramPipeline(pipeline:Int):Void {}
	public static function glBindRenderbuffer(target:Int, renderbuffer:Int):Void {}
	public static function glBindSampler(unit:Int, sampler:Int):Void {}
	public static function glBindSamplers(first:Int, count:Int, samplers:hl.Ref<Int>):Void {}
	public static function glBindTexture(target:Int, texture:Int):Void {}
	public static function glBindTextures(first:Int, count:Int, textures:hl.Ref<Int>):Void {}
	public static function glBindTransformFeedback(target:Int, id:Int):Void {}
	public static function glBindVertexArray(array:Int):Void {}
	public static function glBindVertexBuffer(bindingindex:Int, buffer:Int, offset:hl.Ref<Int>, stride:Int):Void {}
	public static function glBindVertexBuffers(first:Int, count:Int, buffers:hl.Ref<Int>, offsets:hl.NativeArray<hl.Ref<Int>>, strides:hl.Ref<Int>):Void {}
	public static function glBlendColor(red:hl.F32, green:hl.F32, blue:hl.F32, alpha:hl.F32):Void {}
	public static function glBlendEquation(mode:Int):Void {}
	public static function glBlendEquationSeparate(modeRGB:Int, modeAlpha:Int):Void {}
	public static function glBlendEquationSeparatei(buf:Int, modeRGB:Int, modeAlpha:Int):Void {}
	public static function glBlendEquationi(buf:Int, mode:Int):Void {}
	public static function glBlendFunc(sfactor:Int, dfactor:Int):Void {}
	public static function glBlendFuncSeparate(sfactorRGB:Int, dfactorRGB:Int, sfactorAlpha:Int, dfactorAlpha:Int):Void {}
	public static function glBlendFuncSeparatei(buf:Int, srcRGB:Int, dstRGB:Int, srcAlpha:Int, dstAlpha:Int):Void {}
	public static function glBlendFunci(buf:Int, src:Int, dst:Int):Void {}
	public static function glBlitFramebuffer(srcX0:Int, srcY0:Int, srcX1:Int, srcY1:Int, dstX0:Int, dstY0:Int, dstX1:Int, dstY1:Int, mask:Int, filter:Int):Void {}
	public static function glBufferData(target:Int, size:Int, data:hl.Bytes, usage:Int):Void {}
	public static function glBufferStorage(target:Int, size:hl.Ref<Int>, data:hl.Bytes, flags:Int):Void {}
	public static function glBufferSubData(target:Int, offset:hl.Ref<Int>, size:hl.Ref<Int>, data:hl.Bytes):Void {}
	public static function glCheckFramebufferStatus(target:Int):Int { return 0; }
	public static function glClampColor(target:Int, clamp:Int):Void {}
	public static function glClear(mask:Int):Void {}
	public static function glClearBufferData(target:Int, internalformat:Int, format:Int, type:Int, data:hl.Bytes):Void {}
	public static function glClearBufferSubData(target:Int, internalformat:Int, offset:hl.Ref<Int>, size:hl.Ref<Int>, format:Int, type:Int, data:hl.Bytes):Void {}
	public static function glClearBufferfi(buffer:Int, drawbuffer:Int, depth:hl.F32, stencil:Int):Void {}
	public static function glClearBufferfv(buffer:Int, drawbuffer:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glClearBufferiv(buffer:Int, drawbuffer:Int, value:hl.Ref<Int>):Void {}
	public static function glClearBufferuiv(buffer:Int, drawbuffer:Int, value:hl.Ref<Int>):Void {}
	public static function glClearColor(red:hl.F32, green:hl.F32, blue:hl.F32, alpha:hl.F32):Void {}
	public static function glClearDepth(depth:hl.F64):Void {}
	public static function glClearDepthf(d:hl.F32):Void {}
	public static function glClearStencil(s:Int):Void {}
	public static function glClearTexImage(texture:Int, level:Int, format:Int, type:Int, data:hl.Bytes):Void {}
	public static function glClearTexSubImage(texture:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, type:Int, data:hl.Bytes):Void {}
	public static function glClientWaitSync(sync:hl.Abstract<"GLSync">, flags:Int, timeout:hl.I64):Int { return 0; }
	public static function glColorMask(red:Int, green:Int, blue:Int, alpha:Int):Void {}
	public static function glColorMaski(index:Int, r:Int, g:Int, b:Int, a:Int):Void {}
	public static function glColorP3ui(type:Int, color:Int):Void {}
	public static function glColorP3uiv(type:Int, color:hl.Ref<Int>):Void {}
	public static function glColorP4ui(type:Int, color:Int):Void {}
	public static function glColorP4uiv(type:Int, color:hl.Ref<Int>):Void {}
	public static function glCompileShader(shader:Int):Void {}
	public static function glCompressedTexImage1D(target:Int, level:Int, internalformat:Int, width:Int, border:Int, imageSize:Int, data:hl.Bytes):Void {}
	public static function glCompressedTexImage2D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, border:Int, imageSize:Int, data:hl.Bytes):Void {}
	public static function glCompressedTexImage3D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, depth:Int, border:Int, imageSize:Int, data:hl.Bytes):Void {}
	public static function glCompressedTexSubImage1D(target:Int, level:Int, xoffset:Int, width:Int, format:Int, imageSize:Int, data:hl.Bytes):Void {}
	public static function glCompressedTexSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:Int, imageSize:Int, data:hl.Bytes):Void {}
	public static function glCompressedTexSubImage3D(target:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, imageSize:Int, data:hl.Bytes):Void {}
	public static function glCopyBufferSubData(readTarget:Int, writeTarget:Int, readOffset:hl.Ref<Int>, writeOffset:hl.Ref<Int>, size:hl.Ref<Int>):Void {}
	public static function glCopyImageSubData(srcName:Int, srcTarget:Int, srcLevel:Int, srcX:Int, srcY:Int, srcZ:Int, dstName:Int, dstTarget:Int, dstLevel:Int, dstX:Int, dstY:Int, dstZ:Int, srcWidth:Int, srcHeight:Int, srcDepth:Int):Void {}
	public static function glCopyTexImage1D(target:Int, level:Int, internalformat:Int, x:Int, y:Int, width:Int, border:Int):Void {}
	public static function glCopyTexImage2D(target:Int, level:Int, internalformat:Int, x:Int, y:Int, width:Int, height:Int, border:Int):Void {}
	public static function glCopyTexSubImage1D(target:Int, level:Int, xoffset:Int, x:Int, y:Int, width:Int):Void {}
	public static function glCopyTexSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, x:Int, y:Int, width:Int, height:Int):Void {}
	public static function glCopyTexSubImage3D(target:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, x:Int, y:Int, width:Int, height:Int):Void {}
	public static function glCreateProgram():Int { return 0; }
	public static function glCreateShader(type:Int):Int { return 0; }
	public static function glCreateShaderProgramv(type:Int, count:Int, strings:hl.NativeArray<hl.Bytes>):Int { return 0; }
	public static function glCullFace(mode:Int):Void {}
	// public static function glDebugMessageCallback(callback:(Int->Int->Int->Int->Int->hl.Bytes), userParam:hl.Bytes):Void {}
	// public static function glDebugMessageControl(source:Int, type:Int, severity:Int, count:Int, ids:hl.Ref<Int>, enabled:Int):Void {}
	// public static function glDebugMessageInsert(source:Int, type:Int, id:Int, severity:Int, length:Int, buf:String):Void {}
	public static function glDeleteBuffers(n:Int, buffers:hl.Ref<Int>):Void {}
	public static function glDeleteFramebuffers(n:Int, framebuffers:hl.Ref<Int>):Void {}
	public static function glDeleteProgram(program:Int):Void {}
	public static function glDeleteProgramPipelines(n:Int, pipelines:hl.Ref<Int>):Void {}
	public static function glDeleteQueries(n:Int, ids:hl.Ref<Int>):Void {}
	public static function glDeleteRenderbuffers(n:Int, renderbuffers:hl.Ref<Int>):Void {}
	public static function glDeleteSamplers(count:Int, samplers:hl.Ref<Int>):Void {}
	public static function glDeleteShader(shader:Int):Void {}
	public static function glDeleteSync(sync:hl.Abstract<"GLSync">):Void {}
	public static function glDeleteTextures(n:Int, textures:hl.Ref<Int>):Void {}
	public static function glDeleteTransformFeedbacks(n:Int, ids:hl.Ref<Int>):Void {}
	public static function glDeleteVertexArrays(n:Int, arrays:hl.Ref<Int>):Void {}
	public static function glDepthFunc(func:Int):Void {}
	public static function glDepthMask(flag:Int):Void {}
	public static function glDepthRange(n:hl.F64, f:hl.F64):Void {}
	public static function glDepthRangeArrayv(first:Int, count:Int, v:hl.Ref<hl.F64>):Void {}
	public static function glDepthRangeIndexed(index:Int, n:hl.F64, f:hl.F64):Void {}
	public static function glDepthRangef(n:hl.F32, f:hl.F32):Void {}
	public static function glDetachShader(program:Int, shader:Int):Void {}
	public static function glDisable(cap:Int):Void {}
	public static function glDisableVertexAttribArray(index:Int):Void {}
	public static function glDisablei(target:Int, index:Int):Void {}
	public static function glDispatchCompute(num_groups_x:Int, num_groups_y:Int, num_groups_z:Int):Void {}
	public static function glDispatchComputeIndirect(indirect:hl.Ref<Int>):Void {}
	public static function glDrawArrays(mode:Int, first:Int, count:Int):Void {}
	public static function glDrawArraysIndirect(mode:Int, indirect:hl.Bytes):Void {}
	public static function glDrawArraysInstanced(mode:Int, first:Int, count:Int, instancecount:Int):Void {}
	public static function glDrawArraysInstancedBaseInstance(mode:Int, first:Int, count:Int, instancecount:Int, baseinstance:Int):Void {}
	public static function glDrawBuffer(buf:Int):Void {}
	public static function glDrawBuffers(n:Int, bufs:hl.Ref<Int>):Void {}
	public static function glDrawElements(mode:Int, count:Int, type:Int, indices:Int):Void {}
	public static function glDrawElementsBaseVertex(mode:Int, count:Int, type:Int, indices:hl.Bytes, basevertex:Int):Void {}
	public static function glDrawElementsIndirect(mode:Int, type:Int, indirect:hl.Bytes):Void {}
	public static function glDrawElementsInstanced(mode:Int, count:Int, type:Int, indices:hl.Bytes, instancecount:Int):Void {}
	public static function glDrawElementsInstancedBaseInstance(mode:Int, count:Int, type:Int, indices:hl.Bytes, instancecount:Int, baseinstance:Int):Void {}
	public static function glDrawElementsInstancedBaseVertex(mode:Int, count:Int, type:Int, indices:hl.Bytes, instancecount:Int, basevertex:Int):Void {}
	public static function glDrawElementsInstancedBaseVertexBaseInstance(mode:Int, count:Int, type:Int, indices:hl.Bytes, instancecount:Int, basevertex:Int, baseinstance:Int):Void {}
	public static function glDrawRangeElements(mode:Int, start:Int, end:Int, count:Int, type:Int, indices:hl.Bytes):Void {}
	public static function glDrawRangeElementsBaseVertex(mode:Int, start:Int, end:Int, count:Int, type:Int, indices:hl.Bytes, basevertex:Int):Void {}
	public static function glDrawTransformFeedback(mode:Int, id:Int):Void {}
	public static function glDrawTransformFeedbackInstanced(mode:Int, id:Int, instancecount:Int):Void {}
	public static function glDrawTransformFeedbackStream(mode:Int, id:Int, stream:Int):Void {}
	public static function glDrawTransformFeedbackStreamInstanced(mode:Int, id:Int, stream:Int, instancecount:Int):Void {}
	public static function glEnable(cap:Int):Void {}
	public static function glEnableVertexAttribArray(index:Int):Void {}
	public static function glEnablei(target:Int, index:Int):Void {}
	public static function glEndConditionalRender():Void {}
	public static function glEndQuery(target:Int):Void {}
	public static function glEndQueryIndexed(target:Int, index:Int):Void {}
	public static function glEndTransformFeedback():Void {}
	public static function glFenceSync(condition:Int, flags:Int):hl.Abstract<"GLSync"> { return null; }
	public static function glFinish():Void {}
	public static function glFlush():Void {}
	public static function glFlushMappedBufferRange(target:Int, offset:hl.Ref<Int>, length:hl.Ref<Int>):Void {}
	public static function glFramebufferParameteri(target:Int, pname:Int, param:Int):Void {}
	public static function glFramebufferRenderbuffer(target:Int, attachment:Int, renderbuffertarget:Int, renderbuffer:Int):Void {}
	public static function glFramebufferTexture(target:Int, attachment:Int, texture:Int, level:Int):Void {}
	public static function glFramebufferTexture1D(target:Int, attachment:Int, textarget:Int, texture:Int, level:Int):Void {}
	public static function glFramebufferTexture2D(target:Int, attachment:Int, textarget:Int, texture:Int, level:Int):Void {}
	public static function glFramebufferTexture3D(target:Int, attachment:Int, textarget:Int, texture:Int, level:Int, zoffset:Int):Void {}
	public static function glFramebufferTextureLayer(target:Int, attachment:Int, texture:Int, level:Int, layer:Int):Void {}
	public static function glFrontFace(mode:Int):Void {}
	public static function glGenBuffers():Int { return 0; }
	public static function glGenFramebuffers():Int { return 0; }
	public static function glGenProgramPipelines():Int { return 0; }
	public static function glGenQueries():Int { return 0; }
	public static function glGenRenderbuffers():Int { return 0; }
	public static function glGenSamplers():Int { return 0; }
	public static function glGenTextures():Int { return 0; }
	public static function glGenTransformFeedbacks():Int { return 0; }
	public static function glGenVertexArrays():Int { return 0; }
	public static function glGenerateMipmap(target:Int):Void {}
	public static function glGetActiveAtomicCounterBufferiv(program:Int, bufferIndex:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetActiveAttrib(program:Int, index:Int, bufSize:Int, length:hl.Ref<Int>, size:hl.Ref<Int>, type:hl.Ref<Int>, name:String):Void {}
	public static function glGetActiveSubroutineName(program:Int, shadertype:Int, index:Int, bufSize:Int, length:hl.Ref<Int>, name:String):Void {}
	public static function glGetActiveSubroutineUniformName(program:Int, shadertype:Int, index:Int, bufSize:Int, length:hl.Ref<Int>, name:String):Void {}
	public static function glGetActiveSubroutineUniformiv(program:Int, shadertype:Int, index:Int, pname:Int, values:hl.Ref<Int>):Void {}
	public static function glGetActiveUniform(program:Int, index:Int, bufSize:Int, length:hl.Ref<Int>, size:hl.Ref<Int>, type:hl.Ref<Int>, name:String):Void {}
	public static function glGetActiveUniformBlockName(program:Int, uniformBlockIndex:Int, bufSize:Int, length:hl.Ref<Int>, uniformBlockName:String):Void {}
	public static function glGetActiveUniformBlockiv(program:Int, uniformBlockIndex:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetActiveUniformName(program:Int, uniformIndex:Int, bufSize:Int, length:hl.Ref<Int>, uniformName:String):Void {}
	public static function glGetActiveUniformsiv(program:Int, uniformCount:Int, uniformIndices:hl.Ref<Int>, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetAttachedShaders(program:Int, maxCount:Int, count:hl.Ref<Int>, shaders:hl.Ref<Int>):Void {}
	public static function glGetAttribLocation(program:Int, name:String):Int { return 0; }
	public static function glGetBooleani_v(target:Int, index:Int, data:hl.Ref<Int>):Void {}
	public static function glGetBooleanv(pname:Int, data:hl.Ref<Int>):Void {}
	public static function glGetBufferParameteri64v(target:Int, pname:Int, params:hl.Ref<hl.I64>):Void {}
	public static function glGetBufferParameteriv(target:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetBufferPointerv(target:Int, pname:Int, params:hl.Ref<hl.Bytes>):Void {}
	public static function glGetBufferSubData(target:Int, offset:hl.Ref<Int>, size:hl.Ref<Int>, data:hl.Bytes):Void {}
	public static function glGetCompressedTexImage(target:Int, level:Int, img:hl.Bytes):Void {}
	public static function glGetDebugMessageLog(count:Int, bufSize:Int, sources:hl.Ref<Int>, types:hl.Ref<Int>, ids:hl.Ref<Int>, severities:hl.Ref<Int>, lengths:hl.Ref<Int>, messageLog:String):Int { return 0; }
	public static function glGetDoublei_v(target:Int, index:Int, data:hl.Ref<hl.F64>):Void {}
	public static function glGetDoublev(pname:Int, data:hl.Ref<hl.F64>):Void {}
	public static function glGetError():Int { return 0; }
	public static function glGetFloati_v(target:Int, index:Int, data:hl.Ref<hl.F32>):Void {}
	public static function glGetFloatv(pname:Int, data:hl.Ref<hl.F32>):Void {}
	public static function glGetFragDataIndex(program:Int, name:String):Int { return 0; }
	public static function glGetFragDataLocation(program:Int, name:String):Int { return 0; }
	public static function glGetFramebufferAttachmentParameteriv(target:Int, attachment:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetFramebufferParameteriv(target:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetInteger64i_v(target:Int, index:Int, data:hl.Ref<hl.I64>):Void {}
	public static function glGetInteger64v(pname:Int, data:hl.Ref<hl.I64>):Void {}
	public static function glGetIntegeri_v(target:Int, index:Int, data:hl.Ref<Int>):Void {}
	public static function glGetIntegerv(pname:Int, data:hl.Ref<Int>):Void {}
	public static function glGetInternalformati64v(target:Int, internalformat:Int, pname:Int, count:Int, params:hl.Ref<hl.I64>):Void {}
	public static function glGetInternalformativ(target:Int, internalformat:Int, pname:Int, count:Int, params:hl.Ref<Int>):Void {}
	public static function glGetMultisamplefv(pname:Int, index:Int, val:hl.Ref<hl.F32>):Void {}
	public static function glGetObjectLabel(identifier:Int, name:Int, bufSize:Int, length:hl.Ref<Int>, label:String):Void {}
	public static function glGetObjectPtrLabel(ptr:hl.Bytes, bufSize:Int, length:hl.Ref<Int>, label:String):Void {}
	public static function glGetPointerv(pname:Int, params:hl.Ref<hl.Bytes>):Void {}
	public static function glGetProgramBinary(program:Int, bufSize:Int, length:hl.Ref<Int>, binaryFormat:hl.Ref<Int>, binary:hl.Bytes):Void {}
	public static function glGetProgramInfoLog(program:Int, bufSize:Int, length:hl.Ref<Int>, infoLog:String):Void {}
	public static function glGetProgramInterfaceiv(program:Int, programInterface:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetProgramPipelineInfoLog(pipeline:Int, bufSize:Int, length:hl.Ref<Int>, infoLog:String):Void {}
	public static function glGetProgramPipelineiv(pipeline:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetProgramResourceIndex(program:Int, programInterface:Int, name:String):Int { return 0; }
	public static function glGetProgramResourceLocation(program:Int, programInterface:Int, name:String):Int { return 0; }
	public static function glGetProgramResourceLocationIndex(program:Int, programInterface:Int, name:String):Int { return 0; }
	public static function glGetProgramResourceName(program:Int, programInterface:Int, index:Int, bufSize:Int, length:hl.Ref<Int>, name:String):Void {}
	public static function glGetProgramResourceiv(program:Int, programInterface:Int, index:Int, propCount:Int, props:hl.Ref<Int>, count:Int, length:hl.Ref<Int>, params:hl.Ref<Int>):Void {}
	public static function glGetProgramStageiv(program:Int, shadertype:Int, pname:Int, values:hl.Ref<Int>):Void {}
	public static function glGetProgramiv(program:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetQueryIndexediv(target:Int, index:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetQueryObjecti64v(id:Int, pname:Int, params:hl.Ref<hl.I64>):Void {}
	public static function glGetQueryObjectiv(id:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetQueryObjectui64v(id:Int, pname:Int, params:hl.Ref<hl.I64>):Void {}
	public static function glGetQueryObjectuiv(id:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetQueryiv(target:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetRenderbufferParameteriv(target:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetSamplerParameterIiv(sampler:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetSamplerParameterIuiv(sampler:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetSamplerParameterfv(sampler:Int, pname:Int, params:hl.Ref<hl.F32>):Void {}
	public static function glGetSamplerParameteriv(sampler:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetShaderInfoLog(shader:Int, bufSize:Int, length:hl.Ref<Int>, infoLog:String):Void {}
	public static function glGetShaderPrecisionFormat(shadertype:Int, precisiontype:Int, range:hl.Ref<Int>, precision:hl.Ref<Int>):Void {}
	public static function glGetShaderSource(shader:Int, bufSize:Int, length:hl.Ref<Int>, source:String):Void {}
	public static function glGetShaderiv(shader:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetString(name:Int):String { return ''; }
	public static function glGetStringi(name:Int, index:Int):String { return ''; }
	public static function glGetSubroutineIndex(program:Int, shadertype:Int, name:String):Int { return 0; }
	public static function glGetSubroutineUniformLocation(program:Int, shadertype:Int, name:String):Int { return 0; }
	public static function glGetSynciv(sync:hl.Abstract<"GLSync">, pname:Int, count:Int, length:hl.Ref<Int>, values:hl.Ref<Int>):Void {}
	public static function glGetTexImage(target:Int, level:Int, format:Int, type:Int, pixels:hl.Bytes):Void {}
	public static function glGetTexLevelParameterfv(target:Int, level:Int, pname:Int, params:hl.Ref<hl.F32>):Void {}
	public static function glGetTexLevelParameteriv(target:Int, level:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetTexParameterIiv(target:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetTexParameterIuiv(target:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetTexParameterfv(target:Int, pname:Int, params:hl.Ref<hl.F32>):Void {}
	public static function glGetTexParameteriv(target:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetTransformFeedbackVarying(program:Int, index:Int, bufSize:Int, length:hl.Ref<Int>, size:hl.Ref<Int>, type:hl.Ref<Int>, name:String):Void {}
	public static function glGetUniformBlockIndex(program:Int, uniformBlockName:String):Int { return 0; }
	public static function glGetUniformIndices(program:Int, uniformCount:Int, uniformNames:hl.NativeArray<hl.Bytes>, uniformIndices:hl.Ref<Int>):Void {}
	public static function glGetUniformLocation(program:Int, name:String):Int { return 0; }
	public static function glGetUniformSubroutineuiv(shadertype:Int, location:Int, params:hl.Ref<Int>):Void {}
	public static function glGetUniformdv(program:Int, location:Int, params:hl.Ref<hl.F64>):Void {}
	public static function glGetUniformfv(program:Int, location:Int, params:hl.Ref<hl.F32>):Void {}
	public static function glGetUniformiv(program:Int, location:Int, params:hl.Ref<Int>):Void {}
	public static function glGetUniformuiv(program:Int, location:Int, params:hl.Ref<Int>):Void {}
	public static function glGetVertexAttribIiv(index:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetVertexAttribIuiv(index:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glGetVertexAttribLdv(index:Int, pname:Int, params:hl.Ref<hl.F64>):Void {}
	public static function glGetVertexAttribPointerv(index:Int, pname:Int, pointer:hl.Ref<hl.Bytes>):Void {}
	public static function glGetVertexAttribdv(index:Int, pname:Int, params:hl.Ref<hl.F64>):Void {}
	public static function glGetVertexAttribfv(index:Int, pname:Int, params:hl.Ref<hl.F32>):Void {}
	public static function glGetVertexAttribiv(index:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glHint(target:Int, mode:Int):Void {}
	public static function glInvalidateBufferData(buffer:Int):Void {}
	public static function glInvalidateBufferSubData(buffer:Int, offset:hl.Ref<Int>, length:hl.Ref<Int>):Void {}
	public static function glInvalidateFramebuffer(target:Int, numAttachments:Int, attachments:hl.Ref<Int>):Void {}
	public static function glInvalidateSubFramebuffer(target:Int, numAttachments:Int, attachments:hl.Ref<Int>, x:Int, y:Int, width:Int, height:Int):Void {}
	public static function glInvalidateTexImage(texture:Int, level:Int):Void {}
	public static function glInvalidateTexSubImage(texture:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int):Void {}
	public static function glIsBuffer(buffer:Int):Int { return 0; }
	public static function glIsEnabled(cap:Int):Int { return 0; }
	public static function glIsEnabledi(target:Int, index:Int):Int { return 0; }
	public static function glIsFramebuffer(framebuffer:Int):Int { return 0; }
	public static function glIsProgram(program:Int):Int { return 0; }
	public static function glIsProgramPipeline(pipeline:Int):Int { return 0; }
	public static function glIsQuery(id:Int):Int { return 0; }
	public static function glIsRenderbuffer(renderbuffer:Int):Int { return 0; }
	public static function glIsSampler(sampler:Int):Int { return 0; }
	public static function glIsShader(shader:Int):Int { return 0; }
	public static function glIsSync(sync:hl.Abstract<"GLSync">):Int { return 0; }
	public static function glIsTexture(texture:Int):Int { return 0; }
	public static function glIsTransformFeedback(id:Int):Int { return 0; }
	public static function glIsVertexArray(array:Int):Int { return 0; }
	public static function glLineWidth(width:hl.F32):Void {}
	public static function glLinkProgram(program:Int):Void {}
	public static function glLogicOp(opcode:Int):Void {}
	public static function glMapBuffer(target:Int, access:Int):hl.Bytes { return null; }
	public static function glMapBufferRange(target:Int, offset:hl.Ref<Int>, length:hl.Ref<Int>, access:Int):hl.Bytes { return null; }
	public static function glMemoryBarrier(barriers:Int):Void {}
	public static function glMinSampleShading(value:hl.F32):Void {}
	public static function glMultiDrawArrays(mode:Int, first:hl.Ref<Int>, count:hl.Ref<Int>, drawcount:Int):Void {}
	public static function glMultiDrawArraysIndirect(mode:Int, indirect:hl.Bytes, drawcount:Int, stride:Int):Void {}
	public static function glMultiDrawElements(mode:Int, count:hl.Ref<Int>, type:Int, indices:hl.Ref<hl.Bytes>, drawcount:Int):Void {}
	public static function glMultiDrawElementsBaseVertex(mode:Int, count:hl.Ref<Int>, type:Int, indices:hl.Ref<hl.Bytes>, drawcount:Int, basevertex:hl.Ref<Int>):Void {}
	public static function glMultiDrawElementsIndirect(mode:Int, type:Int, indirect:hl.Bytes, drawcount:Int, stride:Int):Void {}
	public static function glMultiTexCoordP1ui(texture:Int, type:Int, coords:Int):Void {}
	public static function glMultiTexCoordP1uiv(texture:Int, type:Int, coords:hl.Ref<Int>):Void {}
	public static function glMultiTexCoordP2ui(texture:Int, type:Int, coords:Int):Void {}
	public static function glMultiTexCoordP2uiv(texture:Int, type:Int, coords:hl.Ref<Int>):Void {}
	public static function glMultiTexCoordP3ui(texture:Int, type:Int, coords:Int):Void {}
	public static function glMultiTexCoordP3uiv(texture:Int, type:Int, coords:hl.Ref<Int>):Void {}
	public static function glMultiTexCoordP4ui(texture:Int, type:Int, coords:Int):Void {}
	public static function glMultiTexCoordP4uiv(texture:Int, type:Int, coords:hl.Ref<Int>):Void {}
	public static function glNormalP3ui(type:Int, coords:Int):Void {}
	public static function glNormalP3uiv(type:Int, coords:hl.Ref<Int>):Void {}
	public static function glObjectLabel(identifier:Int, name:Int, length:Int, label:String):Void {}
	public static function glObjectPtrLabel(ptr:hl.Bytes, length:Int, label:String):Void {}
	public static function glPatchParameterfv(pname:Int, values:hl.Ref<hl.F32>):Void {}
	public static function glPatchParameteri(pname:Int, value:Int):Void {}
	public static function glPauseTransformFeedback():Void {}
	public static function glPixelStoref(pname:Int, param:hl.F32):Void {}
	public static function glPixelStorei(pname:Int, param:Int):Void {}
	public static function glPointParameterf(pname:Int, param:hl.F32):Void {}
	public static function glPointParameterfv(pname:Int, params:hl.Ref<hl.F32>):Void {}
	public static function glPointParameteri(pname:Int, param:Int):Void {}
	public static function glPointParameteriv(pname:Int, params:hl.Ref<Int>):Void {}
	public static function glPointSize(size:hl.F32):Void {}
	public static function glPolygonMode(face:Int, mode:Int):Void {}
	public static function glPolygonOffset(factor:hl.F32, units:hl.F32):Void {}
	public static function glPopDebugGroup():Void {}
	public static function glPrimitiveRestartIndex(index:Int):Void {}
	public static function glProgramBinary(program:Int, binaryFormat:Int, binary:hl.Bytes, length:Int):Void {}
	public static function glProgramParameteri(program:Int, pname:Int, value:Int):Void {}
	public static function glProgramUniform1d(program:Int, location:Int, v0:hl.F64):Void {}
	public static function glProgramUniform1dv(program:Int, location:Int, count:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniform1f(program:Int, location:Int, v0:hl.F32):Void {}
	public static function glProgramUniform1fv(program:Int, location:Int, count:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniform1i(program:Int, location:Int, v0:Int):Void {}
	public static function glProgramUniform1iv(program:Int, location:Int, count:Int, value:hl.Ref<Int>):Void {}
	public static function glProgramUniform1ui(program:Int, location:Int, v0:Int):Void {}
	public static function glProgramUniform1uiv(program:Int, location:Int, count:Int, value:hl.Ref<Int>):Void {}
	public static function glProgramUniform2d(program:Int, location:Int, v0:hl.F64, v1:hl.F64):Void {}
	public static function glProgramUniform2dv(program:Int, location:Int, count:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniform2f(program:Int, location:Int, v0:hl.F32, v1:hl.F32):Void {}
	public static function glProgramUniform2fv(program:Int, location:Int, count:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniform2i(program:Int, location:Int, v0:Int, v1:Int):Void {}
	public static function glProgramUniform2iv(program:Int, location:Int, count:Int, value:hl.Ref<Int>):Void {}
	public static function glProgramUniform2ui(program:Int, location:Int, v0:Int, v1:Int):Void {}
	public static function glProgramUniform2uiv(program:Int, location:Int, count:Int, value:hl.Ref<Int>):Void {}
	public static function glProgramUniform3d(program:Int, location:Int, v0:hl.F64, v1:hl.F64, v2:hl.F64):Void {}
	public static function glProgramUniform3dv(program:Int, location:Int, count:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniform3f(program:Int, location:Int, v0:hl.F32, v1:hl.F32, v2:hl.F32):Void {}
	public static function glProgramUniform3fv(program:Int, location:Int, count:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniform3i(program:Int, location:Int, v0:Int, v1:Int, v2:Int):Void {}
	public static function glProgramUniform3iv(program:Int, location:Int, count:Int, value:hl.Ref<Int>):Void {}
	public static function glProgramUniform3ui(program:Int, location:Int, v0:Int, v1:Int, v2:Int):Void {}
	public static function glProgramUniform3uiv(program:Int, location:Int, count:Int, value:hl.Ref<Int>):Void {}
	public static function glProgramUniform4d(program:Int, location:Int, v0:hl.F64, v1:hl.F64, v2:hl.F64, v3:hl.F64):Void {}
	public static function glProgramUniform4dv(program:Int, location:Int, count:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniform4f(program:Int, location:Int, v0:hl.F32, v1:hl.F32, v2:hl.F32, v3:hl.F32):Void {}
	public static function glProgramUniform4fv(program:Int, location:Int, count:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniform4i(program:Int, location:Int, v0:Int, v1:Int, v2:Int, v3:Int):Void {}
	public static function glProgramUniform4iv(program:Int, location:Int, count:Int, value:hl.Ref<Int>):Void {}
	public static function glProgramUniform4ui(program:Int, location:Int, v0:Int, v1:Int, v2:Int, v3:Int):Void {}
	public static function glProgramUniform4uiv(program:Int, location:Int, count:Int, value:hl.Ref<Int>):Void {}
	public static function glProgramUniformMatrix2dv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniformMatrix2fv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniformMatrix2x3dv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniformMatrix2x3fv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniformMatrix2x4dv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniformMatrix2x4fv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniformMatrix3dv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniformMatrix3fv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniformMatrix3x2dv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniformMatrix3x2fv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniformMatrix3x4dv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniformMatrix3x4fv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniformMatrix4dv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniformMatrix4fv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniformMatrix4x2dv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniformMatrix4x2fv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProgramUniformMatrix4x3dv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F64>):Void {}
	public static function glProgramUniformMatrix4x3fv(program:Int, location:Int, count:Int, transpose:Int, value:hl.Ref<hl.F32>):Void {}
	public static function glProvokingVertex(mode:Int):Void {}
	public static function glPushDebugGroup(source:Int, id:Int, length:Int, message:String):Void {}
	public static function glQueryCounter(id:Int, target:Int):Void {}
	public static function glReadBuffer(src:Int):Void {}
	public static function glReadPixels(x:Int, y:Int, width:Int, height:Int, format:Int, type:Int, pixels:hl.Bytes):Void {}
	public static function glReleaseShaderCompiler():Void {}
	public static function glRenderbufferStorage(target:Int, internalformat:Int, width:Int, height:Int):Void {}
	public static function glRenderbufferStorageMultisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int):Void {}
	public static function glResumeTransformFeedback():Void {}
	public static function glSampleCoverage(value:hl.F32, invert:Int):Void {}
	public static function glSampleMaski(maskNumber:Int, mask:Int):Void {}
	public static function glSamplerParameterIiv(sampler:Int, pname:Int, param:hl.Ref<Int>):Void {}
	public static function glSamplerParameterIuiv(sampler:Int, pname:Int, param:hl.Ref<Int>):Void {}
	public static function glSamplerParameterf(sampler:Int, pname:Int, param:hl.F32):Void {}
	public static function glSamplerParameterfv(sampler:Int, pname:Int, param:hl.Ref<hl.F32>):Void {}
	public static function glSamplerParameteri(sampler:Int, pname:Int, param:Int):Void {}
	public static function glSamplerParameteriv(sampler:Int, pname:Int, param:hl.Ref<Int>):Void {}
	public static function glScissor(x:Int, y:Int, width:Int, height:Int):Void {}
	public static function glScissorArrayv(first:Int, count:Int, v:hl.Ref<Int>):Void {}
	public static function glScissorIndexed(index:Int, left:Int, bottom:Int, width:Int, height:Int):Void {}
	public static function glScissorIndexedv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glSecondaryColorP3ui(type:Int, color:Int):Void {}
	public static function glSecondaryColorP3uiv(type:Int, color:hl.Ref<Int>):Void {}
	public static function glShaderBinary(count:Int, shaders:hl.Ref<Int>, binaryFormat:Int, binary:hl.Bytes, length:Int):Void {}
	public static function glShaderSource(shader:Int, string:String):Void {}
	public static function glShaderStorageBlockBinding(program:Int, storageBlockIndex:Int, storageBlockBinding:Int):Void {}
	public static function glStencilFunc(func:Int, ref:Int, mask:Int):Void {}
	public static function glStencilFuncSeparate(face:Int, func:Int, ref:Int, mask:Int):Void {}
	public static function glStencilMask(mask:Int):Void {}
	public static function glStencilMaskSeparate(face:Int, mask:Int):Void {}
	public static function glStencilOp(fail:Int, zfail:Int, zpass:Int):Void {}
	public static function glStencilOpSeparate(face:Int, sfail:Int, dpfail:Int, dppass:Int):Void {}
	public static function glTexBuffer(target:Int, internalformat:Int, buffer:Int):Void {}
	public static function glTexBufferRange(target:Int, internalformat:Int, buffer:Int, offset:hl.Ref<Int>, size:hl.Ref<Int>):Void {}
	public static function glTexCoordP1ui(type:Int, coords:Int):Void {}
	public static function glTexCoordP1uiv(type:Int, coords:hl.Ref<Int>):Void {}
	public static function glTexCoordP2ui(type:Int, coords:Int):Void {}
	public static function glTexCoordP2uiv(type:Int, coords:hl.Ref<Int>):Void {}
	public static function glTexCoordP3ui(type:Int, coords:Int):Void {}
	public static function glTexCoordP3uiv(type:Int, coords:hl.Ref<Int>):Void {}
	public static function glTexCoordP4ui(type:Int, coords:Int):Void {}
	public static function glTexCoordP4uiv(type:Int, coords:hl.Ref<Int>):Void {}
	public static function glTexImage1D(target:Int, level:Int, internalformat:Int, width:Int, border:Int, format:Int, type:Int, pixels:hl.Bytes):Void {}
	public static function glTexImage2D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, border:Int, format:Int, type:Int, pixels:hl.Bytes):Void {}
	public static function glTexImage2_d_multisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int, fixedsamplelocations:Int):Void {}
	public static function glTexImage3D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, depth:Int, border:Int, format:Int, type:Int, pixels:hl.Bytes):Void {}
	public static function glTexImage3_d_multisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int, depth:Int, fixedsamplelocations:Int):Void {}
	public static function glTexParameterIiv(target:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glTexParameterIuiv(target:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glTexParameterf(target:Int, pname:Int, param:hl.F32):Void {}
	public static function glTexParameterfv(target:Int, pname:Int, params:hl.Ref<hl.F32>):Void {}
	public static function glTexParameteri(target:Int, pname:Int, param:Int):Void {}
	public static function glTexParameteriv(target:Int, pname:Int, params:hl.Ref<Int>):Void {}
	public static function glTexStorage1D(target:Int, levels:Int, internalformat:Int, width:Int):Void {}
	public static function glTexStorage2D(target:Int, levels:Int, internalformat:Int, width:Int, height:Int):Void {}
	public static function glTexStorage2_d_multisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int, fixedsamplelocations:Int):Void {}
	public static function glTexStorage3D(target:Int, levels:Int, internalformat:Int, width:Int, height:Int, depth:Int):Void {}
	public static function glTexStorage3_d_multisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int, depth:Int, fixedsamplelocations:Int):Void {}
	public static function glTexSubImage1D(target:Int, level:Int, xoffset:Int, width:Int, format:Int, type:Int, pixels:hl.Bytes):Void {}
	public static function glTexSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:Int, type:Int, pixels:hl.Bytes):Void {}
	public static function glTexSubImage3D(target:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, type:Int, pixels:hl.Bytes):Void {}
	public static function glTextureView(texture:Int, target:Int, origtexture:Int, internalformat:Int, minlevel:Int, numlevels:Int, minlayer:Int, numlayers:Int):Void {}
	public static function glTransformFeedbackVaryings(program:Int, count:Int, varyings:hl.NativeArray<hl.Bytes>, bufferMode:Int):Void {}
	public static function glUniform1d(location:Int, x:hl.F64):Void {}
	public static function glUniform1f(location:Int, v0:hl.F32):Void {}
	public static function glUniform1i(location:Int, v0:Int):Void {}
	public static function glUniform1ui(location:Int, v0:Int):Void {}
	public static function glUniform2d(location:Int, x:hl.F64, y:hl.F64):Void {}
	public static function glUniform2f(location:Int, v0:hl.F32, v1:hl.F32):Void {}
	public static function glUniform2i(location:Int, v0:Int, v1:Int):Void {}
	public static function glUniform2ui(location:Int, v0:Int, v1:Int):Void {}
	public static function glUniform3d(location:Int, x:hl.F64, y:hl.F64, z:hl.F64):Void {}
	public static function glUniform3f(location:Int, v0:hl.F32, v1:hl.F32, v2:hl.F32):Void {}
	public static function glUniform3i(location:Int, v0:Int, v1:Int, v2:Int):Void {}
	public static function glUniform3ui(location:Int, v0:Int, v1:Int, v2:Int):Void {}
	public static function glUniform4d(location:Int, x:hl.F64, y:hl.F64, z:hl.F64, w:hl.F64):Void {}
	public static function glUniform4f(location:Int, v0:hl.F32, v1:hl.F32, v2:hl.F32, v3:hl.F32):Void {}
	public static function glUniform4i(location:Int, v0:Int, v1:Int, v2:Int, v3:Int):Void {}
	public static function glUniform4ui(location:Int, v0:Int, v1:Int, v2:Int, v3:Int):Void {}
	public static function glUniformMatrix2dv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix2fv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix2x3dv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix2x3fv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix2x4dv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix2x4fv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix3dv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix3fv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix3x2dv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix3x2fv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix3x4dv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix3x4fv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix4dv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix4fv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix4x2dv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix4x2fv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix4x3dv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUniformMatrix4x3fv(location:Int, count:Int, transpose:Int, value:hl.Bytes):Void {}
	public static function glUnmapBuffer(target:Int):Int { return 0; }
	public static function glUseProgram(program:Int):Void {}
	public static function glUseProgramStages(pipeline:Int, stages:Int, program:Int):Void {}
	public static function glValidateProgram(program:Int):Void {}
	public static function glValidateProgramPipeline(pipeline:Int):Void {}
	public static function glVertexAttrib1d(index:Int, x:hl.F64):Void {}
	public static function glVertexAttrib1dv(index:Int, v:hl.Ref<hl.F64>):Void {}
	public static function glVertexAttrib1f(index:Int, x:hl.F32):Void {}
	public static function glVertexAttrib1fv(index:Int, v:hl.Ref<hl.F32>):Void {}
	public static function glVertexAttrib1s(index:Int, x:Int):Void {}
	public static function glVertexAttrib1sv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttrib2d(index:Int, x:hl.F64, y:hl.F64):Void {}
	public static function glVertexAttrib2dv(index:Int, v:hl.Ref<hl.F64>):Void {}
	public static function glVertexAttrib2f(index:Int, x:hl.F32, y:hl.F32):Void {}
	public static function glVertexAttrib2fv(index:Int, v:hl.Ref<hl.F32>):Void {}
	public static function glVertexAttrib2s(index:Int, x:Int, y:Int):Void {}
	public static function glVertexAttrib2sv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttrib3d(index:Int, x:hl.F64, y:hl.F64, z:hl.F64):Void {}
	public static function glVertexAttrib3dv(index:Int, v:hl.Ref<hl.F64>):Void {}
	public static function glVertexAttrib3f(index:Int, x:hl.F32, y:hl.F32, z:hl.F32):Void {}
	public static function glVertexAttrib3fv(index:Int, v:hl.Ref<hl.F32>):Void {}
	public static function glVertexAttrib3s(index:Int, x:Int, y:Int, z:Int):Void {}
	public static function glVertexAttrib3sv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttrib4Nbv(index:Int, v:String):Void {}
	public static function glVertexAttrib4Niv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttrib4Nsv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttrib4Nub(index:Int, x:Int, y:Int, z:Int, w:Int):Void {}
	public static function glVertexAttrib4Nubv(index:Int, v:String):Void {}
	public static function glVertexAttrib4Nuiv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttrib4Nusv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttrib4bv(index:Int, v:String):Void {}
	public static function glVertexAttrib4d(index:Int, x:hl.F64, y:hl.F64, z:hl.F64, w:hl.F64):Void {}
	public static function glVertexAttrib4dv(index:Int, v:hl.Ref<hl.F64>):Void {}
	public static function glVertexAttrib4f(index:Int, x:hl.F32, y:hl.F32, z:hl.F32, w:hl.F32):Void {}
	public static function glVertexAttrib4fv(index:Int, v:hl.Ref<hl.F32>):Void {}
	public static function glVertexAttrib4iv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttrib4s(index:Int, x:Int, y:Int, z:Int, w:Int):Void {}
	public static function glVertexAttrib4sv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttrib4ubv(index:Int, v:String):Void {}
	public static function glVertexAttrib4uiv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttrib4usv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttribBinding(attribindex:Int, bindingindex:Int):Void {}
	public static function glVertexAttribDivisor(index:Int, divisor:Int):Void {}
	public static function glVertexAttribFormat(attribindex:Int, size:Int, type:Int, normalized:Int, relativeoffset:Int):Void {}
	public static function glVertexAttribI1i(index:Int, x:Int):Void {}
	public static function glVertexAttribI1iv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttribI1ui(index:Int, x:Int):Void {}
	public static function glVertexAttribI1uiv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttribI2i(index:Int, x:Int, y:Int):Void {}
	public static function glVertexAttribI2iv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttribI2ui(index:Int, x:Int, y:Int):Void {}
	public static function glVertexAttribI2uiv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttribI3i(index:Int, x:Int, y:Int, z:Int):Void {}
	public static function glVertexAttribI3iv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttribI3ui(index:Int, x:Int, y:Int, z:Int):Void {}
	public static function glVertexAttribI3uiv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttribI4bv(index:Int, v:String):Void {}
	public static function glVertexAttribI4i(index:Int, x:Int, y:Int, z:Int, w:Int):Void {}
	public static function glVertexAttribI4iv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttribI4sv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttribI4ubv(index:Int, v:String):Void {}
	public static function glVertexAttribI4ui(index:Int, x:Int, y:Int, z:Int, w:Int):Void {}
	public static function glVertexAttribI4uiv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttribI4usv(index:Int, v:hl.Ref<Int>):Void {}
	public static function glVertexAttrib_i_format(attribindex:Int, size:Int, type:Int, relativeoffset:Int):Void {}
	public static function glVertexAttrib_i_pointer(index:Int, size:Int, type:Int, stride:Int, pointer:hl.Bytes):Void {}
	public static function glVertexAttribL1d(index:Int, x:hl.F64):Void {}
	public static function glVertexAttribL1dv(index:Int, v:hl.Ref<hl.F64>):Void {}
	public static function glVertexAttribL2d(index:Int, x:hl.F64, y:hl.F64):Void {}
	public static function glVertexAttribL2dv(index:Int, v:hl.Ref<hl.F64>):Void {}
	public static function glVertexAttribL3d(index:Int, x:hl.F64, y:hl.F64, z:hl.F64):Void {}
	public static function glVertexAttribL3dv(index:Int, v:hl.Ref<hl.F64>):Void {}
	public static function glVertexAttribL4d(index:Int, x:hl.F64, y:hl.F64, z:hl.F64, w:hl.F64):Void {}
	public static function glVertexAttribL4dv(index:Int, v:hl.Ref<hl.F64>):Void {}
	public static function glVertexAttrib_l_format(attribindex:Int, size:Int, type:Int, relativeoffset:Int):Void {}
	public static function glVertexAttrib_l_pointer(index:Int, size:Int, type:Int, stride:Int, pointer:hl.Bytes):Void {}
	public static function glVertexAttribP1ui(index:Int, type:Int, normalized:Int, value:Int):Void {}
	public static function glVertexAttribP1uiv(index:Int, type:Int, normalized:Int, value:hl.Ref<Int>):Void {}
	public static function glVertexAttribP2ui(index:Int, type:Int, normalized:Int, value:Int):Void {}
	public static function glVertexAttribP2uiv(index:Int, type:Int, normalized:Int, value:hl.Ref<Int>):Void {}
	public static function glVertexAttribP3ui(index:Int, type:Int, normalized:Int, value:Int):Void {}
	public static function glVertexAttribP3uiv(index:Int, type:Int, normalized:Int, value:hl.Ref<Int>):Void {}
	public static function glVertexAttribP4ui(index:Int, type:Int, normalized:Int, value:Int):Void {}
	public static function glVertexAttribP4uiv(index:Int, type:Int, normalized:Int, value:hl.Ref<Int>):Void {}
	public static function glVertexAttribPointer(index:Int, size:Int, type:Int, normalized:Int, stride:Int, offset:Int):Void {}
	public static function glVertexBindingDivisor(bindingindex:Int, divisor:Int):Void {}
	public static function glVertexP2ui(type:Int, value:Int):Void {}
	public static function glVertexP2uiv(type:Int, value:hl.Ref<Int>):Void {}
	public static function glVertexP3ui(type:Int, value:Int):Void {}
	public static function glVertexP3uiv(type:Int, value:hl.Ref<Int>):Void {}
	public static function glVertexP4ui(type:Int, value:Int):Void {}
	public static function glVertexP4uiv(type:Int, value:hl.Ref<Int>):Void {}
	public static function glViewport(x:Int, y:Int, width:Int, height:Int):Void {}
	public static function glViewportArrayv(first:Int, count:Int, v:hl.Ref<hl.F32>):Void {}
	public static function glViewportIndexedf(index:Int, x:hl.F32, y:hl.F32, w:hl.F32, h:hl.F32):Void {}
	public static function glViewportIndexedfv(index:Int, v:hl.Ref<hl.F32>):Void {}
	public static function glWaitSync(sync:hl.Abstract<"GLSync">, flags:Int, timeout:hl.I64):Void {}

	public static function gladLoadGl():Int { return 0; }
}