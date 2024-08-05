package lemons.display.render.drivers;

import lemons.display.render.Window;

class Driver {
	public var backgroundColour:Colour = 0x00000000;
	public function new() {}
	public function init():Bool { return false; }
	public function prepare() {}
	public function setViewport(x:Int, y:Int, width:Int, height:Int) {}
	public function selectWindow(window:Window) {}
	public function createNativeVertexArray():Dynamic { return null; }
	public function bufferVertexArray(vertArray:Dynamic, verticies:Array<Single>) {}
}