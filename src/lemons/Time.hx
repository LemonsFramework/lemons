package lemons;

/** 
 * time keeping singleton of lemons. contains the main loop and other variables related to timing  
**/
class Time {
	/** 
	 * instance of `Time`
	**/
	public static var self(default, null):Time;


	/** 
	 * target framerate of the game
	**/
	public  var fps(get, set):Int;

	/** 
	 * time between the last frame and current frame
	**/
	public  var delta(default, null):Float;

	/** 
	 * create a new instance of `Time`
	 * @throws Exception `cannot have more than one main loop` when a `Time` already exists. use `Time.self` instead
	**/
	public function new():Void {
		if (self != null) throw 'cannot have more than one main loop';
			
		self = this;
	}

	var _timestamp:Float = 0;
	var _delta:Float = 0;

	/** 
	 * starts the main loop
	 * @param updateFunc function to call when an update happens
	 * @param app a `lemons.App` with an existing window
	**/
	public function start(updateFunc:Void->Void, app:lemons.App) {
		while (app.window.live) {
			final time:Float = app.window.time;
			delta = time - _timestamp;

			if (delta <= _delta) Sys.sleep(_delta - delta);

			updateFunc();
			app.window.update();

			_timestamp = time;
		}
	}

	function get_fps():Int return Math.floor(1 / _delta);
	function set_fps(fps:Int):Int {
		_delta = 1 / fps;
		return fps;
	}
}