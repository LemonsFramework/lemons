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
		OpenGL.glClearColor(backgroundColor.redFloat, backgroundColor.greenFloat, backgroundColor.blueFloat, backgroundColor.alphaFloat);
		OpenGL.glClear(OpenGL.GL_COLOR_BUFFER_BIT);
	}

	override public function createNativeVertexBuffer():Dynamic {
		var buf = OpenGL.glGenBuffers();
		return buf;
	}

	override public function bufferVertexBuffer(vertBuf:Dynamic, verticies:Array<Single>) {
		var size = verticies.length * 4;

		OpenGL.glBindBuffer(OpenGL.GL_ARRAY_BUFFER, vertBuf);
		OpenGL.glBufferData(OpenGL.GL_ARRAY_BUFFER, size, hl.Bytes.getArray(verticies), OpenGL.GL_STATIC_DRAW);
	}

	override public function createNativeVertexArray():Dynamic {
		var arr = OpenGL.glGenVertexArrays();
		return arr;
	}

	override public function setupVertexArray(vertArray:Dynamic, size:Int, stride:Int, offset:Int) {
		OpenGL.glVertexAttribPointer(vertArray, size, OpenGL.GL_FLOAT, OpenGL.GL_FALSE, stride, hl.Bytes.fromAddress(0));
	}

	// override public function draw(vertArray:Dynamic,  offset:Int, length:Int) {
	// 	glVertexAttribPointer(vertArray, size, OpenGL.GL_FLOAT, OpenGL.GL_FALSE, side, hl.Bytes.fromAddress(0));
	// }
}