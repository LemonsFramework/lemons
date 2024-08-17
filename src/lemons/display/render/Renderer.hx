package lemons.display.render;

import lemons.display.render.*;
import lemons.display.render.drivers.*;

enum abstract RendererType(String) from String {
	var OPENGL = "OPENGL";
	var VULKAN = "VULKAN";
	var DIRECTX = "DIRECTX";
	var METAL = "METAL";
}

/** 
 * renderer of lemons, basically a front end for the driver backends
**/
@:access(lemons.display.render.GLFWWindow.windowHandle)
class Renderer {
	var window:Window;

	/** 
	 * driver used to render the game 
	**/
	public var driver:Driver;
	
	/** 
	 * creates a new `Renderer`
	 * @param renderer renderer type
	 * @param width width
	 * @param height height
	 * @param window window to render to
	**/
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

	public function createVertexArray():VertexArray {
		return new VertexArray(driver);
	}

	/** 
	 * prepares the renderer to start drawing a frame
	**/
	public function prepare() {
		driver.prepare();
	}
}