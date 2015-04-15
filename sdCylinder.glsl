float sdCylinder( vec3 p, vec3 c )
{
  return length( p.xz - c.xy ) - c.z;
}

#pragma glslify: export(sdCylinder)