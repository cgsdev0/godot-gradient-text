shader_type canvas_item;

uniform vec2 rect_size;
varying vec2 v;

void vertex() {
    v = VERTEX / rect_size;
}

void fragment() {
	COLOR = vec4(mix(vec3(0.0), vec3(1.0), v.x), COLOR.a);
}
