float udBox( vec3 p, vec3 b )
{
  return length(max(abs(p)-b,0.0));
}

#pragma glslify: export(udBox)