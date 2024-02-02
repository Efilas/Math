function [prod] = prodotto_scalare(c, d)

nc = length(c);
nd = length(d);

if nc == nd
    prod = c'*d;
else 
    error('c e d devono avere la stessa lunghezza')
end