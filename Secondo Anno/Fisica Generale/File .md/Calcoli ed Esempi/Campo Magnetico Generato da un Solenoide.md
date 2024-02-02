![[Drawing 2023-11-20 18.36.30.excalidraw | center]]

Usando il fatto che un solenoide non è altro una una serie di spire molto vicine tra di loro e quindi possiamo sfruttare la densità di spire.
Per un $n$ grande possiamo utilizzare il limite del continuo e vedere che il campo magnetico del solenoide è: $$\overrightarrow B_{Sol} = \int_{Solenoide} \overrightarrow B_{Spira}$$
Possiamo usare come infinitesimo il risultato precedente.
Prima di andare avanti diamo un sistema di riferimento: 

![[Drawing 2023-11-20 18.54.19.excalidraw | center]]

Calcoliamo il campo magnetico prima al centro: $$\overrightarrow B = \int_{-d/2}^{d/2}\overrightarrow B_{Spira}(\tilde z) d \tilde z \cdot n \qquad \text{dove }\tilde z \text{ raprresenta la coordinata della spira}$$
Quindi otteniamo che: $$\overrightarrow B = \int_{-d/2}^{d/2} \frac{\mu_0 I}{2}\frac{R^2}{(z^2 + R^2)^{3/2}}\cdot n \cdot d \tilde z$$
Andando a sostituire $z$ con $\tilde z - z_p$, *ossia andando a calcolare effettivamente dove vogliamo ottenere il campo elettrico*, e portando fuori tutto quello che è indipendente da $z$ otteniamo che: $$\overrightarrow B = \frac{\mu_0I}{2}R^2r \int^{d/2}_{-d/2}\frac{d \tilde z}{((z_p-\tilde z)^2 + R^2)^{3/2}}$$
Portando dentro $R^2$ e andando a sviluppare l'integrale abbiamo che: $$\int_{-d/2}^{d/2} \frac{d \tilde z R^2}{((z_p-\tilde z)^2 + R^2)^{3/2}} \quad = \quad \frac{d-2z_p}{\sqrt{4R^2 + (1-2z_p)^2}} + \frac{d+2z_p}{\sqrt{4R^2 + (1+2z_p)^2}}$$
Da cui otteniamo che il campo magnetico vale: $$\fbox{$\overrightarrow B = \frac{\mu_0Ir}{2}\left(\quad \frac{d-2z_p}{\sqrt{4R^2 + (1-2z_p)^2}} + \frac{d+2z_p}{\sqrt{4R^2 + (1+2z_p)^2}}\right)$}$$

![[Drawing 2023-11-20 19.12.22.excalidraw | center]]

Agli estremi, cioè quando $z_p = \pm \frac d2$ allora abbiamo che: $$\| \overrightarrow B\| = \frac{\mu_0nI}{2} \frac{d}{\sqrt{d^2 + R^2}}$$
Se invece abbiamo che $z_p \rightarrow \pm ∞$, allora: $$\| \overrightarrow B\| \rightarrow \frac{\mu_0I}{2}\left(\frac{2z_p}{|2z_p|} - \frac{2z_p}{|2z_p|}\right) = 0$$
Se invece avessimo un solenoide infinito ($d \rightarrow ∞$) avremmo che: $$\|\overrightarrow B_∞\| = \mu_0 nI$$