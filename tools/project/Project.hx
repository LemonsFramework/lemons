package tools.project;

import tools.project.Ini;
import haxe.Serializer.run;

class Project {

	var output:String = '';
	var filename:String = '';

	public var sources:Array<String> = [];

	public var resourceFolder:String = '';
	public var mainClass:String = '';

	public var preferedRenderer:String = '';

	public var gameWidth:Int = 0;
	public var gameHeight:Int = 0;

	public var windowTitle:String = '';
	public var windowResizable:Bool = false;

	public var defines:Map<String, String> = [];
	public var libraries:Map<String, String> = [];

	public var useCCompilation:Bool = false;

	public function new(projectFile:Ini, ?useCCompilation:Bool = false) {
		this.useCCompilation = useCCompilation;

		filename = projectFile.globalVariables['filename'] ?? 'game';
		output = projectFile.globalVariables['output'] ?? 'out/';
		resourceFolder = projectFile.globalVariables['resources'] ?? 'res/';
		mainClass = projectFile.globalVariables['main'] ?? 'Main';

		for (_ => source in projectFile.sections['sources'])
			sources.push(source);

		gameWidth = Std.int(projectFile.sections['game']['width'] ?? 640);
		gameHeight = Std.int(projectFile.sections['game']['height'] ?? 480);

		windowTitle = projectFile.sections['window']['title'] ?? 'lemons project';
		windowResizable = projectFile.sections['window']['resizable'] ?? true;

		preferedRenderer = projectFile.globalVariables['renderer'] ?? 'OPENGL'; // TODO: add "BEST" option where the game checks what renderers are avalible on the gpu, probabbly in a list of vulkan, then directx and at last opengl

		for (defineName => define in projectFile.sections['defines'])
			defines[defineName] = Std.string(define); // in this case we want the value to be a string

		for (library => version in projectFile.sections['libraries'])
			libraries[library] = Std.string(version);
	}

	public function toArgList():Array<String> {
		var list:Array<String> = [];

		list.push('--hl ' + getOutputPath() + '/' + getOutputFilename());
		list.push('-m $mainClass');
		for (source in sources) list.push('-p $source');
		for (defineName => define in defines) list.push('-D $defineName${define == '' ? '' : '=\"$define\"'}');
		for (library => version in libraries) list.push('-L $library${version == '' ? '' : ':$version'}');
		list.push('-L lemons');
	
		list.push('-D gameSize=${gameWidth}x${gameHeight}');
		list.push('-D renderer=${preferedRenderer}');

		final windowSettings = {title: windowTitle, resizable: windowResizable};
		list.push('-D windowSettings=${run(windowSettings)}');

		return list;
	}

	public function getOutputPath():String 
		return output.normalize();

	public function getOutputFilename():String 
		return '$filename${useCCompilation ? '.c' : '.hl'}'.normalize();
}