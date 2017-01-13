#ifndef PRECISION
#define PRECISION 0.000001
#endif

vec3 attract(vec3 velocity1, vec3 velocity2, float mass1, float mass2, float minLength, float maxLength, float g) {
  return g * mass1 * mass2 / pow(clamp(length(velocity2 - velocity1), minLength, maxLength), 2.0) * normalize(velocity2 - velocity1 + PRECISION);
}

#pragma glslify: export(attract)
