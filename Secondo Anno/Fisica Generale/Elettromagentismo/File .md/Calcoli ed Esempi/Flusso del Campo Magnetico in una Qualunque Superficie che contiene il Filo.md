Sia $S$ una qualunque superficie chiusa che racchiuda il filo al suo interno.

![center | 150](Drawing%202023-11-21%2006.59.31.excalidraw.md)

Parametrizziamo $S = R(\phi)$ in modo periodico tale che: $$R(\phi) = R(\phi + 2π)$$
In questo modo abbiamo che $S$ è una superficie chiusa, allora una qualsiasi posizione sulla superficie sarà $$\overrightarrow r = (x_S, y_S, z_S) = (R(\phi) \cos \phi, R(\phi) \sin \phi, z_S)$$
Facendo la derivata otteniamo invece il vettore normale: $$\overrightarrow n = (\dot x_S, \dot y_s, \dot z_S) = (\dot R(\phi) \cos \phi - R(\phi)\sin\phi, \dot R(\phi)\sin\phi + R(\phi)\cos \phi, \dot z_S) = \dot R(\cos \phi, \sin \phi, 0) + R(-\sin \phi, \cos \phi, 0)$$
Da cui otteniamo che: $$\fbox{$\overrightarrow n(\phi) = \dot R \overrightarrow u_r + R \overrightarrow u_\phi$}$$

Da cui otteniamo che: $$\overrightarrow B \cdot d\overrightarrow S = \frac{\mu_0 I}{2 \pi R(\phi)}\underbrace{\overrightarrow u_\phi \cdot \overrightarrow n(\phi)}_{R(\phi)} \quad \Rightarrow \quad \overrightarrow B \cdot d \overrightarrow S = \frac{\mu_0I}{2\pi}$$
Da cui integrando otteniamo che: $$\oint_S \overrightarrow B \cdot \overrightarrow n dS = \frac{\mu_0I}{2\pi} \underbrace{\int_0^{2pi}R d\phi dz}_0 = 0 $$
*Questo perché avevamo posto la funzione $R(\phi)$ come periodica*

