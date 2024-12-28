package lemons.display;

import haxe.io.Bytes;


/**
 * specifies in what colour format the raw image data is stored in
**/ 
enum abstract ImageFormat(Int) to Int {
	/**
	 * indicates 4 values in order of red, green, blue and alpha, all using 8 bits and 32 bits in total
	**/ 
	var RGBA32  = 0;

	/**
	 * indicates a greyscale image with only one value, red, using 8 bits
	**/ 
	var RED8	= 1;

	/**
	 * red 8 more like uhhhhhhhhh red 40
	 * haha get it
	 * red 40
	 * 
	 * red fourty
	 * 
	 * nevertheless, this is the same as `RED8`
	**/ 
	var RED40	= 1;
}

/** 
 * an image
**/
class Image {
	public final bytes:Bytes;

	function new(bytes:Bytes, format:ImageFormat) {
		this.bytes = bytes;
	}
}