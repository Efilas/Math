n=10;
temp=rand(n,n);
A=temp*temp';
b=rand(n,1);
x=gradcon(A,b,1e-2,500);
disp(norm(A*x-b));
