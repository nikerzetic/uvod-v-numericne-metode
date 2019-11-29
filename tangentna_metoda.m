function [x,X,k] = tangentna_metoda(f,df,x0,tol,N)

g = @(x) x - f(x)/df(x);
x = g(x0);
X = [x0 x];
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