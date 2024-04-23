package lemons.display;

import lemons.geom.Vector2;

class Object {
	public var position:Vector2;
	public var scale:Vector2;
	public var width:Int;
	public var height:Int;
	public var rotation:Float = 0;

	public function new(x:Int, y:Int, width:Int, height:Int) {
		this.position = new Vector2(x, y);
		this.scale = new Vector2(1, 1);
		this.width = width;
		this.height = height;
	}

	public function update(delta:Float) {}
}