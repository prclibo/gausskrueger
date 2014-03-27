% Gauss-Krueger projection
% lat - latitudes for points (Nx1)
% dlon - different of longtitude according to the reference longtitude
%        (Nx1)
% e - eccentricity of the earth ellipsoid
% a - long axis of the earch ellipsoid
function [x, y] = gausskrueger(lat, dlon, e, a)

assert(size(lat, 2) == 1);
assert(size(dlon, 2) == 1);


B = lat;
q = geoc2isom(B, e);
omega = q + dlon * 1i;
phi = isom2geoc(omega, e);
z = meridianarclen(phi, e, a);
x = real(z);
y = imag(z);

end