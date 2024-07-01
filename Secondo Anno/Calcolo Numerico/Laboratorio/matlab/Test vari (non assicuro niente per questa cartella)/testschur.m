n=20;
d=3;
tol=1e-3;
A=randi(n,d);
[R,Q,its]=Schur(A,tol);