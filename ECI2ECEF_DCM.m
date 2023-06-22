function DCM=ECI2ECEF_DCM(time)

theta_g=siderealTime(juliandate(time));
DCM=[cosd(theta_g) sind(theta_g) 0;
    -sind(theta_g) cosd(theta_g) 0;
    0 0 1];

end