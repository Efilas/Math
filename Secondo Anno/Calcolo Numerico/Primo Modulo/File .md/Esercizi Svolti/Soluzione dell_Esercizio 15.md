Sappiamo che $A$ è simmetrica (quindi gli autovalori sono reali) e a diagonale principale
Possiamo quindi dire che $$\kappa(A) = \frac{|\lambda_{max}|}{|\lambda_{max}|}$$
(*Se non fosse stata simmetrica non sarebbe stato vero*)
Stimiamo quindi l'intervallo spettale, in tal modo possiamo avere informazioni sugli autovalori della matrice
Possiamo usare i dischi di Gerschgorin: 
$$\mathcal G_1 = \left\{|z-4|≤\frac 32\right\}\qquad \mathcal G_2 = \{|z-3|≤2\}\qquad \mathcal G_3 = \{|z-2|≤1\}\qquad \mathcal G_4 = \left\{|z-5|≤\frac{5}2\right\}$$
Graficamente otteniamo che: 

![[Drawing 2023-12-21 13.12.45.excalidraw | 100%]]

In questo modo otteniamo quindi che: $$Spec(A)\subseteq\left[1, \frac {15}2\right]$$
Dai dischi abbiamo anche che: $$\lambda_{max}≤\frac {15}2\qquad \text e \qquad \lambda_{min}≥1\qquad \kappa(A)≤\frac{15}2$$

Per il secondo punto basta applicare il metodo delle potenze inverse traslate (prima con $\sigma = 0$, poi con $\sigma≠0$)
*Ovviamente il metodo va descritto nella prova scritta e il costo computazionale va messo solo se viene chiesto*
Sappiamo che per il metodo la cosa importante è quella di di risolvere il sistema lineare: $$y = (A- \sigma I)^{-1}x^{(k+1)}$$
Se $\sigma = 0$ allora abbiamo il semplice metodo delle potenze inverse, e la convergenza dipende da: $$\left|\frac{{\lambda_2}(A^{-1})}{\lambda_1(A^{-1})}\right|$$
Sapendo poi che gli autovalori dell'inversa di una matrice sono gli inversi degli autovalori della matrice stessa, si ha che:
$$\left|\frac{{\lambda_2}(A^{-1})}{\lambda_1(A^{-1})}\right| = \left|\frac{{\lambda_{n-1}}(A)}{\lambda_n(A)}\right|$$

Avendo fatto i dischi di Gerschgorin sappiamo che $\lambda_n(A)≥1$, quindi possiamo prendere $\sigma = 1$. *Più vicini siamo all'intervallo spettrale meglio è e possiamo prendere direttamente $\sigma = 1$ perché la probabilità che $\lambda_n = 1$ è molto remota*

**Osservazione**: Se $A$ non ha un autovalore semplice cioè ha molteplicità maggiore di $1$, allora il metodo converge ad un autovalore dell'autospazio.
*Ai fini del corso restiamo sul fatto che $\lambda$ sia semplice in modulo*

Quindi $\sigma = 1$ è una buona scelta e quindi la velocità di convergenza è: $$\left| \frac{\lambda_2((A-\sigma I)^{-1})}{\lambda_1((A-\sigma I)^{-1})}\right|$$
Volendo possiamo togliere il valore assoluto in quanto sappiamo che $(A-I)$ è almeno semidefinita positiva

Se $\sigma = 1 = \lambda_{min}$ allora il metodo è finito, in quanto abbiamo che $A-\sigma I$ è singolare, quindi $\lambda{min} = 1$ è l'autovalore più vicino all'origine
Se invece $\lambda_{min}≠\sigma$ allora otteniamo che $A-\sigma I>0$. Quindi otteniamo che: $$\frac{\lambda_n(A-\sigma I)}{\lambda_{n-1}(A-\sigma I)} = \frac{\lambda_n - \sigma}{\lambda_{n-1}-\sigma}$$

*Questo è vero in quanto abbiamo che: $$A-\sigma I = X\Lambda X^T - \sigma I = X(\Lambda - \sigma I)X^T$$ quindi tutti gli autovalori sono traslati di un valore $\sigma$*

Quindi con $\sigma≠0$ otteniamo una velocità maggiore di convergenza che è maggiore se: $$\frac{\lambda_n - \sigma}{\lambda_{n-1}-\sigma}<\frac{\lambda_n}{\lambda_{n-1}}$$
Mostriamolo: $$\begin{align*}\frac{\lambda_n - \sigma}{\lambda_{n-1}-\sigma}<\frac{\lambda_n}{\lambda_{n-1}} & \Rightarrow (\lambda_n-\sigma)(\lambda_{n-1})<(\lambda_{n-1}-\sigma)(\lambda_n)\Rightarrow \\ & \Rightarrow \lambda_n\lambda_{n-1} - \sigma \lambda_{n-1}<\lambda_{n-1}\lambda_n - \sigma \lambda_n \Rightarrow \\ &\Rightarrow -\sigma\lambda_{n-1}<-\sigma \lambda_n \Rightarrow \\ &\Rightarrow\lambda_{n-1}>\lambda_n\end{align*}$$
Poiché è verificato, abbiamo che torna sempre.