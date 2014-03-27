function phi = isom2geoc(omega, e)

assert(size(omega, 2) == 1);

phi0 = asin(tanh(omega));
E = e .^ [0; 2; 4; 6; 8];
A = [1, 0,     0,      0,      0;
     0, 1/2,   5/24,   1/12,   13/360;
     0, 0,     7/48,   29/240, 811/11520;
     0, 0,     0,      7/120,  81/1120;
     0, 0,     0,      0,      4279/161280];
S = [phi0, sin(phi0 * [2, 4, 6, 8])];
phi = S * A * E;
end