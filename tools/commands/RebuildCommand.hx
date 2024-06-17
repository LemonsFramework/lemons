package tools.commands;

import sys.io.Process;

class RebuildCommand {
	public function new() {
		if (Sys.systemName().toLowerCase() == 'windows') { // whyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy
			try {
				// the visual studio installer should always be here; if not im gonna have a panic attack
				var process = new Process('C:/Program Files (x86)/Microsoft Visual Studio/Installer/vswhere.exe', ['-latest', '-property', 'installationPath']);
				var vsPath = process.stdout.readLine();
				process.close();

				var whyMicrosoft = new Process('"$vsPath\\Common7\\Tools\\VsDevCmd.bat" -arch=x64 -no_logo && set');
				try {
					while (true) {
						var line = whyMicrosoft.stdout.readLine();
						var lineSplit = line.split('=');
						Sys.putEnv(lineSplit[0], lineSplit[1]);
					}	
				} catch(_) {}
				whyMicrosoft.close();
			} catch(e) {
				trace('could\'nt setup build enviroment using visual studio, have you installed it?');
			}
		}


		Sys.command('cd $libPath/liblemons');
		Sys.command('mkdir make');
		Sys.command('cd make');
		Sys.command('cmake ..');
		Sys.command('cmake --build .');
	}
}