package tools.commands;

import sys.io.Process;
import tools.project.Ini;

class SetupCommand {
	public function new() {
		Sys.setCwd(libPath);

		Sys.println('the current path for liblemons is ${setup.globalVariables['liblemonsDirectory']}');
		Sys.println('enter your liblemons directory [default is $libPath/liblemons]');

		var line:String = Sys.stdin().readLine();

		if (line.trim() == '') {
			Sys.println('reverting to default directory...');
			setup.globalVariables['liblemonsDirectory'] = '$libPath/liblemons';
		} else setup.globalVariables['liblemonsDirectory'] = line;

		File.saveContent('setup.ini', setup.toString());
	}
}