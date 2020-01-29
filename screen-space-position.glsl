// without instancing
vec2 getScreenSpacePosition(mat4 projectionMatrix, mat4 modelViewMatrix, vec3 position) {
  vec4 clipSpace = projectionMatrix * modelViewMatrix * vec4(position, 1.0);

  vec2 uv = ((clipSpace.xy / clipSpace.w) + 1.0) / 2.0;

  return uv;
}

// whith instancing
vec2 getScreenSpacePosition(mat4 projectionMatrix, mat4 modelViewMatrix, vec3 position, mat4 instanceMatrix) {
  vec4 instancePosition = instanceMatrix * vec4(position, 1.0);
  vec4 clipSpace = projectionMatrix * modelViewMatrix * instancePosition;

  vec2 uv = ((clipSpace.xy / clipSpace.w) + 1.0) / 2.0;

  return uv;
}

#pragma glslify: export(getScreenSpacePosition)