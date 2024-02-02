%Genero 100 punti compresi tra [-2,2]
x = linspace(-2,2);

y1 = cosh(x);
y2 = 0.5 * exp(x);

plot(x,y1,'r--')
%Mi permette di fare due plot sulla stessa interfaccia grafica
hold on
plot(x,y2,'k:')
legend('cosh(x)','0.5 exp(x)')
xlabel('x')
ylabel('f(x)')
title('Coseno iperbolico e 0.5exp in [-2,2]')