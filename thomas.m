function [x,l,u] = thomas(a,b,c,z)

% Thomasov postopek za resevanje sistema s tridiagonalno matriko z
% LU razcepom brez pivotiranja

n = size(a,1);
l = zeros(n-1,1);
u = zeros(n,1);

% LU razcep
u(1) = a(1);
for i = 1:n-1
    l(i) = c(i) / a(i);
    u(i+1) = a(i+1) - l(i)*b(i);
end

% prema substitucija
y = z;
for i = 2:n
    y(i) = z(i) - l(i-1)*y(i-1);
end

% obratna substitucija
x = y;
x(n) = x(n) / u(n);
for i = n-1:-1:1
    x(i) = (y(i) - b(i)*x(i+1)) / u(i);
end
    
end