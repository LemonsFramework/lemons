package lemons.display;

import sdl.GL.Texture as GLTexture;
import sdl.GL;
import haxe.io.Bytes;
import lemons.util.IDestroyable;
import hl.Format.PixelFormat;
import format.png.Tools as PNGTools;
import format.png.Reader as PNGReader;
import haxe.io.BytesInput;

enum TextureFiltering {
	LINEAR;
	NEAREST_NEIGHBOUR;
}

class Texture implements IDestroyable {
	private var glTexture:GLTexture;
	public var data:Bytes;
	public var format:PixelFormat;

	public var width:Int;
	public var height:Int;

	public function new(width:Int, height:Int) {
		this.width = width;
		this.height = height;
		glTexture = GL.createTexture();
		format = RGBA;
		use();
		GL.texParameteri(GL.TEXTURE_2D, GL.TEXTURE_WRAP_S, GL.REPEAT);
		GL.texParameteri(GL.TEXTURE_2D, GL.TEXTURE_WRAP_T, GL.REPEAT);
	}

	private function uploadToGL() {
		use();
		GL.texImage2D(GL.TEXTURE_2D, 0, fromPixelFormat(format), width, height, 0, GL.RGBA, GL.UNSIGNED_BYTE, data);
		GL.generateMipmap(GL.TEXTURE_2D);
	}

	public function use() GL.bindTexture(GL.TEXTURE_2D, glTexture);

	public function destroy():Void {
		data = null;
		GL.deleteTexture(glTexture);
	}

	public static function fromBytes(bytes:Bytes):Texture {
		var tex:Texture = new Texture(0, 0);
		try {
			var format = PNGTools.getHeader(new PNGReader(new BytesInput(bytes)).read());
			tex.width = format.width;
			tex.height = format.height;

			var daData:Bytes = Bytes.alloc(format.width * format.height);
			hl.Format.decodePNG(bytes, bytes.length, daData, format.width, format.height, 0, RGBA, 0);
			tex.data = daData;
			tex.uploadToGL();
		} catch(e) {}
		return tex;
	}

	private static function fromPixelFormat(format:PixelFormat)
		return switch(format) {
			case RGB: GL.RGB;

			case BGR: GL.BGRA;
			case BGRA: GL.BGRA;
			case BGRX: GL.BGRA;

			case RGBX: GL.RGB;
			case RGBA: GL.RGBA;
			default: throw 'unknown pixel fomat !!';
		}
}