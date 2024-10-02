package lemons.display.render.drivers;

import lemons.display.render._internal.OpenGL;
import lemons.display.render._internal.GLFW;
import lemons.display.render.Window;
import lemons.display.shader.Shader;
import lemons.display.render.Buffer;
import lemons.display.render.Renderer.DataType;
import lemons.geometry.Matrix;

import haxe.macro.Expr;
import haxe.macro.Context;

class OpenGLDriver extends Driver {
	var functionCallStack:Array<{name:String, method:String, error:Int}> = [];
	inline function pushToStack(name:String, method:String) {
		functionCallStack.push({name: name, method: method, error: OpenGL.glGetError()});
	}

	function dump() {
		for (call in functionCallStack) trace('Called ${call.name} in ${call.method} and returned ${call.error.hex(4)}');
		functionCallStack = [];
	}

	override public function init():Bool {
		final result:Int = OpenGL.gladLoadGl();
		OpenGL.glFinish();
		return result != 0;
	}

	override public function selectWindow(window:Window) {
		GLFW.glfwMakeContextCurrent((cast window).windowHandle);
	}

	override public function setViewport(x:Int, y:Int, width:Int, height:Int) {
		OpenGL.glViewport(x, y, width, height);
	}

	override public function prepare() {
		OpenGL.glUseProgram(0);
		OpenGL.glColorMask(OpenGL.GL_TRUE, OpenGL.GL_TRUE, OpenGL.GL_TRUE, OpenGL.GL_TRUE);
		OpenGL.glClearColor(backgroundColor.redFloat, backgroundColor.greenFloat, backgroundColor.blueFloat, backgroundColor.alphaFloat);
		OpenGL.glDepthMask(OpenGL.GL_TRUE);
		OpenGL.glClearDepth(1);
		OpenGL.glClearStencil(0);
		OpenGL.glClear(OpenGL.GL_COLOR_BUFFER_BIT | OpenGL.GL_DEPTH_BUFFER_BIT | OpenGL.GL_STENCIL_BUFFER_BIT);
	}

	override public function createBuffer():Int {
		var buf = OpenGL.glGenBuffers();
		return buf;
	}

	override public function selectBuffer(buf:Int, type:BufferType) {
		OpenGL.glBindBuffer(getBufferType(type), buf);
	}

	override public function createVertexArray():Int {
		var arr = OpenGL.glGenVertexArrays();
		return arr;
	}

	override public function setupVertexArray(index:Int, size:Int, type:DataType, stride:Int, offset:Int) {
		OpenGL.glVertexAttribPointer(index, size, getDataType(type), OpenGL.GL_FALSE, stride * getDataSize(type), offset * getDataSize(type));
	}

	override public function selectVertexArray(vertArray:Int) {
		OpenGL.glBindVertexArray(vertArray);
	}

	override public function toggleVertexArrayAttr(index:Int, enabled:Bool) {
		if (enabled) OpenGL.glEnableVertexAttribArray(index);
		else OpenGL.glDisableVertexAttribArray(index);
	}

	override public function deleteVertexArray(arr:Int) {
		var siz:hl.Ref<Int> = cast arr;
		OpenGL.glDeleteVertexArrays(1, siz);
	}

	override public function createShader(type:ShaderType):Int {
		var shader = OpenGL.glCreateShader(switch (type) {
			case VERTEX: OpenGL.GL_VERTEX_SHADER;
			case PIXEL: OpenGL.GL_FRAGMENT_SHADER;
		});
		return shader;
	}

	override public function compileShader(shader:Int, source:String):{ success:Bool, ?error:String } {
		OpenGL.glShaderSource(shader, source);
		OpenGL.glCompileShader(shader); // i guess we doin shader compilation error now
		var success = 0;
		OpenGL.glGetShaderiv(shader, OpenGL.GL_COMPILE_STATUS, success);
		if (success == 0) {
			var str = '';
			OpenGL.glGetShaderInfoLog(shader, 512, null, str);

			// reencode these int utf16 since string uses utf16 internally
			var outLen = 0;
			@:privateAccess str.bytes = str.bytes.utf8ToUtf16(0, outLen);
			
			return {success: false, error: str};
		}
		return {success: true};
	}

	override public function createProgram():Int {
		final prog = OpenGL.glCreateProgram();
		return prog;
	}

	override public function deleteProgram(prog:Int) {
		OpenGL.glDeleteProgram(prog);
	}

	override public function addToProgram(prog:Int, shad:Int) {
		OpenGL.glAttachShader(prog, shad);
	}

	override public function compileProgram(prog:Int):{ success:Bool, ?error:String } {
		OpenGL.glLinkProgram(prog);
		var success = 0;
		OpenGL.glGetProgramiv(prog, OpenGL.GL_LINK_STATUS, success);
		if (success == 0) {
			var str = '';
			OpenGL.glGetProgramInfoLog(prog, 512, null, str);

			// reencode these int utf16 since string uses utf16 internally
			var outLen = 0;
			@:privateAccess str.bytes = str.bytes.utf8ToUtf16(0, outLen);

			return {success: false, error: str};
		}
		return {success: true};
	}

	override public function selectProgram(prog:Int) {
		OpenGL.glUseProgram(prog);
	}

	override public function drawElements(offset:Int, length:Int) {
		OpenGL.glDrawElements(OpenGL.GL_TRIANGLES, length, OpenGL.GL_UNSIGNED_INT, 0);
	}

	override public function bufferData(buf:Int, bufferType:BufferType, data:Array<Single>, size:Int, mode:BufferUploadMode) {
		final type = getBufferType(bufferType);
		OpenGL.glBindBuffer(type, buf);
		OpenGL.glBufferData(type, size, hl.Bytes.getArray(data), getBufferUploadMode(mode));
	}

	override public function bufferDataInt(buf:Int, bufferType:BufferType, data:Array<UInt>, size:Int, mode:BufferUploadMode) {
		final type = getBufferType(bufferType);
		OpenGL.glBindBuffer(type, buf);
		OpenGL.glBufferData(type, size, hl.Bytes.getArray(data), getBufferUploadMode(mode));
	}

	override public function shaderWriteMatrix(prog:Int, name:String, matrix:Matrix) {
		var loc = OpenGL.glGetUniformLocation(prog, name);
		var vector:haxe.ds.Vector<Single> = matrix;
		OpenGL.glUniformMatrix4fv(loc, 1, OpenGL.GL_FALSE, hl.Bytes.getArray(vector.toData()));
	}

	override function getBufferType(type:BufferType):Int {
		return switch(type) {
			case VERTEX: OpenGL.GL_ARRAY_BUFFER;
			case ELEMENT: OpenGL.GL_ELEMENT_ARRAY_BUFFER;
		};
	}

	override function getDataType(type:DataType):Int {
		return switch(type) {
			case INT: OpenGL.GL_UNSIGNED_INT;
			case SINGLE: OpenGL.GL_FLOAT;
		};
	}

	override function getBufferUploadMode(type:BufferUploadMode):Int {
		return switch(type) {
			case STREAM: OpenGL.GL_STREAM_DRAW;
			case STATIC: OpenGL.GL_STATIC_DRAW;
			case DYNAMIC: OpenGL.GL_DYNAMIC_DRAW;
		};
	}
}


