Per Gauss, abbiamo che il campo Elettrico vale: $$\overrightarrow E = \begin{cases} 0 & r<R\\ \frac{1}{r \pi \varepsilon_0} \frac{Q}{r^2} \overrightarrow u_r & r>R\end{cases}$$
Sfruttando la simmetria sferica, abbiamo che: $\overrightarrow E = \overrightarrow E(r)$ e quindi: $$\overrightarrow E = - \nabla V = -\frac{∂}{∂r}V \qquad \Leftrightarrow \qquad V = -\int\| \overrightarrow E\| dr$$
Quindi, integrando, otteniamo che: $$V = \begin{cases}c_1 & r<R\\ \frac{1}{4 \pi \varepsilon_0}\frac{Q}{r}+c_2& r>R \end{cases}$$
Dobbiamo tuttavia trovare i valori delle costanti $c_1$ e $c_2$ tenendo conto che $$\lim_{r \rightarrow +∞}V = 0 \qquad \text e \qquad V(r = R^+)=V(r = R^-)$$
Dalla prima otteniamo che: $$\lim_{r \rightarrow +∞} V = \lim_{r \rightarrow +∞} \frac{1}{4 \pi \varepsilon_0} \frac{Q}{r} + c_2 = c_2 = 0 \quad\Rightarrow \quad c_2 = 0$$
Dalla seconda otteniamo invece che: $$V(r = R^+) = V(r=R^-) = \frac{1}{4 \pi \varepsilon_0} \frac QR \quad \Rightarrow \quad c_1 = \frac{1}{4\pi \varepsilon_0} \frac QR$$
Segue quindi che il potenziale elettrico è $$\fbox{$V = \begin{cases}\frac{1}{4 \pi \varepsilon_0}\frac{Q}{R} & r<R\\ \frac{1}{4 \pi \varepsilon_0}\frac{Q}{r} & r>R \end{cases}$}$$

Segue quindi che le superfici equipotenziali sono circonferenza concentriche al centro del guscio:

![[Drawing 2023-10-30 19.05.11.excalidraw | center]]