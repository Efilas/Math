% Esercizio 2
%
a=0; b=2*pi;
% definisco la funzione integranda
f=@(x)( x.*exp(-x).*cos(2.*x) );
% valore esatto dell'integrale
Iex=1/25*( 3*(exp(-2*pi) - 1) - 10*pi*exp(-2*pi) );

% utilizzo la formula dei trapezi composita al variare del numero di
% sottointervalli
fprintf('Formula dei Trapezi composita\n')
for j=1:10
    m = 2^j;
    I1m=TrapeziComp(a,b,m,f);
    Er(j)=abs(Iex-I1m)/abs(Iex);
    if (j>1)
       p = log2(abs(Er(j-1)/Er(j)); 
       fprintf('m: %d, Int: %e, Err: %e, p: %e\n',m,I1m,Er(j),p)
    end
end

% utilizzo la formula di Simpson composita al variare del numero di
% sottointervalli
fprintf('\n')
fprintf('Formula di Cavalieri-Simpson composita\n')
for j=1:10
    m = 2^j;
    I2m=Cavalieri_Simpson(a,b,m,f);
    Er(j)=abs(Iex-I2m)/abs(Iex);
    if (j>1)
        p = log2(abs(Er(j-1)/Er(j)));
        
        fprintf('m: %d, Int: %e, Err: %e, p: %e\n',m,I1m,Er(j),p)
    end
end