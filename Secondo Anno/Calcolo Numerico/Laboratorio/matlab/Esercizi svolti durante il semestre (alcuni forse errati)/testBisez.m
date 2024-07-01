f1=@(x,ah) ah*sin(x).*cos(x)-x.^3;
f1p=@(x,ah) ah*cos(2.*x)-3*x.^2;
plot=0;
for ah=[1,-1e-7,1e7]
    if plot
        figure
        hold on
        fplot(@(x) f1(x,ah),[-1,1]);
        %fplot(@(x) f1p(x,ah),[-1,1]);
    end
    f=@(x) f1(x,ah);
    fprintf('alpha=%d\n',ah)
    [ind,x,y,k,afinal,bfinal]=bisezione(f,-0.2,0.1,0,0,1e-8,100,1);
    disp(' ')
end