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

		var libraryFiles:Array<String> = sys.FileSystem.readDirectory(setup.globalVariables['liblemonsDirectory'] + '/out').filter((str) -> return !str.contains('.pdb')); 
		for (file in libraryFiles)
			sys.io.File.copy(setup.globalVariables['liblemonsDirectory'] + '/out/' + file, parsedProject.getOutputPath() + '/' + file);
	}
}