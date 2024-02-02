Mostriamoli per punti: 
	1. $\|E\|$ è definita come: $$\|E\| = \max_{x≠0}\frac{\|Ex\|}{\|x\|} = \max_{x≠0} \frac{\|uu^Tx\|}{\|x\|} = \max_{x≠0}\|u\|^2\underbrace{\frac{\|ux\|}{\|u\|\cdot \|x\|}_{}}_{≤1}≤ \|u\|^2$$
In generale otteniamo che tale valore è raggiunto in quanto abbiamo che $$\frac{\| Eu\|}{\|u\|} = \frac{\|uu^Tu\|}{\|u\|} = \frac{\|u\| \cdot |u^Tu|}{\|u\|} = |u^Tu| = \|u\|^2$$
Quindi il primo punto è verificato
	2. Mostriamo la doppia disuguaglianza
La prima è banale, in quanto, per le proprietà della norma matriciale si ha che: $$\|A + E\| ≤ \|A\| + \|E\| ≤ \lambda_{max}(A)- \|u\|^2$$
Per l'altra invece possiamo: $$\|A\| = \|A+E-E\| ≤ \|A+E\| + \|E\| \xRightarrow{\text{Togliendo }\|E\|} \|A\|-\|E\|≤\|A + E\|$$
Da cui poi si ricava la tesi.
3. Dobbiamo determinare la minima norma $\|u\|$ tale che la matrice $A+E$ sia singolare.
$$A+E = A-u^Tu$$
Nel caso di $A$ come matrice simmetrica definita positiva abbiamo che possiamo prendere: $$E = -\lambda_{min} u^Tu$$ con $u$ autovettore relativo all'autovalore $\lambda_{min}$
Quindi possiamo prendere un vettore $$u = \sqrt{\lambda_{min}}v$$
Con $v$ vettore di norma unitaria.