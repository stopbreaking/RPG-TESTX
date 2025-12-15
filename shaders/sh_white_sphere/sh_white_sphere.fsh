//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

uniform float mix_amount;
uniform float map_index;

uniform float texel_h;
uniform float squish;
uniform sampler2D gradient_tex;

void main()
{
	vec4 base_col = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	
	vec2 tex_thing = vec2((mod(v_vPosition.x + map_index, (512.0 / squish)) * texel_h * squish), (0.5) * texel_h);
	
	if (base_col.r == 0.0 && base_col.g == 0.0 && base_col.b == 0.0)
	{
		gl_FragColor = base_col;
	}
	else {
		vec4 new_col = vec4(mix(base_col.rgb, texture2D(gradient_tex, tex_thing).rgb, mix_amount), base_col.a);//mix(base_col.rgb, texture2D(gradient_tex, vec2(0, float(v_vPosition.y % 512)).rgb), mix_amount), base_col.a);
		gl_FragColor = new_col;
	}    
}
