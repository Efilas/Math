Per Gauss abbiamo che il campo elettrico vale: $$\overrightarrow E = \begin{cases}0 & r<R\\ \frac{\sigma}{\varepsilon_0}\frac Rr \overrightarrow u_r & r>R\end{cases}$$
Sempre sfruttando le simmetrie cilindriche possiamo sfruttare il fatto che: $$\overrightarrow E = -\nabla V = -\frac{∂}{∂r}V \overrightarrow u_r$$
Allora integrando otteniamo che: $$V = \begin{cases}c_1 & r<R\\ -\frac{\sigma}{\varepsilon_0}R \log (r) +c_2 & r>R \end{cases}$$
Anche qui dobbiamo cercare dei vincoli che determinare le costanti.
Per la scelta del sistema di riferimento (visto che noi andiamo a calcolare solamente la differenza di potenziale), possiamo porre $V(R) = 0$ e poi possiamo imporre che $$V(R^+) = V(R^-)$$
Da questi due vincoli otteniamo che $c_1 = 0$ mentre $c_2 = \frac{\sigma}{\varepsilon_0} R \log (r)$, da cui otteniamo che: $$\fbox{$V = \begin{cases}0 & r<R\\ -\frac{\sigma R}{\varepsilon_0} \log(\frac rR) & r>R\end{cases}$}$$

![[Drawing 2023-10-30 23.03.04.excalidraw| center]]