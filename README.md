# <img src="art/tmpLogoWithText.png"/>

idk another haxe game framework smh my head

this only supports hashlink because fuck you !!

code example:

```haxe
package;

import sys.io.File;

import lemons.App;
import lemons.sound.Sound;

class Main extends App {
	override public function init():Void {
		var sound:Sound = Sound.createFromBytes(File.getBytes('${Sys.getCwd()}\\res\\testsong.wav'));
		sound.volume = 0.75;
		sound.loop = true;
		sound.play();
	}

	static public function main()
		var app = new Main();
}
```
