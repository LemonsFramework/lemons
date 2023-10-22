# <img src="art/tmpLogo.png"/> lemons

idk lemons is some kind of game framework idk


code example:

```haxe
class Main extends lemons.App {
    override public function init():Void {
        var sound:lemons.sound.Sound = lemons.sound.Sound.createFromBytes(File.getBytes('D:\\dither me up.wav'));
        sound.volume = 0.75;
        sound.loop = true;
        sound.effect = new lemons.sound.Effects.EAXReverbEffect();
        sound.play();
    }

    static public function main()
        var app = new Main();
}
```