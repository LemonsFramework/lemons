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

/*
	FILE FORMATS TO IMPLEMENT:
	MP3
	FLAC?
	
	sitll have to optimize vorbis reading
*/
class SoundData implements IDestroyable {
	@:allow(sound.Sound)
	public var alBuffer:AL.Buffer;

	public var format:Int;

	public var sampleRate:Int;
	public var bitsPerSample:Int;
	public var bitrate:Int;

	public var channels:Int;

	public var data:hl.Bytes;
	public var dataLength:Int; // i have a absolute hatred for hl.Bytes, like it's meant to be a hl-specific
	// bytes class but its missing so many fucking features from the crossplatform haxe.io.Bytes
	// like why are some things just completley gone in it
	// theres no length variable at all, not even a private variable
	// and theres no getString function

	public function new() {
		AL.genBuffers(1, Sound.tempBytes);
		alBuffer = AL.Buffer.ofInt(Sound.tempBytes.getI32(0));
	}

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

				data = new hl.Bytes(s * c * 2);
				var offset = 0;
				while (true) {
					offset = Format.oggRead(reader, data.offset(offset), 44100 * (c * 2), 2);
					if (offset == 0)
						break;
				}
		        channels = c;
		        sampleRate = f;
		        format = getFormat(c, 16);
				dataLength = s * c * 2;

				uploadToBuffer();

			case 'riff':
				var wavFile:Data.WAVE = new Reader(new BytesInput(bytes)).read();
				format = getFormat(wavFile.header.channels, wavFile.header.bitsPerSample);
				sampleRate = wavFile.header.samplingRate;
				channels = wavFile.header.channels;
				bitsPerSample = wavFile.header.bitsPerSample;
				data = wavFile.data;
				dataLength = wavFile.data.length;
				uploadToBuffer();
			default:
				throw 'unknown sound format!!!\nfound signature: ${signature}';
		}
	}

	public static function createFromBytes(bytes:Bytes):SoundData {
		var daNewData = new SoundData();
		daNewData.fromBytes(bytes);
		return daNewData;
	}

	private function uploadToBuffer()
		AL.bufferData(alBuffer, format, data, dataLength, sampleRate);

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