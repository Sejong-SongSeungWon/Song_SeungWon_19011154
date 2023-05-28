function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
% unit : deg, km

% ellipse elements
a=semimajor_axis;
e=eccentricity;

P=a*(1-e^2);
mu=3.986004418*10^14;

velocityInPQW = sqrt(mu/P)*[-sind(true_anomaly);e+cosd(true_anomaly);0];