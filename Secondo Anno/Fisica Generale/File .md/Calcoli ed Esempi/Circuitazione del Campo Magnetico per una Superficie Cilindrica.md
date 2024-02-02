Assumiamo di avere una Superficie Cilindrica con raggio $R$ e corrente $I$
Andiamo a Calcolare $B(r)$ utilizzando la legge di Ampére

![center | 160](Drawing%202023-11-27%2019.24.19.excalidraw.md)

Sia quindi $\gamma$ una circonferenza di raggio $r$, possiamo vedere già subito che: $$I_{Conc} = \begin{cases} I & r>R\\ 0 & r<R\end{cases}$$

Inoltre la simmetria della figura ci permette di dire che: $$\overrightarrow B = \|\overrightarrow B \| \overrightarrow u_\phi$$
In questo modo otteniamo che: $$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \int_0^{2 \pi} \| \overrightarrow B \| r d \phi = \| B \| 2 \pi r$$
Dalla legge di Ampére abbiamo quindi che: $$\| \overrightarrow B \| 2 \pi r = \mu_0 I_{Conc} \quad \text{con }\begin{cases}0 & r<R\\ I & r>R\end{cases}$$
Quindi otteniamo che: $$\fbox{$\| \overrightarrow B \| = \frac{\mu_0I}{2 \pi r}\alpha \qquad \text{con }\alpha = \begin{cases}0 & r<R\\ 1 & r>R\end{cases}$} $$