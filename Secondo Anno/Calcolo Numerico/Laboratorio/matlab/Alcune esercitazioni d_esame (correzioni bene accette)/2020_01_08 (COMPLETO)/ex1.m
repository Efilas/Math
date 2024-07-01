clear;clc;close all;
f=@(x) x.*cos(2*pi.*x.^3);
a=-1;b=1;
disp('___________________________________');
disp('| n |      h       |      err     |')
for n=1:4
    figure
    fplot(f,[-1,1],'r-');
    title(strcat('grado: ',string(n)))
    hold on
    disp('|---------------------------------|')
    for k=3:7
        h=(b-a)/(2^k);
        ints=-1:h:1;
        polWork=[0;0];
        for j=1:length(ints)-1
            tj=linspace(ints(j),ints(j+1));
            x=linspace(ints(j),ints(j+1),n+1);
            coeff=get_polyn(x,f(x),n);
            omega=[tj; polyval(coeff,tj)];
            polWork=[polWork omega];
        end
        polinterpol=polWork(:,2:length(polWork));
        plot(polinterpol(1,:),polinterpol(2,:))
        ninf(k-2)=max(f(polinterpol(1,:))-polinterpol(2,:));
        fprintf('| %d | %d | %d |\n',n,h,ninf(k-2));
    end
    collninf(:,n)=ninf;
end
figure
hold on
for i=1:4
    plot(1:5,collninf(:,i)')
end