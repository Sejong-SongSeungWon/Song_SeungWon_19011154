function rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
% unit : deg, km

% ellipse elements
a=semimajor_axis;
e=eccentricity;
c=a*e;
b=sqrt(a^2-c^2);

P=b*sqrt(1-(c^2)/(a^2));
r_scalar=P/(1+e*cosd(true_anomaly));

rangeInPQW = [r_scalar*cosd(ture_anomaly);r_scalar*sind(true_anomaly);0];