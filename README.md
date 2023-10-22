# <img src="art/tmpLogoWithText.png"/>

idk some kind of game framework smh my head

this only supports hashlink because fuck you !!

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

also if you cant read the logo at the top maybe switch to dark mode you pussy (even though i use citrus sherbert/light on mobile because my phone runs android 5 and hghdfghdgfhdgfhd as my discord theme
