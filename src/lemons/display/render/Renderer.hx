package lemons.display.render;

import lemons.display.render.*;
import lemons.display.render._backend.*;

enum abstract RendererType(String) from String {
	var OPENGL = "OPENGL";
	var VULKAN = "VULKAN";
	var DIRECTX = "DIRECTX";
	var METAL = "METAL";
}

@:access(lemons.display.render.GLFWWindow.windowHandle)
class Renderer {
	var window:Window;

	public function new(renderer:RendererType, width:Int, height:Int, window:Window) {

		this.window = window;
	}
}