Supponiamo ora di avere un cilindro pieno con raggio $R$ e corrente $I$: 

![center | 160](Drawing%202023-11-27%2019.37.28.excalidraw.md)

Assumiamo sia uniformemente distribuita, caratterizzata da una densità di corrente: $$\overrightarrow j = \frac {d\overrightarrow I}{d S}$$
Nel caso della distribuzione uniforme abbiamo che: $$j = \frac{I}{\pi R^2} \qquad [j] = A/m^2$$
Sia quindi $\gamma$ una circonferenza di raggio $r$. Allora abbiamo che: $$\begin{dcases}I_{Conc} = \iint j dS = j\pi r^2 = I\left(\frac rR\right)^2 & r<R\\ \\R_{Conc} = I & r>R\end{dcases}$$

Dalla legge di Ampére segue che: $$2 \pi r \| \overrightarrow B \| = \mu_0 I_{Conc} \quad \Rightarrow \quad \fbox{$\|\overrightarrow B\| = \frac{\mu_0I}{2 \pi r}\alpha \quad \text{con }\alpha = \begin{cases}(\frac rR)^2 & r<R\\ 1 & r>R\end{cases}$}$$

Il campo magnetico ha quest'andamento:

![[Drawing 2023-11-27 19.47.18.excalidraw | center]]