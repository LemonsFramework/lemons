package lemons.display.render;

class Window {
	@:isVar public var width(get, set):Int;
	@:isVar public var height(get, set):Int;
	@:isVar public var x(get, set):Int;
	@:isVar public var y(get, set):Int;
	@:isVar public var title(get, set):String;
	@:isVar public var minimized(get, set):Bool;
	@:isVar public var maximized(get, set):Bool;
	@:isVar public var live(get, never):Bool;

	@:isVar public var time(get, set):Float;

	public function new(width:Int, height:Int, title:String):Void {}

	public function close():Void {}

	public function update():Void {}

	function get_width():Int return 0;
	function get_height():Int return 0;
	function get_x():Int return 0;
	function get_y():Int return 0;
	function get_title():String return '';
	function get_minimized():Bool return false;
	function get_maximized():Bool return false;
	function get_live():Bool return false;

	function get_time():Float return 0;

	function set_width(_:Int):Int return 0;
	function set_height(_:Int):Int return 0;
	function set_x(_:Int):Int return 0;
	function set_y(_:Int):Int return 0;
	function set_title(_:String):String return '';
	function set_minimized(_:Bool):Bool return false;
	function set_maximized(_:Bool):Bool return false;

	function set_time(_:Float):Float return 0;
}