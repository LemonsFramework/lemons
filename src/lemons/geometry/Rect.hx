package lemons.geometry;

/** 
 * a rectangle. what else would it be?
**/
class Rect {
	public var x:Float;
	public var y:Float;
	public var width:Float;
	public var height:Float;

	public var left(get, set):Float;
	public var bottom(get, set):Float;
	public var top(get, set):Float;
	public var right(get, set):Float;

	public function new(x:Float, y:Float, width:Float, height:Float):Void {
		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
	}

	/** 
	 * check for if another rectangle is colliding/intersecting this one
	**/
	public function rectColliding(otherRect:Rect):Bool {
		// watch out! its the gay rectangle intersect check	
		return (this.left < otherRect.right && this.right > otherRect.left && 
			this.top > otherRect.bottom && this.bottom < otherRect.top);
	}


	function get_left():Float	return x;
	function set_left(lef:Float):Float return x = lef;

	function get_top():Float	return y;
	function set_top(topp:Float):Float return y = topp;

	function get_bottom():Float	return y + height;
	function set_bottom(bot:Float):Float return height = bot - y;

	function get_right():Float return x + width;
	function set_right(rig:Float):Float return width = rig - x;
}