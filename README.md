# Modeling with distance fields #
A collection of distance field equations for modeling and ray-marching basic primitives shapes. Primitives can be combined and modified to create more complex shapes using [glsl-sdf-ops](https://github.com/marklundin/glsl-sdf-ops).

![Ray traced primitives](http://i.imgur.com/hQcyofG.png)

The library is [glslify](https://github.com/stackgl/glslify) compatible. An demo exists [here](http://glslb.in/s/464383f8). 

These were taken from iQ's excellent [distance functions](http://iquilezles.org/www/articles/distfunctions/distfunctions.htm) page

## Usage ##
```
vec2 doModel(vec3 p);
#pragma glslify: raytrace = require('glsl-raytrace', map = doModel, steps = 90)

// import a primitive
#pragma glslify: sdTorus 	= require('glsl-sdf-primitives/sdTorus')

vec2 doModel(vec3 p) {
  return vec2( sdTorus( p, vec2( 0.20, 0.05 )), 0.0 ));
}
```

### Primitives ###

#### Signed Sphere ####
`sdSphere( vec3 position, float radius )`

#### Signed Box ####
`sdBox( vec3 position, vec3 dimension )`

#### Unsigned Box ####
`sdBox( vec3 position, vec3 dimension )`

#### Unsigned Rounded Box ####
`sdBox( vec3 position, vec3 dimension, float rounding )`

#### Signed Plane ####
`sdPlane( vec3 position, vec4 planeEquation )`

#### Signed Torus ####
`sdTorus( vec3 position, float hole )`

#### Signed Capped Cone ####
`sdCappedCone( vec3 position, vec2 dimension )`

#### Signed Capped Cylinder ####
`sdCappedCylinder( vec3 position, vec2 dimension )`

#### Signed Capsule ####
`sdCapsule( vec3 position, vec3 a, vec3 b, float radius )`

#### Signed Cone ####
`sdCone( vec3 position, vec2 dimension )`

#### Signed Cylinder ####
`sdCylinder( vec3 position, vec2 dimension )`

#### Signed Hexagonal Prism ####
`sdHexPrism( vec3 position, vec2 dimension )`

#### Signed Triangle Prism ####
`sdTriPrism( vec3 position, vec2 dimension )`

#### Unsigned Quadrilateral ####
`udQuad( vec3 p, vec3 a, vec3 b, vec3 c, vec3 d )`

#### Unsigned Triangle ####
`udTriudTriangle( vec3 p, vec3 a, vec3 b, vec3 c )`
