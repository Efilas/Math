Per il primo punto, il probelma si traduce in un problema del tipo: $$Ax = \lambda x\quad \Rightarrow \quad \begin{pmatrix}I_n & B\\ B^T & O_m\end{pmatrix}\begin{pmatrix}u\\ v\end{pmatrix} = \lambda \begin{pmatrix}u\\ v\end{pmatrix}\quad \Rightarrow \quad \begin{pmatrix}I_n & ⌷\\ ▭ & O_m\end{pmatrix}\begin{pmatrix}u\\ v\end{pmatrix} = \lambda \begin{pmatrix}u\\ v\end{pmatrix}$$
Cioè, riscrivendolo in forma di un sistema lineare: $$\begin{cases}u + Bv = \lambda v \\ B^T y = \lambda v\end{cases}\qquad \text{È un problema di autovalori}$$
Dobbiamo quindi ricavare $u$ dalla prima equazione e sostituire (*non dalla seconda, perché non esiste l'inversa di una matrice triangolare*): $$\begin{cases}Bv = (\lambda - 1)u\\ B^Tu = \lambda v\end{cases}$$
Da cui otteniamo due casi:
$$\lambda≠-1\quad \Rightarrow \quad u = \frac{1}{\lambda-1}Bv\qquad \Rightarrow \qquad B^T\left(\frac1{\lambda-1}Bv\right) = \lambda v \quad \Rightarrow \quad B^TBv = \underbrace{\lambda(\lambda-1)}_{\theta}v$$
Quindi ho trovato un modo per sfruttare gli autovalori $\theta_j$. In questo modo sappiamo che: $$\lambda(\lambda-1)-\theta = 0 \quad \Rightarrow \quad \lambda^2-\lambda-\theta =0\quad \Rightarrow \quad \lambda_{1,2}(\theta)= \frac{1\pm \sqrt{1 + 4\theta}}{2}$$
Quindi per ogni $\theta_j$ autovalore di $B^TB$ abbiamo due autovalori: $$\lambda_{1,j} = \frac{1-\sqrt{1+4\theta}}{2}\qquad \text e \qquad \lambda_{2,j} = \frac{1+\sqrt{1+4 \theta}}{2}$$
Quindi abbiamo trovato una legge che lega gli autovalori $\theta_j$ di $B^TB$ agli autovalori $\lambda_{i,j}$ di $A$
In particolare abbiamo $m$ autovalori del tipo $\lambda_{1,j}$, $m$ autovalori del tipo $\lambda_{2,j}$ e il restante $n-m$ augovalori uguali a $1$
*Volendo si potrebbe osservare anche che se esistono $m$ autovalori e sapendo che $B^TB>0$ abbiamo che tutti gli autovalori $\theta_j$ sono tutti positivi, quindi se esistono $m$ autovalori di $B^TB$ allora esistono tutti gli autovalori di $A$*
Se invece $\lambda-1 = 0$ allora segue che $Bv=0$, ma per ipotesi abbiamo che $B$ ha rango massimo, quindi necessariamente $v = 0$
In questo modo otteniamo poi che $u \in Ker(B^T)$ con $\dim(B^T) = n-m$ che è esattamente quanto volevamo

Per il secondo punto: dal punto precedente avevamo che: $$Spec(A) = \left\{1, \frac{1+\sqrt{1 + 4\theta_j}}{2}, \frac{1-\sqrt{1-4 \theta_j}}{2}\right\}$$
L'autovalore più piccolo è quello della forma $\lambda_{1,j}$ dell'esercizio precedente, con $\theta$ più piccolo, quindi in tal caso dipende esclusivamente da $\theta_j = \theta_{min}$
Il problema diventa quindi trovare $\theta_{min}$
Basta utilizzare il metodo delle potenze inverse su $B^TB$ (*qui andrebbe descritto il metodo*), quindi: $$\lambda^* = \min\left\{1, \frac{1+\sqrt{1+4\theta_{min}}}{2}, \frac{1-\sqrt{1+4\theta_{min}}}{2}\right\}$$

