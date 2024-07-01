fun = @(y) sin(y).*cos(y);
fplot(fun,[0,2*pi]);
hold on
% for n=[4,8,12]
%     x=linspace(0,2*pi,n);
%     s=@(t) spline(x,fun(x),t);
%     plot(x,s(x));
% end NON VA BENE ♠♠
for n=[4,8,12]
    x=linspace(0,2*pi,n+1);
    t=linspace(0,2*pi);
    s=spline(x,fun(x),t);
    plot(t,s);
end
legend('funzione','n=4','n=8','n=12');

% SPLINE COMPLETA CON df/dx=1
figure
fplot(fun,[0,2*pi]);
hold on
for n=[4,8,12]
    x=linspace(0,2*pi,n+1);
    t=linspace(0,2*pi);
    s=spline(x,[1;fun(x)';1],t);
    plot(t,s);
end

%SPLINE COMPLETA CON df/dx=-1
figure
fplot(fun,[0,2*pi]);
hold on
for n=[4,8,12]
    x=linspace(0,2*pi,n+1);
    t=linspace(0,2*pi);
    s=spline(x,[-1;fun(x)';-1],t);
    plot(t,s);
end
