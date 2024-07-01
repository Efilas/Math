Per il primo punto ok, basta guardare la teoria.

Per il secondo, sfruttiamo la fattorizzazione $QR$ fatta nel punto precedente, quindi supponiamo di avere $Q$ e $R$: $$\left\|\begin{pmatrix}b\\ \beta\end{pmatrix} - \begin{pmatrix}A\\ a^T\end{pmatrix}x\right\| = \left\|\begin{pmatrix}b\\ \beta\end{pmatrix} - \begin{pmatrix}QR\\ a^T\end{pmatrix}x\right\| = \left\| \begin{pmatrix}b \\\beta\end{pmatrix} - \begin{pmatrix}Q\\ & 1\end{pmatrix}\begin{pmatrix}R\\ a^T\end{pmatrix}x\right\|$$
Sapendo che la matrice diagonale con $Q$ in alto a sinistra e $1$ in basso a destra è ortogonale, in quanto lo è $Q$, possiamo fare il giochetto che avevamo fatto precedentemente: 
$$\begin{align*}\left\|\begin{pmatrix}b\\ \beta\end{pmatrix} - \begin{pmatrix}A\\ a^T\end{pmatrix}x\right\| &= 
\left\| \begin{pmatrix}b \\\beta\end{pmatrix} - \begin{pmatrix}Q\\ & 1\end{pmatrix}\begin{pmatrix}R\\ a^T\end{pmatrix}x\right\| = 
\left\| \begin{pmatrix}Q\\ &1\end{pmatrix}\left[\begin{pmatrix}Q^T\\ &1\end{pmatrix}\begin{pmatrix}b\\ \beta\end{pmatrix} - \begin{pmatrix}R\\ a^T\end{pmatrix}x\right]\right\|\\
&= \left\|\begin{pmatrix}Q^Tb\\ \beta\end{pmatrix} - \begin{pmatrix}R\\ a^T\end{pmatrix}x\right\|  = \left\| \begin{pmatrix}\hat b\\ \beta\end{pmatrix} - \begin{pmatrix}R\\ a^T\end{pmatrix}x\right\|\end{align*}$$

Graficamente parlando abbiamo che: $$\begin{pmatrix}b\\ \beta\end{pmatrix} =\begin{pmatrix}| \\ \cdot\end{pmatrix}\qquad \begin{pmatrix}R\\ a^T\end{pmatrix} = \begin{pmatrix}R_1\\ 0 \\ a^T\end{pmatrix} = \begin{pmatrix}◹ \\ 0 \\ -\end{pmatrix}$$
Noi però vogliamo annullare l'ultima riga della matrice che moltiplica $x$, cioè vogliamo: $$\begin{pmatrix}◹ \\ 0 \\ -\end{pmatrix} \mapsto \begin{pmatrix}◹ \\ 0 \\ 0\end{pmatrix}$$

Nel fare ciò abbiamo diverse scelte: 

1. **Givens**: Possiamo fare una matrice di Givens che per la prima riga e per l'ultima riga, quindi possiamo scegliere $\cos \theta$ e $\sin \theta$ per la prima riga e avere: $$\begin{pmatrix}\cos \theta & & \sin \theta\\ & I_{n-1} \\ -\sin \theta && \cos \theta\end{pmatrix}\begin{pmatrix}R\\ a^T\end{pmatrix} = \begin{pmatrix}\cos \theta & & \sin \theta\\ & I_{n-1} \\ -\sin \theta && \cos \theta\end{pmatrix}\begin{pmatrix}◹ \\ 0 \\ -\end{pmatrix} = \begin{pmatrix}\times & \times & \cdots & \times\\ 0 & \times & \cdots & \times\\ \vdots & \ddots& \ddots & \vdots\\0 & \cdots & 0 &\times \\ \underline 0 & \cdots & \cdots& \underline 0\\ 0 & \times & \cdots & \times\end{pmatrix}$$
   E poi andare avanti con le altre righe:
<br>
2. Possiamo utilizzare una matrice di permutazione per portare l'ultima riga in cima alla matrice: $$\Pi \begin{pmatrix}R\\ a^T\end{pmatrix} = \Pi \begin{pmatrix}◹\\ 0 \\ -\end{pmatrix} = \begin{pmatrix}-\\ ◹\\ 0\end{pmatrix}$$
   Per poi utilizzare le matrici di Givens per ottenere nuovamente una matrice triangolare superiore.
   *Nel fare ciò dobbiamo assicurarci che anche $b_1$ abbia le stesse permutazioni. Abbiamo poi la sicurezza che il tutto funzioni perché la matrice che otteniamo è una matrice Hessenberg superiore, quindi con Givens tutto funziona*
<br>
3. Siamo nella situazione in cui abbiamo: $$\left\|\hat b_1 - \begin{pmatrix}R\\ a^T\end{pmatrix}x \right\| = \left\|\hat b_1 - \begin{pmatrix}◹\\ 0\\ -\end{pmatrix}x \right\| = \left\|\hat b_1 - \hat Ax \right\|\qquad \text{con }\hat A = \begin{pmatrix}◹\\ 0\\ -\end{pmatrix}$$
   Andiamo a vedere cosa otteniamo con l'equazione normale: $$\hat A^T \hat Ax = \hat A^T \hat b$$
   Iniziamo prima con il fare i prodotti, per la matrice abbiamo che $$\begin{align*}\hat A^T \hat A &= \begin{pmatrix}R_1^T & \underline 0 & a\end{pmatrix}\begin{pmatrix}R_1 \\ \underline 0 \\ a^T\end{pmatrix} = R_1^TR_1 + \underline 0^T \underline 0 + aa^T = R_1^TR_1 + aa^T\\ &= \begin{pmatrix}◺ & 0 & \mid\end{pmatrix}\begin{pmatrix}◹\\ 0\\ -\end{pmatrix} = (◺)(◹) + 0 + (\square)_{rg(\square)=1} = (◺)(◹) + (\square)_{rg(\square)=1}\end{align*}$$
   Per il termine noto abbiamo che: $$\hat A^T \hat b = \begin{pmatrix}R^T_1 & 0 & a\end{pmatrix}\begin{pmatrix}\hat b\\ \beta\end{pmatrix} = R^T_1 \hat b + a\beta$$
   Definiamo quello che otteniamo come $R_1^T\hat b+ a \beta = d$, allora otteniamo che: $$(R^TR_1+aa^T)x = d$$
   Poiché abbiamo una matrice con una modifica di rango $1$ possiamo usare la formula di Sherman Morrison e otteniamo che: $$x = (R_1^TR_1)^{-1}d - (R_1^TR_1)^{-a}a(1+a^T(R_1^TR_1)^{-1}a)^{-1}a^T(R_1^TR_1)^{-1}d$$
   A questo punto dobbiamo però poi risolvere dei sistemi lineari: $$(R_1^TR_1)^{-1}w_1 = d\qquad (R_1^TR_1)^{-1}w_2 = a$$
   Che sappiamo poi rivelarsi in tutto nella risoluzione di quattro sistemi lineari, due triangolari superiori e due triangolari inferiori. Quindi abbiamo che il costo computazionale di questa seconda parte è pari a $4m^2$ + le somme tra vettori più dei conti minori