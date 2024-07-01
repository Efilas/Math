![[Drawing 2023-10-18 08.50.36.excalidraw| center]]
*Al posto del cilindro potevamo prendere un cubo, non sarebbe cambiato nulla*
Per simmetria rispetto al piano $Oxy$, possiamo scrivere il campo elettrico come $$\overrightarrow E = sgn(z) \;\|\overrightarrow E \|\; \overrightarrow u_z$$
Notiamo inoltre che, usando la stessa notazione dell'esercizio precedente otteniamo che $$\overrightarrow E \perp \overrightarrow n_2 \Rightarrow \int_{S_2} \overrightarrow E \cdot d\overrightarrow S_2 =0$$
Inoltre, poiché $S = S_1 \cup S_2 \cup S_3$ e $\Phi_2 =0$, si ottiene che:
$$\Phi = \int_{S_1} \overrightarrow E \cdot d \overrightarrow S_1 + \int_{S_3} \overrightarrow E \cdot d \overrightarrow S_3 = 2 \int_{S_1} \| \overrightarrow E \| \cdot \overrightarrow n \; dS = 2 \| \overrightarrow E\| \int_{S_1}dS = 2 \| \overrightarrow E \| \pi R^2$$
Per Gauss abbiamo che: $Q_{int} = \sigma \pi R^2$ e per l'uguaglianza segue che: $$2 \|\overrightarrow E \| \pi R^2 = \frac{\sigma \pi R^2}{\varepsilon_0} \Rightarrow \|\overrightarrow E\| = \frac{\sigma}{2\varepsilon_0}$$
Quindi segue che il campo elettrico vale: $$\fbox{$\overrightarrow E = 
\begin{cases}\frac{\sigma}{2\varepsilon_0} \overrightarrow u_z & z>0\\
-\frac{\sigma}{2\varepsilon_0} \overrightarrow u_z & z<0
\end{cases}$}$$