# Zapiski

## 18.10.

### Anonimna funkcija

> g = @(x) - x.^2 + 8 * x - 12

dobro je, ce funkcija dela na vektorjih

> x = 0:1e-3:8;

> x = linespace(0,8);

> y = g(x);

> plot(x,y)

> scatter(x,y)

> hold on

> clf - clear figure

> hold off

> fzero(f, t0)

> fzero(@(x)x+4?exp(x2),1,optimset(?TolX?,1e?16))

### Kvizi

> format long

Decimalno piko spremeniti v vejico

### Norme

> diag

> eig - lastne vrednosti

> svd - singularne vrednosti

### LU razcep

> [L,U,P] = lu(A1)

vedno dodamo P, ker drugace vrne PL, U

> tril

> triu

### Risanje funkcije vec spremenljivk

> [X,Y] = meshgrid(linspace(-4,4,100),linspace(-2,2,100))

> Z = f(X,Y)

> surf(X,Y,Z)

> contour(X,Y,Z)


