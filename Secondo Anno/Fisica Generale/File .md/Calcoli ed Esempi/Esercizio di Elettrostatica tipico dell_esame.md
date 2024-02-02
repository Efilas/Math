Due sfere piccole identiche con carica $q$ e massa $m$, legate da due cordicelle di massa nulla che pendolando dal soffitto.
Sapendo che la fune sia lunga $L$ e che l'angolo vale $\theta$, quanto vale $q$?

Visto che le palline sono ferme, per il primo principio della dinamica *la risultante delle forze è nulla*, quindi $$\overrightarrow P + \overrightarrow T + \overrightarrow F_c = 0$$
Possiamo poi scomporre nelle componenti verticale e orizzontale: 
$$\begin{cases}
T_y - P = 0 \\ 
T_x - F_c = 0
\end{cases}
\Rightarrow \begin{cases}
T \cos \theta = mg\\
T \sin \theta = k\frac{q^2}{d^2}
\end{cases}
\Rightarrow \begin{cases}
T = \frac{mg}{\cos \theta}\\
\frac{mg}{\cos \theta} \sin \theta = k\frac{q^2}{d^2}
\end{cases}
\Rightarrow mg\tan \theta d^2 = q^2 k
$$
Tuttavia, sapendo che $\frac{d/2}{L} = \sin \theta\Rightarrow d = 2L \sin \theta$, da cui si ottiene che $$q = \sqrt{\frac{mg \tan \theta\cdot 4 L^2 \sin^2 \theta}{k}}$$