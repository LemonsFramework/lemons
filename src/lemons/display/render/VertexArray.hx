package lemons.display.render;

import lemons.display.render.drivers.Driver;

class VertexArray {
	var _nativeBufferHandle:Int = -1;
	var _nativeHandle:Int = -1;
	var driver:Driver;

	public function new(driver:Driver) {
		this.driver = driver;
		_nativeBufferHandle = driver.createNativeVertexBuffer();
		_nativeHandle = driver.createNativeVertexArray();
	}

	public function bufferData(arr:Array<Single>) {
		driver.bufferVertexBuffer(_nativeHandle, arr);
	}
}