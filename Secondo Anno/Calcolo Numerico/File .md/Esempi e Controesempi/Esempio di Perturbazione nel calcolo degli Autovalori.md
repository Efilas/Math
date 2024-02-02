Sia $J_0$ il blocco di Jordan definito come: $$\begin{pmatrix}0 & 1\\ & \ddots & \ddots\\ && \ddots & 1\\ &&& 0\end{pmatrix}$$
Sia poi $J_\varepsilon$ la matrice definita nel seguente modo: $$\begin{pmatrix}0 & 1\\ & \ddots & \ddots\\ && \ddots & 1\\ \varepsilon&&& 0\end{pmatrix}$$
Andiamo a calcolare gli autovalori in entrambi i casi:
- Per $J_0$ abbiamo che: $$\det(J_0 - \lambda I_n) = (-1)^n\lambda$$
  Per cui l'unico autovalore è $0$ molteplicità algebrica $m_a(\lambda) = n$
<br>
- Per $J_\varepsilon$ abbiamo che: $$\begin{align*}\det(J_\varepsilon - \lambda I_n)&= \det \begin{pmatrix}-\lambda & 1\\ & \ddots & \ddots\\ && \ddots & 1\\ \varepsilon&&& -\lambda\end{pmatrix} = (-\lambda)\det\begin{pmatrix}-\lambda & 1\\ & \ddots & \ddots\\ && \ddots & 1\\ &&& -\lambda\end{pmatrix} + (-1)^{n+1}\varepsilon\det\begin{pmatrix}1\\ -\lambda& \ddots \\ &\ddots & \ddots\\ &&-\lambda &1\end{pmatrix}\\ &= (-\lambda)^n + (-1)^{n+1}\varepsilon\cdot 1 = (-\lambda)^n + (-1)^{n+1}\varepsilon\end{align*}$$
  Ponendolo uguale a $0$ e guardando i moduli abbiamo che: $$|(-\lambda)^n| = |\varepsilon| \quad \Rightarrow |\lambda| = |\sqrt[n]{\varepsilon}|$$
  Hanno tutti modulo uguale, quindi gli autovalori di $J_\varepsilon$ stanno tutti in una circonferenza di raggio $\sqrt[n]{\varepsilon}$

![center | 140](Drawing%202023-12-03%2010.51.52.excalidraw.md)