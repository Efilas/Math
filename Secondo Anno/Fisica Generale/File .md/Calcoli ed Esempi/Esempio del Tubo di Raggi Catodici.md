![[Drawing 2023-10-25 06.42.47.excalidraw | {widht = 100%}]]
In questa situazione abbiamo che: $$\overrightarrow E = \|\overrightarrow E_y\|\overrightarrow u_y \qquad \text e \qquad \overrightarrow v_0 = \|\overrightarrow v_0\| \overrightarrow u_x$$
Possiamo trascurare la forza di gravità in quanto $\overrightarrow F_g << \overrightarrow F_e$
Otteniamo quindi che lungo l'asse delle ascisse otteniamo che: $$x(t) = \underbrace{\frac qm E_x \frac{t^2}{2} }_0+ v_{0,x}t + x_0 = x_0+v_{0,x}t \qquad \text{Moto Rettilineo Uniforme}$$
Sull'asse delle ordinate abbiamo che: $$y(t) = \frac{q}{m} E_y \frac{t^2}{2} + \underbrace{v_{0,y}t}_0 + y_0 = y_0 \frac{q}{m} \|\overrightarrow E\| \frac{t^2}{2} \qquad \text{Moto Uniformemente Accelerato}$$
Possiamo prendere un sistema di riferimento in cui $x_0 = y_0$ e a questo punto otteniamo che: $$t = \frac{x(t)}{\|v_0\|} \quad \Rightarrow \quad y(x) = \frac qm \frac {\| \overrightarrow E\|}2 \frac{x(t)^2}{\|v_0\|^2}$$
A questo punto, calcolando $y(x = d)$ possiamo determinare il campo elettrico $\| \overrightarrow E\|$:
$$y(x=d) = \frac qm \frac{\|\overrightarrow E \|}{2} \left(\frac{d}{\|v_0\|}\right)^2 \qquad \Leftrightarrow \qquad \|\overrightarrow E\| = \frac{2m}{q} \frac{y(x = d)}{(d/\| \overrightarrow v_0\|)^2}$$