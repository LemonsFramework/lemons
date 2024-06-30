package lemons;

class Time {
	public static var fps(get, never):Int;
	public static var delta(default, null):Float;

	static function get_fps():Int return Math.round(1 / delta);

	static public var desiredDelta:Float = 1 / 60;

	static var lastTimestamp:Float = 0;
	static public function startLoop(updateFunc:Void->Void, app:lemons.App) {
		while (app.window.live) {
			final time:Float = app.window.time;
			delta = time - lastTimestamp;
			if (delta <= desiredDelta) continue;
			lastTimestamp = time;

			updateFunc();

			app.window.update();
		}
	}
}