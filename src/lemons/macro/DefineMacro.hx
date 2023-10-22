package lemons.macro;


class DefineMacro {
	public static macro function getDefineValue(val:String):Dynamic
		return macro $v{haxe.macro.Context.definedValue(val)};
}