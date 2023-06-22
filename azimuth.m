function az = azimuth(ENU)
 
% Number of row = 위성수
number=length(ENU);
az=[];
% Numbering each ENU elements of each satellites
for k=1:number
    R_E=ENU(k,1);
    R_N=ENU(k,2);
    R_scalar=sqrt(R_E^2+R_N^2);
    Ra=acosd(R_N/R_scalar);

    % creating az matrix
    if R_E >0
        az=[az,Ra];
    else
        az=[az,360-Ra];
    end
end