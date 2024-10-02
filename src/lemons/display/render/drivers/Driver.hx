package lemons.display.render.drivers;

import lemons.display.render.Window;
import lemons.geometry.Matrix;
import lemons.display.shader.Shader;
import lemons.display.render.Buffer;
import lemons.display.render.Renderer.DataType;

class Driver {
	public var backgroundColor:Color = 0x00000000;
	public function new() {}
	public function init():Bool { return false; }
	public function prepare() {}
	public function setViewport(x:Int, y:Int, width:Int, height:Int) {}
	public function selectWindow(window:Window) {}
	public function createBuffer():Int { return 0; }
	public function selectBuffer(buf:Int, type:BufferType) {}

	public function createVertexArray():Int { return 0; }
	public function setupVertexArray(index:Int, size:Int, type:DataType, stride:Int, offset:Int) {} 
	public function selectVertexArray(vertArray:Int) {} 
	public function toggleVertexArrayAttr(index:Int, enabled:Bool) {} 
	public function deleteVertexArray(arr:Int) {}

	public function drawElements(offset:Int, length:Int) {}

	public function createShader(type:ShaderType):Int { return 0; }
	public function compileShader(shader:Int, source:String):{ success:Bool, error:String } { return null; }
	public function shaderWriteMatrix(shader:Int, name:String, matrix:Matrix) {}

	// i cant overload these! stupid!!!!!!!!!
	public function bufferData(buf:Int, bufferType:BufferType, data:Array<Single>, size:Int, mode:BufferUploadMode) {}
	public function bufferDataInt(buf:Int, bufferType:BufferType, data:Array<Int>, size:Int, mode:BufferUploadMode) {} 

	function getBufferUploadMode(type:BufferUploadMode):Int { return 0; }
	function getBufferType(type:BufferType):Int { return 0; }
	function getDataType(type:DataType):Int { return 0; }

	public function createProgram():Int { return 0; }
	public function deleteProgram(prog:Int) {}
	public function addToProgram(prog:Int, shad:Int) {}
	public function compileProgram(prog:Int):{ success:Bool, ?error:String } { return null; }
	public function selectProgram(program:Int) {}

	function getDataSize(type:DataType):Int { 
		return switch(type) {
			case INT | SINGLE: 4;
			default: 0;
		}
	}
}