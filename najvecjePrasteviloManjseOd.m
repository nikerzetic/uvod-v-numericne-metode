function p = najvecjePrasteviloManjseOd(n)

P = (1:n);
P = P(isprime(1:n));
P = P(P>0);

p = P(end);

end