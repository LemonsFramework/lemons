package tools;

import sys.io.Process;
import tools.project.Ini;

using StringTools;

class Util {
	@:allow(tools.Main)
	private static var args:Array<String> = [];

	public static var libPath:String = '';
	public static var originalPath:String = '';
	public static var setup:Ini;


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

		Sys.setCwd(libPath);

		try {
			setup = new Ini().parse(File.getContent('setup.ini'));
		} catch(e) {
			setup = new Ini();
			setup.globalVariables['liblemonsDirectory'] = '$libPath/liblemons';
			File.saveContent('setup.ini', setup.toString());
		}
	}

	// public static function removeArgument(arg:String) args.remove(args.indexOf(arg));
	// public static function getArgument(arg:String):Bool {
	// 	final reslut:Bool = args.indexOf(arg) != -1;
	// 	if (reslut) removeArgument(arg);
	// 	return reslut;
	// }  
}