Facciamo prima i conti e spezziamo i blocchi: $$\begin{cases}Ax + by = f\\ c^Tx = 0\end{cases}$$
*Risolviamolo prima in maniera formale e poi andiamo più nei dettagli*
Dalla prima otteniamo che: $$Ax = f-by \Rightarrow x = A^{-1}(f-by)$$
Sostituendo otteniamo che $$c^T A^{-1}f-c^TA^{-1}by = 0 \Rightarrow y = \frac{c^T A^{-1} f}{c^T A^{-1} b}\qquad c^T A^{-1} b≠0$$
Una volta ottenuta $y$ otteniamo che: $$x = A^{-1}f - A^{-1}by$$
*Andiamo nel dettaglio*
Dobbiamo prima risolvere due sistemi in $A$: $$Aw_1 = f \quad Aw_2 = b \qquad \Rightarrow \qquad y = \frac{c^Tw_1}{c^Tw_2} \qquad \Rightarrow \qquad x = w_1-w_2 y$$
Possiamo sfruttare la risoluzione dell'esercizio precedente come $$AW = (f,b)$$
*Chiaramente poi andrà spiegato pienamente nei dettagli*

Quindi abbiamo che il costo totale è: $$\underbrace{4n}_{LU} + \underbrace{2 \cdot 5n}_{Sol. LU} + \underbrace{2 \cdot 2}_{c^Tw_i} + \underbrace{2n}_{x} \quad = \quad 19n + \Theta(1)$$