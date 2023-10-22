package lemons.sound;

import openal.*;
import lemons.sound.Sound;
import lemons.util.IDestroyable;

class Effect implements IDestroyable {
	@:allow(sound.Sound)
	public var alEffect:EFX.Effect;
	public function new(effectType:Int) {
		EFX.genEffects(1, Sound.tempBytes);
		alEffect = EFX.Effect.ofInt(Sound.tempBytes.getI32(0));	
		EFX.effecti(alEffect, EFX.EFFECT_TYPE, effectType);
	}

	public function destroy():Void {
		Sound.tempBytes.setI32(0, alEffect.toInt());
		EFX.deleteEffects(1, Sound.tempBytes);
	}

	// helpers
	private function getInt(key:Int) return EFX.getEffecti(alEffect, key);
	private function getFloat(key:Int) return EFX.getEffectf(alEffect, key);
	private function setInt(key:Int, value:Int) { EFX.effecti(alEffect, key, value); return value; }
	private function setFloat(key:Int, value:Float) { EFX.effectf(alEffect, key, value); return value; }

	private static function __init__() AL.loadExtensions();
}

class ReverbEffect extends Effect {
	@:isVar public var density(get, set):Float;
	@:isVar public var diffusion(get, set):Float;
	@:isVar public var gain(get, set):Float;
	@:isVar public var gainHF(get, set):Float;
	@:isVar public var decayTime(get, set):Float;
	@:isVar public var decayHFRatio(get, set):Float;
	@:isVar public var reflectionGain(get, set):Float;
	@:isVar public var reflectionDelay(get, set):Float;
	@:isVar public var lateReverbGain(get, set):Float;
	@:isVar public var lateReverbDelay(get, set):Float;
	@:isVar public var airAbsorptionGainHF(get, set):Float;
	@:isVar public var roomRolloffFactor(get, set):Float;
	@:isVar public var decayHFLimit(get, set):Float;

	public function new() super(EFX.EFFECT_REVERB);

	function get_density():Float return getFloat(EFX.REVERB_DENSITY);
	function get_diffusion():Float return getFloat(EFX.REVERB_DIFFUSION);
	function get_gain():Float return getFloat(EFX.REVERB_GAIN);
	function get_gainHF():Float return getFloat(EFX.REVERB_GAINHF);
	function get_decayTime():Float return getFloat(EFX.REVERB_DECAY_TIME);
	function get_decayHFRatio():Float return getFloat(EFX.REVERB_DECAY_HFRATIO);
	function get_reflectionGain():Float return getFloat(EFX.REVERB_REFLECTIONS_GAIN);
	function get_reflectionDelay():Float return getFloat(EFX.REVERB_REFLECTIONS_DELAY);
	function get_lateReverbGain():Float return getFloat(EFX.REVERB_LATE_REVERB_GAIN);
	function get_lateReverbDelay():Float return getFloat(EFX.REVERB_LATE_REVERB_DELAY);
	function get_airAbsorptionGainHF():Float return getFloat(EFX.REVERB_AIR_ABSORPTION_GAINHF);
	function get_roomRolloffFactor():Float return getFloat(EFX.REVERB_ROOM_ROLLOFF_FACTOR);
	function get_decayHFLimit():Float return getFloat(EFX.REVERB_DECAY_HFLIMIT);

	function set_density(value:Float):Float return setFloat(EFX.REVERB_DENSITY, value);
	function set_diffusion(value:Float):Float return setFloat(EFX.REVERB_DIFFUSION, value);
	function set_gain(value:Float):Float return setFloat(EFX.REVERB_GAIN, value);
	function set_gainHF(value:Float):Float return setFloat(EFX.REVERB_GAINHF, value);
	function set_decayTime(value:Float):Float return setFloat(EFX.REVERB_DECAY_TIME, value);
	function set_decayHFRatio(value:Float):Float return setFloat(EFX.REVERB_DECAY_HFRATIO, value);
	function set_reflectionGain(value:Float):Float return setFloat(EFX.REVERB_REFLECTIONS_GAIN, value);
	function set_reflectionDelay(value:Float):Float return setFloat(EFX.REVERB_REFLECTIONS_DELAY, value);
	function set_lateReverbGain(value:Float):Float return setFloat(EFX.REVERB_LATE_REVERB_GAIN, value);
	function set_lateReverbDelay(value:Float):Float return setFloat(EFX.REVERB_LATE_REVERB_DELAY, value);
	function set_airAbsorptionGainHF(value:Float):Float return setFloat(EFX.REVERB_AIR_ABSORPTION_GAINHF, value);
	function set_roomRolloffFactor(value:Float):Float return setFloat(EFX.REVERB_ROOM_ROLLOFF_FACTOR, value);
	function set_decayHFLimit(value:Float):Float return setFloat(EFX.REVERB_DECAY_HFLIMIT, value);
}

class DistortionEffect extends Effect {
	@:isVar public var edge(get, set):Float;
	@:isVar public var gain(get, set):Float;
	@:isVar public var lowpassCutoff(get, set):Float;
	@:isVar public var eqCenter(get, set):Float;
	@:isVar public var eqBandwidth(get, set):Float;

	public function new() super(EFX.EFFECT_DISTORTION);

	function get_edge():Float return getFloat(EFX.DISTORTION_EDGE);
	function get_gain():Float return getFloat(EFX.DISTORTION_GAIN);
	function get_lowpassCutoff():Float return getFloat(EFX.DISTORTION_LOWPASS_CUTOFF);
	function get_eqCenter():Float return getFloat(EFX.DISTORTION_EQCENTER);
	function get_eqBandwidth():Float return getFloat(EFX.DISTORTION_EQBANDWIDTH);

	function set_edge(value:Float):Float return setFloat(EFX.DISTORTION_EDGE, value);
	function set_gain(value:Float):Float return setFloat(EFX.DISTORTION_GAIN, value);
	function set_lowpassCutoff(value:Float):Float return setFloat(EFX.DISTORTION_LOWPASS_CUTOFF, value);
	function set_eqCenter(value:Float):Float return setFloat(EFX.DISTORTION_EQCENTER, value);
	function set_eqBandwidth(value:Float):Float return setFloat(EFX.DISTORTION_EQBANDWIDTH, value);
}

class EchoEffect extends Effect {
	@:isVar public var delay(get, set):Float;
	@:isVar public var stereoDelay(get, set):Float;
	@:isVar public var damping(get, set):Float;
	@:isVar public var feedback(get, set):Float;
	@:isVar public var spread(get, set):Float;

	public function new() super(EFX.EFFECT_ECHO);

	function get_delay():Float return getFloat(EFX.ECHO_DELAY);
	function get_stereoDelay():Float return getFloat(EFX.ECHO_LRDELAY);
	function get_damping():Float return getFloat(EFX.ECHO_DAMPING);
	function get_feedback():Float return getFloat(EFX.ECHO_FEEDBACK);
	function get_spread():Float return getFloat(EFX.ECHO_SPREAD);

	function set_delay(value:Float):Float return setFloat(EFX.ECHO_DELAY, value);
	function set_stereoDelay(value:Float):Float return setFloat(EFX.ECHO_LRDELAY, value);
	function set_damping(value:Float):Float return setFloat(EFX.ECHO_DAMPING, value);
	function set_feedback(value:Float):Float return setFloat(EFX.ECHO_FEEDBACK, value);
	function set_spread(value:Float):Float return setFloat(EFX.ECHO_SPREAD, value);
}

class FlangerEffect extends Effect {
	@:isVar public var waveform(get, set):Float;
	@:isVar public var phase(get, set):Int;
	@:isVar public var rate(get, set):Float;
	@:isVar public var depth(get, set):Float;
	@:isVar public var feedback(get, set):Float;
	@:isVar public var delay(get, set):Float;

	public function new() super(EFX.EFFECT_FLANGER);

	function get_waveform():Float return getFloat(EFX.FLANGER_WAVEFORM);
	function get_phase():Int return getInt(EFX.FLANGER_PHASE);
	function get_rate():Float return getFloat(EFX.FLANGER_RATE);
	function get_depth():Float return getFloat(EFX.FLANGER_DEPTH);
	function get_feedback():Float return getFloat(EFX.FLANGER_FEEDBACK);
	function get_delay():Float return getFloat(EFX.FLANGER_DELAY);

	function set_waveform(value:Float):Float return setFloat(EFX.FLANGER_WAVEFORM, value);
	function set_phase(value:Int):Int return setInt(EFX.FLANGER_PHASE, value);
	function set_rate(value:Float):Float return setFloat(EFX.FLANGER_RATE, value);
	function set_depth(value:Float):Float return setFloat(EFX.FLANGER_DEPTH, value);
	function set_feedback(value:Float):Float return setFloat(EFX.FLANGER_FEEDBACK, value);
	function set_delay(value:Float):Float return setFloat(EFX.FLANGER_DELAY, value);
}

class RingModulatorEffect extends Effect {
	@:isVar public var frequency(get, set):Float;
	@:isVar public var highpassCutoff(get, set):Float;
	@:isVar public var waveform(get, set):Float;

	public function new() super(EFX.EFFECT_RING_MODULATOR);

	function get_frequency():Float return getFloat(EFX.RING_MODULATOR_FREQUENCY);
	function get_highpassCutoff():Float return getFloat(EFX.RING_MODULATOR_HIGHPASS_CUTOFF);
	function get_waveform():Float return getFloat(EFX.RING_MODULATOR_WAVEFORM);

	function set_frequency(value:Float):Float return setFloat(EFX.RING_MODULATOR_FREQUENCY, value);
	function set_highpassCutoff(value:Float):Float return setFloat(EFX.RING_MODULATOR_HIGHPASS_CUTOFF, value);
	function set_waveform(value:Float):Float return setFloat(EFX.RING_MODULATOR_WAVEFORM, value);
}

class CompressorEffect extends Effect {
	@:isVar public var enabled(get, set):Bool;

	public function new() super(EFX.EFFECT_COMPRESSOR);

	function get_enabled():Bool return getInt(EFX.COMPRESSOR_ONOFF) == 1;

	function set_enabled(value:Bool):Bool return setFloat(EFX.COMPRESSOR_ONOFF, (value ? 1 : 0)) == 1;
}

class EqualizerEffect extends Effect {
	@:isVar public var lowGain(get, set):Float;
	@:isVar public var lowCutoff(get, set):Float;

	@:isVar public var mid1Gain(get, set):Float;
	@:isVar public var mid1Center(get, set):Float;
	@:isVar public var mid1Width(get, set):Float;
	@:isVar public var mid2Gain(get, set):Float;
	@:isVar public var mid2Center(get, set):Float;
	@:isVar public var mid2Width(get, set):Float;

	@:isVar public var highGain(get, set):Float;
	@:isVar public var highCutoff(get, set):Float;

	public function new() super(EFX.EFFECT_EQUALIZER);

	function get_lowGain():Float return getFloat(EFX.EQUALIZER_LOW_GAIN);
	function get_lowCutoff():Float return getFloat(EFX.EQUALIZER_LOW_CUTOFF);
	function get_mid1Gain():Float return getFloat(EFX.EQUALIZER_MID1_GAIN);
	function get_mid1Center():Float return getFloat(EFX.EQUALIZER_MID1_CENTER);
	function get_mid1Width():Float return getFloat(EFX.EQUALIZER_MID1_WIDTH);
	function get_mid2Gain():Float return getFloat(EFX.EQUALIZER_MID2_GAIN);
	function get_mid2Center():Float return getFloat(EFX.EQUALIZER_MID2_CENTER);
	function get_mid2Width():Float return getFloat(EFX.EQUALIZER_MID2_WIDTH);
	function get_highGain():Float return getFloat(EFX.EQUALIZER_HIGH_GAIN);
	function get_highCutoff():Float return getFloat(EFX.EQUALIZER_HIGH_CUTOFF);

	function set_lowGain(value:Float):Float return setFloat(EFX.EQUALIZER_LOW_GAIN, value);
	function set_lowCutoff(value:Float):Float return setFloat(EFX.EQUALIZER_LOW_CUTOFF, value);
	function set_mid1Gain(value:Float):Float return setFloat(EFX.EQUALIZER_MID1_GAIN, value);
	function set_mid1Center(value:Float):Float return setFloat(EFX.EQUALIZER_MID1_CENTER, value);
	function set_mid1Width(value:Float):Float return setFloat(EFX.EQUALIZER_MID1_WIDTH, value);
	function set_mid2Gain(value:Float):Float return setFloat(EFX.EQUALIZER_MID2_GAIN, value);
	function set_mid2Center(value:Float):Float return setFloat(EFX.EQUALIZER_MID2_CENTER, value);
	function set_mid2Width(value:Float):Float return setFloat(EFX.EQUALIZER_MID2_WIDTH, value);
	function set_highGain(value:Float):Float return setFloat(EFX.EQUALIZER_HIGH_GAIN, value);
	function set_highCutoff(value:Float):Float return setFloat(EFX.EQUALIZER_HIGH_CUTOFF, value);
}

class EAXReverbEffect extends Effect {
	@:isVar public var density(get, set):Float;
	@:isVar public var diffusion(get, set):Float;
	@:isVar public var gain(get, set):Float;
	@:isVar public var gainHF(get, set):Float;
	@:isVar public var gainLF(get, set):Float;
	@:isVar public var decayTime(get, set):Float;
	@:isVar public var decayHFRatio(get, set):Float;
	@:isVar public var decayLFRatio(get, set):Float;
	@:isVar public var reflectionsGain(get, set):Float;
	@:isVar public var reflectionsDelay(get, set):Float;
	@:isVar public var reflectionsPan(get, set):Float;
	@:isVar public var lateReverbGain(get, set):Float;
	@:isVar public var lateReverbDelay(get, set):Float;
	@:isVar public var lateReverbPan(get, set):Float;
	@:isVar public var echoTime(get, set):Float;
	@:isVar public var echoDepth(get, set):Float;
	@:isVar public var modulationTime(get, set):Float;
	@:isVar public var modulationDepth(get, set):Float;
	@:isVar public var airAbsorptionGainHF(get, set):Float;
	@:isVar public var HFReference(get, set):Float;
	@:isVar public var LFReference(get, set):Float;
	@:isVar public var roomRolloffFactor(get, set):Float;
	@:isVar public var decayHFLimit(get, set):Float;

	public function new() super(EFX.EFFECT_EAXREVERB);

	function get_density():Float return getFloat(EFX.EAXREVERB_DENSITY);
	function get_diffusion():Float return getFloat(EFX.EAXREVERB_DIFFUSION);
	function get_gain():Float return getFloat(EFX.EAXREVERB_GAIN);
	function get_gainHF():Float return getFloat(EFX.EAXREVERB_GAINHF);
	function get_gainLF():Float return getFloat(EFX.EAXREVERB_GAINLF);
	function get_decayTime():Float return getFloat(EFX.EAXREVERB_DECAY_TIME);
	function get_decayHFRatio():Float return getFloat(EFX.EAXREVERB_DECAY_HFRATIO);
	function get_decayLFRatio():Float return getFloat(EFX.EAXREVERB_DECAY_LFRATIO);
	function get_reflectionsGain():Float return getFloat(EFX.EAXREVERB_REFLECTIONS_GAIN);
	function get_reflectionsDelay():Float return getFloat(EFX.EAXREVERB_REFLECTIONS_DELAY);
	function get_reflectionsPan():Float return getFloat(EFX.EAXREVERB_REFLECTIONS_PAN);
	function get_lateReverbGain():Float return getFloat(EFX.EAXREVERB_LATE_REVERB_GAIN);
	function get_lateReverbDelay():Float return getFloat(EFX.EAXREVERB_LATE_REVERB_DELAY);
	function get_lateReverbPan():Float return getFloat(EFX.EAXREVERB_LATE_REVERB_PAN);
	function get_echoTime():Float return getFloat(EFX.EAXREVERB_ECHO_TIME);
	function get_echoDepth():Float return getFloat(EFX.EAXREVERB_ECHO_DEPTH);
	function get_modulationTime():Float return getFloat(EFX.EAXREVERB_MODULATION_TIME);
	function get_modulationDepth():Float return getFloat(EFX.EAXREVERB_MODULATION_DEPTH);
	function get_airAbsorptionGainHF():Float return getFloat(EFX.EAXREVERB_AIR_ABSORPTION_GAINHF);
	function get_HFReference():Float return getFloat(EFX.EAXREVERB_HFREFERENCE);
	function get_LFReference():Float return getFloat(EFX.EAXREVERB_LFREFERENCE);
	function get_roomRolloffFactor():Float return getFloat(EFX.EAXREVERB_ROOM_ROLLOFF_FACTOR);
	function get_decayHFLimit():Float return getFloat(EFX.EAXREVERB_DECAY_HFLIMIT);

	function set_density(value:Float):Float return setFloat(EFX.EAXREVERB_DENSITY, value);
	function set_diffusion(value:Float):Float return setFloat(EFX.EAXREVERB_DIFFUSION, value);
	function set_gain(value:Float):Float return setFloat(EFX.EAXREVERB_GAIN, value);
	function set_gainHF(value:Float):Float return setFloat(EFX.EAXREVERB_GAINHF, value);
	function set_gainLF(value:Float):Float return setFloat(EFX.EAXREVERB_GAINLF, value);
	function set_decayTime(value:Float):Float return setFloat(EFX.EAXREVERB_DECAY_TIME, value);
	function set_decayHFRatio(value:Float):Float return setFloat(EFX.EAXREVERB_DECAY_HFRATIO, value);
	function set_decayLFRatio(value:Float):Float return setFloat(EFX.EAXREVERB_DECAY_LFRATIO, value);
	function set_reflectionsGain(value:Float):Float return setFloat(EFX.EAXREVERB_REFLECTIONS_GAIN, value);
	function set_reflectionsDelay(value:Float):Float return setFloat(EFX.EAXREVERB_REFLECTIONS_DELAY, value);
	function set_reflectionsPan(value:Float):Float return setFloat(EFX.EAXREVERB_REFLECTIONS_PAN, value);
	function set_lateReverbGain(value:Float):Float return setFloat(EFX.EAXREVERB_LATE_REVERB_GAIN, value);
	function set_lateReverbDelay(value:Float):Float return setFloat(EFX.EAXREVERB_LATE_REVERB_DELAY, value);
	function set_lateReverbPan(value:Float):Float return setFloat(EFX.EAXREVERB_LATE_REVERB_PAN, value);
	function set_echoTime(value:Float):Float return setFloat(EFX.EAXREVERB_ECHO_TIME, value);
	function set_echoDepth(value:Float):Float return setFloat(EFX.EAXREVERB_ECHO_DEPTH, value);
	function set_modulationTime(value:Float):Float return setFloat(EFX.EAXREVERB_MODULATION_TIME, value);
	function set_modulationDepth(value:Float):Float return setFloat(EFX.EAXREVERB_MODULATION_DEPTH, value);
	function set_airAbsorptionGainHF(value:Float):Float return setFloat(EFX.EAXREVERB_AIR_ABSORPTION_GAINHF, value);
	function set_HFReference(value:Float):Float return setFloat(EFX.EAXREVERB_HFREFERENCE, value);
	function set_LFReference(value:Float):Float return setFloat(EFX.EAXREVERB_LFREFERENCE, value);
	function set_roomRolloffFactor(value:Float):Float return setFloat(EFX.EAXREVERB_ROOM_ROLLOFF_FACTOR, value);
	function set_decayHFLimit(value:Float):Float return setFloat(EFX.EAXREVERB_DECAY_HFLIMIT, value);

}


// these effects dont work??

class ChorusEffect extends Effect {
	public function new() super(EFX.EFFECT_CHORUS);
}

class FrequencyShifterEffect extends Effect {
	public function new() super(EFX.EFFECT_FREQUENCY_SHIFTER);
}

class VocalMorpherEffect extends Effect {
	public function new() super(EFX.EFFECT_VOCAL_MORPHER);
}

class PitchShifterEffect extends Effect {
	public function new() super(EFX.EFFECT_PITCH_SHIFTER);
}

class AutowahEffect extends Effect {
	public function new() super(EFX.EFFECT_AUTOWAH);
}