close all

%%%%%%%%%%%%%%%%%%%%%
%  Esercizio 1
%%%%%%%%%%%%%%%%%%%%%
fprintf('Approssimazione  spline per funzione sin(x)cos(x) \n')

f=@(x)(sin(x).*cos(x));
alfa=0; beta=2*pi;

%n.1
figure(1)
fplot(f,[alfa,beta],'r--');
hold on

%n.2
t=linspace(alfa,beta,10000)';
for n=[4 8 12]

    x = linspace(alfa,beta,n+1)';
    s = spline(x,f(x),t);     % not-a-knot
    plot(t,s);
   %pause

end
hold off
title('approssimazione spline not-a-knot')
legend('f','spline 4','spline 8','spline 12')

%n.3
figure(2)
fplot(f,[alfa,beta],'r--');
hold on

t=linspace(alfa,beta,10000)';
d1=1; d2=1;
for n=[4 8 12]

    x = linspace(alfa,beta,n+1)';
    s = spline(x,[d1;f(x);d2],t);     % completa
    plot(t,s);
   %pause

end
hold off
title('approssimazione spline completa d1=1,d2=1')
legend('f','spline 4','spline 8','spline 12')

figure(3)
fplot(f,[alfa,beta],'r--');
hold on

t=linspace(alfa,beta,10000)';
d1=-1; d2=-1;
for n=[4 8 12]

    x = linspace(alfa,beta,n+1)';
    s = spline(x,[d1;f(x);d2],t);     % completa
    plot(t,s);
   %pause

end
hold off
title('approssimazione spline completa d1=-1,d2=-1')
legend('f','spline 4','spline 8','spline 12')

