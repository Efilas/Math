Notiamo che per la struttura di $A$ possiamo dividere il sistema lineare in due parti. Infatti ponendo: $$x = \begin{pmatrix}x_1\\ x_2\end{pmatrix} \quad  b = \begin{pmatrix}b_1\\ b_2\end{pmatrix}\qquad \Rightarrow \qquad \begin{pmatrix}S & uv^T\\ \underline 0& S^T\end{pmatrix}\begin{pmatrix}x_1\\ x_2\end{pmatrix} = \begin{pmatrix}b_1\\ b_2\end{pmatrix} \Leftrightarrow \begin{cases}Sx_1 + uv^Tx_2 = b_1\\ S^T x_2 = b_2\end{cases}$$
Determiniamo la fattorizzazione $LU$ di $S^T$. Sia tale fattorizzazione: $$S^T = \Pi^T LU$$
Allora otteniamo che: $$S^Tx_2 = b_2 \Leftrightarrow \Pi^TLUx_2 = b_2 \Leftrightarrow L\underbrace{Ux_2}_{y} = \underbrace{\Pi b_2}_{\hat b_2} \Leftrightarrow \begin{cases}Ly =\hat b_2\\ Ux_2 = y\end{cases}$$
*Chiaramente dovrà poi essere tutto espresso nel dettaglio*
In questo modo otteniamo $x_2$, sostituendo si ottiene che: $$Sx_1 = \underbrace{b_1-uv^T x_2}_{\hat b_1}$$
*Come possiamo calcolarlo?*
Un'idea (*sbagliata dal momento che non è efficiente*) è di calcolare prima la matrice $uv^T$ e poi andare a risolvere tale sistema, ossia: $$uv^Tx_2 = \begin{pmatrix}u_1\\ \vdots\\ u_v\end{pmatrix} \begin{pmatrix}v_1 & \cdots & v_n\end{pmatrix} \begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix} = \begin{pmatrix}u_1v_1 & \cdots & u_1v_n\\ \vdots & \ddots & \vdots\\ u_n v_1 & \cdots & u_nv_n\end{pmatrix} \begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix} = Mx_2$$
Ma come detto non è efficiente perché tutto questo è nell'ordine di $\Theta(n^2)$
Se mettessimo delle parentesi in più (ossia sfruttiamo la proprietà associativa del prodotto tra vettori) otteniamo che: $$uv^Tx_2 = u\underbrace{(v^Tx_2)}_{\in \mathbb R} = \lambda u$$
Tutto questo è molto più efficiente in quanto siamo nell'ordine di $\Theta(3n^2)$
Conoscendo già la fattorizzazione di $S^T$, possiamo calcolare la fattorizzazione di $S$. Infatti: $$S^T = \Pi^T LU \Rightarrow S = U^TL^T\Pi$$
Andando a sostituire otteniamo che: $$Sx_1 = \hat b_1 \quad \Rightarrow \quad U^T \overbrace{L^T \underbrace{\Pi x_1}_{\hat x_1}}^{y_1} \quad\Rightarrow\quad \begin{cases}U^T y_1 = \hat b_1\\ L^T\hat x_1 = y_1\\ x_1 = \Pi^T \hat x_1 \end{cases}$$