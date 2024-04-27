package tools;

class Main {
	public function new() {
		originalPath = Sys.getCwd();
		Sys.setCwd(libPath);

		var args = Sys.args();
		args.pop();

		if (args.length == 0) {
			Sys.println('\033[0;33mlemons\033[0m - 2d game framework i think');
			Sys.println('run with --help to display a list of all commands');
			return;
		}

		var argThing:String = args.shift();
		switch (argThing) {
			case '--help':
				Sys.println('\033[0;33mlemons\033[0m - 2d game framework i think');
				Sys.println('	--help - displays this message');
				Sys.println('	rebuild - rebuilds the native library for lemons');
				Sys.println('	build - builds the project that you\'re located in');
			default:
				Sys.println('\033[1;31merm... error\033[0m invalid command: $argThing');

		}

	}

	static public function main() new Main();
}