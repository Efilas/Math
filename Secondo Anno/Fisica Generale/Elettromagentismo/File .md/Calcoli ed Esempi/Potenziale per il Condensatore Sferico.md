Per Gauss il Campo Elettrico vale: $$\overrightarrow E = \begin{cases}0 & r<R\\ \frac{1}{4 \pi \varepsilon_0} \frac Q{r^2} \overrightarrow u_r & R_1<r<R_2\\ 0 & r>R_2\end{cases}$$
Allora possiamo calcolare direttamente il potenziale elettrico: $$V = \begin{cases}c_1 & r<R_1\\ \frac{1}{4 \pi \varepsilon_0} \frac Q{r} + c_2 & R_1<r<R_2\\ c_3 & r>R_2\end{cases}$$
Andiamo adesso a definire i vincoli per definire le costanti $c_1,c_2,c_3$.
Dobbiamo tenere conto che: $$\lim_{r \rightarrow +∞}V = 0 \qquad V(R^+_1) = V(R^-_1) \qquad V(R_2^+) = V(R_2^-)$$
Dalla prima otteniamo che $c_3 = 0$, *seguendo lo stesso ragionamento di prima*
Dalla terza otteniamo che: $$\frac{1}{4 \pi \varepsilon_0} \frac QR +c_2 = 0 \qquad \Rightarrow \qquad c_2 = - \frac{1}{4 \pi \varepsilon_0}\frac QR$$
Dalla terza otteniamo che: $$c_1 = \frac{1}{4 \pi \varepsilon_0}$$
Andando a sostituire otteniamo che: $$\fbox{$V = \begin{cases}\frac{Q}{4 \pi \varepsilon_0}\left(\frac{1}{R_1} - \frac{1}{R_2} \right) & r<R_1\\ \frac{Q}{4 \pi \varepsilon_0}\left(\frac 1r - \frac{1}{R_2}\right) & R_1<r<R_2\\ 0 & r>R_2\end{cases}$}$$

![[Drawing 2023-10-30 22.36.26.excalidraw | center]]