![[Drawing 2023-10-25 07.23.28.excalidraw | width{100%}]]
Quando l'interruttore è aperto il campo elettrico è nullo, in quanto non circola corrente elettrica, mentre quando è chiuso il campo elettrico è costante.

*Facciamo l'esperimento con l'interruttore aperto, quindi con $\overrightarrow E = 0$*
Andiamo ad analizzare la risultante delle forze delle singole gocce d'olio.
![[Drawing 2023-10-29 12.00.02.excalidraw| center]]
Quindi la forza risultante risulta essere: $$\overrightarrow F_{ris} = m \overrightarrow a = \overrightarrow F_g + \overrightarrow F_a$$
Quindi, passando per gli scalari si ottiene che: $$F_{ris} = ma = mg - 6 \pi \eta R v \quad\Leftrightarrow \quad a = g-6 \pi \eta \frac{R}{m}v$$
Sapendo tuttavia che la massa della goccia d'olio può essere calcolata come $$m = \rho_{olio}\frac 43 \pi R^3$$ Abbiamo che: $$a = g- 6 \pi \eta \frac{R}{\frac43 \pi R^3 \rho_{olio}}v = g-\frac 92\frac{\eta v}{\rho_{olio}R^2}$$
Tuttavia, sapendo che l'accelerazione è la derivata prima della velocità abbiamo che: $$a = \frac{dv}{dt} = \underbrace{g}_{c_0} - \underbrace{\frac 92 \frac{\eta}{\rho_{olio}R^2}}_{c_1}v \quad \Rightarrow \quad \frac{dv}{dt} = c_0 -c_1 v$$
Definendo $\tilde v = v- \frac{c_0}{c_1}$ otteniamo che: $$\frac{d\tilde v}{dt} = -c_1\tilde v \quad \Leftrightarrow \quad \frac{d\tilde v}{\tilde v} = -c_1 dt \quad \Leftrightarrow \quad \log\tilde v = -c_1 t$$
Da cui segue direttamente che: $$\fbox{$v(t) = v_0e^{-c_1t} + \frac{c_0}{c_1}(1-e^{-c_1t})$}$$
Notiamo inoltre che se $t>>\frac{1}{c_1}$, abbiamo che: $$\fbox{$v(t) \rightarrow v_{ter} = \frac{c_0}{c_1} = \frac{2 g \rho_{olio} R^2}{9 \eta}$}$$
In questo modo, misurando la velocità terminale, possiamo misurare il raggio della goccia d'acqua e quindi anche la massa.

*Rifacciamo ora l'esperimento a circuito chiuso*.
In questo caso, visto che c'è elettricità che gira, abbiamo che c'è un campo elettrico $\overrightarrow E≠0$ costante

Su ogni goccia adesso agisce una forza aggiuntiva, che è la forza elettrica, *che ha la stessa direzione della forza di attrito*
Otteniamo quindi che la risultante delle forze è: $$\overrightarrow F_{ris} = \overrightarrow F_g + \overrightarrow F_a + \overrightarrow F_e$$
Passando ai valori scalari si ottiene che: $$F_{ris} = mg-qE-6\pi \eta Rv = ma$$
Da cui, passando direttamente per la velocità terminale *senza rifare i passaggi fatti in precedenza*, si ottiene che: $$v_{ter} = \frac{mg-qE}{6 \pi \eta R}$$
Sapendo tuttavia che la massa può essere calcolata come: $$m = \frac 43 \pi R^3 \rho_{olio}$$
Si ottiene che: $$v_{ter} = \frac{g - \frac qmE}{\frac 92 \frac{\eta}{\rho_{olio} R^2}}$$
L'unica incognita che manca è la carica, in quanto il raggio $R$ lo avevamo già misurato dalla parte precedente
Misurando $q$ per un grande numero di gocce possiamo calcolare la variazione di carica minima, ossia: $$\Delta q|_{min} = e = 1,6 \cdot 10^{-19} C$$