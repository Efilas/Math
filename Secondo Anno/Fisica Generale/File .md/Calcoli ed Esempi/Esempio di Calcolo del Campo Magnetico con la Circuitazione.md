*Il vettore densità di corrente all'interno di un cilindro di raggio $r = 3.1mm$ varia linearmente secondo la funzione: $$j = j_0\frac ra\qquad con\;j_0 = 310 A/m^2$$
Calcolare $B(r)$ per $r = 0, \frac a2, a$*

![[Drawing 2023-11-28 06.59.36.excalidraw | center]]

Sfruttiamo la legge di Ampére.

Sia quindi $\gamma$ una circonferenza di raggio $r$ centrata nell'asse del solenoide, allora abbiamo che: $$I(r) = \underbrace{\int_0^{2\pi}d\phi}_{2\pi} \int_0^rj(r)rdr = 2\pi \int_0^r j_0 \frac ra dr = 2\pi \frac{r^3}a \frac {j_0}r \quad \text{per }r<a$$
Utilizzando la legge di Ampére abbiamo che: $$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \mu_0 I_{Conc} \quad \Rightarrow \quad \|\overrightarrow B \| 2 \pi r = \mu_0 \frac{2\pi}{r}I \frac{r^3}{3} \quad \Rightarrow \quad \|\overrightarrow B\| = \mu_0 \frac{j_0}{3}\frac{r^2}{a}$$

Ora ci basta valutare per $r = 0, \frac a2, a$:
$$\|\overrightarrow B\| = \begin{dcases}0 & r = 0\\ \mu_0\frac{j_0}{3a}\frac{a^2}{4} & r = \frac a2\\ \mu_0 \frac{j_0}{3}a & r = a\end{dcases}$$