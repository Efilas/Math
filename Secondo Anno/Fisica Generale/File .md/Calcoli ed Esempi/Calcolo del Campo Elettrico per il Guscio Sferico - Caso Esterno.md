![[Drawing 2023-10-17 08.02.39.excalidraw | center]]

Se andiamo a fare il calcolo dell'integrale otteniamo che: $$\overrightarrow E = \iint_{Guscio} \frac{1}{4\pi \varepsilon_0} \frac{dq}{r^2} \overrightarrow u_r(\overrightarrow r)$$
Da un lato sappiamo che $dq = \sigma dS$
Dall'altro, partendo dalla posizione dei vettori possiamo ricavare che: $$\overrightarrow r = \overrightarrow r_P - \overrightarrow r_\sigma \qquad \text{e che} \qquad \begin{cases}\overrightarrow r_P = (0, 0, z) = (0, 0, \rho+d)\\ \overrightarrow r_\sigma = (\rho\sin \theta \cos \phi, \rho \sin \theta \sin \phi, \rho \cos \theta)\end{cases}$$
Da queste cose otteniamo che: $$\overrightarrow r = (- \rho \sin \theta \cos \phi, -\rho \sin \theta\sin \phi, \rho+d- \rho \cos \theta)$$
$$\overrightarrow {r^2} = \overrightarrow r \cdot \overrightarrow r = \rho^2 \sin^2 \theta \cos^2 \phi + \rho^2 \sin^2 \theta \sin^2 \phi + (\rho+d-\rho\cos\theta ^ 2) = 2 \rho(1-\cos \theta)(\rho + d) + d^2$$
Notiamo inoltre che per la simmetria della struttura, tutta la componente orizzontale viene cancellata, quindi $$d \overrightarrow E = \|d \overrightarrow E\| \cos \alpha\; \overrightarrow u_z$$
Inoltre $\alpha$ è dato da: $$\overrightarrow r \cdot \overrightarrow u_z = \|\overrightarrow r\| \cos \alpha \Rightarrow\cos \alpha = \frac{\overrightarrow r \cdot \overrightarrow u_z}{\|\overrightarrow r\|} = \frac{ d + \rho(1-\cos \theta)}{\|\overrightarrow r\|}$$
Quindi, tornando al calcolo dell'integrale, sapendo che $dS = \rho^2 \sin \theta \; d\theta \; d \phi$ con $\theta \in [0, \pi[$ e $\phi \in [0, 2\pi[$: 
$$\begin{align*}
\overrightarrow E =& \iint_{Guscio} \frac{1}{4 \pi \varepsilon_0}\frac{\sigma dS}{\|\overrightarrow r\|^2} \cos \alpha \; \overrightarrow u_z = \int_0^{2\pi} d\phi \int_0^{\pi} d \theta \frac{\sigma}{4\pi \varepsilon_0} \frac{\rho^2}{r^3} \sin \theta \left(d + \rho(1-\cos \theta)\right) \overrightarrow u_z =\\ 
=& \int_0^{2\pi} d \phi \int_0^{\pi}d\theta \frac{\sigma}{4 \pi \varepsilon_0} \frac{\rho^2 \sin \theta (d + \rho(1-\cos \theta))}{(2\rho(1-\cos \theta)(\rho + d) + d^2)^{3/2}} \overrightarrow u_z=  \frac{\sigma}{2\varepsilon_0}\rho^2 \int_0^{\pi} d\theta \sin \theta \frac{d+\rho(1-\cos \theta)}{(2 \rho(1-\cos \theta)(\rho + d) + d^2)^{3/2}} \overrightarrow u_z=\\ 
=& \frac{\sigma}{2 \varepsilon_0} \rho^2 \frac{2}{(\rho + d)^2} \overrightarrow u_z
\end{align*}$$

In particolare, se poniamo $$\sigma = \frac{Q_{tot}}{4\pi \rho^2} \Rightarrow \fbox{$\overrightarrow E = \frac{Q_{tot}}{4 \pi \varepsilon_0}\frac{1}{(\rho + d)^2}$}$$ 