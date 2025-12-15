//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D sample_targets;
uniform sampler2D sample_replacements;
uniform float palette_length;
uniform float palette_index;

void main()
{
    vec4 sampled = texture2D( gm_BaseTexture, v_vTexcoord );
	
	for(float i = 0.0; i < palette_length; i += 0.5) {
		vec3 target = texture2D(sample_targets, vec2(i / palette_length, 0.0)).rgb;
		if (distance(target, sampled.rgb) < 0.001)
		{
			float j = i + palette_index;
			j = mod(j, palette_length);
			//sampled.rgb = texture2D(sample_replacements, vec2(j/palette_length, 0.5)).rgb;
			// interpolate between top and bottom
			float ox = mod(j,1.0); 
			sampled.rgb = ox*texture2D(sample_replacements, vec2(ceil(j)/palette_length, 0.5)).rgb + (1.0-ox)*texture2D(sample_replacements, vec2(floor(j)/palette_length, 0.5)).rgb;
		}
	}
	
	gl_FragColor = sampled* v_vColour;
}
