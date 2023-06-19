#version 300 es
/**/
precision highp float;
in vec4 in_pos;
out vec3 vertex_pos;

uniform float Zoom;
uniform vec2 center;

void main() {
    gl_Position = vec4(((in_pos.xy - center) * Zoom), 0, 1);
    //gl_Position = vec4(((in_pos.xy * Zoom) - vec2(1, 1)), in_pos.zw);
    //if (Zoom == 1.0)
    //gl_Position = in_pos;
    vertex_pos = in_pos.xyz;
}