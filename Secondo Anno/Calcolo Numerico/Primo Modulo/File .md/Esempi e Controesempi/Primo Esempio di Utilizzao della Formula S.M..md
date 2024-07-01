Vogliamo risolvere il sistema lineare $\hat Ax = b$ con $A$ matrice di questa forma: $$\hat A = \begin{pmatrix}\times  &0  & \cdots &\cdots & 0&\times\\ 
\times & \times & \ddots & & \vdots & \vdots\\ 
0 & \times &\times & \ddots & \vdots & \vdots\\
\vdots & \ddots &\ddots& \ddots & 0 & \times\\ 
\vdots &  & \ddots & \times & \times & \times\\ 0 & \cdots & \cdots & 0 & \times & \times\end{pmatrix}$$
*Cioè $A$* è bidiagonale con lultima colonna non nulla.
Possiamo trovre dei vettori $u,v \in \mathbb R^n$ tali che $\hat A = A + uv^T$?
Visto che sappiamo facilmente rislvere un sistema lineare con una matrice a banda, matrice che chiameremo $A$,  ci servono dei vettori che creino l'ultima colonna. Per tale scelta possiamo prendere: $$u = \begin{pmatrix}U_{1,n}\\ \vdots\\ U_{n-1,n}\\ 0\end{pmatrix} \qquad \text e \qquad v= \begin{pmatrix}0 \\ \vdots\\ 0 \\ 1\end{pmatrix} = e_n$$
Abbiamo quindi che $$\hat A = (\setminus \!\setminus) + \hat A_{j,n}e^T_n$$
Quindi il nostro sistema lineare diventerà: $$\hat Ax = b \qquad \Leftrightarrow \qquad (A + ue_n^T)x = b$$