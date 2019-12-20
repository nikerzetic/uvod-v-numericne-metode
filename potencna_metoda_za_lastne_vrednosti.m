function [e,x,k] = potencna_metoda_za_lastne_vrednosti(A,x0,tol,N)
% Potencna metoda za racunanje lastnih vrednosti matrike A pri zacetnem 
% priblizku x0. tol je toleranca za drugo normo razlike Ax - ex, N pa 
% maksimalno stevilo korakov. Metoda vrne dominantno lastno vrednost e,
% dominantni lastni vektor k in stevilo korakov k.

x = x0';
x = A*x;
x = x ./ norm(x);
rk = A*x;
e = x'*rk;
k = 1;

for r = 2:N

    if norm(rk - e*x) < tol
        break
    end
    
    k = k + 1;
    
    x = rk;
    x = x ./ norm(x);
    rk = A*x;
    e = x'*rk;
    
end

end