package lemons.util;


// TODO: this class 

class Log {
	static var useColor:Bool = true;


	#if sys static function __init__():Void useColor = Sys.args().contains('--nocolor'); #end
}