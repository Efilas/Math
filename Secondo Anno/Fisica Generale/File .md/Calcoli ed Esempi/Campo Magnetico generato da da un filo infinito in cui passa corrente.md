La situazione è questa: 

![[Drawing 2023-11-16 15.03.33.excalidraw | 100%]]
Vogliamo trovare $|d B|$

Sappiamo che $$\|d\overrightarrow B\| = \frac{\mu_0}{4 \pi}O \frac{d\ell \sin \theta}{r^2}$$
Dalla figura possiamo vedere che $$r^2 = d^2 + \ell^2 \qquad \text e \qquad \sin \theta = \frac{d}{\sqrt{d^2 + \ell^2}}$$

In questo modo otteniamo che: $$\|\overrightarrow B\| = \int_{-∞}^{+∞} \frac{\mu_0}{4 \pi} I d\ell \frac d{(d^2 + \ell^2)^{3/2}} = \frac{\mu_0 Id}{4 \pi} \int_{-∞}^{+∞} \frac{d \ell}{(\ell^2 + d^2)^{3/2}}$$
Per facilitare la risoluzione dell'integrale possiamo sostituire $x = \ell/d$ così da ottenere $dx = dl / d$ In questo modo: $$\|\overrightarrow B\| = \frac{\mu_0 I}{4 \pi d^2} \int^{+∞}_{-∞} \frac{d\;dx}{(1+x)^{3/2}} \qquad \Rightarrow \qquad [\dots] \qquad \Rightarrow \qquad \fbox{$\|\overrightarrow B \| = \frac{\mu_0 I}{2 \pi d}$}$$

*Per calcolare la giusta direzione si usa la regola della mano destra*