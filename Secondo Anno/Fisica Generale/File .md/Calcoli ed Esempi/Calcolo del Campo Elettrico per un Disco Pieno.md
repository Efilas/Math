![[Drawing 2023-10-17 07.12.07.excalidraw | center]]

Abbiamo che per $\rho \in [0, R]$ e per $\phi \in [0, 2\pi[$ segue che: $$(r(\rho))^2 = z^2 + \rho^2$$
*Anche qui, come sopra, per simmetria la componente radiale si annulla*
Segue quindi che: 
$$\overrightarrow E = \iint_{Disco} \frac{1}{4 \pi \varepsilon_0} \frac{\sigma \;dS}{(r(\rho))^2}(\sin \theta \overrightarrow u_r + \cos \theta \overrightarrow u_z) = \iint_{Disco} \frac{1}{4 \pi \varepsilon_0} \frac{\sigma \;dS}{(r(\rho))^2}(\cos \theta \overrightarrow u_z)$$
Sapendo che $$dS = \rho \; d\rho \; d\phi \qquad \text{e} \qquad \cos \theta = \frac{z}{\sqrt{z^2+ \rho^2}}$$
Si ha che:
$$\overrightarrow E = \iint_{Disco}\frac{1}{4\pi \varepsilon_0}\frac{\sigma \rho d\rho d\phi z}{(z^2 + \rho^2)^{3/2}} \overrightarrow u_z = \frac{\sigma z}{4 \phi \varepsilon_0}\int_0^{2\pi}d\phi\int_0^R \frac{\rho d \rho}{(z^2 + \rho^2)^{3/2}}\overrightarrow u_z$$
Sapendo che $$\int\frac{d\rho\;\rho}{(z^2 + \rho^2)^{3/2}} = \frac{-1}{\sqrt{\rho^2 + z^2}} \quad \Rightarrow \quad \overrightarrow E = \frac{\sigma z}{4 \pi \varepsilon_0}2\pi \left[\frac{-1}{\sqrt{z^2 + \rho^2}}\right]_0^R\overrightarrow u_z$$
Per cui, esplicitando, si ottiene che: $$\fbox{$\overrightarrow E = \frac{\sigma}{2\varepsilon_0}\left(a- \frac z{\sqrt{z^2 + R^2}}\right) \overrightarrow u_z$}$$