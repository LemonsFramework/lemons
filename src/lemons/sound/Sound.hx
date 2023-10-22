package lemons.sound;

import openal.*;
import hl.Bytes;
import lemons.geom.Vector3;
import lemons.sound.*;
import lemons.sound.Filters.Filter;
import lemons.sound.Effects.Effect;
import lemons.util.IDestroyable;
import sys.io.File;

@:allow(Main)
class Sound implements IDestroyable {
	public static var tempBytes:Bytes;
	public var alSource:AL.Source;
	private var alEffectSlot:EFX.EffectSlot;

	public var data:SoundData;

	public var duration(default, null):Float;
	public var time(get, set):Float;

	@:isVar public var loop(get, set):Bool;

	@:isVar public var pitch(get, set):Float;
	@:isVar public var volume(get, set):Float;

	public var pan(default, set):Float;
	public var velocity(default, set):Vector3;

	public var filter(default, set):Filter;
	public var effect(default, set):Effect;

	public function new():Void {
		AL.genSources(1, tempBytes);
		alSource = AL.Source.ofInt(tempBytes.getI32(0));

		EFX.genAuxiliaryEffectSlots(1, tempBytes);
		alEffectSlot = EFX.EffectSlot.ofInt(tempBytes.getI32(0));
		AL.source3i(alSource, EFX.AUXILIARY_SEND_FILTER, alEffectSlot.toInt(), 0, EFX.FILTER_NULL);

		AL.sourcei(alSource, AL.SOURCE_RELATIVE, AL.TRUE);
		pan = 0.5;
		velocity = new Vector3(0, 0, 0);

		pitch = 1;
		volume = 1;

		loop = false;
	}

	public function loadBuffer(buffer:AL.Buffer) {
		AL.sourcei(alSource, AL.BUFFER, buffer.toInt());
		duration = AL.getBufferi(buffer, AL.SIZE) / (AL.getBufferi(buffer, AL.CHANNELS) * (AL.getBufferi(buffer, AL.BITS) / 8));
	}

	public function loadSoundData(data:SoundData) {
		this.data = data;
		loadBuffer(data.alBuffer);
	}

	public function play():Void
		AL.sourcePlay(alSource);

	public function pause():Void
		AL.sourcePause(alSource);

	public function destroy():Void {
		tempBytes.setI32(0, alEffectSlot.toInt());
		EFX.deleteAuxiliaryEffectSlots(1, tempBytes);

		tempBytes.setI32(0, alSource.toInt());
		AL.deleteSources(1, tempBytes);

		data = null;
	}

	public static function getErrorString(?error:Int):String {
		if (error == null) error = AL.getError();
		return switch(error) {
			case AL.NO_ERROR: 'No error';
			case AL.INVALID_NAME: 'Invalid name';
			case AL.INVALID_ENUM: 'Invalid enum';
			case AL.INVALID_VALUE: 'Invalid value';
			case AL.INVALID_OPERATION: 'Invalid operation';
			case AL.OUT_OF_MEMORY: 'Out of memory';
			default: 'Unknown';
		}
	}

	private static function __init__() {
		@:privateAccess tempBytes = Bytes.alloc(1);
		var device = ALC.openDevice(ALC.getString(null, ALC.DEFAULT_DEVICE_SPECIFIER));
		var context = ALC.createContext(device, tempBytes);

		ALC.makeContextCurrent(context);
	}

	@:allow(lemons.App)
	private static function stopEngine() {
		var context:ALC.Context = ALC.getCurrentContext();
		var device:ALC.Device = ALC.getContextsDevice(context);
		ALC.closeDevice(device);
		ALC.destroyContext(context);
	}

	function get_loop():Bool return (AL.getSourcei(alSource, AL.LOOPING)) == 1;
	function set_loop(value:Bool):Bool {
		AL.sourcei(alSource, AL.LOOPING, (value ? 1 : 0));
		return loop = value;
	}

	function get_time():Float return AL.getSourcef(alSource, AL.SEC_OFFSET);
	function set_time(value:Float):Float {
		AL.sourcef(alSource, AL.SEC_OFFSET, value);
		return volume = value;
	}

	function set_filter(value:Filter):Filter {
		AL.sourcei(alSource, EFX.DIRECT_FILTER, value.alFilter.toInt());
		return filter = value;
	}

	function set_effect(value:Effect):Effect {
		EFX.auxiliaryEffectSloti(alEffectSlot, EFX.EFFECTSLOT_EFFECT, value.alEffect.toInt());
		return effect = value;
	}

	function get_volume():Float return AL.getSourcef(alSource, AL.GAIN);
	function set_volume(value:Float):Float {
		AL.sourcef(alSource, AL.GAIN, value);
		return volume = value;
	}

	function get_pitch():Float return AL.getSourcef(alSource, AL.PITCH);
	function set_pitch(value:Float):Float {
		AL.sourcef(alSource, AL.PITCH, value);
		return pitch = value;
	}

	function set_pan(value:Float):Float {
		AL.source3f(alSource, AL.POSITION, value * 2 - 1, 0, 0);
		return pan = value;
	}

	function set_velocity(value:Vector3):Vector3 {
		AL.source3f(alSource, AL.POSITION, value.x, value.y, value.z);
		return velocity = value;
	}


	public static function createFromBytes(data:haxe.io.Bytes):Sound {
		var sound:Sound = new Sound();
		sound.loadSoundData(SoundData.createFromBytes(data));
		return sound;
	}

	public static function createFromFile(path:String):Sound
		return Sound.createFromBytes(File.getBytes(path));

}