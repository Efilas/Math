% script 2

% genero A
A=randn(10,6);

% chiamo QR_house
[Qhouse,Rhouse]=QR_house(A);

% stampo i risultati
fprintf('HOUSEHOLDER - ||I-Q^T*Q||: %e, ||A-Q*R||: %e, cond(A): %e, cond(R): %e \n',norm(eye(size(A,1))-Qhouse'*Qhouse),norm(A-Qhouse*Rhouse),cond(A),cond(R))
