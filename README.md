> [!CAUTION]
> this repository is VERY old, and a rewrite is going to happen soon.
> currently, lemons is using the builtin hashlink extensions for openal, opengl and sdl etc, but they lack a lot of functionality that i want.
> oh also the entire redering pipeline sucks and its broken

# <img src="art/tmpLogoWithText.png"/> (old logo)

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
