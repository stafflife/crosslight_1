begin_geometry
point label=a0001 xy=[  0.000000000000E+000  0.000000000000E+000 ]
point label=a0002 xy=[  0.000000000000E+000  0.400000000000E-002 ]
$
point label=b0001 xy=[  0.100000000000E+001  0.000000000000E+000 ]
point label=b0002 xy=[  0.100000000000E+001  0.400000000000E-002 ]
$
polygon name=p0001 4_points=[ a0001 b0001 b0002 a0002 ] material=  1   
$
end_geometry
begin_meshgen
internal_xpoint xp_size=  0.2000E-03
put_mesh polygon=p0001 edge=[ b0001 b0002 ]  &&
  point_from=  0.000000000000E+000 point_to=  0.400000000000E-002 &&
  number=  5 ratio=  0.100000000000E+001   
$
put_mesh polygon=p0001 edge=[ a0001 b0001 ]  &&
  point_from=  0.000000000000E+000 point_to=  0.100000000000E+001 &&
  number=  2 ratio=  0.100000000000E+001   
$
mesh_output mesh_outfile=111.msh order=yes
end_meshgen
