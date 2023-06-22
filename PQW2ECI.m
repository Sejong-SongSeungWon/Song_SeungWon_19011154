function rotation_matrix = PQW2ECI(arg_prg, inc_angle, RAAN)

% This function makes the Perifocal frame an ECI frame.
% arg_prg = argument of perigee (small omega)
% inc_angle = inclination angle (i)
% RAAN = right scension of the ascending node (capital omega)
% R/xyz = (R(arg_prg,3)*R(inc_angle,1)*R(RAAN,3))'*R/pqw

R_arg_prg_3 = [cos(arg_prg) sin(arg_prg) 0;-sin(arg_prg) cos(arg_prg) 0;0 0 1];
R_inc_angle_1 = [1 0 0;0 cos(inc_angle) sin(inc_angle);0 -sid(inc_angle) cos(inc_angle)];
R_RAAN_3 = [cos(RAAN) sin(RAAN) 0;-sin(RAAN) cos(RAAN) 0;0 0 1];

rotation_matrix = ((R_arg_prg_3)*(R_inc_angle_1)*(R_RAAN_3))';
end