function [x,l,u] = thomas(a,b,c,z)

    % Thomasov postopek za resevanje sistema s tridiagonalno matriko z
    % LU razcepom brez pivotiranja
    
    n = size(a);
    
    l = zeros(n-1,1);
    u = zeros(n,1);

    u(1) = a(1);
    
    for i = 1:n-1
       
        l(i) = c(i) / a(i);
        u(i) = c(i) - l(i-1)*b(i-1);
        
    end
    
    y = z;
    
    for i = 2:n
       
        y(i) = b(i) - l(i-1)*y(i-1);
        
    end
    
    
    
end