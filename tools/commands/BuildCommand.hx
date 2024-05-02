package tools.commands;

import sys.io.Process;
import tools.project.Project;
import tools.project.Ini;

class BuildCommand {
	public function new() {
		Sys.setCwd(originalPath);

		var project:String = null;
				
		try {
			project = File.getContent('project.ini'); 
		} catch(e) {
			Sys.println('\033[1;31merm... error\033[0m working directory does not have a project.ini, are you located in your project directory?');
			return;
		}

		var parsedProject:Project = new Project(new Ini(project));

		Sys.command('haxe ' + parsedProject.toArgList().join(' '));
	}
}