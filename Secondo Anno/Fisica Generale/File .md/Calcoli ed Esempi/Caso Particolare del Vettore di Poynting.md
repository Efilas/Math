Vediamo quale è l'energia di un'onda polarizzata linearmente: 
$$\overrightarrow E = \overrightarrow E_0 \cos (\overrightarrow k \cdot \overrightarrow x - \omega t)\qquad \text e \qquad \overrightarrow B = \overrightarrow B_0 \cos (\overrightarrow k \cdot \overrightarrow x - \omega t)$$
Allora abbiamo che il vettore di Poynting è: $$\overrightarrow S = \frac{\overrightarrow E \times \overrightarrow B}{\mu_0} \qquad \Rightarrow \qquad \|\overrightarrow S\| = c\varepsilon_0 \| \overrightarrow E_0\|^2 \cos^2(\overrightarrow k \cdot \overrightarrow x)$$
Sappiamo anche che: $\Phi_\Sigma(\overrightarrow S)$ è un flusso istantaneo (con $\Sigma$ superficie)
Allora è anche conveniente definire un flusso medio di potenza: $$\|\overrightarrow S\|_M = \varepsilon_0 c \|\overrightarrow E\|^2_M$$ 
*${}_M$ serve ad indicare che è medio*
Per trovare il valore medio possiamo usare il teorema della media integrale, cioè: $$(X)_M = \frac 1T \int_0^T X(t)dt$$
Nel nostro caso abbiamo: $$(\|\overrightarrow E\|^2)_M = \frac 1T \int_0^T \|\overrightarrow E\|^2(t)dt = \frac{\|\overrightarrow E\|^2}{T}\int_0^T \cos^2(\underbrace{kx - \omega t}_{\tau})\qquad \tau = \frac{2\pi}\omega$$
Con un cambio di variabile otteniamo poi che: $$(\|\overrightarrow E\|^2)_M = \frac{\|\overrightarrow E\|^2}{T}\frac 1\omega \int_{kx}^{kx - 2\pi}-\cos^2(\tau)d\tau = \frac{\|\overrightarrow E\|^2}{T\omega}\left[\frac \tau2 + \frac 14 \sin(2\tau)\right]_{kx}^{kx-2\pi}$$
Quindi otteniamo che: $$\|\overrightarrow S\|_M = \varepsilon_0 c (\| \overrightarrow E\|^2)_M = \varepsilon_0 c \frac{\|\overrightarrow E_0\|^2}{2}$$