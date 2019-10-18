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
