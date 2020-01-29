vec2 rotate2D(in vec2 v, in float a) {
    return mat2(
        sin(a), -cos(a),
        cos(a), -sin(-a)
    ) * v;
}

#pragma glslify: export(rotate2D)