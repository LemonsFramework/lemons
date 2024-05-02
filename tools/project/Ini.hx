package tools.project;

using StringTools;

// basic ini parser, might seperate it into a seperate library

@:transitive
abstract OneOfThree<T1, T2, T3>(Dynamic) from T1 to T1 from T2 to T2 from T3 to T3 {}

typedef IniEntry = OneOfThree<String, Bool, Float>;
typedef IniSection = Map<String, IniEntry>;

class Ini {
	public var globalVariables:IniSection = [];
	public var sections:Map<String, IniSection> = [];

	public function new(string:String) {
		final lines:Array<String> = string.split('\n');

		var curSection:String = '';

		for (line in lines) {
			if (isComment(line)) continue;
			if (line.trim() == '') continue;

			if (line.charAt(0) == '[') {
				if (line.indexOf(']') == -1)
					throw 'Expected ]';

				curSection = line.substr(1, line.indexOf(']') - 1);
				if (sections[curSection] == null) sections.set(curSection, []);
				continue;
			}

			if (line.indexOf('=') == -1) throw 'Expected =';

			final section:IniSection = (curSection == '' ? globalVariables : sections[curSection]);
			final entryName:String = line.substr(0, line.indexOf('=')).trim();
			final entryValue:String = line.substr(line.indexOf('=') + 1).trim();

			if (entryValue == 'true' || entryValue == 'false') section[entryName] = entryValue == 'true';
			else if (~/[0-9]/.match(entryValue.charAt(0))) section[entryName] = Std.parseFloat(entryValue);
			else if (entryValue.charAt(0) == '\"' || entryValue.charAt(0) == '\'') section[entryName] = entryValue.substr(1, entryValue.length - 2);
			else section[entryName] = entryValue;
		}
	}

	inline function isComment(string:String):Bool
		return string.charAt(0) == ';' || string.charAt(0) == '#';
}