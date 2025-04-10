precision mediump float;

uniform vec2 uResolution; // Rozlišení obrazovky
uniform float uTime;      // Časová hodnota (pro animace)

float grid(vec2 uv, float battery) {
    vec2 size = vec2(uv.y, uv.y * uv.y * 0.2) * 0.01;
    uv += vec2(0.0, uTime * 4.0 * (battery + 0.05));
    uv = abs(fract(uv) - 0.5);
    vec2 lines = smoothstep(size, vec2(0.0), uv);
    lines += smoothstep(size * 5.0, vec2(0.0), uv) * 0.4 * battery;
    return clamp(lines.x + lines.y, 0.0, 3.0);
}

void main() {
    vec2 uv = (2.0 * gl_FragCoord.xy - uResolution.xy) / uResolution.y;
    float battery = 1.4;

    vec3 col = vec3(0.0, 0.1, 0.2);
    if (uv.y < -0.3) {
        uv.y = 2.0 / (abs(uv.y + 0.3) + 0.1);
        uv.x *= uv.y * 1.0;
        float gridVal = grid(uv, battery);
        col = mix(col, vec3(1.0, 0.5, 1.0), gridVal);
    }

    col = mix(vec3(col.r, col.r, col.r) * 0.5, col, battery * 0.7);

    gl_FragColor = vec4(col, 1.0);
}
