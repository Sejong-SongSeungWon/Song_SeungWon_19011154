function el = elevation(ENU, el_mask)

% Number of row = 위성수
    number=size(ENU);
    el=[];

% Numbering ENU elements of each satellites
    for k=1:number
        R_scalar=sqrt(ENU(k,1)^2+ENU(k,2)^2+ENU(k,3)^2);
        R_U=ENU(k,3);
        el_temp=asind(R_U/R_scalar);

        if el_temp >= el_mask
            el=[el,el_temp];
        else
            el=[el,NaN];
        end
    end
end