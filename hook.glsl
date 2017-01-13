#ifndef PRECISION
#define PRECISION 0.000001
#endif

vec3 hook(vec3 velocity, vec3 anchor, float restLength, float k) {
  return normalize(velocity - anchor + PRECISION) * (-1.0 * k * (length(v - anchor) - restLength));
}

#pragma glslify: export(hook)
