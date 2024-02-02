Consideriamo la matrice $$\hat A = \begin{pmatrix}\times && \times \\ & \ddots & \vdots\\ \times &\cdots & \times\end{pmatrix}$$
Esistono delle matrici $U,V$ tali che $\hat A = A +UV^T$ con $A$ diagonale?
Possiamo applicare la formula prima in due passi, ossia: $$\begin{pmatrix}\times && \times \\ & \ddots & \vdots\\ \times &\cdots & \times\end{pmatrix} = \begin{pmatrix}\times && \\ & \ddots & \\ \times &\cdots & \times\end{pmatrix} + \begin{pmatrix}\quad 0 & \begin{matrix}\times \\ \vdots\\ \times \end{matrix} \end{pmatrix} = \begin{pmatrix}\times \\ & \ddots \\ && \times\end{pmatrix} + \begin{pmatrix}0\\ \\ \begin{matrix}\times & \cdots & \times \end{matrix}\end{pmatrix}+ \begin{pmatrix}\quad 0 & \begin{matrix}\times \\ \vdots\\ \times \end{matrix} \end{pmatrix}$$
In particolare tutto questo è uguale a: $$\hat A = A_{diag} +e_n v^T + ue_n^T = A_{diag} + \begin{pmatrix}e_n &u\end{pmatrix}\begin{pmatrix}v^T \\ e_n^T\end{pmatrix} = A_{diag} + UV^T$$
Dove $U,V$ sono delle matrici in $\mathbb R^{n \times 2}$