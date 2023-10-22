package lemons;

import sdl.GL;
import sdl.Event;
import sdl.Sdl;
import sdl.Event.WindowStateChange;
import lemons.macro.DefineMacro;
import lemons.util.Signal;
import lemons.sound.Sound;
import lemons.input.keyboard.KeyCode;


/** 
 * Entry point for every Lemons project
**/
class App {
	/** 
	 * Main game window
	**/
	public static var mainWindow:sdl.Window;

	/** 
	 * A container for SDL signals
	**/
	public var callbacks:WindowCallbacks;

	/** 
	 * Creates the main window and starts the update loop, don't override this
	**/
	public function new() {
		Sdl.init();
		callbacks = new WindowCallbacks();

		var windowSize = DefineMacro.getDefineValue('windowResolution').split(',');
		mainWindow = new sdl.Window(DefineMacro.getDefineValue('windowTitle'), 
			Std.parseInt(windowSize[0]), Std.parseInt(windowSize[1]));
		mainWindow.center();

		#if windowVsync mainWindow.vsync = true; #end

		init();

		GL.viewport(0, 0, Std.parseInt(windowSize[0]), Std.parseInt(windowSize[1]));

		var lastTime = Sys.time();
		while (true) {
			var newTime = Sys.time();
			if (!Sdl.processEvents(onEvent)) break;

			update(newTime - lastTime);
			mainWindow.present();

			lastTime = newTime;
			if (mainWindow.vsync) Sys.sleep(1 / 60);
		}

		Sound.stopEngine();
	}

	/** 
	 * Called after the window gets initialized, override this when creating a new app
	**/
	public function init():Void {}

	/**
	 * Main update function
	 * @param delta Time between the last update call in seconds
	**/
	public function update(delta:Float):Void {}

	/**
	 * Called when a SDL event gets called
	 * @param event 
	**/
	private function onEvent(event:Event):Bool {
		if (callbacks == null) return true;
		switch (event.type) {
			case Quit: callbacks.onClose.dispatch(null);
			case MouseMove: callbacks.onMouseMove.dispatch({x: event.mouseX, y: event.mouseY});
			case MouseLeave: callbacks.onMouseLeave.dispatch(null);
			case MouseDown: callbacks.onMouseDown.dispatch(event.button);
			case MouseUp: callbacks.onMouseUp.dispatch(event.button);
			case MouseWheel: callbacks.onMouseWheel.dispatch(event.wheelDelta);
			case KeyDown: callbacks.onKeyDown.dispatch(event.keyCode);
			case KeyUp: callbacks.onKeyUp.dispatch(event.keyCode);
			case WindowState:
			var targetCallback:Signal<Dynamic, Void> = switch(event.state) {
				case Show: callbacks.onWindowShow;
				case Hide: callbacks.onWindowHide;
				case Expose: callbacks.onWindowExpose;
				case Move: callbacks.onWindowMove;
				case Resize: callbacks.onWindowResize;
				case Minimize: callbacks.onWindowMinimize;
				case Maximize: callbacks.onWindowMaximize;
				case Restore: callbacks.onWindowRestore;
				case Enter: callbacks.onWindowEnter;
				case Leave: callbacks.onWindowLeave;
				case Focus: callbacks.onWindowFocus;
				case Blur: callbacks.onWindowBlur;
				case Close: callbacks.onWindowClose;
			}
			targetCallback.dispatch(null);
			default:
		}

		return true;
	}
}

/**
 * Class that holds all callbacks in SDL
**/
@:publicFields
class WindowCallbacks {
	// TODO: update Signal to allow Void as a avalible input type

	/**
	 * Not really a window event but it's in the event list so...
	 * 
	 * Called when the game is closed
	**/
	var onClose:Signal<Dynamic, Bool>;

	// window

	/**
	 * Called when the window gets shown(?) idk since focus is a thing
	**/
	var onWindowShow:Signal<Dynamic, Void>;
	var onWindowHide:Signal<Dynamic, Void>;
	var onWindowExpose:Signal<Dynamic, Void>;
	var onWindowMove:Signal<Dynamic, Void>;
	var onWindowResize:Signal<Dynamic, Void>;
	var onWindowMinimize:Signal<Dynamic, Void>;
	var onWindowMaximize:Signal<Dynamic, Void>;
	var onWindowRestore:Signal<Dynamic, Void>;
	var onWindowEnter:Signal<Dynamic, Void>;
	var onWindowLeave:Signal<Dynamic, Void>;
	var onWindowFocus:Signal<Dynamic, Void>;
	var onWindowBlur:Signal<Dynamic, Void>;
	var onWindowClose:Signal<Dynamic, Void>;

	// mouse
	/**
	 * Called when the mouse is moved in the window
	**/
	var onMouseMove:Signal<{x:Int, y:Int}, Void>;
	/**
	 * Called when the mouse leaves the window but i'm not sure since this has never happened to me when testing
	**/
	var onMouseLeave:Signal<Dynamic, Void>;
	/**
	 * Called when a mouse button is pressed
	**/
	var onMouseDown:Signal<Int, Void>;
	/**
	 * Called when a mouse button is released
	**/
	var onMouseUp:Signal<Int, Void>;
	/**
	 * Called when the mouse wheel gets moved
	**/
	var onMouseWheel:Signal<Int, Void>;

	// keyboard

	/**
	 * Called when a key is down / held down
	**/
	var onKeyDown:Signal<KeyCode, Void>;

	/**
	 * Called when a key is released
	**/
	var onKeyUp:Signal<KeyCode, Void>;


	public function new():Void {
		onClose = new Signal<Dynamic, Bool>();

		onWindowShow = new Signal<Dynamic, Void>();
		onWindowHide = new Signal<Dynamic, Void>();
		onWindowExpose = new Signal<Dynamic, Void>();
		onWindowMove = new Signal<Dynamic, Void>();
		onWindowResize = new Signal<Dynamic, Void>();
		onWindowMinimize = new Signal<Dynamic, Void>();
		onWindowMaximize = new Signal<Dynamic, Void>();
		onWindowRestore = new Signal<Dynamic, Void>();
		onWindowEnter = new Signal<Dynamic, Void>();
		onWindowLeave = new Signal<Dynamic, Void>();
		onWindowFocus = new Signal<Dynamic, Void>();
		onWindowBlur = new Signal<Dynamic, Void>();
		onWindowClose = new Signal<Dynamic, Void>();

		onMouseMove = new Signal<{x:Int, y:Int}, Void>();
		onMouseLeave = new Signal<Dynamic, Void>();
		onMouseDown = new Signal<Int, Void>();
		onMouseUp = new Signal<Int, Void>();
		onMouseWheel = new Signal<Int, Void>();

		onKeyDown = new Signal<KeyCode, Void>();
		onKeyUp = new Signal<KeyCode, Void>();

	}

}	