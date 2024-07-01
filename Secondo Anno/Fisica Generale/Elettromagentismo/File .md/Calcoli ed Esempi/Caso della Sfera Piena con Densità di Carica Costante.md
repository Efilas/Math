![[Drawing 2023-10-24 10.53.08.excalidraw | center]]

Prendiamo $S$ superficie sferica e raggio $\tilde r$.
$$\begin{align*}
Q_{int} &= \iiint_V \rho dV = \left.
\begin{cases}
\theta \in [0,\pi[\\ 
\phi \in [0, 2\pi[
\end{cases} \right\}= 
\iiint_V \rho \sin \theta\; r^2 \; dr\;d\theta\; d\phi  = \rho \underbrace{\int_0^\tilde r r^2 \;dr}_{r^3/3} \underbrace{\int_0^\pi \sin \theta d \theta \int_0^{2 \pi} d\theta}_{4 \pi} = Q_{int}(\tilde r) \begin{cases}\frac 43 \pi \rho \tilde r^3 & \tilde r<R\\ \frac 43 \pi \rho R^3 & \tilde r>R\end{cases}\end{align*}$$
Abbiamo ottenuto quindi che $$\oint_S \overrightarrow E \cdot d\overrightarrow S = \frac{Q_{int}(\tilde r)}{\varepsilon_0} \Rightarrow \| \overrightarrow E\| \cdot 4 \pi \tilde r^2 = \frac{Q_{int}}{\varepsilon_0} \Leftrightarrow \fbox{$\| \overrightarrow E\|= \begin{cases} \frac{\rho \tilde r}{4 \varepsilon_0} & \tilde r<R\\ \frac{R^3}{3 \varepsilon_0 \tilde r^4} & \tilde r>R\end{cases}$}$$

*Notiamo che torna il secondo teorema del guscio sferico*
Graficamente si può ottenere che: 
![[Drawing 2023-10-24 11.13.30.excalidraw | center]]