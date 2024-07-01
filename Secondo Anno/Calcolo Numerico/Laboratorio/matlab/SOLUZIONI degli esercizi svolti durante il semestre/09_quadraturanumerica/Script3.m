% Esercizio 3
%
a=0; b=1;
f=@(x)(sqrt(x));
Iex= 2/3*(1-sqrt(a^3)); % primitiva 2/3 x^(3/2)
fprintf('\n')
fprintf('Confronto di convergenza formule composite\n')
for j=1:10
    m = 2^j;
    I1m=TrapeziComp(a,b,m,f);
    I2m=Cavalieri_Simpson(a,b,m,f);
    Er1(j)=abs(Iex-I1m)/abs(Iex);
    Er2(j)=abs(Iex-I2m)/abs(Iex);
    if (j>1)
        p1 = log2(Er1(j-1)/Er1(j)); 
        p2 = log2(Er2(j-1)/Er2(j)); 
       
        fprintf('m: %d\n Formula dei Trapezi composita - Int: %e, Err: %e, p: %e\n Formula di Simpson composita - Int: %e, Err: %e, p: %e\n',...)
                  m,I1m,Er1(j),p1,I2m,Er2(j),p2)
    end
end
figure
semilogy(2.^(1:10),Er1)
hold on
semilogy(2.^(1:10),Er2)
hold off
legend('trapezi','Simpson')
xlabel('numero di sottointervalli m')
ylabel('errore relativo')

f2= @(x) -1/4./sqrt(x.^3);
figure
fplot(f2,[0,1])
title('Derivata seconda')

f4=@(x) -15/16./sqrt(x.^7);
figure
fplot(f4,[0,1])
title('Derivata quarta')
