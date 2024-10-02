package lemons.display.render;

import lemons.display.render.*;
import lemons.display.Mesh;
import lemons.display.render.Buffer;
import lemons.display.shader.Shader;
import lemons.display.shader.Program;
import lemons.display.render.drivers.*;

enum abstract RendererType(String) from String {
	var OPENGL = "OPENGL";
	var VULKAN = "VULKAN";
	var DIRECTX = "DIRECTX";
}

enum abstract DataType(Int) to Int {
	var INT = 0;
	var SINGLE = 1;
}

/** 
 * holder for draw instruction data that `Renderer` should handle
 * this class is obtained when using `Renderer.prepare` and passed onto all `IRenderable`s
**/
class RendererData {
	// var _area:Rect;
	public var renderer:Renderer;
	public var program(default, null):Program;

	var defaultProgram:Program;

	var vertexArray:Int;

	// TODO: make this start a batch and not just setup the mesh
	public function startBatch(mesh:Mesh) {
		renderer.checkBuffer(mesh._vertex, VERTEX);
		renderer.checkBuffer(mesh._indices, ELEMENT);

		renderer.driver.selectBuffer(mesh._vertex._nativeHandle, VERTEX);
		renderer.driver.selectBuffer(mesh._indices._nativeHandle, ELEMENT);
		setupAttributes(defaultProgram);

		renderer.driver.selectBuffer(0, VERTEX);
	}

	public function useProgram(?program:Program) {
		if (program != null) renderer.checkProgram(program);
		this.program = (program != null ? program : defaultProgram);
	}

	public function draw(mesh:Mesh) {
		renderer.driver.selectBuffer(mesh._indices._nativeHandle, ELEMENT);
		renderer.driver.selectVertexArray(vertexArray);
		renderer.driver.selectProgram(program._nativeHandle);
		renderer.driver.drawElements(0, mesh.length);
	}

	/** 
	 * sets a area of where objects should start rendering, everything outside of this area is ignored
	**/
	public function renderArea(x:Int, y:Int, width:Int, height:Int) {

	}

	public function clear() {
		program = defaultProgram;
	}

	public function new(renderer:Renderer) { 
		this.renderer = renderer;
		vertexArray = renderer.driver.createVertexArray();

		defaultProgram = new Program();
		useProgram(defaultProgram);
	}

	function setupAttributes(program:Program) {
		renderer.driver.selectVertexArray(vertexArray);
		for (atti in 0...program.attributes.length) {
			final attr = program.attributes[atti];
			renderer.driver.setupVertexArray(atti, attr.size, attr.type, attr.stride, attr.offset);
			renderer.driver.toggleVertexArrayAttr(atti, true);
		}
	}
}

/** 
 * renderer of lemons, basically a front end for the driver backends
**/
class Renderer {
	/** 
	 * driver used to render the game 
	**/
	public var driver:Driver;

	/** 
	 * window that the renderer is drawing to
	**/
	public var window:Window;

	var _data:RendererData;
	
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

		if (!successs) throw 'unable to initialize driver';

		driver.setViewport(0, 0, width, height);

		this._data = new RendererData(this);
	}

	/** 
	 * prepares the renderer to start drawing a frame
	**/
	public function prepare():RendererData {
		driver.prepare();
		_data.clear();
		return _data;
	}


	/** 
	 * checks if a given `Program` needs allocation and if needed, checks both vertex and pixel shaders and compiles the program
	 * @param prog program to check
	**/
	public function checkProgram(prog:Program) {
		checkShader(prog.vertexShader);
		checkShader(prog.pixelShader);

		if (!prog._needsAllocation) {
			if (prog._uniformQueue != null) {
				driver.selectProgram(prog._nativeHandle);
				var curUniform = prog._uniformQueue;
				while (curUniform != null) {
					final func = switch(curUniform.type) {
						case MATRIX: driver.shaderWriteMatrix;
						default: throw 'not implemented';
					}

					func(prog._nativeHandle, curUniform.uniform, curUniform.value);

					curUniform = curUniform.next;
				}
			}

			return;
		}

		if (prog._nativeHandle > -1) driver.deleteProgram(prog._nativeHandle);

		prog._nativeHandle = driver.createProgram();
		driver.addToProgram(prog._nativeHandle, prog.pixelShader._nativeHandle);
		driver.addToProgram(prog._nativeHandle, prog.vertexShader._nativeHandle);

		var result = driver.compileProgram(prog._nativeHandle);
		if (!result.success) throw 'shader compilation error:\n' + result.error;

		prog._needsAllocation = false;
	}

	/** 
	 * checks if a given `Shader` needs compilatrion
	 * @param shad shader to check
	**/
	public function checkShader(shad:Shader) {
			if (!shad._compiled) {
			shad._nativeHandle = driver.createShader(shad.shaderType);
			var result = driver.compileShader(shad._nativeHandle, shad._source);
			if (!result.success) throw 'shader compilation error:\n' + result.error;
			shad._compiled = true;
		}
	}

	public extern inline overload function checkBuffer(buf:Buffer<Single>, type:BufferType) {
		if (!buf._needsAllocation && !buf._needsReupload) return;
		if (buf._needsAllocation) { 
			buf._nativeHandle = driver.createBuffer(); 
			buf._needsAllocation = false;
		}

		if (buf._needsReupload) {
			driver.bufferData(buf._nativeHandle, type, buf.data, buf.data.length * 4, buf._bufferMode);
			// TODO: error handling
			buf._needsReupload = false;
		}
	}

	public extern inline overload function checkBuffer(buf:Buffer<UInt>, type:BufferType) {
		if (!buf._needsAllocation && !buf._needsReupload) return;
		if (buf._needsAllocation) { 
			buf._nativeHandle = driver.createBuffer(); 
			buf._needsAllocation = false;
		}

		if (buf._needsReupload) {
			driver.bufferDataInt(buf._nativeHandle, type, buf.data, buf.data.length * 4, buf._bufferMode);
			buf._needsReupload = false;
		}
	}
}