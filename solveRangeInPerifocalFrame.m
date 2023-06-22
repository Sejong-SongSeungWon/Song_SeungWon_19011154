function rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
% unit : deg, km

% ellipse elements
a=semimajor_axis;
e=eccentricity;
nu=ture_anomaly;

P=a*(1-e^2);
r_scalar=P/(1+e*cos(nu));

rangeInPQW = [r_scalar*cos(nu);r_scalar*sin(nu);0];