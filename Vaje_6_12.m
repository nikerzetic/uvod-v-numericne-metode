x = [-0.5 -0.3 0.1 0.8 0.9 0.5 0.2 -0.1 -0.3 -0.6]';
y = [-0.3 -0.7 -0.8 -0.7 -0.1 0.5 0.6 0.7 0.6 0.2]';

A = [x.^2 x.*y y.^2 x y];
b = ones(10,1);

% 1
k = A\b;
% 2
a = linsolve(A,b);
f = @(x,y) a(1)*x^2 + a(2)*x*y + a(3)*y^2 + a(4)*x + a(5)*y - 1;