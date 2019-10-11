function seznam = seznam_predstavljivih_stevil(b,t,L,U)

%se NaN, Inf, -Inf
velikost = b^t;
M = zeros(t, velikost);

for j = 1:t
    
    for k = 0:(b-1)
    
        for i = 1:(b^(t - 1))

            M(i,j) = k;

        end
    
    end
    
end

seznam = M;

end