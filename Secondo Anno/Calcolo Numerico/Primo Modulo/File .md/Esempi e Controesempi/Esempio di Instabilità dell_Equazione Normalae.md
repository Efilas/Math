Siano $A \in \mathbb R^{3 \times 2}$ e $b \in \mathbb R^n$: $$A = \begin{pmatrix}3 & 3\\ 4 & 4 \\ 0 & \alpha\end{pmatrix}\qquad \text e \qquad b = \begin{pmatrix}1\\1\\1\end{pmatrix}$$
Supponiamo di avere $\alpha \in \mathbb R$ tale che: $$\varepsilon < \alpha< \sqrt \varepsilon\qquad \text{con }\varepsilon \text{ il valore }\mathtt{eps} \text{ della macchina}$$
In aritmetica esatta avremmo che: $$A^TA = \begin{pmatrix}3 & 4 & 0\\ 3 & 4& \alpha\end{pmatrix}\begin{pmatrix} 3 & 3\\ 4 & 4\\ 0 & \alpha\end{pmatrix} = \begin{pmatrix}25& 25 \\ 25 & 25 + \alpha^2\end{pmatrix}$$
Ossia le colonne di $A^TA$ sono linearmente indipendenti.
Tuttavia, se dovessimo fare $\mathtt{fl}(A^TA)$ otterremo che: $$\mathtt{fl}(A^TA) = \begin{pmatrix}25 & 25\\ 25 & 25\end{pmatrix} \qquad \Rightarrow \qquad Range(A^TA)=1$$
Questo è un problema perché la matrice aveva le colonne linearmente indipendenti, mentre in macchina diventano linearmente dipendenti per la scelta di $\alpha$, in quanto $\alpha^2<\varepsilon$
*La soluzione di questo sistema comunque è $$x = \begin{pmatrix}\frac 7{25} - \frac 1 \alpha\\ \frac 1 \alpha\end{pmatrix}$$*