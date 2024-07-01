Risolviamo l'esercizio punto per punto. 
Per il primo punto ci basta azzerare gli elementi posizionato sotto la prima diagonale sotto quella principale, cioè quelli in blu: $$\begin{pmatrix}\times  & \times & \cdots & \times & \times & \times\\ \times  & \times & \cdots & \times & \times & \times\\ {\color{blue} \times}  & \times & \cdots & \times & \times & \times\\ {\color{blue} \vdots} & {\color{blue} \ddots} & \ddots  & \vdots  & \vdots & \vdots \\ {\color{blue}\times} & {\color{blue}\cdots} & {\color{blue} \times} & \times & \times & \times\\ {\color{blue}\times} & {\color{blue}\cdots} & {\color{blue}\cdots} & {\color{blue}\times} & \times & \times \end{pmatrix}$$
Possiamo utilizzare Householder a parte dalla seconda: $$\begin{pmatrix}1\\ & P_1\end{pmatrix}A = \begin{pmatrix}\times & \times & \cdots &\times\\ \times  &\times & \cdots & \times\\ 0 & \times & \cdots & \times\\ \vdots & \vdots && \vdots \\ 0 & \times & \cdots & \times\end{pmatrix}$$
E poi possiamo proseguire per ottenere la matrice che stiamo cercando: $$\underbrace{\begin{pmatrix}I_{n-2} \\ & \hat P_{n-2}\end{pmatrix}\begin{pmatrix}I_{n-3}\\ & \hat P_{n-3}\end{pmatrix}\cdots \begin{pmatrix}I_2\\ & \hat P_2\end{pmatrix}\begin{pmatrix}1\\ & P_1\end{pmatrix}}_{Q^T}A = H \quad \Rightarrow \quad  A= QH$$

Per il secondo punto, il problema può essere riscritto come: $$\left\| b- \begin{pmatrix}QH\\ \gamma e^T_n\end{pmatrix}x\right\| = \left\| b - \underbrace{\begin{pmatrix}Q\\ & 1\end{pmatrix}}_{\tilde Q}\begin{pmatrix}H\\ \gamma e_n^T\end{pmatrix}x\right\| = \left\| \tilde Q \left(\tilde Q^T b - \begin{pmatrix}H\\ \gamma e_n^T\end{pmatrix}x \right)\right\| = \left \| \tilde Q ^T b - \begin{pmatrix}H\\ \gamma e_n^T\end{pmatrix} \right\| x$$
Ma $H$ è Hessenberg superiore, quindi dobbiamo eliminare gli elementi sotto la diagonale principale, possiamo usare Givens e abbiamo finito.
*Poi ci sarebbero da risolvere un sistema triangolare superiore e da calcolare il costo computazionale
Notiamo che è esattamente quanto fatto in precedenza con la fattorizzazione $QR$ solo che al posto di una triangolare avevamo una Hessenberg superiore*
Per il terzo punto abbiamo che: $$A_1 = A + ve_n^T$$
Dobbiamo trovare una fattorizzazione $Q_1H_1$. Per quanto fatto nei punti precedenti abbiamo che: $$A_1 = A + ve_n^T = QH + v e_n^T$$
Notiamo però che $ve_n^T$ è un matrice di rango $1$ che va a modificare solo l'ultima colonna, cioè: $$QH + ve_n^T = (\square) + (0|)$$
Sapendo che $Q$ è ortogonale, possiamo raccoglierla e otteniamo: $$Q(H + Q^Tve_n^T)$$
Abbiamo sostanzialmente finito perché: $$Q_1 = Q\qquad\text e \qquad H_1 = H+\underbrace{Q^Tv}_{v_1}e_n^T = H+v_1e_n^T = (\setminus \! ◹) + (0|) = (\setminus \! ◹)$$
*Se avessi avuto un vettore diverso da $e_n^T$ allora questa cosa non avrei potuto farla*