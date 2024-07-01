*Sia dato il seguente circuito:*
![[Drawing 2023-11-08 07.58.16.excalidraw | center]]
1. *Trovare $I$*
2. *Calcolare la corrente che passa per $R_2$*
3. *Calcolare la corrente che passa per $R_3$*

Prima di andare nell'effettivo a calcolare tutte le richieste, andiamo a vedere come il circuito può essere semplificato, sfruttando le resistenze equivalenti.
Notiamo che le resistenze $2$ e $3$ sono in parallelo, quindi possono essere sostituite con una resistenza equivalente $R_{2,3}$
Ora abbiamo che tutte le resistenze sono in serie, quindi possiamo sostituirle con una equivalente:

![[Drawing 2023-11-08 08.11.51.excalidraw | 100%]]

1. Per la legge di Ohm abbiamo che: $$R = \frac \xi I \Rightarrow I = \frac\xi R = \frac{12V}{(20 + 8 + 12)\ohm} = \frac{12V}{40 \ohm} = \frac{3}{10}A$$
2. Per la legge dei nodi abbiamo che $I_1 = I_2 + I_3$
   Inoltre, poiché $R_2$ e $R_3$ sono legate in parallelo, abbiamo che $V_2 = V_3$.
   Inoltre per la legge di Ohm abbiamo che: $$\begin{cases}R_2 = \frac{V_2}{I_2}\\ R_3 = \frac{V_3}{I_3} = \frac{V_2}{I_3}\end{cases}$$
   Sapendo inoltre che $\xi = V_1 + V_2 + V_4$ (*con $V_2$ stiamo considerando la differenza di potenziale della resistenza equivalente $R_{2,3}$*) abbiamo che $V_2 = \xi - (R_1+R_4)I$
   Risolvendo il sistema otteniamo che: $$V_2 = R_2 I_2 = \xi - (R_1+R_4)I \Rightarrow I_2 = \frac{\xi-(R_1 + R_4)I}{R_2} = 0,18A$$
3.  $I_3 = I-I_2 = (0,3 - 0,18)A = 0,12 A$