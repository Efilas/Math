Consideriamo un condensatore piano con carica $Q = \sigma A$ e distanza $d$
Per quanto abbiamo detto in precedenza sul campo elettrico, abbiamo che: $$\overrightarrow E = \begin{cases}0 & z<0\\ \frac \sigma {\varepsilon_0} & 0<z<d\\ 0 & z>d\end{cases}$$
Da cui abbiamo ottenuto che il potenziale vale: $$V = \begin{cases}c_1 & z<0\\ \frac \sigma {\varepsilon_0}  + c_2& 0<z<d\\ c_3 & z>d\end{cases} \xlongequal{c_1 \equiv V_-} \begin{cases}V_- & z<0\\ \frac \sigma {\varepsilon_0}  + V_-& 0<z<d\\ V_- + \frac{\sigma d}{\varepsilon_0} & z>d\end{cases}$$
*Dove $V_-$ è il valore del potenziale dove c'è carica negativa*
Tuttavia, se prendessimo: $$V = |V(z)-V_-|$$
Otterremmo che il nuovo valore del potenziale sarà: $$V = \begin{cases}0 & z<0\\ \frac{\sigma z}{\varepsilon_0} & 0<z<d\\ \frac{\sigma d}{\varepsilon_0} & z>d\end{cases}$$
Sapendo poi che $$\sigma = \frac{dQ}{dS} = \frac{Q}{A} \qquad \Rightarrow \qquad V = \frac{Qd}{A\varepsilon_0}$$
Da cui otteniamo direttamente che: $$\fbox{$C = \frac{A \varepsilon_0}{d}$}$$