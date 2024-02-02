Siano $d$ e $d'$ due elementi in $\mathbb Z/_p$ non quadrati, allora $$\mathbb Z/_p[\sqrt d] \text{ e }\mathbb Z/_p[\sqrt{d'}] \text{ hanno entrambi }p^2 \text{ elementi}$$
Vediamo ora che sono isomorfi:
Sappiamo che $\frac d{d'}$ è un. quadrato in $\mathbb Z/_p$ in quanto il prodotto (o rapporto) di due non quadrati in un campo finito è un quadrato, quindi: $$\exists c \in \mathbb Z/_p: \frac d{d'} = c^2$$
Sapendo questa cosa possiamo definire l'applicazione: $$\varphi: \mathbb Z/_p[\sqrt d] \rightarrow \mathbb Z/_p[\sqrt{d'}]\qquad \varphi(a+b\sqrt d) = \varphi(a) + \varphi(b)\varphi(\sqrt d) = a + b\varphi(\sqrt d) = a + b(c\cdot \sqrt {d'})$$
Infatti: $$c\cdot \sqrt {d'} = \sqrt{\frac d {d'}}\sqrt{d'} = \sqrt d$$
Questo non solo è un omomorfismo, ma è anche un isomorfismo. *Le verifiche sono banali*