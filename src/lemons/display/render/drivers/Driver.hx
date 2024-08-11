package lemons.display.render.drivers;

import lemons.display.render.Window;

class Driver {
	public var backgroundColor:Color = 0x00000000;
	public function new() {}
	public function init():Bool { return false; }
	public function prepare() {}
	public function setViewport(x:Int, y:Int, width:Int, height:Int) {}
	public function selectWindow(window:Window) {}
	public function createNativeVertexBuffer():Dynamic { return null; }
	public function bufferVertexBuffer(vertBuf:Dynamic, verticies:Array<Single>) {}
	public function createNativeVertexArray():Dynamic { return null; }
	public function setupVertexArray(vertArray:Dynamic, size:Int, stride:Int, offset:Int) {} 
	public function draw(vertArray:Dynamic, offset:Int, length:Int) {}

	// public function createProgram(vertex:Shader, pixel:Shader) {}
}