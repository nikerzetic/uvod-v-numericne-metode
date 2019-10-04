function [x, y] = tezisce(A)

[m,n] = size(A);

x=0;
y=0;
M=0;

for i = 1:m
    for j = 1:n
        x = x + j * A(i,j);
        y = y + i * A(i,j);
        M = M + A(i,j);
    end
end

x = x / M;
y = y / M;

end