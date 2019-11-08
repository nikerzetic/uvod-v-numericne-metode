function [A] = matrikaNorme(n)

A = diag(-2*[1:n]) + diag(n-[1:n-1],1) + diag(n-[1:n-1],-1);

end