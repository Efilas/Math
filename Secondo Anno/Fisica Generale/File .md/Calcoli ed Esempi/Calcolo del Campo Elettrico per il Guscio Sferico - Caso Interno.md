![[Drawing 2023-10-18 06.23.13.excalidraw | center]]
Nel nostro sistema di riferimento abbiamo che $$\begin{cases}\overrightarrow r_\sigma  = (\rho \sin \theta \cos \phi, \rho \sin \theta \sin \phi, \rho \cos \theta)\\ \overrightarrow r_P = (0, 0, \rho) & d < \rho\end{cases}$$
Segue quindi che 
$$\begin{align*}
\overrightarrow r &= \overrightarrow r_\sigma - \overrightarrow r_P = (\rho \sin \theta \cos \phi, \rho \sin \theta \sin \phi, \rho \cos \theta - d)\\
\|\overrightarrow r\|^1 &= \rho^2 \sin ^2 \theta \cos^2 \theta + \rho^2 \sin^2 \theta \sin^2 \phi + (\rho \cos \theta - d)^2 = \rho^2 + d^2 - 2 d \rho \cos \theta
\end{align*}$$
Dalla figura possiamo notare che $\alpha$ è l'angolo formato tra $\overrightarrow r$ e $\overrightarrow u_z$. Quindi otteniamo che: $$\overrightarrow r \cdot \overrightarrow u_z = \|\overrightarrow r \| \|\overrightarrow u_z \| \cos \alpha \xlongequal{\text{per sopra}} \rho \cos \theta - d \Rightarrow \cos \alpha = \frac{\rho \cos \theta - d}{\|\overrightarrow r \|}$$
Dal principio di sovrapposizione segue che: $$\overrightarrow E = \iint_{Guscio} d \overrightarrow E = \iint_{Guscio} \frac{1}{4 \pi \varepsilon_0} \frac{dq}{\|\overrightarrow r\|^2} (\sin \alpha \overrightarrow u_r + \cos \alpha \overrightarrow u_z)$$
Notiamo che per ogni punto preso c'è una parte di carica dall'altra parte, quindi per simmetria, la componente radiale si annulla (*può essere visto come una serie di spire messe una affianco all'altra, è lo stesso principio*)
Quindi segue che: $$\overrightarrow E = \iint_{Guscio} d \overrightarrow E = \iint_{Guscio} \frac{1}{4 \pi \varepsilon_0} \frac{dq}{\|\overrightarrow r\|^2} ( \cos \alpha \overrightarrow u_z)$$
Cerchiamo di scrivere $dq$ in un altro modo: $$dq = \sigma dS = \sigma \rho ^2 \sin \theta\; d \theta\; d \phi$$
Quando andiamo a sostituire, sapendo che $\theta \in [0, \pi[$ e $\phi \in [0, 2\pi[$ otteniamo che:
$$\begin{align*}
\overrightarrow E &= \iint_{Guscio} \frac{1}{4 \pi \varepsilon_0} \frac{dq}{\|\overrightarrow r\|^2} ( \cos \alpha \overrightarrow u_z) = \iint_{Guscio} \frac{1}{4 \pi \varepsilon_0} \sigma \rho^2 \sin \theta \; d\theta \; d \phi \frac{\rho \cos \theta - d}{\|\overrightarrow r\|^3} \overrightarrow u_z = \\ &= \frac{\sigma}{4 \pi \varepsilon_0}\iint_{Guscio} \frac{\rho^2 \sin \theta\; d \theta\; d\phi \; (\rho \cos \theta - d)}{(\rho^2 + d^2- 2d\rho \cos \theta)^{3/2}}\overrightarrow u_z  = \frac{\sigma}{4 \pi \varepsilon_0} \int_0^{2 \pi} d \phi \int_0 ^\pi d \theta \frac{\sin \theta(\rho \cos \theta -d)}{(\rho^2 + d^2 - 2\rho d \cos(\theta))^{3/2}} \overrightarrow u_z = 0
\end{align*}$$
Quindi otteniamo che, dentro al guscio sferico il campo elettrico è: $$\fbox{$\overrightarrow E = 0$}$$
