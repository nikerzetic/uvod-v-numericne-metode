function F = funpts(alpha,beta,X,Y)
% vsota odmikov kvadratov tock od funkcije
% f(x) = alpha*exp(beta*X)
X = X';
Y = Y';

eb = exp(beta*X);
ebyaeb = eb.*(Y-alpha*eb);

F = zeroes(2,1);
F(1) = sum(ebyaeb);
F(2) = alpha*X'*ebyaeb;

end