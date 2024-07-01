% Esercizio 4
clear all
m=10;
a=-pi/2; b=pi/2;

% funzione integranda
g=@(t)(t.^2.*cos(t).*sin(t));

% formula di Simpson per matrice di intervalli
II = @(x)( (x(:,end)-0)/6/m.*( g(x(:,1))+2*sum(g(x(:,3:2:2*m)),2)+4*sum(g(x(:,2:2:2*m)),2)+g(x(:,2*m+1))) );

% generazione griglia di nodi per plot
k=0;
t=linspace(a,b,100);
for tt=t
    k=k+1; 
    x(k,:)=linspace(0,tt,2*m+1);
end

% Plot della funzione f
figure(3)
plot(t,II(x),'k','LineWidth',4)
hold on
fprintf('\n')
disp([' num nodi n ',' ||s-f||_inf'])
for n=4:2:8
    xx=linspace(a,b,n+1);
    % valutazione funzione integrale nei nodi xx(k)
    for k=1:n+1
        xI=linspace(0,xx(k),2*m+1); 
        y(k)=II(xI);
    end
    % calcolo spline
    s=spline(xx(:),y(:),t);
    % display dell'errore
    disp([n,max(abs(s(:)-II(x)))])
    plot(t,s,'LineWidth',4)
end
hold off
legend('f','s, n=4', 's, n=6', 's, n=8')