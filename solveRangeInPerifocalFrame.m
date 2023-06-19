function rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
% unit : deg, km

% ellipse elements
a=semimajor_axis;
e=eccentricity;

P=a*(1-e^2);
r_scalar=P/(1+e*cos(true_anomaly));

rangeInPQW = [r_scalar*cos(true_anomaly);r_scalar*sin(true_anomaly);0];