function [x,X,k] = sekantna_metoda(f,x0,x1,tol,N)

g = @(t0,t1) t0 - f(t0)*(t0 - t1) / (f(t0) - f(t1));

X = [x0 x1];
x = g(x1,x0);
k = 0;
r = x1;

while k < N
   
    k = k + 1;
    r = x;
    x = g(x,r);
    
    X = [X x];
    
    if abs(r - x) < tol
        
        break
        
    end  
   
end

end