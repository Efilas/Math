A=[1 2 3 4; -1 2 5 -2; 2 0 4 -3; 10 -1 -3 0; 1 1 1 -1];
b = ones(5,1);
[x, res]=minquad_house(A,b)