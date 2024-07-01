x=linspace(-2,2);
y1=cosh(x);
y2=0.5*exp(x);

%apro fin grafica principale
plot(x,y1,'r')
title('cosh(x) | [-2,2]')
xlabel('x')
ylabel('cosh(x)')

figure %apro seconda fin grafica
plot(x,y2)
title('(e^x)/2 | [-2,2]')
xlabel('x')
ylabel('(e^x)/2')