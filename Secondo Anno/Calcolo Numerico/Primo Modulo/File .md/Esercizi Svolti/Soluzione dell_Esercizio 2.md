Quando abbiamo una matrice tridiagonale, sappiamo che dobbiamo utilizzare l'algoritmo di Thomas
Sapendo che la struttura della matrice $A$ è presentata come nel paragrafo dell'algoritmo di Thomas otteniamo che:
$$\begin{rcases}
\alpha_1 = a_1\\ 
\begin{rcases}
\beta_i = b_i / \alpha_{i-1}\\
\alpha_i = a_i - \beta_ic_{i-1}
\end{rcases} & i \in\{2,...,n\}\\
\begin{rcases}
y_1 = f_1\\
y_i = f_i - \beta_i y_{i-1}
\end{rcases} & Ly = f\\
\begin{rcases}
x_n = y_n/ \alpha_n\\
x_i = \frac{1}{\alpha_i} (y_i-c_ix_{i+1})
\end{rcases} &Ux = y
\end{rcases} \qquad \text{con }A =\begin{pmatrix}a_1 & c_1 & 0 &\cdots& \cdots & 0\\
b_2 & a_2 & c_2 & \ddots && \vdots\\ 0 & b_3 & \ddots & \ddots & \ddots & \vdots\\
\vdots & \ddots & \ddots & \ddots & \ddots &0\\
\vdots && \ddots & \ddots &\ddots & c_{n-1}\\
0 & \cdots & \cdots & 0 & b_n & a_n
\end{pmatrix}$$ 
In questo caso posso fattorizzare una volta soltanto e poi posso risolvere per tutti i termini noti
Dalla fattorizzazione ottengo che costa soltanto $3(n-1)$ flops.
*Va sottolineato che non dipende minimamente dalla grandezza di $s$*

Per la risoluzione dei sistemi lineari, posso risolverne o uno per volta o tutti insieme, è indifferente a livello computazionale, *ma matlab preferisce fare tutto insieme, cioè sfruttando matrici*
Nel primo caso otteniamo: $$Ly_j = f_j \quad Ux_j = y_j \qquad \text{per }j \in \{1,...,s\}$$
Nel secondo caso ottengo: $$LY = F \Rightarrow \begin{cases} Y_{1,:} = F_{1,:}\\ Y_{i,:} = F_{i,:} - \beta_i Y_{i-1,:}\end{cases} \quad UX = Y \Rightarrow \begin{cases}X_{n,:} = \frac{1}{\alpha_n} Y_{n,:}\\ X_{i,:} = \frac{1}{\alpha_i}(Y_{i,:} - c_iX_{i+1})\end{cases}$$
Solo per questa parte abbiamo un costo computazionale pari a $\Theta(5n)$ per singolo sistema, quindi in totale $\Theta(5ns)$
Considerando la parte iniziale abbiamo che il costo totale è $5ns + 4n + \Theta(s)$