package lemons.geom;

import lemons.geom.Vector2;
import lemons.geom.Vector3;

abstract Matrix4(Array<Single>) to Array<Single> {
	public function new() { 
		identity();
	}

	inline public function identity() 
		this = [1, 0, 0, 0,
				0, 1, 0, 0, 
				0, 0, 1, 0, 
				0, 0, 0, 1];

	public function translateByVector2(vector:Vector2):Void {
		this[3] += vector.x;
		this[7] += vector.y;
	}

	public function translateByVector3(vector:Vector3):Void {
		this[3] += vector.x;
		this[7] += vector.y;
		this[10] += vector.z;
	}

	public function scaleByVector2(vector:Vector2):Void {
		this[0] *= vector.x;
		this[5] *= vector.y;
	}

	public function scaleByVector3(vector:Vector3):Void {
		this[0] *= vector.x;
		this[5] *= vector.y;
		this[10] *= vector.z;
	}

	public function rotateX(angle:Float):Void {
		var cosAngle:Float = Math.cos(angle);
		var sinAngle:Float = Math.sin(angle);

		this[5] += cosAngle;
		this[6] += -sinAngle;
		this[9] += sinAngle;
		this[10] += cosAngle;
	}

	static public function orthographic(left:Float, right:Float, top:Float, bottom:Float) {
		var matrix:Matrix4 = new Matrix4();

		var sx = 1.0 / (right - left);
		var sy = 1.0 / (bottom - top);
		matrix[0] = 2.0 * sx;
		matrix[5] = 2.0 * sy;
		matrix[12] = -(left + right) * sx;
		matrix[13] = -(top + bottom) * sy;

		return matrix;
	}

	public function toGLByteShit():hl.Bytes
		return hl.Bytes.getArray(this);

}