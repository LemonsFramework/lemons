package tools.commands;

import sys.io.Process;
import tools.project.Project;
import tools.project.Ini;

class BuildCommand {
	public var parsedProject:Project;
	public var exitCode:Int;

	public function new() {
		Sys.setCwd(originalPath);

		var project:String = null;
				
		try {
			project = File.getContent('project.ini'); 
		} catch(e) {
			Sys.println('\033[1;31merm... error\033[0m working directory does not have a project.ini, are you located in your project directory?');
			return;
		}

		parsedProject = new Project(new Ini().parse(project));

		exitCode = Sys.command('haxe ' + parsedProject.toArgList().join(' '));

		try {
			var libraryFiles:Array<String> = sys.FileSystem.readDirectory(setup.globalVariables['liblemonsDirectory'] + '/out').filter((str) -> return !str.contains('.pdb')); 
			for (file in libraryFiles)
				sys.io.File.copy(setup.globalVariables['liblemonsDirectory'] + '/out/' + file, parsedProject.getOutputPath() + '/' + file);
		} catch(e) {
			Sys.println('could not find the native extension library for lemons. make sure the path ${setup.globalVariables['liblemonsDirectory'] + '/out'} exists.\nif you are using the git version of lemons, you should follow the guide on how to build the native extension manually.\nif this was downloaded off of haxelib, send an issue in the lemons github repository\nhttps://github.com/LemonsFramework/lemons');
		}

	}
}