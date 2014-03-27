function q = geoc2isom(B, e)
q = log(tan(pi/4 + B/2)) +  e/2 * log((1 - e * sin(B))./(1 + e * sin(B)));
end