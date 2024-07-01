Analizziamo tre casi in cui è più conveniente o meno usare un metodo rispetto all'altro
1. Prendiamo il sistema lineare $Ax = b$ dato da: $$\begin{pmatrix}3 & 0 & 4\\ 7 & 4 & 2\\ -1 & -1 & -2\end{pmatrix}\begin{pmatrix}x_1\\ x_2\\ x_3\end{pmatrix} = \begin{pmatrix}7\\ 13\\ -4\end{pmatrix}$$

> [!multi-column]
> > [!blank] **Metodo di Jacobi**
> > **Metodo di Jacobi**
> > Otteniamo che la matrice $P$ è: $$P = \begin{pmatrix}3 & 0 & 0\\ 0 & 4 & 0\\ 0 & 0 & -2\end{pmatrix}$$
> > Da cui otteniamo che il valore di $\rho(P^{-1}N)$ è all'incirca: $$\rho(P^{-1}N) \approx 1,33$$
> > Da ciò segue che non converge 
>
> > [!blank] **Metodo di Gauss - Seidel**
> > **Metodo di Gauss - Seidel**
> > Otteniamo che la matrice $P$ è: $$P = \begin{pmatrix}3 & 0 & 0\\ 7 & 4 & 0\\ -1 & -1 & -2\end{pmatrix}$$
> > Da cui otteniamo che il valore di $\rho(P^{-1}N)$ è all'incirca: $$\rho(P^{-1}N) \approx 0,25$$
> > Da ciò segue che converge 

2. Prendiamo adesso il sistema lineare: $$\begin{pmatrix}-3 & -3 & 6\\ -4 & 7 & -8\\ 5 & 7 & -9\end{pmatrix}\begin{pmatrix}x_1\\ x_2\\ x_3\end{pmatrix} = \begin{pmatrix}6\\ -5\\ 3\end{pmatrix}$$

> [!multi-column]
> > [!blank] **Metodo di Jacobi**
> > **Metodo di Jacobi**
> > Otteniamo che la matrice $P$ è: $$P = \begin{pmatrix}3 & 0 & 0\\ 0 & 7 & 0\\ 0 & 0 & -9\end{pmatrix}$$
> > Da cui otteniamo che il valore di $\rho(P^{-1}N)$ è all'incirca: $$\rho(P^{-1}N) \approx 0,813$$
> > Da ciò segue che converge 
>
> > [!blank] **Metodo di Gauss - Seidel**
> > **Metodo di Gauss - Seidel**
> > Otteniamo che la matrice $P$ è: $$P = \begin{pmatrix}3 & 0 & 0\\ -4 & 7 & 0\\ 5 & 7 & -9\end{pmatrix}$$
> > Da cui otteniamo che il valore di $\rho(P^{-1}N)$ è all'incirca: $$\rho(P^{-1}N) \approx 1,12$$
> > Da ciò segue che non converge 

3. Sia adesso il sistema lineare dato da: $$\begin{pmatrix}4 & 1 & 1\\ 2 & -9 & 0\\ 0 & -8 & -6\end{pmatrix}\begin{pmatrix}x_1\\ x_2\\ x_3\end{pmatrix} = \begin{pmatrix}6\\ -7\\ -14\end{pmatrix}$$

> [!multi-column]
> > [!blank] **Metodo di Jacobi**
> > **Metodo di Jacobi**
> > Otteniamo che la matrice $P$ è: $$P = \begin{pmatrix}4 & 0 & 0\\ 0 & -9 & 0\\ 0 & 0 & -6\end{pmatrix}$$
> > Da cui otteniamo che il valore di $\rho(P^{-1}N)$ è all'incirca: $$\rho(P^{-1}N) \approx 0,44$$
> > Da ciò segue che converge 
>
> > [!blank] **Metodo di Gauss - Seidel**
> > **Metodo di Gauss - Seidel**
> > Otteniamo che la matrice $P$ è: $$P = \begin{pmatrix}4 & 0 & 0\\ 2 & -9 & 0\\ 0 & -8 & -6\end{pmatrix}$$
> > Da cui otteniamo che il valore di $\rho(P^{-1}N)$ è all'incirca: $$\rho(P^{-1}N) \approx 0,018$$
> > Da ciò segue che converge molto più velocemente

Con i grafici otteniamo che: 

![[Pasted image 20231109190819.png]]