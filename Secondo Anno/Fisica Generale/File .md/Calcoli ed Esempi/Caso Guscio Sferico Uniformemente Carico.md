Da Gauss abbiamo che $$\oint_S \overrightarrow E \cdot \overrightarrow n dS = \frac{Q_{int}}{\varepsilon_0}$$
Allora possiamo prendere una superficie gaussiana come una sfera di raggio $r$ concentrica al guscio iniziale
![[Drawing 2023-10-24 06.42.59.excalidraw | center]]
Noi sappiamo che è uniformemente carica con densità di carica $\sigma$, quindi la carica totale è $Q_{tot} =  4\pi R^2 \sigma$
Per simmetria abbiamo che: $$\overrightarrow E = \| \overrightarrow E\| \cdot \overrightarrow u_r \Rightarrow \oint \overrightarrow E \cdot \overrightarrow n dS = \|\overrightarrow E \| \cdot 4 \pi r^2$$
Da questo otteniamo che $$\fbox{$\overrightarrow E = \begin{cases}\overrightarrow 0 & r<R\\ \frac{Q_{tot}}{4 \pi r^2} \overrightarrow u_r & r>R\end{cases}$}$$
Graficamente, l'andamento del campo elettrico è:
![[Drawing 2023-10-24 07.01.23.excalidraw | center]]
Questa discontinuità è situata esattamente dove sta la distribuzione di carica