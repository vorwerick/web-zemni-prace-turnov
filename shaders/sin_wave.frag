#version 300 es
precision highp float;

uniform vec2 u_resolution;
uniform float u_time;

out vec4 fragColor;

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution;
    float y = 0.5 + 0.5 * sin(st.x * 10.0 + u_time * 2.0);
    float wave = smoothstep(y - 0.02, y + 0.02, st.y);

    // Měnící se barvy
    vec3 color = vec3(
        0.5 + 0.5 * sin(u_time),
        0.5 + 0.5 * sin(u_time + 2.0),
        0.5 + 0.5 * sin(u_time + 4.0)
    );

    fragColor = vec4(color * wave, 1.0);
}