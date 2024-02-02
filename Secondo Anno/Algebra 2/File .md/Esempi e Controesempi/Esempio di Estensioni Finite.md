*Sia $L$ un campo con $3^{12}$ elementi, può esistere un sottocampo di $L$ con $3^8$ elementi?*
La risposta è no, perché in tal caso contraddirebbe il Lemma della Torre
Dal numero degli elementi, possiamo dedurre facilmente che $Char(L) = 3$, quindi $\mathbb Z/_3\subseteq L$, in particolare: $$[L:\mathbb Z/_3] = 12$$
Se esistesse un campo $K$ con $3^8$ elementi contenuto in $L$ e contenente $\mathbb Z/_3$, allora avremmo che: $$[K:\mathbb Z/_3] = 8$$ Tuttavia il lemma della torre ci dice che $$\underbrace{[L:\mathbb Z/_3]}_{=12} = \underbrace{[L:K]}_{\in \mathbb Z} \cdot \underbrace{[K:Z/_3]}_{8}$$
Ma la cosa è assurda perché $8 \nmid 12$