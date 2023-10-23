package lemons.sound;

import format.wav.*;
import openal.*;
import haxe.io.Bytes;
import haxe.io.BytesInput;
import lemons.sound.Sound;
import hl.Ref;
import hl.Format;
import lemons.util.IDestroyable;
import haxe.io.Path;

/** 
 * Class that holds the info and data of the sound
 * 
 * Basically a wrappper for openal's buffer
**/
class SoundData implements IDestroyable {
	@:allow(lemons.sound.Sound)
	private var alBuffer:AL.Buffer;

	/**
	 * Format value used for OpenAL
	**/
	public var format:Int;

	/**
	 * The sound's sample rate
	**/
	public var sampleRate:Int;

	/**
	 * Bits per sample of the sound
	**/
	public var bitsPerSample:Int;

	/**
	 * The sound's bitrate
	**/
	public var bitrate:Int;

	/**
	 * The ammound of audio channels in the sound
	**/
	public var channels:Int;

	/**
	 * Actual data of the sound
	**/
	public var data:Bytes;

	/** 
	 * Creates a new empty instance of `SoundData`
	 * 
	 * The instance won't be able to be used yet since it's empty
	**/
	public function new() {
		AL.genBuffers(1, Sound.tempBytes);
		alBuffer = AL.Buffer.ofInt(Sound.tempBytes.getI32(0));
	}

	/** 
	 * Loads the instance of SoundData with the specified bytes, note that the only formats that are supported are WAV, OGG, MP3 and FLAC
	 * @param bytes Bytes to load
	**/
	public function fromBytes(bytes:Bytes) {
		var signature:String = bytes.getString(0, 4);

		switch (signature.toLowerCase()) {
			case 'flac':
				throw 'unimplemented!! check back later!';

			case 'id3':
				// var mpegFile = new format.mp3.Reader(new BytesInput(bytes)).read();
				// if (format.mp3.Tools.isInvalidFrameHeader(mpegFile)) throw 'kill';
			case 'oggs':
				var reader = Format.openOgg(bytes, bytes.length);

				var b = 0, f = 0, s = 0, c = 0;
				Format.oggInfo(reader, b, f, s, c);

				data = Bytes.alloc(s * c * 2);
				var offset:Int = 0;
				while (true) {
					var balls:Int = Format.oggRead(reader, hl.Bytes.fromBytes(data).offset(offset), 4096, 2);
					if (balls == 0)
						break;
					offset += balls;
				}
		        channels = c;
		        sampleRate = f;
		        format = getFormat(c, 16);

				uploadToBuffer();

			case 'riff':
				var wavFile:Data.WAVE = new Reader(new BytesInput(bytes)).read();

				format = getFormat(wavFile.header.channels, wavFile.header.bitsPerSample);
				sampleRate = wavFile.header.samplingRate;
				channels = wavFile.header.channels;
				bitsPerSample = wavFile.header.bitsPerSample;

				data = wavFile.data;

				uploadToBuffer();
			default:
				throw 'unknown sound format!!!\nfound signature: ${signature}';
		}
	}

	/** 
	 * Creates a new instance of `SoundData` and loads the specified bytes
	 * @param bytes Bytes to load
	**/
	public static function createFromBytes(bytes:Bytes):SoundData {
		var daNewData = new SoundData();
		daNewData.fromBytes(bytes);
		return daNewData;
	}

	@:dox(hide)
	private function uploadToBuffer()
		AL.bufferData(alBuffer, format, data, data.length, sampleRate);

	/** 
	 * Helper function to get a openAL format specifer
	 * @param channels Ammount of channels
	 * @param bitsPerSample Bits per sample
	**/
	public static function getFormat(channels:Int, bitsPerSample:Int):Int // refactor this
		return switch (channels) {
			case 1:
				switch (bitsPerSample) {
					case 8:
						AL.FORMAT_MONO8;
					case 16:
						AL.FORMAT_MONO16;
					default: throw 'Invalid ammount of bits per sample! $bitsPerSample';
				}
			case 2:
				switch (bitsPerSample) {
					case 8:
						AL.FORMAT_STEREO8;
					case 16:
						AL.FORMAT_STEREO16;
					default: throw 'Invalid ammount of bits per sample! $bitsPerSample';
				}
			default: throw 'Invalid ammount of channels! $channels';
		}

	public function destroy():Void {
		Sound.tempBytes.setI32(0, alBuffer.toInt());
		AL.deleteBuffers(1, Sound.tempBytes);
		data = null;
	}
}