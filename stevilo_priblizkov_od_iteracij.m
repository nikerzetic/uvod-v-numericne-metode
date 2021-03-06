x = linspace(-2,4);

g1 = @(x) x.^2 - 2;
g2 = @(x) sqrt(x+2);
g3 = @(x) 1 + (2/x);
g4 = @(x) (x.^2 + 2) / (2*x - 1);

tol = 1e-8;
N = 100;
