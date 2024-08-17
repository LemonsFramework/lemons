package lemons.display.shader;

import lemons.display.render.Renderer;

enum abstract ShaderType(Int) to Int {
	var VERTEX = 0;
	var PIXEL = 1;
}

/**
 * `Shader` contains info on how the gpu should draw your object. you can create vertex (position) or pixel shaders and use them for drawing
 * 
 * these shaders are written in GLSL ([OpenGL Shading Language](https://wikipedia.org/wiki/OpenGL_Shading_Language)) and transpiled to the renderer the game uses
 * 
 * you're able to create shaders by either:
 * embedding them
 * ```haxe
 * @:shader(PIXEL, 'code')
 * class SomePixelShader extends Shader {}
 * 
 * ```
 * or loading them from a string or resource
 * ```haxe
 * final somePixelShader:Shader = Shader.fromResource(PIXEL, /*some resource here*\/);
 * ``` 
 *   
 * TODO: write some lexer and transpiler for glsl since all the transpiler i can find are in c++
**/
class Shader {
	public var shaderType(default, null):ShaderType = VERTEX; 

	var _source:String;
	var _compiled:Bool = false;
	var _nativeHandle:Int = 0;

	public function new(shaderType:ShaderType) {
		this.shaderType = shaderType;
	}

	public static function fromString(type:ShaderType, source:String):Shader {
		final shader:Shader = new Shader(type);
		shader._source = source;
		return shader;
	}

	function compile(renderer:Renderer):Void {
		_nativeHandle = renderer.driver.createShader(shaderType);
	}
}