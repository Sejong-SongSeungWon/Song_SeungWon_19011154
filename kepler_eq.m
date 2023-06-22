function E = kepler_eq(e,M)
f=@(E) E-e*sin(E)-M;
E=fzero(f,0);
end