f = 1/298.3;
e = sqrt(2 * f - f^2);
B = pi/4;
q = geoc2isom(pi/4, e);
l = 2 * pi / 180;
omega = q + l * 1i;
phi = isom2geoc(omega, e);
a = 6378245;
z = meridianarclen(phi, e, a);
fprintf('%.5f %.5f\n', real(z), imag(z));

[x, y] = gausskrueger(B, 2 * pi / 180, e, a);
fprintf('%.5f %.5f\n', x, y);

[x, y] = gausskrueger(ones(5, 1) * B, 2 * pi / 180, e, a);
display([x, y]);