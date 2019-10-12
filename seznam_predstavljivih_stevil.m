function seznam = seznam_predstavljivih_stevil(b,t,L,U)

%se NaN, Inf, -Inf, 0
dolzina = ((abs(U) + abs(L) - 1) * (b-1) + b) * (b^(t-1));
seznam = zeros(1,dolzina);
M = matrika_stevk(b,t);

B = zeros(1,t);
for i = 1:t
B(1,i) = b^-i;
end

c = 0;
for i = 1:b^t
    
    s = sum(B * M(i,:)');
    
    seznam(c) = s * b^L;
    c = c+1;
    if M(i,1) ~= 0
        
        for e = (L+1):U
            
            seznam(c) = s * b^e;
            c = c+1;

        end
        
    end
    
end

sort(seznam);

end


% matrika t stevk v bazi b
function M = matrika_stevk(b,t) 

velikost = b^t;
M = zeros(velikost,t);

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

end