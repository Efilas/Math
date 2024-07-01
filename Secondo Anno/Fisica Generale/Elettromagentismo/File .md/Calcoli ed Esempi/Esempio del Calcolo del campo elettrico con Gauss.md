Sia la situazione così rappresentata: 
![[Drawing 2023-10-18 07.53.54.excalidraw | center]]
Sia $\overrightarrow E_i$ il campo elettrico generato dalla carica $i$-esima, con $i \in \{1,2\}$
Sia $S_i$ la superficie centrata in $q_i$ e passante nel punto $p$
Abbiamo quindi che i flussi generati dalla carica $i$-esima vale $$\Phi_i = \oint_{S_i} \overrightarrow E_i \cdot \overrightarrow n \; dS_i = \frac{q_i}{\varepsilon_0}$$
In particolare, visto che il flusso del campo elettrico non dipende dalla distanza, abbiamo che: $$\oint_{S_2} \overrightarrow E_2 \cdot d\overrightarrow S_2 = \frac{q_2}{\varepsilon_0} = \oint_{S_1} \overrightarrow E_2 \cdot d \overrightarrow  S_1$$
Sommando i due integrali otteniamo che:
$$\Phi_p = \oint_{S_1} \overrightarrow E_1 \cdot d \overrightarrow  S_1 + \oint_{S_1} \overrightarrow  E_2 \cdot d \overrightarrow S_1 = \oint_{S_1} (\overrightarrow E_1 + \overrightarrow E_2) \cdot d \overrightarrow S_1 = \oint_{S_1} \overrightarrow E_{tot} \cdot d \overrightarrow S_1 = \frac{Q_{tot}}{\varepsilon_0}$$