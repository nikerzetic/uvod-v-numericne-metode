function [x,y] = tezisce_brez_zanke(A)

[m,n] = size(A);

M=sum(sum(A));

y = 1:n * A;
x = A * (1:m)';

y = sum(y);
x = sum(x);

y = y / M;
x = x / M;

end