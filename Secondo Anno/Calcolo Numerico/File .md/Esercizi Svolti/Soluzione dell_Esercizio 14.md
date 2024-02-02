Come prima cosa andiamo a scrivere esplicitamente la matrice $A$:
$$A = \begin{pmatrix}3 & (-1)^{i+j}\alpha\\
(-1)^{i+j}\alpha^2 & 3 & (-1)^{i+j}\alpha\\ 
& (-1)^{i+j}\alpha^2 & \ddots & \ddots\\
&& \ddots & \ddots & (-1)^{i+j}\alpha\\
&&& (-1)^{i+j}\alpha^2 & 3\end{pmatrix}$$

Per avere trovare facilmente la soluzione possiamo utilizzare i dischi di Gerschgorin:
$$\mathcal G_1 = \{|z-3| ≤ |\alpha|\}\qquad \mathcal G_n = \{|z-3|≤|\alpha^2|\} = \{|z-3|≤\alpha^2\}\qquad \mathcal G_i = \{|z-3|≤\alpha^2 + |\alpha|\}\; \forall i \in \{2,...,n-1\}$$ 
Siamo quindi nella situazione in cui:

![[Drawing 2023-12-15 18.25.00.excalidraw | center]]

Quindi affinché tutti gli autovalori sono positivi, devono essere verificate queste tre condizioni:
$$\begin{cases}|\alpha|<3\\ \alpha^2<2\\ \alpha^2 + |\alpha|<3\end{cases}\quad \text{Per comodità possiamo supporre }\alpha>0 \quad\Rightarrow \quad\begin{cases}\alpha<3\\ \alpha<\sqrt 3\\ \alpha^2+\alpha<3\end{cases}$$
Andiamo a risolvere quest'ultima disuguaglianza:
$$\alpha^2 + \alpha <3 \quad \Rightarrow \quad \alpha^2 + \alpha -3 < 0 \quad \Leftrightarrow \quad \alpha = \frac{-1\pm \sqrt{1+12}}{2} = -\frac 12 \pm \frac{\sqrt{13}}{2}\quad \Rightarrow \quad -\frac 12 -\frac{\sqrt{13}}2<\alpha<-\frac 12 +\frac{\sqrt{13}}2$$
Ora mettendo tutto insieme abbiamo che: $$|\alpha|<\frac{\sqrt{13}}{2}-\frac12$$
Con questi valori ho tutti autovalori positivi

Per il secondo punto abbiamo due scelte:
- La prima è quella di utilizzare il metodo delle potenze inverse
<br>
- La seconda è quella di utilizzare il metodo delle potenze inverse shiftate, prendendo come valore di shift $\sigma = 3 -(\frac{\sqrt{13}}{2}-\frac 12)$
  Questa è la via che porta migliori risultati perché sapendo già quale è il valore minimo che può assumere l'autovalore, posso partire direttamente da quello, quindi il metodo convergerà più in fretta.