//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 pos;

uniform float time;

void main()
{
	vec2 tex = v_vTexcoord;
	tex.y = 1. - tex.y;
	vec4 colour = texture2D(gm_BaseTexture, tex);
	colour.r = 0.05;
	colour.g = 0.;
	colour.b = 0.1;
	colour.a = 0.4;
	
	gl_FragColor = colour;
}
