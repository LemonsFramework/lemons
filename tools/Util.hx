package tools;

import sys.io.Process;

using StringTools;

class Util {
	public static var libPath:String = '';
	public static var originalPath:String = '';

	private static function __init__() {
		var process = new Process('haxelib', ['path', 'lemons']);

		try {
			while (true) {
				var line = process.stdout.readLine().trim();
				if (!line.startsWith('-D') && line.contains('lemons')) { 
					libPath = line.replace('src', '').normalize();
					break;
				}
			}	
		} catch(_) {}


		process.close();
	}
}