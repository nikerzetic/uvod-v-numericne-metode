function [x] = resevanje_sistema_z_LU_razcepom(A,b)

    n = size(A,1);
    [L,U,P] = lu(A);
    
    b = P*b;
    
    x = zeros(n,1);
    y = zeros(n,1);
    
    % prema substitucija
    
    for i = 1:n
       
        y(i) = b(i);
        
        for j = 1:i-1
           
            y(i) = y(i) - L(i,j)*y(j);
            
        end
        
    end
    
    % obratna substitucija
    
    for i = n:-1:1
       
        x(i) = y(i);
        
        for j = i+1:n
           
            x(i) = x(i) - U(i,j)*x(j);
            
        end
        
        x(i) = x(i) / U(i,i);
        
    end
    
end