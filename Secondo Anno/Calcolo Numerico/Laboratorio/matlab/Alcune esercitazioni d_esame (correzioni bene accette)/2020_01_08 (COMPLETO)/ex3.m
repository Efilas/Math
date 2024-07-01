clear;clc;close all;
f=@(x) x.*cos(2*pi.*x.^3);
trueI=-0.052002226153888;
a=-1/2;b=1;
I2=zeros(1,8);
err=I2;
for k=2:10
    m=2^k;
    I=simpcomp(f,a,b,m);
    I2(k-1)=I;
    Err=abs(trueI-I2(k-1));
    err(k-1)=Err;
    fprintf('m=%d, I2=%d, |I2-I|=%d\n',m,I,Err)
end
for k=1:7
    conv(k)=log(err(k)/err(k+1))/log(2);
end
plot(1:7,conv);