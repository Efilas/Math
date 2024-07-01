clear,clc,close all
f=@(x) x.*cos(x).*((sin(x).^2));
fplot(f,[0,2*pi])
hold on
Ints=1000;
Dom=linspace(0,2*pi,Ints);
Imm=f(Dom);
for i=1:Ints
    fprintf('x=%d; f(x)=%d\n',Dom(i),Imm(i))
end
[fxmax,nxmax]=miomax(Imm);
plot(Dom(nxmax),fxmax,'o');
fprintf('xmax=%d; f(xmax)=%d\n',Dom(nxmax),fxmax)
