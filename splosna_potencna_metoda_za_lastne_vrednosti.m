function [e,x,k] = splosna_potencna_metoda_za_lastne_vrednosti(f,x0,tol,N)
% Potencna metoda za racunanje lastnih vrednosti matrike A iz funkcije f
% mnozenja vektorja z matriko A pri zacetnem priblizku x0.
% tol je toleranca za drugo normo razlike Ax - ex, N pa 
% maksimalno stevilo korakov. Metoda vrne dominantno lastno vrednost e,
% dominantni lastni vektor k in stevilo korakov k.

% Komentar: f = @(x)A\x

x = x0';
x = f(x);
x = x ./ norm(x);
rk = f(x);
e = x'*rk;
k = 1;

for r = 2:N

    if norm(rk - e*x) < tol
        break
    end
    
    k = k + 1;
    
    x = rk;
    x = x ./ norm(x);
    rk = f(x);
    e = x'*rk;
    
end

end