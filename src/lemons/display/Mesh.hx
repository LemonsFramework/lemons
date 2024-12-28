package lemons.display;

import lemons.display.render.Buffer;

/** 
 * a mesh. stores vertex, uv and indecie data
**/
@:allow(lemons.display.render.Renderer)
class Mesh {
	var _vertex:SingleBuffer;
	var _indices:UIntBuffer;

	public var bufferMode(default, null):BufferUploadMode;
	public var verticies(default, null):UInt;
	public var length(default, null):UInt;

	var _verticies:UInt = 0;
	var _length:UInt = 0;

	var _vertexArr:Array<Single> = [];
	var _indecieArr:Array<UInt> = [];

	public function new(bufferMode:BufferUploadMode) {
		this.bufferMode = bufferMode;
		_vertex = new SingleBuffer(this.bufferMode);
		_indices = new UIntBuffer(this.bufferMode);
	}

	public function clear() {
		_vertex.clear();
		_indices.clear();
		_vertexArr = [];
		_indecieArr = [];
		_verticies = 0;
		verticies = 0;

		_length = 0;
		length = 0;
	}

	public function addVertex(x:Single, y:Single, u:Single, v:Single):Int {
		_vertexArr.push(x);
		_vertexArr.push(y);
		_vertexArr.push(0);
		_vertexArr.push(u);
		_vertexArr.push(v);
		return _verticies++;
	}

	public function makeQuad(v1:Int, v2:Int, v3:Int, v4:Int) {
		_indecieArr.push(v1);
		_indecieArr.push(v2);
		_indecieArr.push(v3);

		_indecieArr.push(v1);
		_indecieArr.push(v3);
		_indecieArr.push(v4);
		_length += 6;
	}

	public function makeTrig(v1:Int, v2:Int, v3:Int) {
		_indecieArr.push(v1);
		_indecieArr.push(v2);
		_indecieArr.push(v3);
		_length += 3;
	}

	public function finish() {
		_vertex.bufferData(_vertexArr);
		_indices.bufferData(_indecieArr);
		verticies = _verticies;
		length = _length;
	}

}