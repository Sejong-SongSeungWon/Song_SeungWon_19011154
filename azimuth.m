function az = azimuth(ENU)

% Number of Column
i=length(ENU);

% Numbering each ENU elements of each satellites
for k=0:i-1
    R_E(k+1)=ENU(3*k+1);
    R_N(k+1)=ENU(3*k+2);
end

% creating az matrix
for j=0:i-1
    az(j+1)=cos2d(R_N(j+1),sqrt(R_E(j+1)^2+R_N(j+1)^2));
end
