// without instancing
vec3 getWorldPosition(mat4 modelMatrix, vec3 position) {
  vec4 worldPosition = modelMatrix * vec4(position, 1.0);

  return worldPosition.xyz / worldPosition.w;
}

// with instancing
vec3 getWorldPosition(mat4 modelMatrix, vec3 position, mat4 instanceMatrix) {
  vec4 instancePosition = instanceMatrix * vec4(position, 1.0);
  vec4 worldPosition = modelMatrix * instancePosition;

  return worldPosition.xyz / worldPosition.w;
}

#pragma glslify: export(getWorldPosition)