Supponiamo di avere una spira di raggio $R$ in cui circola una corrente $I$

![[Drawing 2023-11-20 17.58.31.excalidraw | 100%]]

*Notiamo che per la geometria della situazione, per simmetria le componenti orizzontali si eliminano*
Abbiamo che $$\|d\overrightarrow B_1\| = \|d \overrightarrow B_2\| = \frac{\mu_0}{4 \pi}I\frac{d\ell \sin\theta}{r^2}\underbrace{\sin \alpha}_1 \qquad \text{con }\alpha\text{ l'angolo tra la spira e la direzione dell'angolo della corrnente}$$
Dobbiamo poi integrare da $0$ a $\pi$ in quanto abbiamo già considerato le due componenti $d \ell_1$ e $d\ell_2$
Inoltre riprendendo quanto detto prima, le componenti in $y$ si semplificano, quindi: $$d \overrightarrow B = (\|d\overrightarrow B_1\| \cos \theta + \|d\overrightarrow B_2\| \cos \theta)\overrightarrow u_z$$
Sapendo inoltre che $\|d \overrightarrow B_1\| = \|d \overrightarrow B_2\|$ otteniamo che: $$\fbox{$d \overrightarrow B = 2\left(\frac{\mu_0}{4 \pi} I \frac{d\ell}{r^2}\right)\cos \theta \overrightarrow u_z$}$$
Quindi per calcolare il campo magnetico, dobbiamo fare l'integrale lungo la spira: $$\overrightarrow B = \int_{Spira}d \overrightarrow B \quad \xRightarrow{d \ell = Rd \phi} \quad \overrightarrow B = \int_0^\pi \frac{\mu_0}{2\pi} \frac{IR}{r^2} d\phi \cos \theta$$
Possiamo portare fuori la parte che non dipende da $\phi$ e otteniamo che: $$\overrightarrow B = \frac{\mu_0}{2 \pi}\frac{IR}{r^2} \cos \theta \underbrace{\int_0^\pi d\phi}_\pi \overrightarrow u_z$$
Semplificando ulteriormente il tutto sfruttando la geometria della situazione, possiamo sfruttare il fatto che $\cos \theta = \frac Rr$: $$\fbox{$\overrightarrow B = \frac{\mu_0}{2}\frac{IR^2}{r^3}\overrightarrow u_z = \frac{\mu_0I}{2}\frac{R^2}{(z^2 + R^2)^{3/2}} \overrightarrow u_z$}$$

