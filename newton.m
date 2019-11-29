function [x,X,k] = newton(f,Jf,x0,tol,N)

% nastavi privzeto vrednost
if nargin < 5
    N = 100;
    if nargin < 4
        tol = 1e-10;
    end
end

dx = - Jf(x0)\f(x0);
x = x0 + dx;
X = [x0 x];
k = 1;

while k < N
    k = k + 1;
    dx = - Jf(x).\f(x);
    x = x + dx;
    X = [X x];
    if norm(dx) < tol
        break
    end     
end

end