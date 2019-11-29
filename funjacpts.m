function JF = funjacpts(alpha,beta,X,Y)
% Jacobijeva matrika funpts

X = X';
Y = Y';

eb = exp(beta*X);
xeby2aeb = X.*eb.*(Y-2*alpha*eb);

JF = zeros(2);
JF(1,1) = -sum(eb.^2);
JF(1,2) = sum(xeby2aeb);
JF(2,1) = JF(1,2);
JF(2,2) = sum(alpha*X.*xeby2aeb);

end