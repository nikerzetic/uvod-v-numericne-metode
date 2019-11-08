function [m,M] = omejitev_norme_2(A)

    koren = sqrt(size(A));
    reciprocna_korena = 1 / koren;
    
    spodnje_vrednosti = zeros(1,4);
    zgornje_vrednosti = zerps(1,5);
    
    frobeniusova_norma = norm(A,'fro');
    neskoncna_norma = norm(A,Inf);
    norma_ena = norm(A,1);
    
    spodnje_vrednosti(1,1) = reciprocna_korena * frobeniusova_norma;
    spodnje_vrednosti(1,2) = reciprocna_korena * neskoncna_norma;
    spodnje_vrednosti(1,3) = reciprocna_korena * norma_ena;
    
    
    
end