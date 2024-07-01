clear all
%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Esercizio 3  (Facoltativo)
%%%%%%%%%%%%%%%%%%%%%%%%%%
warning off

dati=[65 3.52
55 3.62
45 3.65
35 3.52
25 3.47
15 3.25
 5 3.15
-5 3.15
-15 3.2
-25 3.27
-35 3.52
-55 3.7];

dato_nuovo=[-45 3.7];

%n.1
plot(dati(:,1),dati(:,2),'*');hold on
t=linspace(-70,80,10000)';
s=spline(dati(:,1),dati(:,2),t);
plot(t,s);

%n.2
a=get_polyn(dati(:,1),dati(:,2));
plot(t,polyval(a,t),'--');
axis([-70,80,2,5])
legend('dati','spline','lagrange')
title('approssimazione dati temperatura')
hold off

%n.3
x_new=-45; 
y_new=3.7;
ylagrange=polyval(a,x_new);
yspline=spline(dati(:,1),dati(:,2),x_new); 
% In alternativa, salvare prima la struttura S, e poi valutare S con ppval in x_new


fprintf('Stima di ynew. Val esatto: %d, val.Lagrange: %d, val. spline: %d\n',y_new,ylagrange,yspline)
