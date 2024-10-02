package lemons.display.shader;

import lemons.display.render.Renderer.DataType;
import lemons.geometry.Matrix;

typedef Attributes = Array<{size:Int, type:DataType, stride:Int, offset:Int}>

enum UniformWriteDataType {
	MATRIX;
}

class UniformWrite {
	public var next:UniformWrite;
	public var value(default, null):Any;
	public var type(default, null):UniformWriteDataType;
	public var uniform(default, null):String;

	public function new(value:Any, type:UniformWriteDataType, uniform:String) {
		this.value = value;
		this.type = type;
		this.uniform = uniform;
	}
}


@:allow(lemons.display.render.Renderer)
class Program {
	var _nativeHandle:Int = -1;
	var _needsAllocation:Bool;
	var _uniformQueue(default, null):UniformWrite = null;

	var attributes:Attributes = _defaultAttributes;

	public var vertexShader(default, null):Shader = _defaultVertexShader;
	public var pixelShader(default, null):Shader = _defaultPixelShader;

	// TODO: embed these shaders when i make the macro for it
	static var _defaultVertexShader:Shader = Shader.fromString(VERTEX, '
	#version 330 core
	layout (location = 0) in vec3 vecPos;
	layout (location = 1) in vec2 vecUV;
	out vec2 uv;

	uniform mat4 trans;
	uniform mat4 proj;

	void main(void) {
	    gl_Position = proj * trans * vec4(vecPos, 1.0);
	    uv = vecUV;
	}');

	static var _defaultPixelShader:Shader = Shader.fromString(PIXEL, '
	#version 330 core
	in vec2 uv;
	out vec4 pixelColor;

	void main()
	{
	    pixelColor = vec4(1.0f, 1.0f, 1.0f, 1.0f);
	}');

	static var _defaultAttributes:Attributes = [{/* pos */ size: 3, type: SINGLE, stride: 5, offset: 0}, {/* uv */ size: 2, type: SINGLE, stride: 5, offset: 3}];


	public function new() {
		_needsAllocation = true;
	}

	public function setShader(?vertexShader:Shader, ?pixelShader:Shader) {
		if (vertexShader != null) this.vertexShader = vertexShader;
		if (pixelShader != null) this.pixelShader = pixelShader;
		_needsAllocation = true;
	}

	inline public function writeMat4(name:String, mat:Matrix) writeUniform(new UniformWrite(mat, MATRIX, name));

	// maybe refactor this list to be reversed instead? if someone thats stupid sets like 89524103 uniforms this will take a lot of cycles
	function writeUniform(item:UniformWrite):Void {
		if (_uniformQueue == null) {
			_uniformQueue = item;
			return;
		}

		var topItem:UniformWrite = _uniformQueue;
		while (topItem.next != null) topItem = topItem.next;
		topItem.next = item;
	}
}
