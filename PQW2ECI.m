function rotation_matrix = PQW2ECI(arg_prg, inc_angle, RAAN)

%% This function makes the Perifocal frame an ECI frame.
% arg_prg = argument of perigee (small omega)
% inc_angle = inclination angle (i)
% RAAN = right scension of the ascending node (capital omega)
%% R/xyz = (R(arg_prg,3)*R(inc_angle,1)*R(RAAN,3))'*R/pqw

R_arg_prg_3 = [cos2d(arg_prg) sin2d(arg_prg) 0;-sin2d(arg_prg) cos2d(arg_prg) 0;0 0 1];
R_inc_angle_1 = [1 0 0;0 cos2d(inc_angle) sin2d(inc_angle);0 -sin2d(inc_angle) cos2d(inc_angle)];
R_RAAN_3 = [cos2d(RAAN) sin2d(RAAN) 0;-sin2d(RAAN) cos2d(RAAN) 0;0 0 1];

rotation_matrix = ((R_arg_prg_3)*(R_inc_angle_1)*(R_RAAN_3))';

% For example) Rxyz = PQW2ECI(30, 15, 30) * Rpqw
% ** For Degree dimension **