Sia $f  = x^3 + 3x + 3 \in \mathbb Q[x]$. Sappiamo che questo polinomio è irriducibile per Eisenstein.
Prendiamo $\alpha \in \mathbb R$ una radice di $f$ e consideriamo $\mathbb Q[\alpha]$
Per costruzione abbiamo che $\mathbb Q[\alpha]$ contiene una radice per costruzione, ma non sappiamo se le contiene tutte.
Facciamo quindi la divisione di $f$ per $(x-\alpha)$ con Ruffini:
![center | 300](Drawing%202023-11-28%2016.05.47.excalidraw.md)
Da cui otteniamo che: $$f = (x-\alpha)(x^2 + \alpha x + 3 + \alpha^2)$$

*Come possiamo fare per avere anche le altre radici?*
Possiamo utilizzare la solita formula quadratica: $$\beta_{1,2} = \frac{-\alpha \pm \sqrt{\alpha^2 - 12 - 4\alpha^2}}{2} = \frac{-\alpha\pm \sqrt{-12-3\alpha^2}}{2}$$
Se fosse state in $\mathbb Q[\alpha]$, avremmo avuto tutte le radici, tuttavia abbiamo che $\sqrt{-12-3\alpha^2} \notin \mathbb Q[\alpha]$, anzi, visto che l'argomento nella radice non è positiva, i valori $\beta_{1,2}$ che otteniamo non sono neanche reali
Quindi possiamo aggiungere $$\beta = \frac{-\alpha + \sqrt{-12-3 \alpha^2}}{2} \quad \Rightarrow \quad [\mathbb Q[\alpha, \beta]: \mathbb Q]=6$$
Questo per il lemma della torre, in quanto $[\mathbb Q[\alpha] : \mathbb Q] = 3$ e $[\mathbb Q[\alpha, \beta]:\mathbb Q[\alpha]]=2$
Inoltre abbiamo che $\beta_2 = -\alpha- \beta$, per cui otteniamo che: $$f = x^3 + 3x + 3 = (x-\alpha)(x-\beta)(x+\alpha+\beta)$$