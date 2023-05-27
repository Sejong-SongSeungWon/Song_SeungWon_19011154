function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
% unit : deg, km

% ellipse elements
a=semimajor_axis;
e=eccentricity;
c=a*e;
b=sqrt(a^2-c^2);

P=b*sqrt(1-(c^2)/(a^2));
mu=3.986004418*10^14;
r_scalar=P/(1+e*cosd(true_anomaly));

velocityInPQW = sqrt(mu/P)*[-sind(true_anomaly);e+cosd(true_anomaly);0];