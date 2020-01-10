f = @(x) exp(-x^2);

X = zeros(1,6);
Y = zeros(1,6);
Z = zeros(1,6);
I = sqrt(pi)*erf(3)/2;

for i = 0:100
   
    m = 3 * i + 1;
    X(i+1) = m;
    Sf = simpson(f,0,3,m);
    Y(i+1) = Sf;
    Z(i+1) = I - Sf;
    
end

plot(X,Y)
plot(X,Z)
