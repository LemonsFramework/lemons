package lemons;

import sdl.GL;
import sdl.Event;
import sdl.Sdl;
import sdl.Sdl.SDLHint;
import sdl.Window;
import sdl.Event.WindowStateChange;

import lemons.input.keyboard.KeyCode;
import lemons.macro.DefineMacro;
import lemons.sound.Sound;
import lemons.geom.Matrix4;

import lemons.display.Scene;
import lemons.display.Sprite;

import lemons.util.Signal;

/** 
 * Entry point for every Lemons project
**/
class App {

	private static var _glVao:VertexArray;
	private static var _glVbo:Buffer;
	private static var _glEbo:Buffer;

	/** 
	 * Main game window
	**/
	public static var mainWindow:sdl.Window;

	/** 
	 * A container for SDL signals
	**/
	public var callbacks:WindowCallbacks;


	public var scene:Scene;

	/** 
	 * Creates the main window and starts the update loop, don't override this
	**/
	public function new() {
		Sdl.init();

		callbacks = new WindowCallbacks();

		var windowSize = DefineMacro.getDefineValue('windowResolution').split(',');
		mainWindow = new sdl.Window(DefineMacro.getDefineValue('windowTitle'), 
			Std.parseInt(windowSize[0]), Std.parseInt(windowSize[1]), 0, 0, 
			Window.SDL_WINDOW_SHOWN | Window.SDL_WINDOW_RESIZABLE);
		mainWindow.center();

		initBuffers();

		#if windowVsync mainWindow.vsync = true; #end
		GL.viewport(0, 0, Std.parseInt(windowSize[0]), Std.parseInt(windowSize[1]));
		Sprite.projection = Matrix4.orthographic(0, Std.parseInt(windowSize[0]), Std.parseInt(windowSize[1]), 0);

		scene = new Scene();

		init();

		var lastTime = Sys.time();
		while (true) {
			var newTime = Sys.time();
			if (!Sdl.processEvents(onEvent)) break;

			update(newTime - lastTime);
			scene.draw();
			mainWindow.present();

			lastTime = newTime;
			if (mainWindow.vsync) Sys.sleep(1 / 60);
		}

		Sound.stopEngine();
	}


	private function initBuffers() {
		var vertex:Array<Single> = [
			1, 1, 	1, 1, // top right
			1, -1, 	1, 0, // bottom right
			-1, -1, 0, 0, // bottom left
			-1, 1, 	0, 1, // top left
		]; 

		var indices:Array<UInt> = [
			0, 1, 3, // first triangle
			1, 2, 3  // second triangle
		];

		var vertexBytes = hl.Bytes.getArray(vertex); 
		var indiceBytes = hl.Bytes.getArray(indices); 
		
		_glVbo = GL.createBuffer();
		_glEbo = GL.createBuffer();
 
		_glVao = GL.createVertexArray();

		GL.bindBuffer(GL.ARRAY_BUFFER, _glVbo);
		GL.bufferData(GL.ARRAY_BUFFER, vertex.length * 4, vertexBytes, GL.STATIC_DRAW); 

		GL.bindBuffer(GL.ELEMENT_ARRAY_BUFFER, _glEbo);
		GL.bufferData(GL.ELEMENT_ARRAY_BUFFER, indices.length * 4, indiceBytes, GL.STATIC_DRAW);

		GL.bindVertexArray(_glVao);

		GL.vertexAttribPointer(0, 2, GL.FLOAT, false, 4 * 4, 0);
		GL.enableVertexAttribArray(0);

		GL.vertexAttribPointer(1, 2, GL.FLOAT, false, 4 * 4, 2 * 4);
		GL.enableVertexAttribArray(1);
	}

	/** 
	 * Called after the window gets initialized, override this when creating a new app
	**/
	public function init():Void {}

	/**
	 * Main update function
	 * @param Delta time between the last update call in seconds
	**/
	public function update(delta:Float):Void {}

	/**
	 * Called when a SDL event gets called
	 * @param event The SDL event in question:
	**/
	@:dox(show)
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