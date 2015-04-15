# Glsl SDF Primitives #
A collection of [glslify](https://github.com/stackgl/glslify) compatible signed distance functions for basic primitives. Most of these have been lifted from iQ's [distance functions](http://iquilezles.org/www/articles/distfunctions/distfunctions.html) page.

These primitives can be combined and modified using [distance field operations](https://github.com/marklundin/glsl-sdf-ops).

## Usage ##
```
vec2 doModel(vec3 p);
#pragma glslify: raytrace = require('glsl-raytrace', map = doModel, steps = 90)

// import a primitive
#pragma glslify: sdTorus 	= require('./primitives/sdTorus')

vec2 doModel(vec3 p) {
  return vec2( sdTorus( p, vec2( 0.20, 0.05 )), 0.0 ));
}
```

## Primitives ##

### Signed Box ###

### Signed Capped Cone ###

### Signed Capped Cylinder ###

### Signed Capsule ###

### Signed Cone ###





