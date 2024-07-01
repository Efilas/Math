x=linspace(-2,2);
y1=cosh(x);
y2=0.5*exp(x);

%apro fin grafica principale
plot(x,y1,'r')
title('(cosh(x); (e^x)/2) | [-2,2]')

hold on %sovrascrivo i due grafici
plot(x,y2,'k')

legend('cosh(x)','(e^x)/2')

hold off 
figure %un ulteriore grafico apre una nuova finestra