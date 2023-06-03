function DCM=ECI2ECEF_DCM(time)

t0=juliandate([2000 1 1 12 0 0]);
t=juliandate(time);

THETAg_0 = siderealTime(t0);
THETAg_t = siderealTime(t);

THETAg = THETAg_0 + THETAg_t;

DCM=[cosd(THETAg)  sind(THETAg) 0;
     -sind(THETAg) cosd(THETAg) 0;
     0             0            1 ];