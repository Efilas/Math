Calcolare $\overrightarrow B$ tra le armature di un condensatore piano di raggio $R$.
Graficamente abbiamo che:

![[Drawing 2023-12-11 17.56.32.excalidraw | center]]

Calcolando il Campo Magnetico utilizzando Ampère - Maxwell otteniamo che: $$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \varepsilon_0 \mu_0 \frac{d}{dt}\Phi_S(\overrightarrow E)$$
Sia $r$ il raggio di $\gamma$ e scriviamo la formula in modo esplicito: 
$$\| \overrightarrow B\| \cdot 2 \pi r = \varepsilon_0 \mu_0 \frac{d}{dt}\left(\pi r^2 \|\overrightarrow E(t)\|\right)\quad \Rightarrow \quad \|\overrightarrow B\| = \frac{\mu_0 \varepsilon_0}{2\pi r}\pi r^2\frac{d}{dt}\left(\|\overrightarrow E(t)\|\right)\quad \Rightarrow \quad \fbox{$\|\overrightarrow B\| = \frac{\mu_0 \varepsilon_0 r}{2}\frac{d \|\overrightarrow E(t)\|}{dt}$}$$
Questo nel caso in cui $r<R$
Nel caso in cui abbiamo che $r>R$, l'unica cosa che cambia è il termine a destra. Infatti, sapendo che $\overrightarrow E=0$ e che $r>R$, dalla legge di Ampère Maxwell abbiamo che: $$\|\overrightarrow B\| 2 \pi r = \varepsilon_0 \mu_0 \frac{d}{dt} \|\overrightarrow E(t)\|\quad \Rightarrow \quad \fbox{$\|\overrightarrow B\| = \frac{\varepsilon_0 \mu_0 R^2}{2r}\frac{d}{dt}\|\overrightarrow E(t)\|$}$$