![[Drawing 2023-10-18 08.15.28.excalidraw | {width = 100%}]]

Notiamo che c'è una simmetria e che $\overrightarrow E$ è radiale, quindi si può scrivere il campo elettrico come $$\overrightarrow E = \|\overrightarrow E\| \cdot\overrightarrow u_r$$
Possiamo considerare $S$ come un cilindro attorno al filo, il cui asse coincide sul filo stesso.
Possiamo scrivere la superficie $S$ come unione di tre superfici differenti: $$S = S_1 \cup S_2 \cup S_3$$
Dove $S_1, S_3$ sono le superfici di base mentre $S_2$ è la superficie laterale
In quest'ottica possiamo scrivere la formula del flusso come: $$\Phi = \oint_S \overrightarrow E \cdot d \overrightarrow S = \sum_{i = 1}^3 \oint_{S_i} \overrightarrow E \cdot d \overrightarrow S_i$$
Andiamo a vedere come sono fatti i vettori normali $\overrightarrow n_1, \overrightarrow n_2, \overrightarrow n_3$
Notiamo che $\overrightarrow n_1 = \overrightarrow u_z$ e che $\overrightarrow n_3 = -\overrightarrow u_z$, mentre per ognu punto della superficie cilindrica si ha che $\overrightarrow n_2 = \overrightarrow u_r$
Inoltre, poiché $\overrightarrow n_1 \perp \overrightarrow E$ e poiché $\overrightarrow n_2 \perp \overrightarrow E$, segue che $\overrightarrow n_1 \cdot \overrightarrow E = \overrightarrow n_3 \cdot\overrightarrow E = 0$, quindi l'integrale diventa: 
$$\Phi = \oint_S \overrightarrow E \cdot d \overrightarrow S = \int_{S_2} \overrightarrow E \cdot d \overrightarrow S_2 = \|\overrightarrow E \| \int_{S_2} d\overrightarrow S_2 = \|\overrightarrow E \|2 \pi RL$$
Per Gauss è anche vero che $$\Phi = \frac{Q_{int}}{\varepsilon_0}$$
Sapendo tuttavia che la densità di carica elettrica è costante e vale $\lambda = \frac{dq}{d\ell}$ segue che $$Q_{int} = \lambda L$$
Mettendo tutto insieme segue che $$\|\overrightarrow E\| 2 \pi RL = \frac{\lambda L}{\varepsilon_0} \Rightarrow \|\overrightarrow E\| = \frac{\lambda}{2 \pi \varepsilon_0 R}$$
Quindi: $$\fbox{$\overrightarrow E = \frac{\lambda}{2\pi \varepsilon_0 R} \overrightarrow u_r$}$$
*È esattamente lo stesso risultato che abbiamo ottenuto con la legge di Coulomb*