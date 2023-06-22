function az = azimuth(ENU)
 
% Numbering each ENU elements of each satellites
for k=1:length(ENU)
    R_E=ENU(1,k);
    R_N=ENU(2,k);
    R_scalar=sqrt(R_E^2+R_N^2);
    Ra=acosd(R_N/R_scalar);

    % creating az matrix
    if R_E >0
        az(k)=Ra;
    else
        az(k)=360-Ra;
    end
end