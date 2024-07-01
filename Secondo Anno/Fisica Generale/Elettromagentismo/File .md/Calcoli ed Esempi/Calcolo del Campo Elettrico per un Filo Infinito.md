Sia $\ell$ un filo infinito con densità di carica $\lambda$ uniforme lungo tutto il filo. Calcoliamo il Campo elettrico.
Per comodià (e per simmetria) possiamo porre un sistema di riferimento cilindrico con $\ell = z$.

![[Drawing 2023-10-11 08.29.00.excalidraw | center]]

Notiamo che vale l'uguaglianza $$d \overrightarrow E = |d \overrightarrow E| (\cos \theta \;\overrightarrow u_r + \sin \theta \;\overrightarrow u_z) $$
Quindi in particolare si ha che: 
$$\begin{align*}
\overrightarrow E &= \int_\ell |d \overrightarrow E|(\cos \theta \;\overrightarrow u_r + \sin \theta \;\overrightarrow u_z) = \int_\ell \frac{\lambda \;dz}{R^2(\theta)}(\cos \theta \;\overrightarrow u_r + \sin \theta \;\overrightarrow u_z)
\end{align*}$$
Dalla struttura della figura possiamo dedurre che:
$$\begin{cases}
\cos \theta = \frac{\overline d}{R(\theta)}\\ 
\sin \theta = \frac{z}{R(\theta)}
\end{cases} \Rightarrow z(\theta) = \overline d \tan \theta \xRightarrow {\frac{d}{dx}} dz = \frac{\overline d}{\cos^2 \theta}d\theta$$
Quindi tornando a sostituire si ha che:
$$\begin{align*}
\overrightarrow E &= \int_\ell \frac{\lambda \;dz}{R^2(\theta)}(\cos \theta \;\overrightarrow u_r + \sin \theta \;\overrightarrow u_z) = \frac{\lambda k}{\overline d} \int^{\pi/2}_{-\pi/2}d \theta(\cos \theta \;\overrightarrow u_r + \sin \theta \;\overrightarrow u_z) = \left[\frac{\lambda k}{\overline d} (\sin \theta \;\overrightarrow u_r - \cos \theta \;\overrightarrow u_z)\right]_{- \pi/2}^{\pi/2} = \frac{\lambda k}{\overline d}2 \overrightarrow u_r
\end{align*}$$
Quindi si ha che: $$\fbox{$\overrightarrow E = \frac{2\lambda k}{\overline d} \overrightarrow u_r$}$$