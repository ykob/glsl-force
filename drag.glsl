#ifndef PRECISION
#define PRECISION 0.000001
#endif

vec3 drag(vec3 a, float value) {
  return normalize(a * -1.0 + PRECISION) * length(a) * value;
}

#pragma glslify: export(drag)
