![[Drawing 2023-10-17 06.29.48.excalidraw | center]]
Notiamo che c'è una simmetria attorno al centro, per questo motivo ci conviene utilizzare un sistema di riferimento cilindriche.

Notiamo che per la geometria della struttura si ha che 
$$\begin{cases}
\tan \theta = R/z\\ 
R^2 + z^2 = r^2
\end{cases} \Rightarrow
\begin{cases}
\sin \theta = R/r\\
\cos \theta = z/r
\end{cases}$$
Possiamo considerare la spira come un insieme di lunghezze infinitesime, quindi otteniamo che:
$$\overrightarrow E = \int_{Spira} d\overrightarrow E = \int_{Spira} \frac{1}{4\pi \varepsilon_0}\frac{dq}{r^2}(\sin \theta \overrightarrow u_r + \cos \theta \overrightarrow u_z)$$
Tuttavia, notiamo che c'è una simmetria tra $\phi$ e $\phi + \Delta$, quindi la componente radiale viene eliminata, cioè $d \overrightarrow E_r = 0$
Quindi segue che: $$\overrightarrow E = \int_{Spira} d\overrightarrow E = \int_{Spira} \frac{1}{4\pi \varepsilon_0} \frac{dq}{r^2}(\cos \theta \overrightarrow u_z)$$
Sapendo che, con $\phi \in [0, 2\pi[$, segue che: $$\lambda = \frac{dq}{d\ell} \Rightarrow dq = \lambda d\ell = R\lambda d \phi$$
Quindi andando a sostituire segue ceh:
$$\overrightarrow E = \frac{1}{4\pi \varepsilon_0}\lambda R \int_0^{2\pi}\frac{dq}{r^3} \overrightarrow u_z \xRightarrow{z,r \text{ indipendenti da }\phi} \overrightarrow E = \frac{\lambda R}{4 \pi \varepsilon_0}\frac{z}{r^3} \int_0^{2 \pi} d\phi \overrightarrow u_z = \frac{\lambda R}{4 \pi \varepsilon_0}\frac{z}{r^3} \cdot 2\pi\overrightarrow u_z = \frac{\lambda Rz}{2\varepsilon_0 r^3}\overrightarrow u_z$$
Da cui segue che: $$\fbox{$\overrightarrow E = \frac{\lambda Rz}{2\varepsilon_0(R^2 + z^2)^{3/2}}\overrightarrow u_z$}$$
Se volessimo fare un caso più generale, sapendo che: $$Q_{tot} = 2\pi R \lambda \Rightarrow \lambda = \frac{Q_{tot}}{2\pi R}$$Si ottiene che $$\fbox{$\overrightarrow E = \frac{Q_{tot}}{4 \pi \varepsilon_0}\frac{z}{(R^2 + z^2)^{3/2}} \overrightarrow u_z$}$$