package lemons.geometry;

import haxe.ds.Vector;

/** 
 * a 4x4 matrix. what else would it be?
**/
abstract Matrix(Vector<Single>) to Vector<Single> {

	private function new(vec:Vector<Single>):Void {
		if (vec.length != 16) throw 'Vector must be 16 Singles long';
		this = vec;
	}

	@:from public static function fromArray(arr:Array<Single>):Matrix {
		var matrix = new Matrix(Vector.fromArrayCopy(arr));
		return matrix;
	}

	public static function fromIdentity():Matrix {
		var matrix = new Matrix(new Vector<Single>(16));
		matrix.identity();
		return matrix;
	}

	public function transform(x:Float, y:Float):Void {
		this[12] += x;
		this[13] += y;
	}

	inline public function scale(x:Single, y:Single):Void {
		this = mult(fromArray([
			x,	0,	0,	0,
			0,	y,	0,	0,
			0,	0,	1,	0,
			0,	0,	0,	1]));
	}

	inline public function rotate(theta:Float):Void {
		var cosTheta = Math.cos(theta);
		var sinTheta = Math.sin(theta);
		this = mult(fromArray([
			cosTheta,	-sinTheta,	0,		0,
			sinTheta,	cosTheta,	0,		0,
			0,			0,			1,		0,
			0,			0,			0,		1]));
	}

	public function identity():Void {
		this[0] = 1;	this[1] = 0;	this[2] = 0;	this[3] = 0;
		this[4] = 0;	this[5] = 1;	this[6] = 0;	this[7] = 0;
		this[8] = 0;	this[9] = 0;	this[10] = 1;	this[11] = 0;
		this[12] = 0;	this[13] = 0;	this[14] = 0;	this[15] = 1;
	}

	public function orthographic(left:Float, right:Float, top:Float, bottom:Float, far:Float, near:Float):Void {
		this[0] = 2 / (right - left);					this[1] = 0;									this[2] = 0;								this[3] = 0;
		this[4] = 0;									this[5] = 2 / (top - bottom);					this[6] = 0;								this[7] = 0;
		this[8] = 0;									this[9] = 0;									this[10] = -2 / (far - near);				this[11] = 0;
		this[12] = -((right + left) / (right - left));	this[13] = -((top + bottom) / (top - bottom));	this[14] = -((far + near) / (far - near));	this[15] = 1;
	}

	@:op(A * B) public function mult(mat:Matrix):Matrix {
		return fromArray([
			this[0] * mat[0] + this[1] * mat[4] + this[2] * mat[8] + this[3] * mat[12],
			this[0] * mat[1] + this[1] * mat[5] + this[2] * mat[9] + this[3] * mat[13],
			this[0] * mat[2] + this[1] * mat[6] + this[2] * mat[10] + this[3] * mat[14],
			this[0] * mat[3] + this[1] * mat[7] + this[2] * mat[11] + this[3] * mat[15],

			this[4] * mat[0] + this[5] * mat[4] + this[6] * mat[8] + this[7] * mat[12],
			this[4] * mat[1] + this[5] * mat[5] + this[6] * mat[9] + this[7] * mat[13],
			this[4] * mat[2] + this[5] * mat[6] + this[6] * mat[10] + this[7] * mat[14],
			this[4] * mat[3] + this[5] * mat[7] + this[6] * mat[11] + this[7] * mat[15],

			this[8] * mat[0] + this[9] * mat[4] + this[10] * mat[8] + this[11] * mat[12],
			this[8] * mat[1] + this[9] * mat[5] + this[10] * mat[9] + this[11] * mat[13],
			this[8] * mat[2] + this[9] * mat[6] + this[10] * mat[10] + this[11] * mat[14],
			this[8] * mat[3] + this[9] * mat[7] + this[10] * mat[11] + this[11] * mat[15],

			this[12] * mat[0] + this[13] * mat[4] + this[14] * mat[8] + this[15] * mat[12],
			this[12] * mat[1] + this[13] * mat[5] + this[14] * mat[9] + this[15] * mat[13],
			this[12] * mat[2] + this[13] * mat[6] + this[14] * mat[10] + this[15] * mat[14],
			this[12] * mat[3] + this[13] * mat[7] + this[14] * mat[11] + this[15] * mat[15],
		]);
	}

	@:op([]) public function get(comp:Int):Single return this[comp];
	@:op([]) public function set(comp:Int, value:Single) this[comp] = value;

}