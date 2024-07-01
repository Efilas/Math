Supponiamo di avere un Solenoide Infinito


![[Drawing 2023-11-28 06.25.16.excalidraw | 100%]]

Visto che le linee del campo magnetico $\overrightarrow B$ devono essere necessariamente chiuse, queste si chiudono all'infinito, quindi all'interno del solenoide c'è un campo magnetico $\overrightarrow B$ trasversale, mentre fuori è nullo

Andiamo a calcolare la circuitazione lungo $\gamma$: 
$$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \sum_{i = 1}^4 \int_{\gamma_i}\overrightarrow B \cdot d \overrightarrow \ell_i = \int_{\gamma_1}\overrightarrow B \cdot d \overrightarrow \ell_1 + \underbrace{\int_{\gamma_2}\overrightarrow B \cdot d \overrightarrow \ell_2}_{\overrightarrow B \perp d\overrightarrow\ell_2 \;\Rightarrow\; 0} + \underbrace{\int_{\gamma_3}\overrightarrow B \cdot d \overrightarrow \ell_3}_{\overrightarrow B = 0 \; \Rightarrow \; 0} + \underbrace{\int_{\gamma_4}\overrightarrow B \cdot d \overrightarrow \ell_4}_{\overrightarrow B \perp d \overrightarrow \ell_4 \; \Rightarrow \; 0} = \int_{\gamma_1}\overrightarrow B \cdot d \overrightarrow \ell_1$$

Se prendiamo $\gamma_1 = L$ e prendiamo $d \overrightarrow \ell_1$ compreso tra gli estremi di $\gamma_1$ otteniamo che: $$\oint_{\gamma} \overrightarrow B \cdot d \overrightarrow \ell = \int_{\gamma_1} \overrightarrow B \cdot d \overrightarrow \ell_1 = \| \overrightarrow B \| L$$

Sempre dalla legge di Ampére abbiamo che: $$\| \overrightarrow B \| L = \mu_0 I_{Conc} = \mu_0 I N \qquad \text{Con }N = \text{Numero di Spire}$$
Quindi abbiamo che: $$\fbox{$\| \overrightarrow B \| = \frac{\mu_0 NI}{L} \equiv \mu_0nI$}\qquad n = \frac NL$$