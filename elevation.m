function el = elevation(ENU, el_mask)

% Numbering ENU elements of each satellites
    for k=1:length(ENU)
        R_scalar=sqrt(ENU(1,k)^2+ENU(2,k)^2+ENU(3,k)^2);
        R_U=ENU(3,k);
        el_a=asind(R_U/R_scalar);

        if el_a >= el_mask
            el(k)=el_a;
        else
            el(k)=NaN;
        end
    end
end