function [px,F] = newpoly(x,X,fX,dfX)
% newpoly izracuna vrednosti polinoma, ki interpolira vrednosti (in
% vrednosti odvodov) funkcije v danih interpolacijskih tockah.
%
% x - so abscise, pri katerih racunamo vrednost interpolacijskega polinoma
% X - seznam paroma razlicnih interpoolacijskih tock
% fX - seznam vrednosti funkcije v interpolacijskih tockah
% dfX - seznam vrednosti odvodov funkcije v interpolacijskih tockah
%
% px - vrednost interpolacijskega polinoma v tockah iz seznama x
% F - tabela, ki vsebuje shemo deljenih diferenc ( v prvem stolpcu so
% funkcijske vrednosti, v prvi vrstici pa koeficienti interpolacijskega
% polinoma v Newtonovi obliki)

n = length(X)-1;
F = [X',fX',NaN(n+1,n)];

for j = 3:n+2

    for i = 1:n-j+3
        
        F(i,j) = (F(i,j-1) - F(i+1,j-1)) / (F(i,1) - F(i+(j-2),1));
        
    end

end

px = 0;

end