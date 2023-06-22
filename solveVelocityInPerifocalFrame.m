function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
% unit : deg, km

% ellipse elements
a=semimajor_axis;
e=eccentricity;
nu=deg2rad(true_anomaly);

P=a*(1-e^2);
mu=3.986004418*10^5;

velocityInPQW = sqrt(mu/P)*[-sin(nu);e+cos(nu);0];