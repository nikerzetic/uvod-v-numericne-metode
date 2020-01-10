function Sf = simpson(f,a,b,m)
% Funkcija simpson izvede (sestavljeno) Simpsonovo pravilo za racunanje
% integrala funkcije na danem intervalu
%
% f - funkcija, katere integral racunamo
% a,b - leva in desna robna tocka intervala, na katerem integriramo
% m - stevilo podintervalov, na katerega razdelimo integral [a,b]
%
% Sf - priblizek za integral funkcije f na intervalu [a,b]

h = (b-a)/(2*m);
Sf  = f(a);
x = a:h:b;


for i = 1:m-1
    
    Sf = Sf + 4*f(x(2*i-1)) + 2*f(x(2*i));
    
end

Sf = Sf + 4*f(x(2*m-1)) + f(x(2*m));
Sf = Sf * h / 3;

end