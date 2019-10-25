function [x,X,k] = iteracija(g,x0,tol,N)

% N - maksimalno stevilo korakov, tol - toleranca

r = x0;
x = g(r);
X = [x0, x];

k = 1;

while k < N
    
    k = k + 1;
    r = x;
    x = g(x);
    
    X = [X x];
    
    if abs(r - x) < tol
        
        break
        
    end       
    
end

end