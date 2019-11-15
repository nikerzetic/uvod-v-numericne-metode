function [L,U] = LU_razcep_s_kompletnim_pivotiranjem(A)

    n = size(A,1);

    for j = 1:n
        
        [packa,vrstice] = max(A);
        [~,stolpec] = max(packa);
        vrstica = vrstice(stolpec);
        
        for i = (j+1):n
           
            A(i,j) = A(i,j) / A(j,j);
            
            for k = (j+1):n
               
                A(i,k) = A(i,k) - A(i,j)*A(j,k);
                
            end
            
        end
        
    end
    
    L = tril(A,-1) + eye(n);
    U = triu(A);

end