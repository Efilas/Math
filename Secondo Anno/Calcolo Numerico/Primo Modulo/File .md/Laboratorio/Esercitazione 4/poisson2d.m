function [A,f] = poisson2d(n)

h=1/(n-1);
A=1/h^2*gallery('poisson',n);
f=ones(n^2,1);

end