#pragma glslify: luma = require('glsl-luma')

vec3 crosshatch(vec3 texColor, float t1, float t2, float t3, float t4) {
  float lum = luma(texColor);
  vec3 color = vec3(1.0);
  if (lum < t1) {
      if (mod(gl_FragCoord.x + gl_FragCoord.y, 10.0) == 0.0) {
          color = vec3(0.0);
      }
  }
  if (lum < t2) {
      if (mod(gl_FragCoord.x - gl_FragCoord.y, 10.0) == 0.0) {
          color = vec3(0.0);
      }
  }
  if (lum < t3) {
      if (mod(gl_FragCoord.x + gl_FragCoord.y - 5.0, 10.0) == 0.0) {
          color = vec3(0.0);
      }
  }
  if (lum < t4) {
      if (mod(gl_FragCoord.x - gl_FragCoord.y - 5.0, 10.0) == 0.0) {
          color = vec3(0.0);
      }
  }
  return color;
}

vec3 crosshatch(vec3 texColor) {
  return crosshatch(texColor, 1.0, 0.75, 0.5, 0.3);
}

#pragma glslify: export(crosshatch)