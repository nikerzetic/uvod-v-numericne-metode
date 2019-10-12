function seznam = seznam_predstavljivih_stevil(b,t,L,U)

%se NaN, Inf, -Inf
velikost = b^t;
M = zeros(velikost, t);

for j = 1:t
    
    for k = 1:(b^(j-1)) % stevilo ciklov
        
        dolzina_cikla = b^(t - j + 1);
        
        for l = 1:b % stevke
    
            prostor_stevke = b^(t - j);
            
            for i = 1:prostor_stevke % stevilo kopij vsake stevke

                v = (k-1)*dolzina_cikla + (l-1)*prostor_stevke + i;
                M(v,j) = l-1;

            end
    
        end
            
    end
    
end

seznam = M;

end