*Area di un Rettangolo*
Sia $\sigma (u,v) = (u,v,0)$ con $u \in [0,L_1]$ e $v \in [0, L_2]$
La prima cosa da fare è trovare i vettori tangenti: $\overrightarrow t_u = (1,0,0)$ e $\overrightarrow t_v = (0,1,0)$
Poi il vettore normale: $\overrightarrow n = \overrightarrow t_u \times \overrightarrow t_v = (1, 0,0)\times (0, 1, 0) = (0, 0, 1)$
Poi la norma del vettore normale: $\|\overrightarrow n\| = \|(0, 0, 1)\| = 1$
E infine il calcolo dell'integrale: $$A_S=\iint \|\overrightarrow n\| du \; dv = \int_0^{L_1} du \int_0^{L_2} dv = L_1L_2$$

*Area di un Cerchio*
Sia $\sigma(r, \phi) = (r \cos \phi, r \sin \phi, 0)$ con $r \in [0, R]$ e $\phi \in [0, 2\pi[$
Calcoliamo i vettori tangenti: $\overrightarrow t_r = (\cos\phi, \sin \phi, 0)$ e $\overrightarrow t_\phi = r(-\sin \phi, \cos \phi, 0)$
Troviamo il vettore normale = $\overrightarrow n = \overrightarrow t_r \times \overrightarrow t_\phi = (\cos\phi, \sin \phi, 0) \times  r(-\sin \phi, \cos \phi, 0) = r(0, 0, 1)$ da cui segue che la norma è $r$
Abbiamo che l'elemento di superficie è $d\overrightarrow s = (0, 0, 1)r \; dr \; d\phi$
Calcoliamo l'area: $$A_S = \int^{2\pi}_0 \int^R_0 r\;dr \; d\phi = \frac {R^2}2 2\pi = R^2\pi$$

*Elemento di Superficie e Area di un Cilindro*
Sia $\sigma(\phi, z) = (R\cos \phi, R \sin \phi, z)$ con $\phi \in [0, 2\pi[$ e $z \in[0, L]$
Calcoliamo i vettori tangenti: $\overrightarrow t_\phi = R(-\sin \phi, \cos \phi, 0)$ e $\overrightarrow t_z = (0, 0, 1)$
Il vettore normale quindi sarà: $\overrightarrow n = \overrightarrow t_\phi \times \overrightarrow t_z = R \overrightarrow \ell_r$ che coincide con la direzione verticale uscente 
Seguono subito che la norma è pari a $\|\overrightarrow n\| = R$ e l'elemento di superficie è $d\overrightarrow s=R(\cos \phi, \sin \phi, 0)\; d\phi\; dz$
Quindi l'area del cilindro risulta essere: $$A_S= \int _0^Ldz \int_0^{2\pi} R\;d\phi = R2\phi L$$

*Elemento di Superficie e Area di una Sfera*
Sia $\sigma(\theta, \phi)=(R\sin \theta \cos \phi, R\sin \theta\sin \phi, R\cos \theta)$ con $\theta \in [0, \pi[$ e $\phi \in [0, 2\pi[$
Otteniamo che i vettori tangenti sono $\overrightarrow t_\theta=R(\cos \theta \cos \phi, \cos \theta \sin \phi, -\sin \theta)$ e $\overrightarrow t_\phi = R(-\sin \theta \sin \phi, \sin \theta \cos \phi, 0)$
Da ciò segue che il vettore normale è $$\overrightarrow n = \overrightarrow t_\theta \times \overrightarrow t_\phi = R^2 \cdot \det \begin{bmatrix}\overrightarrow e_x & \overrightarrow e_y & \overrightarrow e_z\\ \cos \theta \cos \theta & \cos \theta \sin \phi & -\sin \phi\\ -\sin \theta \sin \phi & \sin \theta \cos \phi & 0\end{bmatrix} = R^2(\sin^2\theta \cos \phi, -\sin^2\theta \sin \phi, \cos \theta\sin \phi)$$
Da cui $\|\overrightarrow n \| = R^2 \sin \theta$ e da cui: $$A_S = \int_0^{2\pi} \int_0^{\pi} R^2 \sin \theta \; d\theta \; d\phi = 4\pi R^2$$

