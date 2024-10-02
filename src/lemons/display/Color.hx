package lemons.display;

/** 
 * abstract used to indentify colo(u)r in lemons
 * the internal format for color is AARRGGBB
 * TODO: right now the abstract can't reconstruct itself, so you can't just set one component of the color unless you reconstruct it
**/
abstract Color(Int) to Int {
	public var redFloat(get, never):Float;
	public var greenFloat(get, never):Float;
	public var blueFloat(get, never):Float;
	public var alphaFloat(get, never):Float;

	public var red(get, never):Int;
	public var green(get, never):Int;
	public var blue(get, never):Int;
	public var alpha(get, never):Int;

	@:from
	static function fromInt(int:Int) {
		return new Color(int);
	}

	public function new(int:Int) {
		this = int;
	}

	function get_alpha():Int return ((this >> 24) & 0xFF);
	function get_red():Int return ((this >> 16) & 0xFF);
	function get_green():Int return ((this >> 8) & 0xFF);
	function get_blue():Int return ((this) & 0xFF);

	function get_alphaFloat():Float return alpha / 255;
	function get_redFloat():Float return red / 255;
	function get_greenFloat():Float return green / 255;
	function get_blueFloat():Float return blue / 255;

	function toString():String return '#' + this.hex(8);


	// function reconstruct(r:Int, g:Int, b:Int, a:Int):Void 
		// this = 
}

/** 
 * the correct spelling of colour
 * people hated that i used color primarily so this is now a typedef
**/
typedef Colour = lemons.display.Color;