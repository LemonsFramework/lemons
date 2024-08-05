package lemons.display.render;

import lemons.display.render.drivers.Driver;

class VertexArray {
	var _nativeHandle:Int = -1;
	var driver:Driver;

	public function new(driver:Driver) {
		this.driver = driver;
		_nativeHandle = driver.createNativeVertexArray();
		trace(_nativeHandle);
	}

	public function bufferData(arr:Array<Single>) {
		driver.bufferVertexArray(_nativeHandle, arr);
	} 
}