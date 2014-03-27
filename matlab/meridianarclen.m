function z = meridianarclen(phi, e, a)

assert(size(phi, 2) == 1);

E = e .^ [0; 2; 4; 6; 8];
A = [1, 3/4,    45/64,  175/256,    11025/16384;
     0, -3/8,   -15/32, -525/1024,  -2205/4096;
     0, 0,      15/256, 105/1024,   2205/16384;
     0, 0,      0,      -35/3072,   -105/4096;
     0, 0,      0,      0,          315/131072];
S = [phi, sin(phi * [2, 4, 6, 8])];
z = a * (1 - e^2) * S * A * E;

end