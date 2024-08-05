package lemons.display.render;

import lemons.display.render._backend.GLFW;

@SuppressWarnings("checkstyle:CodeSimilarity") 
class GLFWWindow extends Window {
	var windowHandle:NativeGLFWWindow;
	static var initialized:Bool;

	public function new(width:Int, height:Int, title:String) {
		super(width, height, title);
		if (!initialized)
			GLFW.glfwInit();

		GLFW.glfwInitHint(GLFW.GLFW_CONTEXT_VERSION_MAJOR, 3);
		GLFW.glfwInitHint(GLFW.GLFW_CONTEXT_VERSION_MINOR, 3);
		GLFW.glfwInitHint(GLFW.GLFW_OPENGL_PROFILE, GLFW.GLFW_OPENGL_CORE_PROFILE);
		windowHandle = GLFW.glfwCreateWindow(width, height, title, (0:hl.I64), (0:hl.I64));
	}

	override public function close():Void {}

	override public function update():Void {
		GLFW.glfwSwapBuffers(windowHandle);
		GLFW.glfwPollEvents();
	}

	override function get_width():Int {
		var wid = 0;
		var hei = 0;
		GLFW.glfwGetWindowSize(windowHandle, wid, hei);
		return wid;
	}

	override function get_time():Float
		return GLFW.glfwGetTime();

	override function get_height():Int {
		var wid = 0;
		var hei = 0;
		GLFW.glfwGetWindowSize(windowHandle, wid, hei);
		return hei;
	}

	override function get_live():Bool
		return GLFW.glfwWindowShouldClose(windowHandle) == GLFW.GLFW_FALSE;

	override function set_width(wid:Int):Int {
		GLFW.glfwSetWindowSize(windowHandle, wid, height);
		return width = wid;
	}

	override function set_height(hei:Int):Int {
		GLFW.glfwSetWindowSize(windowHandle, width, hei);
		return height = hei;
	}

	override function set_time(time:Float):Float{
		GLFW.glfwSetTime(time);
		return time;
	}
}