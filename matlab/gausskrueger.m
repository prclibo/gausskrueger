% Gauss-Krueger projection
% lat - latitude for a point
% dlon - different of longtitude according to the reference longtitude
% e - eccentricity of the earth ellipsoid
% a - long axis of the earch ellipsoid
function [x, y] = gausskrueger(lat, dlon, e, a)

B = lat;
q = geoc2isom(B, e);
omega = q + dlon * 1i;
phi = isom2geoc(omega, e);
z = meridianarclen(phi, e, a);
x = real(z);
y = imag(z);

end