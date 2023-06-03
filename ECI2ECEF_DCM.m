function DCM=ECI2ECEF_DCM(time)

% Scalrize row vector as Juliandate
t0=juliandate([2000 1 1 12 0 0]);
t=juliandate(time);

% Get GMST
THETAg_0 = siderealTime(t0);
THETAg_t = siderealTime(t);

% Get Theta_g
THETAg = THETAg_0 + THETAg_t;

% Make DCM
DCM=[cosd(THETAg)  sind(THETAg) 0;
     -sind(THETAg) cosd(THETAg) 0;
     0             0            1 ];