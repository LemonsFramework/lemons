package lemons.display;

import sdl.GL;
import lemons.display.Shader;
import lemons.display.Texture;
import lemons.display.Object;
import lemons.display.IDrawable;
import lemons.geom.Matrix4;

class Sprite extends Object implements IDrawable {

	@:allow(lemons.display.Shader)
	@:allow(lemons.App)
	private static var projection:Matrix4;

	public var shader:Shader; 
	public var texture(default, set):Texture; 

	private var drawMatrix:Matrix4; 

	public function new(x:Int, y:Int, ?texture:Texture) {
		super(x, y, 0, 0);
		this.shader = new Shader();
		this.drawMatrix = new Matrix4();

		if (texture != null) {
			width = texture.width;
			height = texture.height;
			this.texture = texture;
		}
	}

	private function set_texture(tex:Texture) {
		tex.use();
		shader.use();
		shader.setInt('tex', 0);
		return texture = tex;
	}


	public function draw() {
		// trace('gay');
		drawMatrix.identity();
		drawMatrix.translateByVector2(position);
		drawMatrix.scaleByVector2(scale);
		// drawMatrix.rotateX(rotation);
		@:privateAccess GL.bindBuffer(GL.ELEMENT_ARRAY_BUFFER, App._glEbo);
		@:privateAccess GL.bindVertexArray(App._glVao);

		GL.activeTexture(GL.TEXTURE0);
		texture.use();
		shader.use();
		shader.setMatrix4('drawMatrix', drawMatrix);
		shader.setMatrix4('projection', projection);
		
		GL.drawElements(GL.TRIANGLES, 6, GL.UNSIGNED_INT, 0);
	}
}