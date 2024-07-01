x=linspace(-2,2);
y1=cosh(x);
y2=0.5*exp(x);

subplot(1,2,1)
plot(x,y1,'r')
title('cosh(x) | [-2,2]')
xlabel('x')
ylabel('cosh(x)')

subplot(1,2,2)
plot(x,y2)
title('(e^x)/2 | [-2,2]')
xlabel('x')
ylabel('(e^x)/2')