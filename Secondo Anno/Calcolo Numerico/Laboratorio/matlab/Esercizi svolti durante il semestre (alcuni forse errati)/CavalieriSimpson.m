function [I2m]=CavalieriSimpson(a,b,m,f)
H=(b-a)/(2*m);
I2m=H*(f(a)+f(b)+4*sum(f((a+H):2*H:(b-H)))+2*sum(f((a+2*H):2*H:(b-2*H))))/3;
