package tools;

class Main {
	public function new() {
		Sys.setCwd(libPath);

		args = Sys.args();
		originalPath = args.pop();

		if (args.length == 0) {
			Sys.println('\033[0;33mlemons\033[0m - 2d game framework i think');
			Sys.println('run with \'help\' to display a list of all commands');
			return;
		}

		var argThing:String = args.shift();
		switch (argThing) {
			case 'help':
				Sys.println('\033[0;33mlemons\033[0m - 2d game framework i think');
				Sys.println('	help - displays this message');
				Sys.println('	rebuild - rebuilds the native library for lemons');
				Sys.println('	build - builds the project that you\'re located in');
				Sys.println('	create - creates a project');
			case 'build':
				new tools.commands.BuildCommand();
			case 'display':
				new tools.commands.DisplayCommand();
			case 'rebuild':
				new tools.commands.RebuildCommand();
			case 'test':
				new tools.commands.TestCommand();
			case 'setup':
				new tools.commands.SetupCommand();
			default:
				Sys.println('\033[1;31merm... error\033[0m invalid command: $argThing');

		}

	}

	static public function main() new Main();
}