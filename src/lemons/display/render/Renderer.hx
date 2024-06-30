package lemons.display.render;

import lemons.display.render.*;
import lemons.display.render.drivers.*;

enum abstract RendererType(String) from String {
	var OPENGL = "OPENGL";
	var VULKAN = "VULKAN";
	var DIRECTX = "DIRECTX";
	var METAL = "METAL";
}

@:access(lemons.display.render.GLFWWindow.windowHandle)
class Renderer {
	var window:Window;
	public var driver:Driver;

	public function new(renderer:RendererType, width:Int, height:Int, window:Window) {
		this.window = window;

		driver = switch (renderer) {
			case OPENGL: new OpenGLDriver();
			default: null;
		}

		driver.selectWindow(window);
		var successs:Bool = driver.init();

		if (!successs) 
			throw 'unable to initialize driver';

		driver.setViewport(0, 0, width, height);
	}

	public function prepare() {
		driver.prepare();
	}
}