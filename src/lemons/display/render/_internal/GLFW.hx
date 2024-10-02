package lemons.display.render._internal;

typedef NativeGLFWMonitor = hl.I64;
typedef NativeGLFWWindow = hl.I64;
typedef NativeGLFWCursor = hl.I64;

@:structInit
class JoystickState {
	var buttons:hl.NativeArray<Int> = new hl.NativeArray<Int>(15);
	var axes:hl.NativeArray<hl.F32> = new hl.NativeArray<hl.F32>(6);
}

@SuppressWarnings("checkstyle:CodeSimilarity")
@:hlNative('lemons', 'glfw_')
class GLFW {
	public static final GLFW_VERSION_MAJOR:Int = 3;
	public static final GLFW_VERSION_MINOR:Int = 4;
	public static final GLFW_VERSION_REVISION:Int = 0;
	public static final GLFW_TRUE:Int = 1;
	public static final GLFW_FALSE:Int = 0;
	public static final GLFW_RELEASE:Int = 0;
	public static final GLFW_PRESS:Int = 1;
	public static final GLFW_REPEAT:Int = 2;
	public static final GLFW_HAT_CENTERED:Int = 0;
	public static final GLFW_HAT_UP:Int = 1;
	public static final GLFW_HAT_RIGHT:Int = 2;
	public static final GLFW_HAT_DOWN:Int = 4;
	public static final GLFW_HAT_LEFT:Int = 8;
	public static final GLFW_HAT_RIGHT_UP:Int = (GLFW_HAT_RIGHT | GLFW_HAT_UP);
	public static final GLFW_HAT_RIGHT_DOWN:Int = (GLFW_HAT_RIGHT | GLFW_HAT_DOWN);
	public static final GLFW_HAT_LEFT_UP:Int = (GLFW_HAT_LEFT | GLFW_HAT_UP);
	public static final GLFW_HAT_LEFT_DOWN:Int = (GLFW_HAT_LEFT | GLFW_HAT_DOWN);
	public static final GLFW_KEY_UNKNOWN:Int = -1;
	public static final GLFW_KEY_SPACE:Int = 32;
	public static final GLFW_KEY_APOSTROPHE:Int = 39;
	public static final GLFW_KEY_COMMA:Int = 44;
	public static final GLFW_KEY_MINUS:Int = 45;
	public static final GLFW_KEY_PERIOD:Int = 46;
	public static final GLFW_KEY_SLASH:Int = 47;
	public static final GLFW_KEY_0:Int = 48;
	public static final GLFW_KEY_1:Int = 49;
	public static final GLFW_KEY_2:Int = 50;
	public static final GLFW_KEY_3:Int = 51;
	public static final GLFW_KEY_4:Int = 52;
	public static final GLFW_KEY_5:Int = 53;
	public static final GLFW_KEY_6:Int = 54;
	public static final GLFW_KEY_7:Int = 55;
	public static final GLFW_KEY_8:Int = 56;
	public static final GLFW_KEY_9:Int = 57;
	public static final GLFW_KEY_SEMICOLON:Int = 59;
	public static final GLFW_KEY_EQUAL:Int = 61;
	public static final GLFW_KEY_A:Int = 65;
	public static final GLFW_KEY_B:Int = 66;
	public static final GLFW_KEY_C:Int = 67;
	public static final GLFW_KEY_D:Int = 68;
	public static final GLFW_KEY_E:Int = 69;
	public static final GLFW_KEY_F:Int = 70;
	public static final GLFW_KEY_G:Int = 71;
	public static final GLFW_KEY_H:Int = 72;
	public static final GLFW_KEY_I:Int = 73;
	public static final GLFW_KEY_J:Int = 74;
	public static final GLFW_KEY_K:Int = 75;
	public static final GLFW_KEY_L:Int = 76;
	public static final GLFW_KEY_M:Int = 77;
	public static final GLFW_KEY_N:Int = 78;
	public static final GLFW_KEY_O:Int = 79;
	public static final GLFW_KEY_P:Int = 80;
	public static final GLFW_KEY_Q:Int = 81;
	public static final GLFW_KEY_R:Int = 82;
	public static final GLFW_KEY_S:Int = 83;
	public static final GLFW_KEY_T:Int = 84;
	public static final GLFW_KEY_U:Int = 85;
	public static final GLFW_KEY_V:Int = 86;
	public static final GLFW_KEY_W:Int = 87;
	public static final GLFW_KEY_X:Int = 88;
	public static final GLFW_KEY_Y:Int = 89;
	public static final GLFW_KEY_Z:Int = 90;
	public static final GLFW_KEY_LEFT_BRACKET:Int = 91;
	public static final GLFW_KEY_BACKSLASH:Int = 92;
	public static final GLFW_KEY_RIGHT_BRACKET:Int = 93;
	public static final GLFW_KEY_GRAVE_ACCENT:Int = 96;
	public static final GLFW_KEY_WORLD_1:Int = 161;
	public static final GLFW_KEY_WORLD_2:Int = 162;
	public static final GLFW_KEY_ESCAPE:Int = 256;
	public static final GLFW_KEY_ENTER:Int = 257;
	public static final GLFW_KEY_TAB:Int = 258;
	public static final GLFW_KEY_BACKSPACE:Int = 259;
	public static final GLFW_KEY_INSERT:Int = 260;
	public static final GLFW_KEY_DELETE:Int = 261;
	public static final GLFW_KEY_RIGHT:Int = 262;
	public static final GLFW_KEY_LEFT:Int = 263;
	public static final GLFW_KEY_DOWN:Int = 264;
	public static final GLFW_KEY_UP:Int = 265;
	public static final GLFW_KEY_PAGE_UP:Int = 266;
	public static final GLFW_KEY_PAGE_DOWN:Int = 267;
	public static final GLFW_KEY_HOME:Int = 268;
	public static final GLFW_KEY_END:Int = 269;
	public static final GLFW_KEY_CAPS_LOCK:Int = 280;
	public static final GLFW_KEY_SCROLL_LOCK:Int = 281;
	public static final GLFW_KEY_NUM_LOCK:Int = 282;
	public static final GLFW_KEY_PRINT_SCREEN:Int = 283;
	public static final GLFW_KEY_PAUSE:Int = 284;
	public static final GLFW_KEY_F1:Int = 290;
	public static final GLFW_KEY_F2:Int = 291;
	public static final GLFW_KEY_F3:Int = 292;
	public static final GLFW_KEY_F4:Int = 293;
	public static final GLFW_KEY_F5:Int = 294;
	public static final GLFW_KEY_F6:Int = 295;
	public static final GLFW_KEY_F7:Int = 296;
	public static final GLFW_KEY_F8:Int = 297;
	public static final GLFW_KEY_F9:Int = 298;
	public static final GLFW_KEY_F10:Int = 299;
	public static final GLFW_KEY_F11:Int = 300;
	public static final GLFW_KEY_F12:Int = 301;
	public static final GLFW_KEY_F13:Int = 302;
	public static final GLFW_KEY_F14:Int = 303;
	public static final GLFW_KEY_F15:Int = 304;
	public static final GLFW_KEY_F16:Int = 305;
	public static final GLFW_KEY_F17:Int = 306;
	public static final GLFW_KEY_F18:Int = 307;
	public static final GLFW_KEY_F19:Int = 308;
	public static final GLFW_KEY_F20:Int = 309;
	public static final GLFW_KEY_F21:Int = 310;
	public static final GLFW_KEY_F22:Int = 311;
	public static final GLFW_KEY_F23:Int = 312;
	public static final GLFW_KEY_F24:Int = 313;
	public static final GLFW_KEY_F25:Int = 314;
	public static final GLFW_KEY_KP_0:Int = 320;
	public static final GLFW_KEY_KP_1:Int = 321;
	public static final GLFW_KEY_KP_2:Int = 322;
	public static final GLFW_KEY_KP_3:Int = 323;
	public static final GLFW_KEY_KP_4:Int = 324;
	public static final GLFW_KEY_KP_5:Int = 325;
	public static final GLFW_KEY_KP_6:Int = 326;
	public static final GLFW_KEY_KP_7:Int = 327;
	public static final GLFW_KEY_KP_8:Int = 328;
	public static final GLFW_KEY_KP_9:Int = 329;
	public static final GLFW_KEY_KP_DECIMAL:Int = 330;
	public static final GLFW_KEY_KP_DIVIDE:Int = 331;
	public static final GLFW_KEY_KP_MULTIPLY:Int = 332;
	public static final GLFW_KEY_KP_SUBTRACT:Int = 333;
	public static final GLFW_KEY_KP_ADD:Int = 334;
	public static final GLFW_KEY_KP_ENTER:Int = 335;
	public static final GLFW_KEY_KP_EQUAL:Int = 336;
	public static final GLFW_KEY_LEFT_SHIFT:Int = 340;
	public static final GLFW_KEY_LEFT_CONTROL:Int = 341;
	public static final GLFW_KEY_LEFT_ALT:Int = 342;
	public static final GLFW_KEY_LEFT_SUPER:Int = 343;
	public static final GLFW_KEY_RIGHT_SHIFT:Int = 344;
	public static final GLFW_KEY_RIGHT_CONTROL:Int = 345;
	public static final GLFW_KEY_RIGHT_ALT:Int = 346;
	public static final GLFW_KEY_RIGHT_SUPER:Int = 347;
	public static final GLFW_KEY_MENU:Int = 348;
	public static final GLFW_KEY_LAST:Int = GLFW_KEY_MENU;
	public static final GLFW_MOD_SHIFT:Int = 0x0001;
	public static final GLFW_MOD_CONTROL:Int = 0x0002;
	public static final GLFW_MOD_ALT:Int = 0x0004;
	public static final GLFW_MOD_SUPER:Int = 0x0008;
	public static final GLFW_MOD_CAPS_LOCK:Int = 0x0010;
	public static final GLFW_MOD_NUM_LOCK:Int = 0x0020;
	public static final GLFW_MOUSE_BUTTON_1:Int = 0;
	public static final GLFW_MOUSE_BUTTON_2:Int = 1;
	public static final GLFW_MOUSE_BUTTON_3:Int = 2;
	public static final GLFW_MOUSE_BUTTON_4:Int = 3;
	public static final GLFW_MOUSE_BUTTON_5:Int = 4;
	public static final GLFW_MOUSE_BUTTON_6:Int = 5;
	public static final GLFW_MOUSE_BUTTON_7:Int = 6;
	public static final GLFW_MOUSE_BUTTON_8:Int = 7;
	public static final GLFW_MOUSE_BUTTON_LAST:Int = GLFW_MOUSE_BUTTON_8;
	public static final GLFW_MOUSE_BUTTON_LEFT:Int = GLFW_MOUSE_BUTTON_1;
	public static final GLFW_MOUSE_BUTTON_RIGHT:Int = GLFW_MOUSE_BUTTON_2;
	public static final GLFW_MOUSE_BUTTON_MIDDLE:Int = GLFW_MOUSE_BUTTON_3;
	public static final GLFW_JOYSTICK_1:Int = 0;
	public static final GLFW_JOYSTICK_2:Int = 1;
	public static final GLFW_JOYSTICK_3:Int = 2;
	public static final GLFW_JOYSTICK_4:Int = 3;
	public static final GLFW_JOYSTICK_5:Int = 4;
	public static final GLFW_JOYSTICK_6:Int = 5;
	public static final GLFW_JOYSTICK_7:Int = 6;
	public static final GLFW_JOYSTICK_8:Int = 7;
	public static final GLFW_JOYSTICK_9:Int = 8;
	public static final GLFW_JOYSTICK_10:Int = 9;
	public static final GLFW_JOYSTICK_11:Int = 10;
	public static final GLFW_JOYSTICK_12:Int = 11;
	public static final GLFW_JOYSTICK_13:Int = 12;
	public static final GLFW_JOYSTICK_14:Int = 13;
	public static final GLFW_JOYSTICK_15:Int = 14;
	public static final GLFW_JOYSTICK_16:Int = 15;
	public static final GLFW_JOYSTICK_LAST:Int = GLFW_JOYSTICK_16;
	public static final GLFW_GAMEPAD_BUTTON_A:Int = 0;
	public static final GLFW_GAMEPAD_BUTTON_B:Int = 1;
	public static final GLFW_GAMEPAD_BUTTON_X:Int = 2;
	public static final GLFW_GAMEPAD_BUTTON_Y:Int = 3;
	public static final GLFW_GAMEPAD_BUTTON_LEFT_BUMPER:Int = 4;
	public static final GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER:Int = 5;
	public static final GLFW_GAMEPAD_BUTTON_BACK:Int = 6;
	public static final GLFW_GAMEPAD_BUTTON_START:Int = 7;
	public static final GLFW_GAMEPAD_BUTTON_GUIDE:Int = 8;
	public static final GLFW_GAMEPAD_BUTTON_LEFT_THUMB:Int = 9;
	public static final GLFW_GAMEPAD_BUTTON_RIGHT_THUMB:Int = 10;
	public static final GLFW_GAMEPAD_BUTTON_DPAD_UP:Int = 11;
	public static final GLFW_GAMEPAD_BUTTON_DPAD_RIGHT:Int = 12;
	public static final GLFW_GAMEPAD_BUTTON_DPAD_DOWN:Int = 13;
	public static final GLFW_GAMEPAD_BUTTON_DPAD_LEFT:Int = 14;
	public static final GLFW_GAMEPAD_BUTTON_LAST:Int = GLFW_GAMEPAD_BUTTON_DPAD_LEFT;
	public static final GLFW_GAMEPAD_BUTTON_CROSS:Int = GLFW_GAMEPAD_BUTTON_A;
	public static final GLFW_GAMEPAD_BUTTON_CIRCLE:Int = GLFW_GAMEPAD_BUTTON_B;
	public static final GLFW_GAMEPAD_BUTTON_SQUARE:Int = GLFW_GAMEPAD_BUTTON_X;
	public static final GLFW_GAMEPAD_BUTTON_TRIANGLE:Int = GLFW_GAMEPAD_BUTTON_Y;
	public static final GLFW_GAMEPAD_AXIS_LEFT_X:Int = 0;
	public static final GLFW_GAMEPAD_AXIS_LEFT_Y:Int = 1;
	public static final GLFW_GAMEPAD_AXIS_RIGHT_X:Int = 2;
	public static final GLFW_GAMEPAD_AXIS_RIGHT_Y:Int = 3;
	public static final GLFW_GAMEPAD_AXIS_LEFT_TRIGGER:Int = 4;
	public static final GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER:Int = 5;
	public static final GLFW_GAMEPAD_AXIS_LAST:Int = GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER;
	public static final GLFW_NO_ERROR:Int = 0;
	public static final GLFW_NOT_INITIALIZED:Int = 0x00010001;
	public static final GLFW_NO_CURRENT_CONTEXT:Int = 0x00010002;
	public static final GLFW_INVALID_ENUM:Int = 0x00010003;
	public static final GLFW_INVALID_VALUE:Int = 0x00010004;
	public static final GLFW_OUT_OF_MEMORY:Int = 0x00010005;
	public static final GLFW_API_UNAVAILABLE:Int = 0x00010006;
	public static final GLFW_VERSION_UNAVAILABLE:Int = 0x00010007;
	public static final GLFW_PLATFORM_ERROR:Int = 0x00010008;
	public static final GLFW_FORMAT_UNAVAILABLE:Int = 0x00010009;
	public static final GLFW_NO_WINDOW_CONTEXT:Int = 0x0001000A;
	public static final GLFW_CURSOR_UNAVAILABLE:Int = 0x0001000B;
	public static final GLFW_FEATURE_UNAVAILABLE:Int = 0x0001000C;
	public static final GLFW_FEATURE_UNIMPLEMENTED:Int = 0x0001000D;
	public static final GLFW_PLATFORM_UNAVAILABLE:Int = 0x0001000E;
	public static final GLFW_FOCUSED:Int = 0x00020001;
	public static final GLFW_ICONIFIED:Int = 0x00020002;
	public static final GLFW_RESIZABLE:Int = 0x00020003;
	public static final GLFW_VISIBLE:Int = 0x00020004;
	public static final GLFW_DECORATED:Int = 0x00020005;
	public static final GLFW_AUTO_ICONIFY:Int = 0x00020006;
	public static final GLFW_FLOATING:Int = 0x00020007;
	public static final GLFW_MAXIMIZED:Int = 0x00020008;
	public static final GLFW_CENTER_CURSOR:Int = 0x00020009;
	public static final GLFW_TRANSPARENT_FRAMEBUFFER:Int = 0x0002000A;
	public static final GLFW_HOVERED:Int = 0x0002000B;
	public static final GLFW_FOCUS_ON_SHOW:Int = 0x0002000C;
	public static final GLFW_MOUSE_PASSTHROUGH:Int = 0x0002000D;
	public static final GLFW_POSITION_X:Int = 0x0002000E;
	public static final GLFW_POSITION_Y:Int = 0x0002000F;
	public static final GLFW_RED_BITS:Int = 0x00021001;
	public static final GLFW_GREEN_BITS:Int = 0x00021002;
	public static final GLFW_BLUE_BITS:Int = 0x00021003;
	public static final GLFW_ALPHA_BITS:Int = 0x00021004;
	public static final GLFW_DEPTH_BITS:Int = 0x00021005;
	public static final GLFW_STENCIL_BITS:Int = 0x00021006;
	public static final GLFW_ACCUM_RED_BITS:Int = 0x00021007;
	public static final GLFW_ACCUM_GREEN_BITS:Int = 0x00021008;
	public static final GLFW_ACCUM_BLUE_BITS:Int = 0x00021009;
	public static final GLFW_ACCUM_ALPHA_BITS:Int = 0x0002100A;
	public static final GLFW_AUX_BUFFERS:Int = 0x0002100B;
	public static final GLFW_STEREO:Int = 0x0002100C;
	public static final GLFW_SAMPLES:Int = 0x0002100D;
	public static final GLFW_SRGB_CAPABLE:Int = 0x0002100E;
	public static final GLFW_REFRESH_RATE:Int = 0x0002100F;
	public static final GLFW_DOUBLEBUFFER:Int = 0x00021010;
	public static final GLFW_CLIENT_API:Int = 0x00022001;
	public static final GLFW_CONTEXT_VERSION_MAJOR:Int = 0x00022002;
	public static final GLFW_CONTEXT_VERSION_MINOR:Int = 0x00022003;
	public static final GLFW_CONTEXT_REVISION:Int = 0x00022004;
	public static final GLFW_CONTEXT_ROBUSTNESS:Int = 0x00022005;
	public static final GLFW_OPENGL_FORWARD_COMPAT:Int = 0x00022006;
	public static final GLFW_CONTEXT_DEBUG:Int = 0x00022007;
	public static final GLFW_OPENGL_DEBUG_CONTEXT:Int = GLFW_CONTEXT_DEBUG;
	public static final GLFW_OPENGL_PROFILE:Int = 0x00022008;
	public static final GLFW_CONTEXT_RELEASE_BEHAVIOR:Int = 0x00022009;
	public static final GLFW_CONTEXT_NO_ERROR:Int = 0x0002200A;
	public static final GLFW_CONTEXT_CREATION_API:Int = 0x0002200B;
	public static final GLFW_SCALE_TO_MONITOR:Int = 0x0002200C;
	public static final GLFW_SCALE_FRAMEBUFFER:Int = 0x0002200D;
	public static final GLFW_COCOA_RETINA_FRAMEBUFFER:Int = 0x00023001;
	public static final GLFW_COCOA_FRAME_NAME:Int = 0x00023002;
	public static final GLFW_COCOA_GRAPHICS_SWITCHING:Int = 0x00023003;
	public static final GLFW_X11_CLASS_NAME:Int = 0x00024001;
	public static final GLFW_X11_INSTANCE_NAME:Int = 0x00024002;
	public static final GLFW_WIN32_KEYBOARD_MENU:Int = 0x00025001;
	public static final GLFW_WIN32_SHOWDEFAULT:Int = 0x00025002;
	public static final GLFW_WAYLAND_APP_ID:Int = 0x00026001;
	public static final GLFW_NO_API:Int = 0;
	public static final GLFW_OPENGL_API:Int = 0x00030001;
	public static final GLFW_OPENGL_ES_API:Int = 0x00030002;
	public static final GLFW_NO_ROBUSTNESS:Int = 0;
	public static final GLFW_NO_RESET_NOTIFICATION:Int = 0x00031001;
	public static final GLFW_LOSE_CONTEXT_ON_RESET:Int = 0x00031002;
	public static final GLFW_OPENGL_ANY_PROFILE:Int = 0;
	public static final GLFW_OPENGL_CORE_PROFILE:Int = 0x00032001;
	public static final GLFW_OPENGL_COMPAT_PROFILE:Int = 0x00032002;
	public static final GLFW_CURSOR:Int = 0x00033001;
	public static final GLFW_STICKY_KEYS:Int = 0x00033002;
	public static final GLFW_STICKY_MOUSE_BUTTONS:Int = 0x00033003;
	public static final GLFW_LOCK_KEY_MODS:Int = 0x00033004;
	public static final GLFW_RAW_MOUSE_MOTION:Int = 0x00033005;
	public static final GLFW_CURSOR_NORMAL:Int = 0x00034001;
	public static final GLFW_CURSOR_HIDDEN:Int = 0x00034002;
	public static final GLFW_CURSOR_DISABLED:Int = 0x00034003;
	public static final GLFW_CURSOR_CAPTURED:Int = 0x00034004;
	public static final GLFW_ANY_RELEASE_BEHAVIOR:Int = 0;
	public static final GLFW_RELEASE_BEHAVIOR_FLUSH:Int = 0x00035001;
	public static final GLFW_RELEASE_BEHAVIOR_NONE:Int = 0x00035002;
	public static final GLFW_NATIVE_CONTEXT_API:Int = 0x00036001;
	public static final GLFW_EGL_CONTEXT_API:Int = 0x00036002;
	public static final GLFW_OSMESA_CONTEXT_API:Int = 0x00036003;
	public static final GLFW_ANGLE_PLATFORM_TYPE_NONE:Int = 0x00037001;
	public static final GLFW_ANGLE_PLATFORM_TYPE_OPENGL:Int = 0x00037002;
	public static final GLFW_ANGLE_PLATFORM_TYPE_OPENGLES:Int = 0x00037003;
	public static final GLFW_ANGLE_PLATFORM_TYPE_D3D9:Int = 0x00037004;
	public static final GLFW_ANGLE_PLATFORM_TYPE_D3D11:Int = 0x00037005;
	public static final GLFW_ANGLE_PLATFORM_TYPE_VULKAN:Int = 0x00037007;
	public static final GLFW_ANGLE_PLATFORM_TYPE_METAL:Int = 0x00037008;
	public static final GLFW_WAYLAND_PREFER_LIBDECOR:Int = 0x00038001;
	public static final GLFW_WAYLAND_DISABLE_LIBDECOR:Int = 0x00038002;
	public static final GLFW_ANY_POSITION:Int = 0x80000000;
	public static final GLFW_ARROW_CURSOR:Int = 0x00036001;
	public static final GLFW_IBEAM_CURSOR:Int = 0x00036002;
	public static final GLFW_CROSSHAIR_CURSOR:Int = 0x00036003;
	public static final GLFW_POINTING_HAND_CURSOR:Int = 0x00036004;
	public static final GLFW_RESIZE_EW_CURSOR:Int = 0x00036005;
	public static final GLFW_RESIZE_NS_CURSOR:Int = 0x00036006;
	public static final GLFW_RESIZE_NWSE_CURSOR:Int = 0x00036007;
	public static final GLFW_RESIZE_NESW_CURSOR:Int = 0x00036008;
	public static final GLFW_RESIZE_ALL_CURSOR:Int = 0x00036009;
	public static final GLFW_NOT_ALLOWED_CURSOR:Int = 0x0003600A;
	public static final GLFW_HRESIZE_CURSOR:Int = GLFW_RESIZE_EW_CURSOR;
	public static final GLFW_VRESIZE_CURSOR:Int = GLFW_RESIZE_NS_CURSOR;
	public static final GLFW_HAND_CURSOR:Int = GLFW_POINTING_HAND_CURSOR;
	public static final GLFW_CONNECTED:Int = 0x00040001;
	public static final GLFW_DISCONNECTED:Int = 0x00040002;
	public static final GLFW_JOYSTICK_HAT_BUTTONS:Int = 0x00050001;
	public static final GLFW_ANGLE_PLATFORM_TYPE:Int = 0x00050002;
	public static final GLFW_PLATFORM:Int = 0x00050003;
	public static final GLFW_COCOA_CHDIR_RESOURCES:Int = 0x00051001;
	public static final GLFW_COCOA_MENUBAR:Int = 0x00051002;
	public static final GLFW_X11_XCB_VULKAN_SURFACE:Int = 0x00052001;
	public static final GLFW_WAYLAND_LIBDECOR:Int = 0x00053001;
	public static final GLFW_ANY_PLATFORM:Int = 0x00060000;
	public static final GLFW_PLATFORM_WIN32:Int = 0x00060001;
	public static final GLFW_PLATFORM_COCOA:Int = 0x00060002;
	public static final GLFW_PLATFORM_WAYLAND:Int = 0x00060003;
	public static final GLFW_PLATFORM_X11:Int = 0x00060004;
	public static final GLFW_PLATFORM_NULL:Int = 0x00060005;
	public static final GLFW_DONT_CARE:Int = -1;

	public static function glfwInit():Int { return 0; }
	public static function glfwTerminate():Void {}
	public static function glfwInitHint(hint:Int, value:Int):Void {}
	public static function glfwWindowHintString(hint:Int, value:String):Void {}
	public static function glfwPollEvents():Void {}
	public static function glfwWaitEvents():Void {}
	public static function glfwWaitEventsTimeout(timeout:hl.F64):Void {}
	public static function glfwPostEmptyEvent():Void {}
	public static function glfwGetTime():hl.F64 { return 0; }
	public static function glfwSetTime(time:hl.F64):Void {}
	public static function glfwGetTimerValue():hl.I64 { return 0; }
	public static function glfwGetTimerFrequency():hl.I64 { return 0; }
	public static function glfwSwapInterval(interval:Int):Void {}
	public static function glfwExtensionSupported(extension:String):Int { return 0; }

	public static function glfwGetPrimaryMonitor():NativeGLFWMonitor { return 0; }
	public static function glfwGetMonitorPos(monitor:NativeGLFWMonitor, xPos:hl.Ref<Int>, yPos:hl.Ref<Int>):Void {}
	public static function glfwGetMonitorWorkarea(monitor:NativeGLFWMonitor, xPos:hl.Ref<Int>, yPos:hl.Ref<Int>, width:hl.Ref<Int>, height:hl.Ref<Int>):Void {}
	public static function glfwGetMonitorPhysicalSize(monitor:NativeGLFWMonitor, widthMM:hl.Ref<Int>, heightMM:hl.Ref<Int>):Void {}
	public static function glfwGetMonitorContentScale(monitor:NativeGLFWMonitor, xScale:hl.Ref<hl.F32>, yScale:hl.Ref<hl.F32>):Void {}
	public static function glfwGetMonitorName(monitor:NativeGLFWMonitor):hl.Bytes { return null; }

	public static function glfwCreateWindow(width:Int, height:Int, title:String, monitor:NativeGLFWMonitor, share:NativeGLFWWindow):NativeGLFWWindow { return 0; }
	public static function glfwDestroyWindow(window:NativeGLFWWindow):Void {}
	public static function glfwWindowShouldClose(window:NativeGLFWWindow):Int { return 0; }
	public static function glfwSetWindowShouldClose(window:NativeGLFWWindow, value:Int):Void {}
	public static function glfwGetWindowTitle(window:NativeGLFWWindow):hl.Bytes { return null; }
	public static function glfwSetWindowTitle(window:NativeGLFWWindow, title:String):Void {}

	public static function glfwGetWindowPos(window:NativeGLFWWindow, xPos:hl.Ref<Int>, yPos:hl.Ref<Int>):Void {}
	public static function glfwSetWindowPos(window:NativeGLFWWindow, xPos:Int, yPos:Int):Void {}
	public static function glfwGetWindowSize(window:NativeGLFWWindow, width:hl.Ref<Int>, height:hl.Ref<Int>):Void {}
	public static function glfwSetWindowSizeLimits(window:NativeGLFWWindow, minWidth:Int, minHeight:Int, maxWidth:Int, maxHeight:Int):Void {}
	public static function glfwSetWindowAspectRatio(window:NativeGLFWWindow, numer:Int, denom:Int):Void {}
	public static function glfwSetWindowSize(window:NativeGLFWWindow, width:Int, height:Int):Void {}
	public static function glfwGetFramebufferSize(window:NativeGLFWWindow, xPos:hl.Ref<Int>, yPos:hl.Ref<Int>):Void {}
	public static function glfwGetWindowFrameSize(window:NativeGLFWWindow, left:hl.Ref<Int>, top:hl.Ref<Int>, right:hl.Ref<Int>, bottom:hl.Ref<Int>):Void {}
	public static function glfwGetWindowContentScale(window:NativeGLFWWindow, xScale:hl.Ref<hl.F32>, yScale:hl.Ref<hl.F32>):Void {}
	public static function glfwGetWindowOpacity(window:NativeGLFWWindow):hl.F32 { return 0; }
	public static function glfwSetWindowOpacity(window:NativeGLFWWindow, opacity:hl.F32):Void {}
	public static function glfwIconifyWindow(window:NativeGLFWWindow):Void {}
	public static function glfwRestoreWindow(window:NativeGLFWWindow):Void {}
	public static function glfwMaximizeWindow(window:NativeGLFWWindow):Void {}
	public static function glfwShowWindow(window:NativeGLFWWindow):Void {}
	public static function glfwHideWindow(window:NativeGLFWWindow):Void {}
	public static function glfwFocusWindow(window:NativeGLFWWindow):Void {}
	public static function glfwRequestWindowAttention(window:NativeGLFWWindow):Void {}
	public static function glfwGetWindowMonitor(window:NativeGLFWWindow):NativeGLFWMonitor { return 0; }
	public static function glfwSetWindowMonitor(window:NativeGLFWWindow, monitor:NativeGLFWMonitor, xPos:Int, yPos:Int, width:Int, height:Int, refreshRate:Int):Void {}
	public static function glfwGetWindowAttrib(window:NativeGLFWWindow, attrib:Int):Int { return 0; }
	public static function glfwSetWindowAttrib(window:NativeGLFWWindow, attrib:Int, value:Int):Void {}
	public static function glfwGetInputMode(window:NativeGLFWWindow, mode:Int):Int { return 0; }
	public static function glfwSetInputMode(window:NativeGLFWWindow, mode:Int, value:Int):Void {}
	public static function glfwMakeContextCurrent(window:NativeGLFWWindow):Void {}
	public static function glfwGetCurrentContext():NativeGLFWWindow { return 0; }
	public static function glfwSetClipboardString(window:NativeGLFWWindow, string:String):Void {}
	public static function glfwGetClipboardString(window:NativeGLFWWindow):hl.Bytes { return null; }
	public static function glfwSwapBuffers(window:NativeGLFWWindow):Void {}

	public static function glfwCreateStandardCursor(shape:Int):NativeGLFWCursor { return 0; }
	public static function glfwDestroyCursor(cursor:NativeGLFWCursor):Void {}
	public static function glfwSetCursor(window:NativeGLFWWindow, cursor:NativeGLFWCursor):Void {}
	public static function glfwRawMouseMotionSupported():Int { return 0; }
	public static function glfwGetMouseButton(window:NativeGLFWWindow, button:Int):Int { return 0; }
	public static function glfwGetCursorPos(window:NativeGLFWWindow, xPos:hl.Ref<hl.F64>, yPos:hl.Ref<hl.F64>):Void {}
	public static function glfwSetCursorPos(window:NativeGLFWWindow, xPos:hl.F64, yPos:hl.F64):Void {}

	public static function glfwGetKeyName(key:Int, scancode:Int):hl.Bytes { return null; }
	public static function glfwGetKeyScancode(key:Int):Int { return 0; }
	public static function glfwGetKey(window:NativeGLFWWindow, key:Int):Int { return 0; }

	public static function glfwJoystickPresent(jid:Int):Int { return 0; }
	public static function glfwGetJoystickAxes(jid:Int):hl.NativeArray<hl.F32> { return null; }
	public static function glfwGetJoystickButtons(jid:Int):hl.NativeArray<Int> { return null; }
	public static function glfwGetJoystickHats(jid:Int):hl.NativeArray<Int> { return null; }
	public static function glfwGetJoystickName(jid:Int):hl.Bytes { return null; }
	public static function glfwGetJoystickGuid(jid:Int):hl.Bytes { return null; }
	public static function glfwJoystickIsGamepad(jid:Int):Int { return 0; }
	public static function glfwUpdateGamepadMappings(string:String):Int { return 0; }
	public static function glfwGetGamepadName(jid:Int):hl.Bytes { return null; }
	public static function glfwGetGamepadState(jid:Int, state:Dynamic):Void {}
}