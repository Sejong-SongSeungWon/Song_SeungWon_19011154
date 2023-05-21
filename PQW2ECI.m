function rotation_matrix = PQW2ECI(arg_prg, inc_angle, RAAN)

%% This function makes the Perifocal frame an ECI frame.
% arg_prg = argument of perigee (small omega)
% inc_angle = inclination angle (i)
% RAAN = right scension of the ascending node (capital omega)
%% R/xyz = (R(arg_prg,3)*R(inc_angle,1)*R(RAAN,3))'*R/pqw

R_arg_prg_3 = [cosd(arg_prg) sind(arg_prg) 0;-sind(arg_prg) cosd(arg_prg) 0;0 0 1];
R_inc_angle_1 = [1 0 0;0 cosd(inc_angle) sind(inc_angle);0 -sind(inc_angle) cosd(inc_angle)];
R_RAAN_3 = [cosd(RAAN) sind(RAAN) 0;-sind(RAAN) cosd(RAAN) 0;0 0 1];

rotation_matrix = ((R_arg_prg_3)*(R_inc_angle_1)*(R_RAAN_3))';

% For example) Rxyz = PQW2ECI(30, 15, 30) * Rpqw
% ** For Degree dimension **