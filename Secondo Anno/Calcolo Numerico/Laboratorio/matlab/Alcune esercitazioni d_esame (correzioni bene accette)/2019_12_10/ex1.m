clear;clc;close all;
f=@(x,a) exp(-x./2).*cos(x.*a);
dom=[-pi/4,pi/4];
degs=[4, 8, 12, 16];
for a=[1,2,3]
    figure 
    hold on
    fa=@(x) f(x,a);
    fplot(fa,dom)
    for n=degs
        x=linspace(-pi/4,pi/4,n+1)';
        coeff=get_polyn(x,fa(x));
        pn=@(x) polyval(coeff,x);
        fplot(pn,dom)
    end
    title(strcat('interpol al variare di n; alpha=',string(a))); 
    legend('fa','p4','p8','p12','p16');
end