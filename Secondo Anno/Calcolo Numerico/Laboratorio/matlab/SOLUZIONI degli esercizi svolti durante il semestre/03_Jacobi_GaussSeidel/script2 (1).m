% script1
close all
n_vec=10:10:60;
time_Jacobi=ones(length(n_vec),1);
time_GS=time_Jacobi;

fprintf('n  Jacobi  Gauss-Seidel\n')
for i=1:length(n_vec)
    
    
    n=n_vec(i);
    % costruisco i dati
    [A,f] = poisson2d(n);

    % inizializzo i parametri di jacobi
    x0=zeros(n^2,1);
    maxit=10000;
    tol=1e-8;
    
    % chiamo Jacobi
    tt=tic;
    [x,its,resnormvec]=Jacobi(A,f,x0,maxit,tol);
    time_Jacobi(i)=toc(tt);

    % chiamo Gauss-Seidel
    tt=tic;
    [xGS,itsGS,resnormvecGS]=GS(A,f,x0,maxit,tol);
    time_GS(i)=toc(tt);

    fprintf('%d %e %e\n',n,time_Jacobi(i),time_GS(i))

end