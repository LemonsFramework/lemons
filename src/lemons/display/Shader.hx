package lemons.display;

import sdl.GL.Shader as GLShader;
import sdl.GL.Program as GLProgram;
import sdl.GL;
import lemons.geom.Matrix4;
import lemons.display.Sprite;

using StringTools;

class Shader {
	private static final headerTag:String = '#header';
	private static final bodyTag:String = '#body';

	private static var vertexHeader:String = '
		#version 400
		layout (location = 0) in vec3 glPos;
		layout (location = 1) in vec2 glTexPos;
		uniform mat4 drawMatrix;
		uniform mat4 projection;
		out vec2 texPos;
	';

	private static var vertexBody:String = '
		void main(void) {
			gl_Position = projection * drawMatrix * vec4(glPos, 1.0);
			texPos = vec2(glTexPos.x, -glTexPos.y);
		}
	';

	private static var fragmentHeader:String = '
		#version 400
		out vec4 fragColor;
		in vec2 texPos;
		uniform sampler2D tex;
	';

	private static var fragmentBody:String = '
		void main(void) {
			vec4 texel = texture(tex, texPos);
			if (texel.a == 0) { discard; }
			fragColor = texel;
		}
	';

	private var glProgram:GLProgram;

	public function new(?vertSource:String, ?fragSource:String) {
		var vertexShader:GLShader = GL.createShader(GL.VERTEX_SHADER);
		var fragShader:GLShader = GL.createShader(GL.FRAGMENT_SHADER);

		if (vertSource == null) vertSource = '#header#body';
		if (fragSource == null) fragSource = '#header#body';

		vertSource = vertSource.replace(headerTag, vertexHeader);
		fragSource = fragSource.replace(headerTag, fragmentHeader);
		vertSource = vertSource.replace(bodyTag, vertexBody);
		fragSource = fragSource.replace(bodyTag, fragmentBody);

		// todo: refactor
		GL.shaderSource(vertexShader, vertSource);
		GL.compileShader(vertexShader);

		if (!GL.getShaderParameter(vertexShader, GL.COMPILE_STATUS))
			trace('oops! shader forgored\nlog:\n${GL.getShaderInfoLog(vertexShader)}');

		GL.shaderSource(fragShader, fragSource);
		GL.compileShader(fragShader);

		if (!GL.getShaderParameter(fragShader, GL.COMPILE_STATUS))
			trace('oops! shader forgored\nlog:\n${GL.getShaderInfoLog(fragShader)}');

		glProgram = GL.createProgram();
		GL.attachShader(glProgram, vertexShader);
		GL.attachShader(glProgram, fragShader);
		GL.linkProgram(glProgram);

		if (!GL.getProgramParameter(glProgram, GL.LINK_STATUS))
			trace('oops! program forgored\nlog:\n${GL.getShaderInfoLog(fragShader)}');

		GL.deleteShader(vertexShader);
		GL.deleteShader(fragShader);
	}

	public function use() GL.useProgram(glProgram);

	public function setBool(name:String, value:Bool) GL.uniform1i(GL.getUniformLocation(glProgram, name), (value ? 1 : 0));
	public function setInt(name:String, value:Int) GL.uniform1i(GL.getUniformLocation(glProgram, name), value);

	public function setMatrix4(name:String, value:Matrix4) 
		GL.uniformMatrix4fv(GL.getUniformLocation(glProgram, name), false, value.toGLByteShit(), 0, 1);
}