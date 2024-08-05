package lemons.display.render.drivers;

import lemons.display.render._backend.OpenGL;
import lemons.display.render._backend.GLFW;
import lemons.display.render.Window;

class OpenGLDriver extends Driver {
	override public function init():Bool {
		return OpenGL.gladLoadGl() != 0;
	}

	override public function selectWindow(window:Window) {
		GLFW.glfwMakeContextCurrent((cast window).windowHandle);
	}

	override public function setViewport(x:Int, y:Int, width:Int, height:Int) {
		OpenGL.glViewport(x, y, width, height);
	}

	override public function prepare() {
		OpenGL.glClearColor(backgroundColour.redFloat, backgroundColour.greenFloat, backgroundColour.blueFloat, backgroundColour.alphaFloat);
		OpenGL.glClear(OpenGL.GL_COLOR_BUFFER_BIT);
	}

	override public function createNativeVertexArray():Dynamic {
		var buf = OpenGL.glGenBuffers();
		return buf;
	}

	override public function bufferVertexArray(vertArray:Dynamic, verticies:Array<Single>) {
		var size = verticies.length * 4;

		OpenGL.glBindBuffer(OpenGL.GL_ARRAY_BUFFER, vertArray);
		OpenGL.glBufferData(OpenGL.GL_ARRAY_BUFFER, size, hl.Bytes.getArray(verticies), OpenGL.GL_STATIC_DRAW);
	}

}