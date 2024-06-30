package tools.commands;

class TestCommand {
	public function new() {
		var build:BuildCommand = new BuildCommand();

		if (build.exitCode != 0) return;

		Sys.command('cd', [build.parsedProject.getOutputPath()]);
		Sys.command(build.parsedProject.getOutputFilename(), []);
	}
}