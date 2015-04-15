float sdSphere( vec3 p, float s )
{
  return length( p ) - s;
}

#pragma glslify: export(sdSphere)