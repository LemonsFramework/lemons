package;

import lemons.App;
import lemons.sound.Sound;

class Main extends App {
	override public function init():Void {
		var sound:Sound = Sound.createFromFile('${Sys.getCwd()}\\res\\testsong.wav');
		sound.volume = 0.75;
		sound.loop = true;
		sound.play();
	}

	static public function main()
		var app = new Main();
}