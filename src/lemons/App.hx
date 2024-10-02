package lemons;

import lemons.display.render.Renderer;
import lemons.display.render.Window;
import lemons.display.render.GLFWWindow;
import lemons.macro.DefineMacro;
import lemons.Time;

/** 
 * entry point for every lemons project
**/
class App {
	public var renderer:Renderer;
	public var window:Window;

	/** 
	 * creates the main window and starts the update loop, don't override this
	**/
	public function new() {
		var rendererType:RendererType = DefineMacro.getDefineValue('renderer');
		var windowSettings = haxe.Unserializer.run(DefineMacro.getDefineValue('windowSettings'));
		var gameSize = DefineMacro.getDefineValue('gameSize').split('x').map((str) -> return Std.parseInt(str));


		switch(rendererType) {
			case OPENGL | VULKAN: window = new GLFWWindow(gameSize[0], gameSize[1], windowSettings.title);
			default: throw 'not implemented';
		}

		this.renderer = new Renderer(rendererType, gameSize[0], gameSize[1], window);

		init();

		new Time().start(() -> {
			update();
			final _data:RendererData = renderer.prepare();
			draw(_data);
		}, this);
	}

	/** 
	 * called after the window gets initialized, override this when creating a new app
	**/
	public function init():Void {}

	/**
	 * main update function
	**/
	public function update():Void {}

	/**
	 * main draw function
	**/
	public function draw(_data:RendererData):Void {}
}