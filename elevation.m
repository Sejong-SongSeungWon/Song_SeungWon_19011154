function el = elevation(ENU, el_mask)

%%
% Number of row = 위성수
% [numCols,numRows]=size(ENU);

% Numbering ENU elements of each satellites
% for k=0:numRows-1
%    R_E(k+1)=ENU(3*k+1);
%    R_N(k+1)=ENU(3*k+2);
%    R_u(k+1)=ENU(3*k+3);
% end

% magnitude of R_rel
% for i=0:numRows-1
%    R_rel(i+1)=sqrt(R_E(i+1)^2+R_N(i+1)^2+R_u(k+1)^2);
% end

% creating el matrix
% for j=0:numRows-1
%     el(j+1)=asind(R_u(j+1)/R_rel(j+1));
%     if el(j+1)<=el_mask
%         el(j+1)=NaN;
%     end
% end

r2d=180/pi;
el=sin(ENU(3,:)/sqrt(ENU(1,:).^2+ENU(2,:).^2+ENU(3,:).^2));
el=el*r2d;
if el <= el_mask
    el=NaN;
end


