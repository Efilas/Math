%Genero 100 punti compresi tra [-2,2]
x = linspace(-2,2);

y1 = cosh(x);
y2 = 0.5 * exp(x);

plot(x,y1)
title('Coseno iperbolico in [-2,2]')
xlabel('x')
ylabel('cosh(y)')

%Apro un'altra finestra grafica
figure
plot(x,y2)
title('0.5 esponenziale in [-2,2]')
xlabel('x')
ylabel('0.5*exp(y)')
