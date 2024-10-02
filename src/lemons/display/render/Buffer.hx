package lemons.display.render;

import lemons.display.render.drivers.Driver;

enum abstract BufferType(Int) to Int {
	var VERTEX = 0;
	var ELEMENT = 1;
}

/**
 * defines the buffer mode for a mesh object
**/
enum abstract BufferUploadMode(Int) from Int to Int {
    /**
     * stream buffer type, ideal for changing vertex data sub-each frame
    **/
    var STREAM = 0;

    /**
     * Static buffer type, ideal to re-use prebuilt vertex data
    **/
    var STATIC = 1;

    /**
     * dynamic buffer type, ideal for occasional data updates
    **/
    var DYNAMIC = 2;
}

@:allow(lemons.display.render.Renderer)
@:generic
class Buffer<T> implements IDestroyable {
	var _nativeHandle:Int = -1;
	var _needsReupload:Bool = false;
	var _needsAllocation:Bool = false;	
	var _bufferMode:BufferUploadMode = STATIC;	

	public var data(default, null):Array<T>;
	
	public function new(mode:BufferUploadMode) {
		_bufferMode = mode;
		_needsAllocation = true;
	}

	public function bufferData(arr:Array<T>) {
		data = arr.copy();
		_needsReupload = true;
	}

	public function clear() {
		data = [];
		_needsReupload = true;
	}

	public function destroy() {
		data = null;
		// TODO: tell the driver to delete the handle here
	}
}

typedef SingleBuffer = Buffer<Single>;
typedef UIntBuffer = Buffer<UInt>;