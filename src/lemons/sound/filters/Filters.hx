package lemons.sound.filters;

import openal.*;
import lemons.sound.Sound;
import lemons.util.IDestroyable;

class Filter implements IDestroyable {
	public var alFilter:EFX.Filter;
	public function new(filterType:Int) {
		EFX.genFilters(1, Sound.tempBytes);
		alFilter = EFX.Filter.ofInt(Sound.tempBytes.getI32(0));	
		EFX.filteri(alFilter, EFX.FILTER_TYPE, filterType);
	}

	public function destroy():Void {
		Sound.tempBytes.setI32(0, alFilter.toInt());
		EFX.deleteFilters(1, Sound.tempBytes);
	}
}

class LowPassFilter extends Filter {
	@:isVar public var gain(get, set):Float;
	@:isVar public var gainHF(get, set):Float;

	public function new() {
		super(EFX.FILTER_LOWPASS);

		gain = 1;
		gainHF = 1;
	}

	function get_gain():Float
		return EFX.getFilterf(alFilter, EFX.LOWPASS_GAIN);
	function set_gain(value:Float):Float {
		EFX.filterf(alFilter, EFX.LOWPASS_GAIN, value);
		return gain = value;
	}

	function get_gainHF():Float
		return EFX.getFilterf(alFilter, EFX.LOWPASS_GAINHF);
	function set_gainHF(value:Float):Float {
		EFX.filterf(alFilter, EFX.LOWPASS_GAINHF, value);
		return gainHF = value;
	}
}

class HighPassFilter extends Filter {
	@:isVar public var gain(get, set):Float;
	@:isVar public var gainLF(get, set):Float;

	public function new() {
		super(EFX.FILTER_HIGHPASS);

		gain = 1;
		gainLF = 1;
	}

	function get_gain():Float
		return EFX.getFilterf(alFilter, EFX.HIGHPASS_GAIN);
	function set_gain(value:Float):Float {
		EFX.filterf(alFilter, EFX.HIGHPASS_GAIN, value);
		return gain = value;
	}

	function get_gainLF():Float
		return EFX.getFilterf(alFilter, EFX.HIGHPASS_GAINLF);
	function set_gainLF(value:Float):Float {
		EFX.filterf(alFilter, EFX.HIGHPASS_GAINLF, value);
		return gainLF = value;
	}
}

class BandPassFilter extends Filter {
	@:isVar public var gain(get, set):Float;
	@:isVar public var gainLF(get, set):Float;
	@:isVar public var gainHF(get, set):Float;

	public function new() {
		super(EFX.FILTER_BANDPASS);

		gain = 1;
		gainLF = 1;
		gainHF = 1;
	}

	function get_gain():Float
		return EFX.getFilterf(alFilter, EFX.BANDPASS_GAIN);
	function set_gain(value:Float):Float {
		EFX.filterf(alFilter, EFX.BANDPASS_GAIN, value);
		return gain = value;
	}

	function get_gainLF():Float
		return EFX.getFilterf(alFilter, EFX.BANDPASS_GAINLF);
	function set_gainLF(value:Float):Float {
		EFX.filterf(alFilter, EFX.BANDPASS_GAINLF, value);
		return gainHF = value;
	}
	function get_gainHF():Float
		return EFX.getFilterf(alFilter, EFX.BANDPASS_GAINHF);
	function set_gainHF(value:Float):Float {
		EFX.filterf(alFilter, EFX.BANDPASS_GAINHF, value);
		return gainHF = value;
	}
}