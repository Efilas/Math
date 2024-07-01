---
banner: "https://images.hdqwalls.com/wallpapers/fluid-liquid-abstract-4k-44.jpg"
banner_y: 0.20666
tags:
  - Mate
  - Share
  - Fisica
  - Tabe
Categoria: Mate
Scadenza: Maggio
Scopo: Studio
Anno: Secondo
CFU: 12
---

<h1 class = "small"; style = "font-size: 40; text-align: center">Fisica Generale - I Modulo</h1>

# Cenni di Analisi
## Calcolo Vettoriale

>[!def] **Definizione di Fisica e Osservabili**
>Si definisce "Fisica" una descrizione quantitativa dell'evoluzione (temporale e spaziale) degli osservabili. Si definisce un'osservabile una grandezza fisica che può essere misurata.

Le osservabili possono essere scalari o vettoriali a seconda di comportano.

Sono **Scalari** tutte le osservabili costituite da un numero e da un'unità di misura
Sono esempi di scalari la massa, la carica elettrica, la distanza, la temperatura e l'energia


Sono **Vettori** tutte le osservabili costituiti da una serie di numeri (generalmente 2 o 3) seguiti da un'unità di misura
Sono esempi di vettori la posizione, l'accelerazione, la velocità, il campo elettrico e il campo magnetico


Consideriamo lo spazio vettoriale $V$ su $\mathbb R$ con $\overrightarrow{v_1}, \overrightarrow{v_2} \in V$ e $\lambda \in \mathbb R$

Possiamo definire le seguenti operazioni tra vettori e scalari:
	- Moltiplicazione Scalare: $\lambda \overrightarrow{v_1} \in V$
	- Somma tra Vettori: $\overrightarrow{v_1} + \overrightarrow{v_2} \in V$
	- Prodotto Scalare: $\left \langle \overrightarrow{v_1}, \overrightarrow{v_2}\right \rangle=\overrightarrow{v_1} \cdot \overrightarrow{v_2} \in \mathbb R$.
		 In particolare si definisce Norma di un vettore $\|\overrightarrow{v_1}\|=\sqrt{\left \langle \overrightarrow{v_1}, \overrightarrow{v_2}\right \rangle }>0 \in \mathbb R$
	- Prodotto Vettoriale: $\mathbb R^3\times \mathbb R^3 \rightarrow \mathbb R^3$ definito come 
$$
\overrightarrow{v_1} \times \overrightarrow{v_2} = det
\begin{pmatrix}
\overrightarrow{e_i} & \overrightarrow{e_j} & \overrightarrow{e_k}\\
v_{1,i} & v_{1,j} & v_{1,k}\\
v_{2,i} & v_{2,j} & v_{1,k}
\end{pmatrix}
$$

>[!prop] **Proprietà del Prodotto Scalare $\left \langle \overrightarrow{v_1}, \overrightarrow{v_2}\right \rangle: V \times V \rightarrow \mathbb R$**
> - Simmetrico: $\left \langle \overrightarrow{v_1}, \overrightarrow{v_2}\right \rangle = \left \langle \overrightarrow{v_2}, \overrightarrow{v_1}\right \rangle$
> - Bilineare: $\left \langle \overrightarrow{v_1}, \lambda\overrightarrow{v_2}\right \rangle= \lambda \left \langle \overrightarrow{v_1}, \overrightarrow{v_2}\right \rangle = \left \langle \lambda \overrightarrow{v_1}, \overrightarrow{v_2}\right \rangle$
> - Positivo: $\left \langle \overrightarrow{v_1}, \overrightarrow{v_1}\right \rangle>0, \forall \overrightarrow{v_1} ≠0$

<div style="page-break-after: always;"></div>

>[!prop] **Proprietà del Prodotto Vettoriale**
>- Antisimmetrico: $\overrightarrow{v_1} \times \overrightarrow{v_2} = -\overrightarrow{v_1} \times \overrightarrow{v_2}$
>- Bilineare: $(\lambda \overrightarrow{v_1}) \times \overrightarrow{v_2} = \lambda \overrightarrow{v_1} \times \overrightarrow{v_2} = \overrightarrow{v_1} \times (\lambda\overrightarrow{v_2})$
>- Distributivo rispetto alla Somma: $(\overrightarrow{v_1}+\overrightarrow{v_2})\times \overrightarrow{v_3} = \overrightarrow{v_1} \times \overrightarrow{v_3} + \overrightarrow{v_2} \times \overrightarrow{v_3}$
>- Identità di Jacobi: $\overrightarrow{v_1}\times(\overrightarrow{v_2}\times \overrightarrow{v_3}) + \overrightarrow{v_3}\times(\overrightarrow{v_1}\times \overrightarrow{v_2})+\overrightarrow{v_2} \times (\overrightarrow{v_3} \times \overrightarrow{v_1})=0$

***

## Sistema di Coordinate

Vi sono il sistema di Coordinate Cartesiane che sono quelle Standard sia in $\mathbb R^2$ e $\mathbb R^3$, quelle Polari  in $\mathbb R^2$, quelle Cilindriche e quelle Sferiche in $\mathbb R^3$

![[Drawing 2023-09-18 19.26.09.excalidraw | {width = 100%}]]

**Sistemi di Conversione per i sistemi di Coordinate da quelle Cartesiane**
$$
\begin{cases}
\text{Sistema di Coordinate Cartesiane}\\
v_x\\
v_y
\end{cases}
\Leftrightarrow 
\begin{cases}
\text{Sistema di Coordinate Polari}\\
v_x = r\cos (\theta)\\
v_y = r \sin (\theta)
\end{cases}
$$

$$
\begin{cases}
\text{Sistema di Coordinate Cartesiane}\\
v_x\\
v_y\\
v_z
\end{cases}
\Leftrightarrow 
\begin{cases}
\text{Sistema di Coordinate Cilindriche}\\
v_x = r\cos (\theta)\\
v_y = r \sin (\theta)\\
v_z = z
\end{cases}
\Leftrightarrow
\begin{cases}
\text{Sistema di Coordinate Sferiche}\\
v_x = v\sin (\theta) \cos(\phi)\\
v_y = v \sin (\theta) \sin(\phi)\\
v_z = v \cos(\theta)
\end{cases}
$$
***

<div style="page-break-after: always;"></div>

## Derivate parziali
>[!def] **Definizione di Derivata di una Funzione**
>Sia $f(x)$ una funzione (scalare) $x \in \mathbb R\rightarrow f(x) \in \mathbb R$
>Il cambiamento di $f(x)$ con $x$ è dato dalla derivata della funzione definito tramite il limite $$ \frac{df(x)}{dx} = \lim_{\Delta \rightarrow 0} \frac{f(x+\Delta)-f(x)}{\Delta}$$ che è uguale al tasso di cambiamento di $f$ su $x$

Questo discorso può essere ampliato anche nel caso si tratta di $f:\mathbb R^n \rightarrow \mathbb R$
In questo caso possiamo prendere $\overrightarrow x \in \mathbb R^n$ e $f( \overrightarrow x) \in \mathbb R$ una funzione scalare. Possiamo scrivere allora $\overrightarrow x = (x_1,x_2,...,x_n)$ e $f(\overrightarrow x) = f(x_1,x_2,...,x_n)$

>[!def] **Definizione di Derivata Parziale di una Funzione Scalare (Campo Scalare)**
>Sia $f(\overrightarrow x)$ una funzione scalare $f: \mathbb R^n \rightarrow \mathbb R$.
>Si definisce derivata parziale di $f(\overrightarrow x)$ lungo la direzione $i$ il valore del limite $$\frac{∂f(\overrightarrow x)}{∂x_i} = \lim_{\Delta \rightarrow 0}\frac{f(x_1,...,x_i + \Delta,...,x_n)-f(x_1,...,x_i,...,x_n)}{\Delta}$$

![[Esempio di Derivate Parziali]]

>[!def] **Definizione di Derivata Parziale di un Campo Vettoriale**
>Se $\overrightarrow f$ è un campo vettoriale, ossia $\overrightarrow x \in \mathbb R^3 \rightarrow \overrightarrow f(\overrightarrow x) \in \mathbb R^3$, ossia ad ogni punto dello spazio è associato un vettore $(f_x, f_y, f_z)$ dove $f_x(x,y,z),\; f_y(x,y,z),\; f_z(x,y,z)$ sono dei campi scalari, possiamo scrivere quindi: $$\overrightarrow f(x,y,z) = (f_x(x,y,z),\; f_y(x,y,z),\; f_z(x,y,z))$$
>Quindi le derivate parziali di $\overrightarrow f$ sono:
>$$\frac{∂\overrightarrow f}{∂x} = \left(\frac{∂f_x}{∂x},\frac{∂f_y}{∂x},\frac{∂f_z}{∂x} \right)$$
>$$\frac{∂\overrightarrow f}{∂y} = \left(\frac{∂f_x}{∂y},\frac{∂f_y}{∂y},\frac{∂f_z}{∂y} \right)$$
>$$\frac{∂\overrightarrow f}{∂z} = \left(\frac{∂f_x}{∂z},\frac{∂f_y}{∂z},\frac{∂f_z}{∂z} \right)$$

![[Esempio di derivate parziali di un Campo Vettoriale]]

***
## Calcolo Vettoriale
L'obiettivo del calcolo vettoriale è quello di descrivere matematicamente il cambiamento nello spazio di quantità/osservabili, sia scalari, $f(x,y,z)$ ad esempio, sia vettoriali $\overrightarrow F = (F_x, F_y, F_z)$
Tutto ciò supponendo che $f, F_\alpha \in C^∞$ con $\alpha \in \{x,y,z\}$

>[!def] **Definizione di Gradiente**
>Si definisce Gradiente di un Campo Scalare come: $$\overrightarrow \nabla f = \left(\frac{∂f}{∂x}, \frac{∂f}{∂y}, \frac{∂f}{∂z}\right)\qquad \text{dove }\overrightarrow \nabla = \left(\frac{∂}{∂x}, \frac{∂}{∂y}, \frac{∂}{∂z}\right)$$
>Il Gradiente prende uno scalare in $\mathbb R$ e lo rende un vettore $\overrightarrow \nabla f \in \mathbb R^3$
>Quindi il Gradiente di un campo scalare è un campo vettoriale

>[!def] **Definizione di Laplaciano**
>Si definisce Laplaciano di un Campo Scalare come: $$\nabla^2\cdot f: \mathbb R \rightarrow \mathbb R\qquad  f \in \mathbb R \rightarrow \nabla^2 f =\frac{∂^2f}{∂x^2}+ \frac{∂^2f}{∂y^2}+ \frac{∂^2f}{∂z^2} \in \mathbb R$$
>$$\nabla^2 = \nabla \cdot \nabla = \left(\frac{∂}{∂x}, \frac{∂}{∂y}, \frac{∂}{∂z}\right)\cdot \left(\frac{∂}{∂x}, \frac{∂}{∂y}, \frac{∂}{∂z}\right) = \frac{∂^2}{∂x^2}+ \frac{∂^2}{∂y^2}+ \frac{∂^2}{∂z^2} \in \mathbb R$$
>Quindi $\nabla ^2 f$ è un Campo Scalare

>[!def] **Definizione di Divergenza**
>Si definisce Divergenza di un Campo Vettoriale $\overrightarrow F$:
>$$\overrightarrow \nabla \cdot \overrightarrow F: \mathbb R^3 \rightarrow \mathbb R \qquad \overrightarrow \nabla \cdot \overrightarrow F = \left(\frac{∂}{∂x}, \frac{∂}{∂y}, \frac{∂}{∂z}\right) \cdot (F_x, F_y, F_z) = \frac{∂F_x}{∂x}+ \frac{∂F_y}{∂y}+ \frac{∂F_z}{∂z} \in \mathbb R$$
>La Divergenza misura la tendenza delle linee di campo a convergere o divergere in un punto detto sorgente

<div style="page-break-after: always;"></div>

![[Esempio di Convergenza e Divergenza]]

<div style="page-break-after: always;"></div>

>[!def] **Definizione di Rotore**
>Si definisce Rotore di un campo vettoriale $\overrightarrow F:$ $$\overrightarrow \nabla \times \overrightarrow F: \mathbb R^3 \rightarrow \mathbb R\qquad \overrightarrow \nabla \times \overrightarrow F = \left(\frac{∂F_z}{∂y}-\frac{∂F_y}{∂z}, \frac{∂F_x}{∂z}-\frac{∂F_z}{∂x}, \frac{∂F_y}{∂x}-\frac{∂F_x}{∂y}\right)$$
>Il Rotore misura la rotazione infinitesima del Campo Vettoriale $\overrightarrow F$

![[Esempio Del Rotore]]

In generale la direzione del Rotore segue è data dalla regola della Mano Destra

<div style="page-break-after: always;"></div>

>[!prop] **Proprietà di Linearità degli Operatori precedenti**
> $\forall f,g$ campi scalari, $\forall \overrightarrow F, \overrightarrow G$ campi vettoriali e $\forall \lambda \in \mathbb R$:
> - $\overrightarrow \nabla(\lambda f + g) = \lambda \overrightarrow \nabla f + \overrightarrow \nabla g$
> - $\nabla^2(\lambda f+ g) = \lambda \nabla^2 f+ \nabla^2 g$
> - $\overrightarrow \nabla\cdot (\lambda \overrightarrow F + \overrightarrow G) = \lambda \overrightarrow \nabla \cdot \overrightarrow F + \overrightarrow \nabla \cdot \overrightarrow G$
> - $\overrightarrow \nabla \times(\lambda \overrightarrow F + \overrightarrow G) = \lambda \overrightarrow \nabla\times \overrightarrow F + \overrightarrow \nabla \times \overrightarrow G$

**Dimostrazione**:
Seguono direttametne dalle proprietà delle Derivate
<p style="text-align:right;">⃞</p>

>[!prop] **Altre Proprietà**
>$\forall f,g$ campi scalari, $\forall \overrightarrow F, \overrightarrow G$ campi vettoriali:
>- $\overrightarrow \nabla \cdot (\overrightarrow \nabla f) = \nabla^2 f$
>- $\overrightarrow\nabla \times \overrightarrow \nabla f = 0$
>- $\overrightarrow \nabla \cdot(\overrightarrow\nabla \times \overrightarrow F)=0$
>- $\overrightarrow \nabla \times(\overrightarrow\nabla \times \overrightarrow F) = -\nabla^2 \overrightarrow F + \overrightarrow \nabla \cdot( \overrightarrow \nabla \cdot \overrightarrow F)$

***
## Integrali di Linea e Circuitazione

>[!def] **Definizione di Curva**
>Una curva $\gamma$ in $\mathbb R^3$ dal punto $P_1$ al punto $P_2$ è una funzione $$\gamma(s):[a,b] \in \mathbb R \rightarrow \mathbb R^3$$dove $\gamma(a)=P_1$, $\gamma(b)=P_2$ e le cui coordinate $\gamma(s)=(x(s), y(s), z(s))$ sono funzioni $C^n, n≥1$ se $s \in ]a,b[$ e con derivata destra ben definita se $s=a$ e derivata sinistra ben definita se $s=b$

>[!def] **Definizione di Curva Chiusa**
>Si definisce $\gamma$ una curva chiusa se $P_1=P_2$

![[Drawing 2023-09-26 06.30.58.excalidraw | {width=100%}]]

<div style="page-break-after: always;"></div>

>[!def] **Definizione di Curva Orientata**
>La curva $\gamma$ è orientata/percorsa da $P_1$ a $P_2$
>La curva $-\gamma(s)\equiv \gamma(b-(s+a)):[a,b]\subseteq \mathbb R \rightarrow \mathbb R^3$. Ha la stessa immagine di $\gamma (s)$ ma $P_1=\gamma(b)$ e $P_2=\gamma(a)$ e $-\gamma$ è percorsa in senso opposto

>[!def] **Definizione di Vettore Tangente**
>$\forall s \in [a,b]$ possiamo definire il vettore tangente a $\gamma$ in $s$ come  $$\overrightarrow t_\gamma (s)=\left(\frac{d}{dx} x(s), \frac{d}{dy} y(s), \frac{d}{dz} z(s)\right)$$

>[!def] **Definizione di Lunghezza della $\gamma$**
>La lunghezza della curva $\gamma$ è dato dall'integrale $$\ell_\gamma = \int_a^b \|\underbrace{\overrightarrow t(s)}_{d \ell}\|ds$$ Dove $d \ell$ è la lunghezza di tratto infinitesima di $\gamma$ compresa tra $\gamma(s)$ e $\gamma (s+ds)$

![[Esempi di Calcolo della Lunghezza della Curva|esempi di Calcolo della Lunghezza della Curva]]

>[!def] **Definizione di Integrale di Linea in un Campo Vettoriale**
>Su un $\overrightarrow F$ campo vettoriale in $\mathbb R^3$. L'integrale di linea di $\overrightarrow F$ su una curva $\gamma$ è definito come: $$\int_\gamma \overrightarrow F \times d\overrightarrow \ell = \int_a^b \overrightarrow F(s) \cdot \overrightarrow t(s) ds = \int_a^b \|\overrightarrow F(s)\|\cdot \|\overrightarrow t(s)\| \cos \theta ds$$

<div style="page-break-after: always;"></div>

>[!prop] **Proposizione**
> $$\int_{-\gamma} \overrightarrow F \cdot d\overrightarrow \ell = -\int_\gamma \overrightarrow F \cdot d\overrightarrow \ell$$Visto che $-\gamma$ è percorso nel senso opposto: $d \overrightarrow \ell(\gamma) = -d\overrightarrow \ell(-\gamma)$

>[!def] **Definizione di Circuitazione**
> Se $\gamma$ è chiusa, l'integrale di linea si chiama Circuitazione e si indica: $$C_\gamma(\overrightarrow F) = \oint_\gamma \overrightarrow F\cdot d \overrightarrow s$$

>[!th]  **Teorema**
> La circuitazione di un campo vettoriale è nulla su qualunque curva chiusa se e solo se l'integrale di linea su una qualunque curva aperto dipende solo dai punti estremi e non dal percorso della curva stessa

>[!def] **Definizione di Campo Conservativo**
> Un campo vettoriale è conservativo se $$\oint_\gamma \overrightarrow F \cdot d\overrightarrow \ell = 0, \forall \gamma \text{ chiusa}$$

>[!th]  **Teorema di Helmholtz**
>Un campo vettoriale in $\mathbb R^3$ è completamente determinato dalla sua divergenza e dal suo rotore, ossia, per ogni campo vettoriale $\overrightarrow F$ campo vettoriale in $\mathbb R^3$ si ha che  $$\overrightarrow F = \nabla \cdot V + \nabla \times \overrightarrow U$$
>Dove $V$ è un campo scalare e $\overrightarrow U$ è un campo vettoriale

>[!th]  **Teorema**
>Un campo vettoriale è conservativo se e solo se è di tipo gradiente, ossia $\overrightarrow F = \nabla \cdot V$


![[Esempio di Campo Conservativo]]
![[Esempio di Campo Non Conservativo]]

***

## Integrali di Superfici e Flusso

>[!def] **Definizione di Superficie**
>Una superficie $S \subseteq \mathbb R^3$ è una funzione $$\sigma:D \subseteq \mathbb R^2 \rightarrow \mathbb R^3$$ dove il dominio è $D = \{(u,v)\}$ le cui coordinate in $\mathbb R^3$ sono date da $$(x(u,v), y(u,v), z(u,v))$$ con $x,y,z$ funzioni a immagine in $\mathbb R^3$ di tipo $C^1$ se $(u,v) \in D$

In ogni punto appartenente al dominio è possibile definire due vettori tangenti alla superficie, uno alla direzione $\overrightarrow u$ e l'altro a $\overrightarrow v$ $$\begin{align}\overrightarrow t_u(u,v) = \left(\frac {∂x} {∂u}, \frac{∂y}{∂u}, \frac{∂z}{∂u}\right)\\\overrightarrow t_v(u,v) = \left(\frac {∂x} {∂v}, \frac{∂y}{∂v}, \frac{∂z}{∂v}\right) \end{align}$$

![[Drawing 2023-09-27 17.37.11.excalidraw | center]]

>[!def] **Definizione di Vettore Normale**
>Possiamo definire il vettore normale alla superficie $\sigma$ come $$\overrightarrow n(u,v) = \overrightarrow t_u \times \overrightarrow t_v$$
>Se $\overrightarrow n≠0$ per ogni punto in $\sigma$ allora possiamo dire che la superficie è orientabile

Possiamo calcolare l'area della superficie risolvendo l'integrale: $$A_S = \iint_D \underbrace{\left\| \overrightarrow n(u,v)\right\|du\; dv}_{dA}$$ Dove $dA$ rappresenta l'area infinitesima mentre possiamo definire come l'elemento di superficie il vettore $d\overrightarrow S = \overrightarrow n(u,v) du \;dv$

![[Esempi di Calcolo di Superfici]]

>[!def] **Definizione di Flusso**
>Sia $\overrightarrow F$ un campo vettoriale in $\mathbb R^3$. Si definisce integrale di superficie o Flusso di $\overrightarrow F$ su una superficie $S$ come l'integrale: $$\iint_S \overrightarrow F \cdot d \overrightarrow s = \iint_D \overrightarrow F(u,v)\cdot \overrightarrow n(u,v)\; du\; dv$$
>Che può essere calcolato come: $$\iint_D \|\overrightarrow F(u,v)\| \|\overrightarrow n(u,v)\| \cos(u,v) \; du\; dv$$
>In particolare, se $\overrightarrow F \bot \overrightarrow n\Rightarrow \overrightarrow F \cdot \overrightarrow n = 0$, quindi il flusso è nullo

Poiché è importante l'orientamento della superficie si ha che vale la relazione: $$\iint_{-S} \overrightarrow F \cdot d \overrightarrow s = -\iint_S \overrightarrow F \cdot d \overrightarrow s$$
Inoltre se $S$ è una superficie chiusa si ha che: $$\Phi_S(\overrightarrow F)=  {\Huge ∯}_S \;\overrightarrow F\; \cdot d\overrightarrow s$$

>[!def] **Definizione di Solenoide**
> $\overrightarrow F$ è un solenoide $\Leftrightarrow \Phi_S(\overrightarrow F)=  {\Huge ∯}_S \;\overrightarrow F\; \cdot d\overrightarrow s, \;\;\forall s$  chiusa

>[!th]  **Teorema**
>Un campo vettoriale $\overrightarrow F$ è un solenoide se e solo se è di tipo rotore, cioè $\overrightarrow F = \overrightarrow \nabla \times \overrightarrow A$ ($\overrightarrow\nabla \cdot \overrightarrow F =0$)

****

## Elementi di Volume
Possiamo distinguere tre casi a seconda del sistema di riferimento, il Volume può essere calcolato in $3$ modi differenti:
- **Coordinate Cartesiane $(x,y,z)$**: In questo caso l'elemento infinitesimo di volume e $dV = dx\;dy\;dz$, quindi il volume diventa:$$V=\iiint dV = \int_0^{L_x}dx\int_0^{L_y}dy\int_0^{L_z}dz = L_xL_yL_z$$
- **Coordinate Cilindriche $(r, \phi, z)$**: Si ottiene che $dV = r\; dr\; d\phi\; dz$ da cui:$$V = \iiint dV = \int_0^R r\; dr \int_0^{2\pi} d\phi \int_0^{L} dz = \pi R^2L$$
- **Coordinate Sferiche $(r, \theta, \phi)$**: Si ha che $dV = r^2 \sin \theta\; dr\; \theta\;d\phi$, quindi il volume sarà: $$V = \iiint dV = \int_0^R r^2 dr\; \int_0^\pi \sin \theta \;d \theta\int_0^{2\pi} d\phi = \frac 43 \pi R^3$$

***
<div style="page-break-after: always;"></div>

## Teoremi di Stokes

>[!th]  **Teorema di Stokes**
>Se $S$ è una superficie qualunque che ha la curva chiusa $\gamma$ come bordo ($\Leftrightarrow \gamma = ∂S$), allora $$\oint_{\gamma = ∂S} \overrightarrow F \cdot d \overrightarrow \ell = \int_S (\overrightarrow \nabla \times \overrightarrow F) \cdot d\overrightarrow S$$

**"Dimostrazione"**:
Mostriamo questo cambiamento di coordinate:
![[Drawing 2023-10-04 10.50.45.excalidraw | {width = 100%}]]
Partendo dal primo integrale abbiamo che $$\oint_{\gamma = ∂S} \overrightarrow F \cdot d \overrightarrow \ell$$
Sapendo che $d\overrightarrow \ell$  + è un vettore, possiamo sostituirlo con le sue coordinate in $s$ e $t$, quindi: $$d \overrightarrow \ell = \frac{∂ \overrightarrow \ell}{∂s}ds + \frac{d \overrightarrow \ell}{∂t}dt \quad\Rightarrow\quad \oint_{\gamma = ∂S} \overrightarrow F \cdot d \overrightarrow \ell  = \oint_C \left( \overrightarrow F \cdot \frac{∂\overrightarrow \ell}{∂s}ds + \overrightarrow F \cdot \frac{∂\overrightarrow \ell}{∂t}dt\right)$$
Definiamo ora $G_1$ e $G_2$ nel seguente modo: 
$$G_1:= \overrightarrow F \cdot \frac{∂\overrightarrow \ell}{∂s}\qquad G_2:= \overrightarrow F \cdot\frac{∂\overrightarrow \ell}{∂t}$$Otteniamo quindi che l'integrale iniziale diventa:
$$\oint_{\gamma = ∂S} \overrightarrow F \cdot d \overrightarrow \ell = \oint_C \left( \overrightarrow F \cdot \frac{∂\overrightarrow \ell}{∂s}ds + \overrightarrow F \cdot \frac{∂\overrightarrow \ell}{∂t}dt\right) = \oint_C (G_1 ds + G_2 dt) \xlongequal{\overrightarrow G=(G_1,G_2), \; \overrightarrow s=(s,t)} \oint_C \overrightarrow G \cdot d \overrightarrow s$$

Partendo dall'altro integrale otteniamo (sostituendo con il vettore normale $d \overrightarrow S$ con il suo vettore normale):
$$\int_S (\overrightarrow \nabla \times \overrightarrow F)  \cdot d\overrightarrow S = \int_S(\overrightarrow \nabla \times \overrightarrow F)\cdot \overrightarrow n \; ds \; dt$$
Dalla definizione del vettore normale per una superficie, abbiamo che:
$$\overrightarrow n = \frac {∂\overrightarrow \ell}{∂s}\times \frac{∂\overrightarrow \ell}{∂t} \quad \xRightarrow{\text {Quindi}} \quad (\overrightarrow\nabla \times \overrightarrow F)\cdot \left(\frac {∂\overrightarrow \ell}{∂s}\times \frac{∂\overrightarrow \ell}{∂t}\right) = \frac{∂G_2}{∂s} - \frac{∂G_1}{∂t}$$
*Quest'ultimo passaggio è frutto di calcoli che non sono stati fatti per pura mancanza di tempo, ma in teoria basterebbe sviluppare i prodotti vettoriali, poi quello scalare e poi sostituire le definizioni di $G_1$ e $G_2$ poste prima*.
Otteniamo quindi che: 
$$\int_S (\overrightarrow \nabla \times \overrightarrow F)\cdot d \overrightarrow S = \int_R\left(\frac{∂G_2}{∂s}-\frac{∂G_1}{∂t}\right)ds \; dt \xlongequal{\text{Teorema di Green}}\int_{∂R = G}(G_1ds + G_2dt)$$
Poiché abbiamo raggiunto un'uguaglianza, abbiamo verificato l'uguaglianza
<p style="text-align:right;">⃞</p>

>[!th]  **Teorema di Green** *(Enunciato Generale)*
>Sia $S$ una superficie e sia $∂S$, sua frontiera, una curva chiusa semplice positivamente orientata (in ogni punto della frontiera, l'angolo formato tra il vettore tangente e il vettore normale alla curva in senso orario è $\pi/2$). Siano $f,g$ due funzioni reali con variabile reale che hanno le derivate parziali continue su una regione aperta che contiene $S$, allora:
>$$\oint_{∂S}(f\;dx + g\;dy) = \iint_S\left(\frac{∂g}{∂x} - \frac{∂f}{∂y}\right)dx \; dy$$

**Dimostrazione:**
*Adattiamo l'enunciato in modo da essere applicabile direttamente alla dimostrazione del teorema precedente
Poniamo quindi $f = G_1$, $g = G_2$, $x = s$, $y = t$, $∂S = C$*
Consideriamo quindi la curva $C$, suddivisa nel seguente modo:
![[Drawing 2023-10-04 11.53.09.excalidraw | {width = 100%}]]
Vogliamo semplificare: $$\iint_S\left(\frac{∂g}{∂x} - \frac{∂f}{∂y}\right)dx \; dy = \int_R\left(\frac{∂G_2}{∂s}-\frac{∂G_1}{∂t}\right)ds \; dt$$
Poiché sono due funzioni distinte $G_1$ e $G_2$ possiamo partire prima da $G_1$ (per poi continuare dopo in maniera analoga):
$$\begin{align*}
\int_R-\frac{∂G_1}{∂t}ds \; dt =& -\int_{\overline s_{min}}^{\overline s_{max}}ds \; \int_{t_{min}(s)}^{t_{max}(s)}\frac{∂G_1}{∂t}dt = -\int[G_1(t_{max}(s))-G_1(t_{min}(s))]ds\\ =&-\int_{\overline s_{min}}^{\overline s_{max}}[G_1 \;t_{max}(s)]ds + \int_{\overline s_{min}}^{\overline s_{max}}[G_1t_{min}(s)]ds = \int_CG_1 ds
\end{align*}$$
Posso fare poi la stessa identica cosa per $G_2$, considerando i punti $\overline t_{min}$ e $\overline t_{max}$ e le curve $s_{min}(t)$ e $s_{max}(t)$
In maniera del tutto analoga si ottiene che: 
$$\int_R \frac{∂G_2}{∂s} ds \; dt = \int_C G_2 dt$$
La tesi segue unendo sostituendo quello ottenuto.
<p style="text-align:right;">⃞</p>

<div style="page-break-after: always;"></div>

>[!th]  **Teorema della Divergenza**
>Se $V$ è un qualunque volume che ha la superficie chiusa $S$ come bordo ($∂V = S$), allora vale: $$\oint_S \overrightarrow F \cdot d \overrightarrow S = \int _V \overrightarrow \nabla \cdot \overrightarrow F \; dV$$

**"Dimostrazione":**
Consideriamo un solito qualsiasi e con un cambio di variabili rendiamolo un solido rettangolare:
![[Fisica Generale 2023-10-04 12.14.31.excalidraw | {width = 100%}]]
I vettori normali associati alle varie facce saranno: $$\begin{matrix}\overrightarrow n_1 = (1, 0, 0) & &\overrightarrow n_3 = (-1, 0, 0) && \overrightarrow n_3 = -\overrightarrow n_1\\ \overrightarrow n_2 = (0, 1,0) && \overrightarrow n_4 = (0, -1, 0) && \overrightarrow n_4 = -\overrightarrow n_2\\ \overrightarrow n_5 = (0,0,1) && \overrightarrow n_{6} = (0, 0, -1) && \overrightarrow n_6 = -\overrightarrow n_5\end{matrix}$$
Verifichiamo effettivamente l'uguaglianza.
Poiché abbiamo che l'integrale di sinistra rappresenta la superficie del solido, possiamo scrivere: 
$$\begin{align*}
\oint_{A = ∂W} \overrightarrow F \cdot d \overrightarrow A =& \int_{A_1} \overrightarrow F  \cdot d \overrightarrow A_1 + \int_{A_2} \overrightarrow F  \cdot d \overrightarrow A_2 + \int_{A_3} \overrightarrow F  \cdot d \overrightarrow A_3 + \int_{A_4} \overrightarrow F  \cdot d \overrightarrow A_4 + \int_{A_5} \overrightarrow F  \cdot d \overrightarrow A_5 + \int_{A_6} \overrightarrow F  \cdot d \overrightarrow A_6
\end{align*}$$
Se consideriamo $\overrightarrow F$ come vettore delle sue componenti otteniamo che $\overrightarrow F = (F_s, F_t, F_u)$, ognuno calcolato in $(s,t,u)$
Facciamo esplicito il caso della faccia frontale $A_1$, gli altri seguono in modo analogo: $$A_1 = \int_0^L \int_0^L (F_s, F_t, F_u){\Large |}_{s = L} \cdot (1, 0, 0)\; dt\; du = \int_0^L \int_0^L F_s(L, t, u)\; dt\;du$$
*In sintesi, visto che la faccia $A_1$ ha coordinate del tipo $(L, s, t)$, possiamo sostituire $F_s$ direttamente con $L$, facendo poi il prodotto scalare con il vettore normale di $A_1$ si ottiene il risultato ottenuto*.
Facendo questa cosa per tutte le facce e poi sostituendo nel calcolo dell'integrale si ottiene che:
$$\begin{align*}
\oint_{A = ∂W} \overrightarrow F \cdot d \overrightarrow A =& \int_{A_1} \overrightarrow F  \cdot d \overrightarrow A_1 + \int_{A_2} \overrightarrow F  \cdot d \overrightarrow A_2 + \int_{A_3} \overrightarrow F  \cdot d \overrightarrow A_3 + \int_{A_4} \overrightarrow F  \cdot d \overrightarrow A_4 + \int_{A_5} \overrightarrow F  \cdot d \overrightarrow A_5 + \int_{A_6} \overrightarrow F  \cdot d \overrightarrow A_6\\ 
=& \int_0^L \int_0^L F_s(L, t, u)\; dt\;du + \int_0^L \int_0^L F_t(s, L, u)\; ds\;du + \int_0^L \int_0^L -F_s(0, t, u)\; dt\;du\;+ 
\\ & \int_0^L \int_0^L -F_t(s, 0, u)\; ds\;du+ \int_0^L \int_0^L F_u(s, t, L)\; ds\;dt+ \int_0^L \int_0^L -F_u(s, t, 0)\; ds\;dt
\end{align*}$$
Raccogliendo tutti i termini con lo stesso differenziale si ottiene:
$$\begin{align*}
\oint_{A = ∂W} \overrightarrow F \cdot d \overrightarrow A 
=& \int_0^L \int_0^L F_s(L, t, u)\; dt\;du + \int_0^L \int_0^L F_t(s, L, u)\; ds\;du + \int_0^L \int_0^L -F_s(0, t, u)\; dt\;du\;+ 
\\ & \int_0^L \int_0^L -F_t(s, 0, u)\; ds\;du+ \int_0^L \int_0^L F_u(s, t, L)\; ds\;dt+ \int_0^L \int_0^L -F_u(s, t, 0)\; ds\;dt=\\
=& \int_0^L\int_0^L [F_s(L,t,u)-F_s(0, t, u)]dtdu + \int_0^L\int_0^L[F_t(s, L, u)-F_t(s, 0, t)]ds  du + \int_0^L \int_0^L[F_u(s,t,L)-F_t(s,t,0)]dsdt=\\
=& \int_0^L \int_0^L \int_0^L \left(\frac{∂F_s}{∂s}, \frac{∂F_t}{∂t}, \frac{∂F_u}{∂u}\right)ds\;dt\;du = \int_0^L \int_0^L \int_0^L \left(\frac{∂}{∂s}, \frac{∂}{∂t}, \frac{∂}{∂u}\right)\cdot (F_s, F_t, F_u) ds\; dt\; du = \int_W \overrightarrow \nabla \cdot \overrightarrow F \; dW
\end{align*}$$
<p style="text-align:right;">⃞</p>

***
<div style="page-break-after: always;"></div>

# Cenni di Meccanica

>[!def] **Definizione di Meccaninca**
>La Meccanica del Punto Materiale è caratterizzato dalle sue coordinate dello spazio tridimensionale, misurate in un sistema di riferimento inerziale

>[!def] **Definizione di Vettore Posizione, Velocità e Accelerazione**
>Si definisce vettore posizione il vettore $$\overrightarrow r(t) = (x(t), y(t), z(t))$$ e viene misurato in metri: $[r] = m$
>Si definisce Velocità  il tasso di cambiamento di $\overrightarrow r$: $$\overrightarrow v = \frac{d}{dt}\overrightarrow r(t)$$ e si misura in metri al secondo: $[v] = m/s$
>Si definisce Accelerazione il tasso di cambiamento di $\overrightarrow v$: $$\overrightarrow a = \frac{d}{dt} \overrightarrow v = \frac{d^2}{dt^2} \overrightarrow  r$$ e si misura in metri al secondo quadrato: $[a] = m/s^2$

>[!def] **Leggi di Newton**
> - Se $\overrightarrow F = \overrightarrow 0$, allora il corpo o è fermo o si muove in moto rettilineo uniforme, dove con $\overrightarrow F$ si intende la forza risultante
> - $\overrightarrow F = m \overrightarrow a$ dove $m$ è la massa inerziale del corpo, che descrive la resistenza al cambiamento dello stato del corpo
> - *Azione e Reazione*: per ogni azione, c'è una reazione di modulo uguale e verso opposto $\overrightarrow F_{i,j} = -\overrightarrow F_{j,i}$

Poiché un corpo di massa $m$ è soggetto ad una forza $\overrightarrow F$, per il secondo principio della dinamica si ha che $$\overrightarrow F = m \overrightarrow a = m \frac{d^2 \overrightarrow r}{dt^2}$$
Se la forza è costante, allora si può invertire e si avrebbe che: $$\frac{d^2 \overrightarrow r}{dt^2} = \frac{\overrightarrow F}{m}$$
Tuttavia, sapendo che la accelerazione, oltre ad essere la derivata seconda della posizione, si ha che è la derivata prima della velocità. Unendo tutto insieme si ha che: $$\overrightarrow a = \frac{d\overrightarrow v}{dt} =  \frac{\overrightarrow F}{m} \Rightarrow \int_0^{t_f} \frac{d \overrightarrow v}{dt}dt = \underbrace{\frac{\overrightarrow F}{m}}_{\overrightarrow a} \Rightarrow \overrightarrow v(t_f) - \overrightarrow v(0) )= \overrightarrow a\cdot t_f \Rightarrow \overrightarrow v(t_f) = \overrightarrow v(0) + \overrightarrow a\cdot t_f$$
Una cosa simile pulò essere fatta anche per la posizione, per cui sapendo che la velocità è la derivata prima della posizione:
$$\int_0^{t_f} \frac{d \overrightarrow r}{dt}dt = \int_0^{t_f}\overrightarrow v\; dt \Rightarrow \overrightarrow r(t_f)- \overrightarrow r(0) = \int_0^{t_f}(\overrightarrow v(0) + \overrightarrow a t_f) = \overrightarrow v(0) + \frac12 \overrightarrow a t_f^2 \Rightarrow \overrightarrow r(t_f) = \overrightarrow  r(0) + \overrightarrow v(0)t_f + \frac12 \overrightarrow a t_f^2$$

*La scelta di avere $t \in [0, t_f]$ è puramente arbitraria* 

<div style="page-break-after: always;"></div>

>[!def] **Definizione di Quantità di Moto**
>Si definisce Quantità di Moto (di traslazione)  o Momento di moto il vettore $$\overrightarrow p = m \overrightarrow v$$
>e si misura in kilogrammi per metro al secondo: $[p] = kg\cdot m/s$

Notiamo che, se assumiamo che il corpo non perda massa ($\Leftrightarrow \frac{d}{dt}m =0$), abbiamo che: $$\frac{d}{dt}\overrightarrow p = \frac d{dt}(m\overrightarrow v) = m \cdot \frac d{dt} \overrightarrow v = m \overrightarrow a  = \overrightarrow  F$$
Se la risultante delle forze è nulla, segue allora che la quantità di moto è costante, quindi c'è una legge di conservazione del momento lineare.

Tutte queste formule possono essere adattate anche in coordinate polari.
Infatti data una qualsiasi curva $\gamma(t)$ in $\mathbb R^2$, può essere descritta sia in funzione di un sistema cartesiano $\gamma(t) = (x(t), y(t))$, sia in un sistema di coordinate polari $\gamma(t) = (r(t), \theta(t))$ attraverso queste formule di cambio variabile: $$\begin{cases}x(t) = r(t) \cos (\theta(t))\\ y(t)  = r(t) \sin (\theta(t))\end{cases} \Leftrightarrow \begin{cases} \theta(t) = \arctan\left(\frac{y(t)}{x(t)}\right)\\ r(t) = \sqrt{x^2(t) + y^2(t)}\end{cases}$$
*Tutto dipende sempre e comunque dal tempo* 

Possiamo calcolare derivate prima e seconda della posizione in funzione di $\theta$: $$\frac{d\theta}{dt} = \omega\qquad \frac{d^2\theta}{dt^2}=\frac{d\omega}{dt} = \gamma$$
La prima prende il nome di velocità angolare e si misura in $s^{-1}$ mentre la seconda prende il nome di accelerazione angolare e si misura in $s^{-2}$
Possiamo prendere anche le derivate del vettore distanza, in questo caso otteniamo: $$\frac{d}{dt}r = \dot r\qquad \frac{d^2}{dt^2}r = \frac{d}{dt}\dot r = \ddot r$$
La prima prende il nome di velocità radiale e si misura in metri al secondo $m/s$ e la seconda prende il nome di accelerazione radiale e si misura in metri al secondo quadrato $m/s^2$

Come nel caso delle coordinate cartesiane, se $\gamma$ è costante, la possiamo integrare per ottenere: $$\omega(t_f) = \omega(0) + \gamma t_f \qquad \text{e} \qquad \theta(t_f) = \theta(0) + \omega(0)t_f + \frac12 \gamma t_f^2$$

Ritornando al cambiamento di variabili precedente e derivando otteniamo che: 
$$\begin{cases}
x = r \cos \theta\\
y = r \sin \theta
\end{cases}
\xRightarrow{\frac{d}{dt}}
\begin{cases}
\frac{d}{dt}x = \frac{d}{dt}(r\cos \theta) = \dot r \cos \theta - r\dot \theta \sin \theta = v_x\\
\frac{d}{dt}y = \frac d{dt}(r \sin \theta) = \dot r \sin \theta + r \dot \theta \cos \theta = v_y
\end{cases}
$$
*Tutto in funzione del tempo*

In particolare notiamo che:
$$\begin{align*}
\overrightarrow v &= v_x \overrightarrow u_x + v_y \overrightarrow u_y = (\dot r \cos \theta - r \dot \theta \sin \theta) \overrightarrow u_x + (\dot r \sin \theta + r\dot \theta \cos \theta) \overrightarrow u_y =\\ &= \dot r(\underbrace{\cos \theta \overrightarrow u_x + \sin \theta \overrightarrow u_y}_{\text{Versore Radiale}}) + r \dot \theta (\underbrace{- \sin \theta \overrightarrow u_x + \cos \theta \overrightarrow u_y}_{\text{Versore Tangenziale}}) = \dot r \overrightarrow u_r + r \dot \theta \overrightarrow y_\theta 
\end{align*}$$
Segue subito che $\| \overrightarrow v_r \| = \dot r$ e $[\overrightarrow v_r] = m/s$ e che  $\|\overrightarrow v_\theta \| = r \dot \theta = \omega r$ e $[\overrightarrow v _\theta] = m/s$

In maniera del tutto analoga possiamo calcolare anche le derivate di $\overrightarrow v = \dot r \overrightarrow u_r + r \dot \theta \overrightarrow y_\theta$ e si ottiene che: 
$$\begin{align*}
\overrightarrow a &= \frac{d}{dt} \overrightarrow v = \ddot r \overrightarrow u_r + \dot r \dot {\overrightarrow u}_r + \dot r \dot \theta  \overrightarrow u_\theta + r \ddot \theta \overrightarrow u_\theta + r \dot \theta \dot {\overrightarrow r}_\theta
\end{align*}$$

Notiamo quindi che: 
$$
\begin{cases}
\overrightarrow u_r = (\cos \theta \overrightarrow u_x + \sin \theta \overrightarrow u_y)\\
\overrightarrow u_\theta = (- \sin \theta \overrightarrow u_x + \cos \theta \overrightarrow u_y)
\end{cases}
\xRightarrow{\frac{d}{dt}}
\begin{cases}
\frac{d}{dt} \overrightarrow u_r = (- \sin \theta \overrightarrow u_x + \cos \theta \overrightarrow u_y) \dot \theta = \dot\theta \overrightarrow u_\theta\\
\frac{d}{dt} \overrightarrow u_\theta = (-\cos \theta \overrightarrow u_x - \sin \theta \overrightarrow u_y) \dot \theta = -\dot \theta \overrightarrow u_r
\end{cases}
$$

Quindi possiamo possiamo scrivere l'accelerazione come: $$\overrightarrow a = \ddot r \overrightarrow u_r + \dot r \overrightarrow u _\theta + \dot r \dot \theta \overrightarrow u_\theta + r \ddot \theta \overrightarrow u_\theta - r \dot \theta^2 \overrightarrow u_r = (\underbrace{\ddot r- r \dot \theta^2}_{\text{Acc. Radiale}}) \overrightarrow u_r + (\underbrace{2\dot r \theta + r \ddot \theta}_{\text{Acc. Tangenziale}})\overrightarrow u_\theta$$

Da cui segue che il modulo della accelerazione radiale è $|\ddot r - r \dot \theta^2|$ e si misura in $m/s^2$ e che il modulo della accelerazione tangenziale è $|2\dot r\dot \theta + r \dot \theta|$ e che si misura in $m/s^2$

Per il secondo principio della dinamica si può scomporre la forza nella somma di forza tangenziale e radiale: $$\overrightarrow F =  F_r \overrightarrow u_r + F _\theta \overrightarrow u_\theta$$

Esiste un caso particolare, che è il **moto circolare** in cui si ha che $r$ è costante nel tempo, quindi $\dot r = \ddot r = 0$
In questo caso segue subito che $\overrightarrow v = r \dot \theta \overrightarrow u_\theta$ mentre $\overrightarrow a = -r \dot \theta \overrightarrow u_r + r\ddot \theta \overrightarrow u_\theta$

In questo caso si può parlare di quantità di moto di rotazione:

>[!def] **Definizione di Quantità di Moto di Rotazione**
>S definisce Quantità di Moto di Rotazione o Momento Angolare la quantità: $$\overrightarrow L = \overrightarrow r \times \overrightarrow p$$
>Segue subito che si misura in kilogrammi per metro quadrato su secondo: $[L] = kg\cdot m^2/s$

![[Drawing 2023-10-04 16.07.57.excalidraw | {width= 100%}]]

Notiamo che, per il fatto che venga usato il prodotto vettoriale, $\overrightarrow L$ è ortogonale a $\overrightarrow r$ e a $\overrightarrow p$

>[!def] **Definizione di Momento della Forza**
>Data una forza $\overrightarrow F$, si definisce momento della forza la quantità: $$\overrightarrow\tau = \overrightarrow r \times \overrightarrow F$$
>*Sulle dispense del professore potreà essere indicata con $\overrightarrow M$*

Poiché $\overrightarrow L$ è in funzione del tempo segue che: 
$$
\frac{d\overrightarrow L}{dt} = \frac{d}{dt}(\overrightarrow r \times \overrightarrow p) = \dot{\overrightarrow r} \times \overrightarrow p + \overrightarrow r \times \dot{\overrightarrow p} = \underbrace{\overrightarrow v \times m \overrightarrow v}_{=0} + \overrightarrow r \times \frac{d \overrightarrow p}{dt} = \overrightarrow r\times\overrightarrow F = \overrightarrow \tau
$$
Da cui segue direttamente che se $\overrightarrow\tau =0$, allora $\overrightarrow L$ è costante, quindi si preserva

In particolare, nel moto circolare si ha che $\overrightarrow p = mr \dot \theta \overrightarrow u_\theta$, quindi calcolando il prodotto vettoriale si ottiene che $$\overrightarrow L = \overrightarrow r \times \overrightarrow p =r \overrightarrow u_r \times (m r \theta) \overrightarrow u_\theta = mr^2\theta \; \overrightarrow u_r \times \overrightarrow u_\theta$$
>[!def] **Definizione di Momento di Inerzia**
>Si definisce Momento di Inerzia la quantità $$I = m r^2$$che si misura in kilogrammi per metro quadrato $[I]=kg \cdot m^2$

Tutte le informazioni appena scritte possono essere riassunte in questa tabella:

Nome | Moto di Traslazione | Moto di Rotazione
--- | --- |---
Quantità di Moto | $\overrightarrow p = m \overrightarrow  v$ | $\overrightarrow  L = \overrightarrow  r \times \overrightarrow  p$
Evoluzione temporale | $\displaystyle{\frac{d \overrightarrow p}{dt}} = \overrightarrow  F = m\overrightarrow  a$ | $\displaystyle{\frac{d \overrightarrow L}{dt} = \overrightarrow  \tau = \overrightarrow  r \times \overrightarrow F}$
Conservazione | $\overrightarrow  F = 0\Rightarrow \overrightarrow  p$ costante | $\overrightarrow  \tau = 0\Rightarrow \overrightarrow  L$ costante

Un importante risultato di tutto ciò è il **Teorema dell'Energia Cinetica**.

>[!def] **Definizione di Lavoro**
>Sia $\overrightarrow F$ una forza e sia $\gamma(t)$ una traiettoria. Si definisce lavoro della forza lungo la traiettoria $\gamma$ la quantità: $$W = \int_{\gamma(t)} \overrightarrow F \cdot d\overrightarrow  x$$

>[!th]  **Teorema dell'Energia Cinetica**
>Sia $\overrightarrow F$ una forza costante su un corpo di massa $m$, posizione $\overrightarrow x(t)$, velocità $\overrightarrow v(t)$ e accelerazione $\overrightarrow a(t)$.
>Dalla prima legge di Newton segue che Forza e Accelerazione sono collegate tra di loro e attraverso la seconda sappiamo che: $$\overrightarrow F = m \overrightarrow a$$
>Indichiamo con $\gamma(t)$ la traiettoria. Allora calcolando il lavoro si ottiene che nell'intervallo di tempo $[t_A, t_B]$: 
>$$\begin{align*}
>W &= \int_{\gamma(t)} \overrightarrow F\cdot d \overrightarrow x = \int_{\gamma(t)} m\overrightarrow a \cdot d\overrightarrow x = \int_{t_A}^{t_B}m\overrightarrow a \cdot \frac{d\overrightarrow x}{dt}dt = \int_{t_A}^{t_B}m\frac{d^2\overrightarrow x}{dt^2}\cdot \frac{d \overrightarrow x}{dt}
>\end{align*}$$
>Tuttavia, poiché si ha che $$\frac{d^2 \overrightarrow x}{dt^2} \cdot \frac{d\overrightarrow x}{dt} = \frac12\frac{d}{dt}\left(\frac{d\overrightarrow x}{dt}\right)^2$$Si ha che $$W(A,B) = \left[\frac12 m (\overrightarrow v)^2\right]_{t_A}^{t_B}$$
>Questa quantità prende il nome di Energia Cinetica.


Notiamo che se la forza è di tipo conservativo ($\overrightarrow  F = -\overrightarrow  \nabla U$) segue che: $$W(A,B) = \int_{\gamma(t_A)}^{\gamma(t_B)}\overrightarrow F\cdot d\overrightarrow x = -\int\left(\frac{∂U_{x_1}}{∂x_1}d{x_1} + \frac{∂U_{x_2}}{∂x_2}dx_2 + \frac{∂U_{x_3}}{∂x_3}dx_3\right)$$
Questo perché $$U = (U_{x_1}, U_{x_2}, U_{x_3})\Rightarrow dU=\frac{∂U_{x_1}}{∂x_1}d{x_1} + \frac{∂U_{x_2}}{∂x_2}dx_2 + \frac{∂U_{x_3}}{∂x_3}dx_3$$
Quindi otteniamo che: $$W(A,B) = -\int_{U_A}^{U_B}dU = -U(B) + U(A)$$

In conclusione, se $\overrightarrow F$ è gradiente, per le considerazioni precedenti, si ha che $$\frac m2v_B^2 - \frac m2v_A^2 = -U(B)+U(A)\quad\Leftrightarrow\quad \frac m2 v_B^2 + U(B) =\frac m2 V_A^2 + U(A)$$

Questa è la conservazione dell'energia cinetica del campo vettoriale $\overrightarrow F$

***
<div style="page-break-after: always;"></div>

# Elettrostatica

Facciamo un minimo di chimica, per poter comprendere meglio  il tutto.
Prendiamo per esempio una molecola d'acqua.
![[Drawing 2023-10-10 06.25.06.excalidraw | {width = 100%}]]
Gli atomi della molecola sono legati fra loro da forze elettromagnetiche.
A loro volta gli atomi sono formati da nuclei costituito da protoni $p^+$ (carica positiva pari a $1$) e neutroni $n$ (nessuna carica) e da elettroni $e^-$ che ruotano attorno al nucleo (carica negativa pari a $-1$) e sono legati tra loro da altre forze elettromagnetiche.
Il numero dei nucleoni è data dal numero atomico fisso a seconda dell'elemento e dal numero di massa, variabile a secondo dell'isotropo dell'atomo. In particolare con l'ossigeno $O-16$ si ha che $^{16}_8O$ ha numero atomico $8$ e numero di massa $16$.
I nucleoni sono legati insieme da un'altra categoria di forze, definita Forza Nucleare Forte
Mentre l'elettrone è una particella fondamentale (quindi senza struttura interna) possiamo andare a studiare la struttura interna di protoni e neutroni. Infatti, questi sono formati da altre particelle fondamentali chiamate up e down con cariche rispettivamente $\frac 23$ e $-\frac 12$ e sono tenuti insieme dalla forza nucleare forte

Possiamo notare come tutta la fisica che conosciamo è tenuta in piedi da $4$ forze:
	1. Forza di Gravità
	2. Forza Elettromagnetica
	3. Forza Nucleare Forte
	4. Forza Nucleare Debole
Mentre le ultime tre possono essere quantizzate (possono essere descritte da delle particelle a cui si possono associare valori), la forza di gravità (per ora) non ha particelle che ne descrivono il funzionamento

In particolare, sfruttando la teoria dei gruppi, si ha che la fisica così come la conosciamo noi può essere descritta da:
$$\mathcal L(G) = SU_C(3) \times SU_L(2) \times U_Y(1)$$
Noi ci occuperemo di $SU_L(2) \times U_Y(1)$ che si occupa dell'elettro magnetismo e che può essere riscritto come $U_{EM}(1)$

Il moto e le iterazioni di una particella puntiforme è caratterizzata dalla massa $m$ misurata in kilogrammi e dalla carica elettrica $q$ misurata in Coulomb $C$.
La carica elettrica è conservata e quantizzata (cioè è sempre multiplo intero della carica elettrica fondamentale dell'elettrone $q_e$ che è pari a $|q_e| = 1,6\cdot 10^{-19}$, in valore assoluto in quanto la carica è negativa)

Dato un corpo, possiamo definire come $q_+$ la quantità totale di carica positiva mentre $q_-$ la carica totale negativa, allora:
	- se $q_+ = q_-$ il corpo è elettricamente neutro (o non è carico);
	- se $q_+ > q_-$ allora il corpo è carico elettricamente positivo;
	- se $q_+ < q_-$ allora il corpo è carico elettricamente negativo

A seconda di come si comportano con le cariche elettrice, i corpi possono essere definiti come:
	- Conduttori se c'è un'alta percentuale di elettroni non strettamente legati ai nuclei e che siano liberi di muoversi (derivati dei metalli)
	- Isolanti se la quantità di elettroni legati al nucleo è bassa o minima (i derivati dei non-metalli)

Consideriamo due particelle puntiformi cariche. Quando si avvicinano, ciascuna esercita una forza elettromagnetica nei confronti dell'altra e fondamentalmente si osserva che: 

![[Drawing 2023-10-10 07.09.54.excalidraw | {wdith = 100%}]]
	- Quando le cariche sono dello stesso segno allora la forza è repulsiva 
	- Quando le cariche sono di segni opposti, allora la forza è attrattiva

Osserviamo inoltre che la forza è più debole se la distanza tra i due corpi è maggiore

>[!def] **Legge di Coulomb**
>Esiste una legge che definisce la forza elettrostatica tra cariche puntiforme: $$\overrightarrow F = k\frac{q_2\cdot q_1}{r^2} \overrightarrow u_r$$

$k$ è una costante chiamata costante di coulomb e vale quest'uguaglianza: $$k = \frac{1}{4\pi \varepsilon_0} = 8,99\cdot 10^9 \frac{Nm^2}{C^2}$$
dove $\varepsilon _0$ è la costante dielettrica nel vuoto

Se si ha un sistema con più di due particelle allora si ha che: $$\overrightarrow F_{1 ,tot} = \sum_{i = 2}^n \overrightarrow F_{1,i}$$
cioè è la somma vettoriale delle forze delle altre cariche sulla prima.

![[Esempio di Calcolo delle Cariche]]

![[Esercizio di Elettrostatica tipico dell'esame]]

>[!def] **Definizione di Campo Elettrico**
>Consideriamo la legge di Coulomb $$\overrightarrow F_c= k\frac{Qq}{r^2} \overrightarrow u_r$$dove $Q$ è la carica sorgente e $q$ è la carica di prova (con carica positiva)
>Possiamo definire campo elettrico generato dalla sorgente $Q$ la quantità $$\overrightarrow E = k\frac{Q}{r^2}\overrightarrow u_r$$

Le linee di campo sono uscenti se la carica è positiva e sono entranti se la carica è negativa. Inoltre la densità delle linee di campo sono proporzionali all'intensità del campo elettrico.

Sapendo che la risultante delle forze è definita come la somma vettoriale di tutte le forze, per la definizione che abbiamo dato di campo elettrico possiamo dire che: $$\overrightarrow E_{1,tot} = \frac{\overrightarrow F_{1, tot}}{q} = \frac{\sum_{i = 2}^n \overrightarrow F_{1,i}}{q} = \sum_{i = 2}^n \overrightarrow E_{1,i}$$Quindi il Campo Elettrico calcolato in un punto è la somma dei Campi Elettrici generati dalle varie cariche:

>[!th] **Principio di Sovrapposizione**
>$$\overrightarrow E_{1,tot}  = \sum_{i = 2}^n \overrightarrow E_{1,i}$$

**Esercizio**: *Calcolare $\overrightarrow E_p$ generato dalle cariche $Q_1, Q_2, Q_3, Q_4$ in questa configurazione:*
![[Drawing 2023-10-11 06.32.22.excalidraw | center]]

<div style="page-break-after: always;"></div>

>[!def] **Definizione di Dipolo**
>Si definisce dipolo la struttura formata da due particelle con cariche puntiformi di uguali identità $|q|$ e segno opposto, separate da una distanza $2d$

Qualitativamente la struttura del dipolo è: 
![[Drawing 2023-10-11 06.37.44.excalidraw | {width = 100%}]]

Facendo i calcoli espliciti otteniamo che, se poniamo un sistema di riferimento:
![[Drawing 2023-10-11 06.58.17.excalidraw | center]]
Otteniamo che $\overrightarrow E_p(x_p, y_p)= \overrightarrow E_+ +\overrightarrow E_-$ dove $\overrightarrow E_\pm$ sono i campi elettrici generati dalle cariche $\pm|q|$
Otteniamo che: 
$$\begin{align*}
\overrightarrow E_+ &= \frac{k|q|}{r_+^2}\overrightarrow u_{r_+} = \frac{k |q|}{r_+^2}(\cos \theta_2 \overrightarrow u_y + \sin \theta_2 \overrightarrow u_x) & \quad \text{dove } r_+^2 = (x_p+d)^2 + y_p^2\\
\overrightarrow E_- &= \frac{k|q|}{r_-^2}\overrightarrow u_{r_-} = \frac{k |q|}{r_+^2}(\sin \theta_1 \overrightarrow u_x + \cos \theta_1 \overrightarrow u_y) & \quad \text{dove } r_-^2 = (x_p-d)^2 + y_p^2\\
\end{align*}$$
Otteniamo quindi che: 
$$\begin{align*}
\overrightarrow E_p &= \overrightarrow E_+ + \overrightarrow E_-  =\frac{k |q|}{r_+^2}(\cos \theta_2 \overrightarrow u_y + \sin \theta_2 \overrightarrow u_x)+ \frac{k |q|}{r_+^2}(\sin \theta_1 \overrightarrow u_x + \cos \theta_1 \overrightarrow u_y)
\end{align*}$$
Sapendo poi che $\cos \theta_2 = \frac{y_p}{r_+}$, $\sin\theta_2 = \frac{x_p+d}{r_+}$, $\cos \theta_1 = \frac{y_p}{r_-}$ e $\sin\theta_1 = \frac{d-x_p}{r_-}$, otteniamo che:
$$\begin{align*}
\overrightarrow E_p = \frac{k|q|}{r_+^3}(y_p\overrightarrow u_y + (x_p+d)\overrightarrow u_x) + \frac{k|q|}{r_-^3}((d-x)\overrightarrow u_x - y_p\overrightarrow u_y) = k|q|\left(\overrightarrow u_x\left(\frac{x_p + d}{r_+^3} + \frac{x_p-d}{r_-^3}\right) + \overrightarrow u_y\left(\frac{y_p}{r_+^3} -\frac{y_p}{r_-^3}\right)\right)
\end{align*}$$

Questo che abbiamo appena ottenuto è il caso generale.
Facciamo ora delle osservazioni a seconda di dove si trovi il punto $p=(x_p,y_p)$

*Caso del punto lungo la congiungente, $y_p = 0$*
Notiamo che qua non c'è la parte in $y_p$, in quanto è sempre nulla
Andiamo a definire $\sigma_+ = sgn(x_p+d)$ e $\sigma_- = sgn(x_p-d)$, allora segue che:
![[Drawing 2023-10-11 07.23.30.excalidraw|center]]
Allora la formula diventa (sapendo che $r_+^2 = (x_p+d)^2$ e che $r_+^2 = (x_p+d)^2$) 
$$\overrightarrow E_p(y_p = 0) =k|q| \left(\frac{x_p+d}{r_+^3} + \frac{d-x_p}{r_-^3}\right) \overrightarrow u_x = k|q| \left(\frac{x_p+d}{((x_p+d)^2)^{3/2}} + \frac{d-x_p}{((x_p-d)^2)^{3/2}}\right) \overrightarrow u_x = k|q| \left(\frac{\sigma_+}{(x_p+d)^2} - \frac{\sigma_-}{(x_p-d)^2}\right) \overrightarrow u_x $$
Inoltre, se $|x+d|>> |d|$, possiamo sviluppare in serie, con $(1+\alpha)^n = 1+n\alpha + o(\alpha^2)$ per $\alpha \rightarrow 0$:
$$\overrightarrow E_p(y_p = 0)= k|q| \left(\frac{\sigma_+}{(x_p+d)^2} - \frac{\sigma_-}{(x_p-d)^2}\right) \overrightarrow u_x \approx \frac{k|q|}{x_p^2}\left(\frac{\sigma_+}{(1+\frac{d}{x_p})^2} - \frac{\sigma_-}{(1+\frac{d}{x_p})^2}\right)\overrightarrow u_x \approx\frac{k|q|}{x_p^2} \left((\sigma_+-\sigma_-)+ 2\frac d{x_p}(-\sigma_+-\sigma_-)\right)\overrightarrow u_x$$
![[Drawing 2023-10-11 07.58.57.excalidraw| center]]

*Caso del punto sull'asse $x_p = 0$*
Otteniamo allora che $$\overrightarrow E_p(x_p = 0) = k|q| \left(\left(\frac{d}{r_+^3} + \frac{d}{r_-^3}\right) \overrightarrow u_x + y_p\left(\frac{1}{r_+^3} - \frac{1}{r_-^3} \right)\overrightarrow u_y\right)$$
Sapendo che $x_p = 0$ segue che $r_+^2 = r_-^2 = d+y_p^2$, quindi si ha che: 
$$\overrightarrow E_p(x_p = 0) = k|q| \left(\left(\frac{d}{r_+^3} + \frac{d}{r_-^3}\right) \overrightarrow u_x + y_p\left(\frac{1}{r_+^3} - \frac{1}{r_-^3} \right)\overrightarrow u_y\right) = k|q| \frac{2d}{(d^2+y_p^2)}\overrightarrow x$$
![[Drawing 2023-10-11 08.09.14.excalidraw | center]]
Se $y_p >> d$ si ottiene, attraverso la stessa serie, che:
$$\overrightarrow E_p(x_p = 0) = k|q| \frac{2d}{(d^2+y_p^2)}\overrightarrow x = k|q| \frac{2d}{|y_p|^3((1+\frac{d}{y_p})^2)^{3/2}}\overrightarrow u_x \approx \frac{2l|q|d}{|y_p|^3}\left(1-\frac 32\left(\frac{d}{y_p}\right)^2 + \cdots\right) \approx \frac{2k|q|d}{|y_p|^3}$$

***
<div style="page-break-after: always;"></div>

## Distribuzioni Continue di Carica
Con la legge di Coulomb (per le cariche puntiformi) e per il principio di sovrapposizione (per più cariche), possiamo calcolare il campo elettrico $\overrightarrow E$ per una distribuzione continua di carica caratterizzata da una densità di carica:
	- lineare $\lambda = \frac{dq}{d\ell}$ misurata in $[\lambda] = C/m$
	- superficiale $\sigma = \frac{dq}{dS}$ misurata in $[\sigma] = C/m^2$
	- volumica $\rho = \frac{dq}{dV}$ misurata in $[\rho] = C/m^3$
In generale sono tutte applicazioni in funzione delle coordinate, quindi $\lambda = \lambda(x)$, $\sigma = \sigma(x)$ e $\rho = \rho(x)$, però spesso per comodità possiamo *assumere* che siano costanti. In tal caso diremo che sono distribuzioni uniformi di carica

![[Drawing 2023-10-11 08.22.29.excalidraw|center]]

Possiamo considerare il filo come un numero infinito di cariche poste vicine tra loro, quindi al posto di sommarle, possiamo integrarle. In generale si ha che $$\overrightarrow E = \int_{\ell} d \overrightarrow E = \int_\ell \frac{1}{4\pi \varepsilon_0} \frac{dq(\overrightarrow r)}{r^2} \overrightarrow u_r$$

![[Calcolo del Campo Elettrico per un Filo Infinito]]

>[!def] **Definizione di Spira Circolare**
>Si definisce spira circolare un anello di raggio $R$ e con carica uniforme lineare $\lambda$

![[Calcolo del Campo Elettrico per una Spira Circolare]]

**IMPORTANTE**: Per quando si fanno gli esercizi, è importante fare il disegno, in quanto un disegno fatto bene è già metà del lavoro.

>[!def] **Definizione di Disco Pieno**
>Si definisce Disco Pieno Carico elettricamente, una superficie circolare di raggio $R$ e con carica uniforme $\sigma$

![[Calcolo del Campo Elettrico per un Disco Pieno]]

>[!def] **Definizione di Piano Infinito**
>Un piano infinito può essere interpretato come un disco di raggio infinito.

Data questa definizione, si può definire il campo elettrico per un piano infinito come: $$\overrightarrow E = \lim_{R \rightarrow \infty}\frac{\sigma}{2 \varepsilon_0}\left(1-\frac{z}{\sqrt{R^2 + z^2}}\right)\overrightarrow u_z$$
Cioè, calcolando il limite: $$\fbox{$\overrightarrow E = \frac{\sigma}{2 \varepsilon_0} \overrightarrow u_z$}$$

>[!def] **Definizione di Condensatore Piano**
>Si definisce un condensatore piano un sistema costituito da due piani infiniti con carica $+\sigma$ e $-\sigma$ separati da distanza $d$.

![[Drawing 2023-10-17 07.42.11.excalidraw | center]]
Ogni piano del condensatore prende il nome di armatura del condensatore
Quindi il campo elettrico nel condensatore vale $$\fbox{$\overrightarrow E = \begin{cases}\frac{\sigma}{\varepsilon_0}(-\overrightarrow u_z) & \text{se il punto è posizionato tra le due armature}\\ 0 & \text{altrimenti}\end{cases}$}$$

>[!def] **Definizione di Guscio Sferico**
>È una superficie sferica di raggio $\rho$ e densità superficiale uniforme $\sigma$

<div style="page-break-after: always;"></div>

![[Calcolo del Campo Elettrico per il Guscio Sferico - Caso Esterno]]

<div style="page-break-after: always;"></div>

>[!th]  **Primo Teorema del Guscio Sferico**
>Se la carica è distribuita in modo uniforme su un guscio sferico e il punto nello spazio che subisce il campo elettrico generato dal guscio è situato all'esterno del guscio stesso, allora vale la seguente formula: 
>$$\overrightarrow E = \frac{Q_{tot}}{4 \pi \varepsilon_0}\frac{1}{(\rho + d)^2}$$
>Ed è come se la carica fosse tutta concentrata in un unico punto posto al centro del guscio.

![[Calcolo del Campo Elettrico per il Guscio Sferico - Caso Interno]]

>[!th]  **Secondo Teorema del Guscio Sferico**
>Se la carica è distribuita in modo uniforme su un guscio sferico e il punto nello spazio che subisce il campo elettrico generato dal guscio è situato all'interno del guscio stesso, allora il campo elettrico è nullo

***


## Legge di Gauss

>[!def] **Definizione di Flusso**
>Si definisce Flusso di un campo vettoriale (l'elettrico $\overrightarrow E$ nel nostro caso) attraverso una superficie $S$ l'integrale: $$\Phi = \int_S \overrightarrow E \cdot d\overrightarrow S = \int_S \overrightarrow E \cdot \overrightarrow n \;dS$$Dove $\overrightarrow n$ è il vettore normale di $S$, orientato verso l'estenro.
>Inoltre, se $S$ è una superficie chiusa abbiamo che $$\Phi = \oint _S \overrightarrow E \cdot d \overrightarrow S$$

Calcoliamo la legge di Gauss per la carica puntiforme.
Dalla legge di Coulomb, sappiamo che il campo elettrico generato dalla carica puntiforme è uguale a: $$\overrightarrow E = \frac{1}{4 \pi \varepsilon_0} \frac{q}{\|r\|^2 \overrightarrow u_r}$$
*Notiamo che se prendiamo un sistema di riferimento sferico $(r, \theta, \phi)$, il campo elettrico dipende solamente dalla distanza del punto dalla carica, e non da $\phi$ e $\theta$*
Per Calcolare il flusso possiamo considerare una superficie sferica, centrata in $q$ e passante per il punto $P$
![[Drawing 2023-10-18 07.03.53.excalidraw| center]]

Andando a calcolare l'integrale della definizione, sfruttando il fatto che sia $\overrightarrow E$, sia $\overrightarrow n$ sono radiali, otteniamo che: 
$$\begin{align*}
\Phi = \oint_S \overrightarrow E \cdot d\overrightarrow S = \oint_S \|\overrightarrow E\|\; \overrightarrow u_r \cdot \overrightarrow u_z\; dS = \oint_S \| \overrightarrow E\| r^2 \sin \theta \; d\theta \; d\phi = \int_S \frac{1}{4\pi \varepsilon_0} \frac{q}{r^2} r^2 \sin \theta \; d\theta\; d\phi = \frac{q}{4 \pi \varepsilon_0}\int_0^\pi \sin \theta d \theta \int_0^{2\pi}d \theta = \frac q{\varepsilon_0}
\end{align*}$$
Quindi abbiamo che: $$\fbox{$\Phi = \frac q {\varepsilon_0}$}$$
Abbiamo che questo risultato vale per ogni superficie al suo interno e con ogni carica, anche non puntiforme.

*Perché tutto questo funziona?*
In una sfera assumiamola distanza $r$ come costante, in una qualsiasi superficie dipende da $\phi$ e da $\theta$
Inoltre, sfruttando la distribuzione di carica e il principio di sovrapposizione abbiamo che: $$\fbox{$\Phi =\oint_S \overrightarrow E \cdot d\overrightarrow S= \frac {Q_{int}} {\varepsilon_0}$}$$
Infatti, se consideriamo $Q_{int}$ come la carica all'interno della superficie e sia $d \overrightarrow E$ il campo elettrico generato dalla carica puntiforme $dq$ $$\oint_S d\overrightarrow E \cdot dS = \frac{dq}{\varepsilon_0}$$
Dobbiamo integrare lungo la distribuzione di carica, quindi si ha che: 
$$\int_{Carica} \left(\oint_S d \overrightarrow E \cdot d \overrightarrow S\right) = \int_{Carica}\frac{dq}{\varepsilon_0} = \frac{Q_{int}}{\varepsilon_0}$$
Poiché sono indipendenti, posso invertirli: $$\oint_S\left(\int_{Carica} d \overrightarrow E\right) \cdot d\overrightarrow S = \oint_S \overrightarrow E \cdot d\overrightarrow S = \frac{Q_{int}}{\varepsilon_0}$$

![[Esempio del Calcolo del campo elettrico con Gauss]]


<div style="page-break-after: always;"></div>


Vediamo adesso i casi che abbiamo trattato precedentemente sfruttando il teorema di Gauss

![[Calcolo del Campo Elettrico per un Filo Infinito - con Gauss]]

![[Calcolo del Campo Elettrico per un Piano Infinito - con Gauss]]

### Simmetria Sferica
Andiamo ora ad osservare dei casi particolari in cui si può sfruttare la simmetria sferica

![[Caso Guscio Sferico Uniformemente Carico]]

![[Caso Due Gusci Sferici con due raggi diversi con cariche diverse concentrici]]

![[Caso della Sfera Piena con Densità di Carica Costante]]

### Simmetria Cilindrica

Passiamo ora ad osservare nei casi in cui si può utilizzare un sistema cilindrico

![[Caso del Guscio Cilindrico in finito con densità di carica infinita]]

![[Caso di due gusci cilindrici concentrici]] 

***
<div style="page-break-after: always;"></div>

## Conduttore Carico Isolato
Cerchiamo di capire come si comporta quando ad un corpo conduttore (i cui elettroni sono liberi di muoversi) e isolato (gli elettroni non hanno modo di spostarsi da un corpo all'altro) viene data una carica 

Intanto notiamo che se il conduttore è isolato, allora $\overrightarrow E$ è nullo all'interno. Se così non fosse si produrrebbero delle correnti elettriche (infatti se il campo elettrico non fosse nullo, ci sarebbe una una forza di Coulomb applicata a tutti gli elettroni e per la legge di Newton c'è un'accelerazione).
$$\overrightarrow E≠0 \Rightarrow \exists \overrightarrow F_c = c\overrightarrow E = m_e \overrightarrow a$$

In un corpo conduttore con una certa quantità di carica si ha che:
	- La carica sarà solo sulla superficie del conduttore
	- $\overrightarrow E$ è nullo al suo interno per Gauss
	- La densità di carica è maggiore nelle zone di maggior curvatura
	- $\overrightarrow E$ vicino alla superficie è ortogonale alla superficie 

Infatti se l'ultima proprietà non fosse valida avremmo che il campo elettrico sarebbe formato da due componenti, una tangenziale e una ortogonale alla superficie, ma se quella tangenziale non fosse nulla, allora si avrebbero delle correnti elettriche contro il fatto che non ci sono correnti elettriche.

Abbiamo inoltre che dove c'è maggior curvatura, il campo elettrico è più intenso in quanto ci sono più linee di campo che attraverso la superficie gaussiana e quindi $\sigma$ è maggiore. Infatti dalla legge di Gauss abbiamo visto che: 

![[Drawing 2023-10-24 13.12.23.excalidraw | center]]

Se abbiamo, invece, un conduttore con una cavità, il fatto che $\overrightarrow E$ si annullare al suo interno, quindi la carica non si può distribuire sulla superficie della cavità: $$\oint_S \overrightarrow E \cdot d \overrightarrow S = 0$$Questo perché appunto il campo elettrico deve essere nullo.
Ma se questo è nullo allora, per Gauss $$\frac{Q_{int}}{\varepsilon_0}=0$$
Quindi non c'è carica su quella superficie

Se all'interno della cavità invece ci fosse una carica puntiforme $Q$, allora, poiché il campo elettrico deve essere nullo all'interno, si ha che sulla superficie attorno alla carica $Q$ è posta una carica $-Q$
Infatti per Gauss si ha che: 
$$\oint_S \overrightarrow E \cdot d \overrightarrow S = 0 \Rightarrow \frac{Q_{int}}{\varepsilon_0} = \frac{Q_{sup} + Q}{\varepsilon_0} = 0\Rightarrow Q_{sup} = -Q$$

![[Drawing 2023-10-24 14.37.36.excalidraw | center]]

****

## Moto di una Carica in un Campo Elettrostatico 

Andiamo adesso a studiare come si comporta una carica puntiforme, con carica $q$ e massa $m$ in una regione dello spazio con un campo elettrico costante.
Sappiamo che vale la legge di Coulomb $$\overrightarrow F_e = q \overrightarrow E$$
In assenza di altre forze e sfruttando il secondo principio della dinamica, otteniamo che: $$\overrightarrow F_e = \overrightarrow F_{ma} = m \overrightarrow a \quad \Leftrightarrow  \quad \overrightarrow a = \frac{q \overrightarrow E}{m}$$
Tuttavia, sapendo che l'accelerazione è la derivata seconda della posizione, abbiamo che $$\frac{d^2 \overrightarrow x}{dt^2} = \frac{q \overrightarrow E}{m}$$
Esplicitando le coordinate cartesiane abbiamo che: 
$$\overrightarrow x = (x \overrightarrow u_x, y \overrightarrow u_z, z \overrightarrow u_z) = (x(t), y(t), z(t)) \quad \Rightarrow \quad \overrightarrow E = (E_x\overrightarrow u_x, E_y \overrightarrow u_y, E_z \overrightarrow u_z)$$
Quindi per $x$ (la cosa è analoga anche per le altre dimensioni) possiamo integrare su $t$ e otteniamo che: 
$$a_x(t) = \frac{d^2 x}{dt^2} = \frac{q}{m}E_x \quad \Rightarrow \quad v_x(t)  = \frac{dx}{dt} = \frac{q}{m}E_x t + v_{0,x} \quad \Rightarrow \quad x(t) = \frac qm E_x \frac{t^2}{2} + v_{0,x}t + x_0$$
Dove $v_{o,t}$ è la velocità lungo l'asse $x$ della carica all'istante $t = 0$, mentre $x_0$ è la posizione della carica sull'asse $x$ all'istante $t = 0$
Rispetto alle altre variabili otteniamo che: $$y(t) = \frac qm E_y \frac{t^2}{2} + v_{0,y}t + y_0 \qquad \text e \qquad z(t) = \frac qm E_z \frac{t^2}{2} + v_{0,z}t + z_0$$

![[Esempio del Tubo di Raggi Catodici]]

Prima di andare avanti con il prossimo esperimento, diamo la definizione di velocità terminale: 
>[!def] **Definizione di Velocità Terminale**
>Si definisce Velocità Terminale il valore della velocità quando l'accelerazione si stabilizza (diventa costante)

![[Determinazione Sperimentale della carica elementare]]

<div style="page-break-after: always;"></div>

# Potenziale Elettrico
Sappiamo dalla parte iniziale che un campo vettoriale $\overrightarrow F$ è di tipo conservativo se e solo se è di tipo vettoriale, cioè esiste un campo scalare $U$ tale che: $$\overrightarrow F = -\nabla U$$ cioè se e solo se $$\int_\gamma \overrightarrow F \cdot d\overrightarrow \ell$$ dipende esclusivamente dalla posizione iniziale e dalla posizione finale.
In particolare, essendo il campo conservativo, vale il teorema dell'energia cinetica quindi c'è una conservazione dell'energia totale ed in particolare si ha che: $$E_{tot} = E_{cin} + U = \frac 12 mv^2 + U(x,y,z) = Costante$$

Andiamo meglio nel dettaglio.
Sia $c \in \mathbb R$ una costante e sia la forza $\overrightarrow F$ definita come: $$\overrightarrow F = \frac c{r^2} \overrightarrow u_r$$
Sia $\gamma_{A,B}$ una curva tra $A$ e $B$ definita nel seguente modo: $$\gamma(s) = (x_\gamma(s), y_\gamma(s), z_\gamma(s))$$
Allora possiamo calcolare la variazione infinitesima di spostamento come: $$d \overrightarrow \ell = (\dot x_\gamma, \dot y_\gamma, \dot z_\gamma)ds\qquad \text{con }\dot \alpha_\gamma = \frac{d\alpha}{ds}\quad \alpha \in \{x,y,z\}$$
Quindi, andando a calcolare l'integrale e sfruttando le coordinate polari,. si ottiene che: $$\begin{align*}\int_\gamma \overrightarrow F\cdot d\overrightarrow \ell &= \int_\gamma \frac{c}{r^2} \overrightarrow u_r(\dot x_\gamma, \dot y_\gamma, \dot z_\gamma)ds
\end{align*}$$
Tuttavia, sapendo che $\overrightarrow u_r = (\sin \theta \cos \phi, \sin \theta \sin \phi, \cos \theta)$ si ottiene che: $$\int_\gamma \overrightarrow F\cdot d\overrightarrow \ell = \int_\gamma \frac{c}{r^2} \overrightarrow u_r(\dot x_\gamma, \dot y_\gamma, \dot z_\gamma)ds = \int_\gamma \frac{c}{r^2}(\sin \theta \cos \phi\; \dot x_\gamma+ \sin \theta \sin \phi\; \dot y_\gamma+ \cos \theta \dot z_\gamma)ds$$
Sempre sfruttando le coordinate polari possiamo porre: $$\begin{cases}x_\gamma = r \sin \theta \cos \phi\\ y_\gamma = r \sin \theta \sin\phi\\ z_\gamma = r \cos \theta\end{cases} \qquad \Rightarrow\qquad (\sin \theta \cos \phi\; \dot x_\gamma+ \sin \theta \sin \phi\; \dot y_\gamma+ \cos \theta \dot z_\gamma)\equiv \frac{dr}{ds} = \dot r$$
Da cui otteniamo che: $$\int_\gamma \overrightarrow F\cdot d\overrightarrow \ell = \int_\gamma \frac{c}{r^2}(\sin \theta \cos \phi\; \dot x_\gamma+ \sin \theta \sin \phi\; \dot y_\gamma+ \cos \theta \dot z_\gamma)ds = \int_\gamma \frac{c}{r^2}\dot r\; ds = \int_{r(A)}^{r(B)}\frac{c}{r^2}dr = \left.-\frac{c}{r}\right|_{r(A)}^{r(B)} = \frac{c}{r(A)}-\frac{c}{r(B)}$$

Abbiamo quindi che l'energia potenziale associata al campo $\overrightarrow F$ è: $$U = -\frac{c}{r}$$

Per ottenere il potenziale per la forza di Coulomb ci basterà sostituire $c = kq_1q_2$

<div style="page-break-after: always;"></div>

>[!def] **Definizione di Energia Potenziale Elettrica**
>Data una forza elettrica $\overrightarrow F_e$, si definisce energia potenziale elettrica la quantità: $$U = - k\frac{q_1q_2}{r}$$
>Si misura in $[U] = J$, ossia in Joule.

Sapendo poi che $$\overrightarrow E = \frac{\overrightarrow F}{q}$$ abbiamo poi che, per ogni $\ell$ curva chiusa si ha che: $$\oint_\ell \overrightarrow E \cdot d \overrightarrow \ell = 0$$
Quindi $\overrightarrow E$ è conservativo, quindi esiste un campo scalare $V$ tale che: $$\overrightarrow E  = -\nabla V$$

>[!def] **Definizione di Potenziale Elettrico**
>Dato un campo elettrico $\overrightarrow E$ si definisce potenziale elettrico la quantità: $$V = \frac{U}{q}$$
>Si misura in $[V] = \frac{J}{C}\equiv V$ ossia in Volt

Già da queste osservazioni possiamo ricavare la seconda equazione di Maxwell.

>[!th]  **Seconda Legge di Maxwell**
>$$\oint_\ell \overrightarrow E \cdot d\overrightarrow \ell = 0$$

Per la carica puntiforme abbiamo che il potenziale elettrico vale: $$\fbox{$V = \frac{-kq}{r}+c$}$$

### Simmetria Sferica

Come per il campo elettrico, andiamo a sfruttare la simmetrica sferica per ottenere delle leggi per il potenziale elettrico.

![[Potenziale per il Guscio Sferico]]

*Da adesso in poi i passaggi saranno molto più sintetici, in quanto il procedimento è lo stesso di quello precedente*

![[Potenziale per il Condensatore Sferico]]

![[Potenziale per la Sfera Piena]]

### Simmetria Cilindrica

Passiamo ora ai sistemi in cui si può sfruttare la simmetria delle coordinate cilindriche

![[Potenziale per il Guscio Cilindrico]]

![[Potenziale per il Condensatore Cilindrico]]

![[Potenziale per il Filo Rettilineo Infinito]]

![[Potenziale per il Cilindro Pieno]]

![[Potenziale per il Piano Infinito]]

![[Potenziale per il Condensatore Piano]]

## Energia Potenziale in Sistemi di Particelle

In un sistema di due particelle è facile calcolare l'energia potenziale, infatti vale: $$U = k \frac{q_1q_2}{r}$$
In un sistema di $n$ particelle invece vale: $$U_{tot} = \sum^n_{i,j = 1\;:\;i<j} k\frac{q_iq_j}{r_{i,j}} = \frac 12 \sum_{i,j = 1}^n k \frac{q_iq_j}{r_{i,j}}$$

![[Esempio con 3 particelle cariche]]

![[Esempio del Calcolo della Velocità di Fuga]]

****
<div style="page-break-after: always;"></div>

# Capacità, Resistenza, Potenza e Circuiti Elettrici

**Osservazione**: Il potenziale di un conduttore o di un condensatore è sempre proporzionale alla carica: $$V \propto q$$E questo vale in generale

>[!def] **Definizione di Capacità**
>Definiamo la capacità di un conduttore come la costante che lega Carica e Potenziale: $$C = \frac QV \qquad \Leftrightarrow \qquad CV = Q$$
> *Va sottolineato che con $V$ intendiamo la differenza di potenziale tra due punti fissati, non il potenziale in sé per sé*

**Osservazione**: $C$ dipende soltanto dalla geometria del conduttore.

![[Capacità in un Conduttore Sferico]]

![[Capacità in un Condensatore Piano]]

![[Capacità in un Condensatore Sferico]]

![[Capacità in un Condensatore Cilindrico]]

<div style="page-break-after: always;"></div>

>[!def] **Definizione di Corrente Elettrica**
>Consideriamo un conduttore di lunghezza $L$ e spessore $S$ sottoposto ad una differenza di potenziale $V$: $$V≠0 \quad\Rightarrow \quad \overrightarrow E≠0 \quad \Rightarrow \quad \exists \overrightarrow F_c=q \overrightarrow E = -|e^-|\overrightarrow E$$
>Esiste quindi un flusso di carica negativa da $B$ a $A$ (quindi c'è un flusso di carica positiva da $A$ a $B$).
>Possiamo chiamare questo flusso come intensità di corrente.
>La corrente elettrica è caratterizzata da un'intensità di corrente $$i = I = \frac{dq}{dt}$$
>Dove $I$ (indifferentemente $i$) rappresenta la quantità di carica per unità di tempo che attraversa la sezione $S$ del conduttore
>Si misura in $[I] = C/s = A$  = Ampère

![[Drawing 2023-11-07 07.17.26.excalidraw | center]]

Dal principio di conservazione della carica segue che la corrente elettrica è la stessa in una qualunque sezione ortogonale al flusso del filo, in particolare $I_1 = I_2$

![[Drawing 2023-11-07 07.25.47.excalidraw|center]]

La conservazione ci dice anche che la somma algebrica delle intensità di corrente è nulla: 

![[Drawing 2023-11-07 07.30.00.excalidraw | center]]

<div style="page-break-after: always;"></div>

>[!def] **Definizione di Resistenza Elettrica**
>Il moto dei portatori di corrente all'interno di un conduttore è condizionato dagli ioni del reticolo che creano resistenza a questo moto.  Gli elettroni persono quindi energia e tendono a muoversi a veloctà costante

Per molti conduttori c'è una proporzionalità tra la differenza di potenziale e l'intensità di corrente e vale: $$\fbox{$V = R\cdot I$}$$
*Quetsa è la prima legge di Ohm*
Risolvendo per la resistenza otteniamo che: $$R = \frac VI$$
La resistenza si misura in $[R] = \frac VA = \ohm$ Ohm
*Proprio per questo motivo, i conduttori che hanno questa proprietà si dicono Ohmici*

Possiamo andare a vedere il cambio dell'energia potenziale quando una carica $dq$ passa da una regione con potenziale $V_A$ ad una regione con potenziale $V_B$
In particolare, se prendiamo una carica infinitesimale $dq$ e sapendo che $V = \frac U{dq}$ otteniamo che: $$dU = Vdq = \frac{dq}{dt}Vdt= IVdt \quad\Rightarrow \quad \frac{dV}{dt} = IV$$

>[!def] **Definizione di Potenza**
>Si definisce potenza la quantità $$P = \frac{dV}{dt} = IV$$
>La potenza si misura in $[P] = J/s = W$ Watt

Nel caso particolare dei conduttoro Ohmici abbiamo che: $$P = RI^2 = \frac{V^2}{R}$$
Abbiamo che la potenza è l'energia dissipata come calore

>[!def] **Definizione di Circuito**
>Il circuito è un insieme di componenti connessi tra di loro da fili elettrici in un percorso chiuso in cui la corrente può fluire con continuità

Andiamo a vedere come spesso sono rappresentati in forma grafica: 

![[Drawing 2023-11-07 08.07.25.excalidraw | width = 100%]]

>[!def] **Definizione di Elementi in Serie**
>Si dice che due componenti in un circuito sono collegati in serie se la corrente che le attraversa è la stessa: $$I_A = I_B$$

>[!def] **Definizione di Elementi in Parallelo**
>Due componenti sono collegati in parallelo se la differenza di potenziale tra i loro capi è la stessa: $V_A = V_b$

Andiamo a vedere adesso nel dettaglio i vari componenti di un cirtcuito

## Conduttore

![[Drawing 2023-11-07 08.24.50.excalidraw | 100%]]

Se noi abbiamo due capi di un circuito con una differenza di potenziale ai capi del circuito abbiamo che: 

![[Drawing 2023-11-07 08.33.41.excalidraw | center]]

Se $V_A > V_B$, allora la corrente fluisce da $A$ a $B$
Se $V_B > V_A$, allora la corrente fluisce da $B$ a $A$

## Pile / Batterie / Generatore

![[Drawing 2023-11-07 08.37.15.excalidraw | center]]

## Condensatore

>[!def] **Definizione di Condensatore**
>Il condensatore è un dispositivo che permette di creare $\|\overrightarrow E\|$ al suo interno.
>Inoltre, se le armature sono collegate ad un generatore, quindi hanno differenza di potenziale, si ha che vale: $$Q = CV$$

Andiamo a vedere come si comportano quando sono collegate in serie e in parallelo

### In Serie
![[Drawing 2023-11-08 06.21.13.excalidraw | 100%]]
Visto che i condensatori sono in serie, abbiamo che $$V_1 + V_2 = V \qquad \text e \qquad I = I_1 = I_2$$
Sapendo poi che $I = dQ/dt$ abbiamo che: $$\frac{dQ_1}{dt} = \frac{dQ_2}{dt} \quad \Rightarrow \quad Q_1 = Q_2$$
Visto che $Q_i = C_i V_i$ con $i \in \{1,2\}$ abbiamo che: $$\begin{cases}Q_1 = C_1V_1\\ Q_2 = C_2V_2\end{cases} \quad \Rightarrow \quad \begin{cases}V_1 = \frac{Q_1}{C_1}\\ V_2 = \frac{Q_2}{C_2}\end{cases}$$
Abbiamo anche che $V = V_1 + V_2$ da cui otteniamo che: $$V = V_1 + V_2 = \frac{Q_1}{C_1} + \frac{Q_2}{C_2} \xRightarrow{Q_1 = Q_2 = Q} V = Q\left(\frac 1{C_1} + \frac{1}{C_2}\right)$$
Possiamo definire Capacità equivalente dei condensatori in serie la quantità: $$\frac{1}{C_{eq}} = \frac 1{C_1} + \frac 1{C_2} \quad \Rightarrow \quad \fbox{$C_{eq} = \frac{C_1C_2}{C_1+C_2}$}$$
In generale, per $n$ cariche in serie abbiamo che la capacità equivalente vale: $$\fbox{$\frac 1{C_{eq}} = \sum_{i = 1}^n \frac 1{C_i}$}$$
### In Parallelo
![[Drawing 2023-11-08 06.37.38.excalidraw | 100%]]
Visto che i condensatori sono in parallelo abbiamo che: $$V = V_1 = V_2 \qquad \text e \qquad I = I_1 + I_2$$
Dalla definizione che abbiamo dato della capacità segue che: $$\begin{cases}Q_1 = C_1 V_1 = C_1 V\\ Q_2 = C_2 V_2 = C_2 V\end{cases}$$
Inoltre, sapendo che l'intensità di corrente è la derivata prima della quantità di carica rispetto al tempo, segue che: $$I = I_1 + I_2 \quad \Rightarrow \quad Q = Q_1 + Q_2 = C_1 V + C_2 V  = V(C_1 + C_2)$$
In questo caso possiamo chiamare capacità equivalente la quantità: $$\fbox{$C_{eq} = C_1 + C_2$}$$
In generale, per $n$ condensatori in parallelo, abbiamo che: $$\fbox{$C_{eq} = \sum_{i = 1}^n C_i$}$$

## Resistenza
Se ai capi di un conduttore con resistenza non trascurabile passa della corrente, allora lo fa con la seguente formulazione: $$I = \frac VR$$
Andiamo a veedere come si comportano le resistenze quando sono collegate in serie o in parallelo

### In Serie
![[Drawing 2023-11-08 06.49.00.excalidraw | 100%]]
Visto che le resistenze sono collegate in serie abbiamo che:  $$V_1 + V_2 = V \qquad \text e \qquad I = I_1 = I_2$$
Dalla prima legge di Ohm abbiamo che: $$I = \frac VR \qquad \Rightarrow \qquad I_1 = \frac{V_1}{R_1} \quad\text e \quad I_2 = \frac{V_2}{R_2}$$Da queste uguaglianze otteniamo che: $$V = R_1 I_1 + R_2 I_2 \quad \Rightarrow \quad V = I(R_1 + R_2)$$
Possiamo definire la Resistenza Equivalente del circuito la quantità: $$\fbox{$R_{eq} = R_1 + R_2$}$$
In generale, per $n$ resistenze poste in serie, abbiamo che: $$\fbox{$R_{eq} = \sum_{i = 1}^n R_i$}$$

### In Parallelo
![[Drawing 2023-11-08 06.58.01.excalidraw | 100%]]
Visto che le resistenze sono in parallelo abbiamo che: $$V = V_1 = V_2 \qquad \text e \qquad I = I_1 + I_2$$
Dalla prima legge di Ohm otteniamo che: $$R = \frac VI \quad \Rightarrow \quad \begin{cases}R_1 = \frac{V_1}{I_1}\\ R_2 = \frac{V_2}{I_2}\end{cases}$$
Quindi, dal fatto che sono collegati in parallelo, abbiamo che: $$I = I_1 + I_2 = \frac{V_1}{R_1} + \frac{V_2}{R_2} = V\left(\frac 1{R_1} + \frac 1{R_2}\right)$$
Da ciò possiamo definire la Resistenza Equivalente come: $$\fbox{$R_{eq} = \frac 1{R_1} + \frac 1{R_2} = \frac{R_1R_2}{R_1+R_2}$}$$

## Circuito RC

>[!def] **Definizione di Circuito RC**
>Il Circuito RC è un particolare circuito in cui sono presenti una resistenza, un condensatore e un interruttore collegati in serie.

![[Drawing 2023-11-08 07.25.49.excalidraw | center]]

Il nostro obiettivo è quello di studiare l'evoluzione temporale della carica $Q(t)$ e dell'intensità di corrente $I(t)$
Dalla legge di Ohm e dalla definizione di Capacità abbiamo che: $$R = \frac{V_R}{I_R}\qquad \text e \qquad Q = CV_C$$
Mettendo tutto insieme otteniamo che vale: $$V_P = RI_C + \frac QC$$
Mettendo insieme inoltre che l'intensità di corrente è la derivata prima della carica rispetto al tempo, otteniamo che: $$\fbox{$\frac{dQ(t)}{dt} = - \frac{Q(t)}{RC} + \frac {V_P}R$}$$
Risolviamo quest'equazione differenziale per la carica in funzione del tempo $Q(t)$
$$\frac{dQ(t)}{dt} = - \frac{Q(t)}{RC} + \frac {V_P}R \qquad \Rightarrow \qquad \frac{dQ}{dt} = -\frac{1}{RC}(Q-V_PC)$$
Definiamo $\tilde Q = Q-V_PC$. Sapendo che $V_PC$ è costante, $\tilde Q$ e $Q$ distano solo di una costante, quindi otteniamo che: $$\frac{d \tilde Q}{dt} = \frac{dQ}{dt} \quad \Rightarrow \quad \frac{d \tilde Q}{dt} = -\frac 1{RC}\tilde Q$$
Adesso possiamo integrare per ottenere un'equazione che non richieda le derivate: $$\int_{\tilde Q(t_0)}^{\tilde Q(t)} \frac {d\tilde Q}{\tilde Q} =  -\int_{t_0}^t \frac{dt}{RC}$$
Andando avanti a sviluppare otteniamo che: 
$$\int_{\tilde Q(t_0)}^{\tilde Q(t)} \frac {d\tilde Q}{\tilde Q} =  -\int_{t_0}^t \frac{dt}{RC} \Rightarrow \log\left(\frac{\tilde Q(t)}{\tilde Q(t_0)}\right) = -\frac{t-t_0}{RC} \Rightarrow \tilde Q(t) = \tilde Q(t_0)e^{-\frac{t-t_0}{RC}} \Rightarrow Q(t)-V_PC = (Q(t_0)-V_PC)e^{-\frac{1}{RC}(t-t_0)}$$
Ponendo $Q(t_0) = 0$ otteniamo che la soluzione diventa: $$\fbox{$Q(t) = V_PC\left(1- e^{-\frac{1}{RC}(t-t_0)}\right)$}$$

Poniamo $\tau \equiv RC$ e diamo la seguente caratterizzazione dei circuiti RC:+
>[!def] **Definizione di Circuito a Regime**
>Un circuito si dice a Regime quando il tempo è molto maggiore di $\tau$, ossia quando: $$t >> \tau \equiv RC$$

Graficamente abbiamo che: 
![[Drawing 2023-11-08 07.52.41.excalidraw | 100%]]

![[Esempio della Risoluzione di un Circuito con Resistenze]]

****
<div style="page-break-after: always;"></div>

# Energia Immagazzinata in un Campo Elettrico

Per caricare un conduttore o un condensatore, un agente esterno deve compiere lavoro (c'è un costo energetico del processo di carica)

Supponiamo di avere una situazione iniziale in cui abbiamo un corpo con carica $q$ e supponiamo di avere una carica infinitesima $dq$ posta all'infinito rispetto alla carica $q$: 
![[Drawing 2023-11-08 14.05.17.excalidraw | center]]

Possiamo definire allora l'energia iniziale del sistema come: $$E_i = U_{cond} + U_{dq}$$
Tuttavia, per costruzione, abbiamo che $U_{dq} = 0$

Vogliamo arrivare ad un sistema in cui si ha che la carica grande $q$ e la carica infinitesima $dq$ sono unite insieme, cioè: $$E_f = U_{cond}(q) + U_{cond}(dq) = U_{cond}(q) + V(q)dq$$
Dove $V(q)$ è il potenziale generato dal conduttore.
Adesso non ci resta da integrare per ottenere il costo dell'energia totale: $$E = \int_0^{E(q)}dE$$
Sfruttando il fato che: $dE = E_f - E := V(q)dq$ otteniamo che: $$E = \int_0^{E(q)}dE = \int_0^q V(q)dq$$
Andando a sfruttare il fatto che $Q = CV$ otteniamo che: $$\int_0^Q \frac{qdq}{C} = \frac{Q^2}{2C}$$
Quindi l'energia potenziale elettrica immagazzinata dal conduttore è: $$E = \frac{Q^2}{2c} = \frac 12 CV^2$$

![[Energia Immagazzinata in un Condensatore Piano]]

In generale, dove c'è un campo elettrico c'è una densità di Energia del campo elettrico: $$\fbox{$\rho_E = \frac{\| \overrightarrow E \|}{2}\varepsilon_0$}$$

![[Ensergia Immagazzinata in un Condensatore Sferico]]

****

<div style="page-break-after: always;"></div>

# Fondamenti Magnetici e Campo Magnetico
*Mentre l'origine della parte elettrostatica deriva da una carica elettrica $q≠0$, non possiamo dire la stessa cosa per il magnetismo, perché una vera e propria "carica magnetica" non è mai stata trovata. La prima scoperta di megnetismo deriva dalla scoperta di certe rocce (magnetite) a contatto con il ferro*

In generale il campo magnetico è generato da due tipi di sorgenti: 
- *Magneti Permanenti* con un campo magnetico intrinseco dovuto allo spin degli atomi che compongono la pietra stessa
- *Correnti elettriche* o particele in moto, che prendono il nome di *elettro magneti* o magneti temporanei

Nel caso del dipolo magnetico abbiamo che: 

![[Drawing 2023-11-14 06.38.55.excalidraw | center]]

Dal fatto che il campo magnetico è un campo vettoriale in $\mathbb R^3$ segue che può essere scritto come somma di un campo scalare e di uno vettoriale. Inoltre, sapendo che è a linee di campo chiuse, abbiamo che $\overrightarrow B$ è di tipo gradiente, ossia: $$\nabla B = 0$$

Nel caso della bobina e dell'elettro magnete abbiamo che: 

![[Drawing 2023-11-14 06.54.13.excalidraw | center]]

Va sottolineato che tra i magneti con stessa direzione (Nord - Nord, Sud - Sud) c'è una forza magnetica repulsiva, mentre tra quelli con direzione opposta (Nord - Sud) c'è una forza magnetica attrattiva.

![[Drawing 2023-11-14 07.14.37.excalidraw | 100%]]

## Forza di Lorentz
La forza di Lorent è una forza che entra in casua quando abbiamo una carica $q$ in moto all'interno di un campo magnetico $\overrightarrow B≠0$

Empiricamente abbiamo che: 
- La forza magnetica applicata sulla carica puntiforme è proporzionale alla carica stessa $1$;
- È nulla se $\overrightarrow v \parallel \overrightarrow B$
- È massima se $\overrightarrow v \perp \overrightarrow B$
- È sempre perpendicolare al piano $(\overrightarrow v, \overrightarrow B)$

Da questo otteniamo che: 

>[!def] **Definizione di Forza di Lorentz**
>La forza di Lorentz è la forza magnetica che agisce su una carica $q$ che si sta muovendo di velocità $\overrightarrow v$ all'interno di un campo magnetico $\overrightarrow B≠0$. In particolare vale: $$\overrightarrow F_B = q(\overrightarrow v \times \overrightarrow B)$$
>Sapendo che $[F] = N$, $[q] = C$, $[v] = m/s$ segue che: $[B] = \frac{Ns}{Cm} = T$

## Moto di una Carica in un Campo Magnetico costante e uniforme

Supponiamo di avere una carica $q$ all'interno di un campo magnetico $\overrightarrow B≠0$ e supponiamo non ci siano altre forze. Allora la situazione in questo caso è: $$\overrightarrow F_{tot} = m \overrightarrow a = q(\overrightarrow v \times \overrightarrow B)$$
Da questa affermazione abbiamo che: $$\fbox{$\overrightarrow a = \frac qm (\overrightarrow v \times \overrightarrow B)$}$$
*Questa formula è valida per ogni sistema di riferimento*
Andiamo a vedere come si comporta con le coordinate cartesiane:
$$\overrightarrow a = \frac qm (v_yB_z - v_zB_y, v_zB_x - v_xB_z, v_xB_y - v_yB_x)$$
*Assumiamo* che $\overrightarrow v \perp \overrightarrow B$, allora possiamo prendere il sistema di coordinate: $$\begin{cases}\overrightarrow B = (0, B, 0)\\ \overrightarrow v = (v_x, 0, v_z)\end{cases}\qquad \Rightarrow \qquad \fbox{$\overrightarrow a = \frac{qB}{m}(-v_z, 0, v_x)$}$$
Deduciamo facilmente che: $$\overrightarrow a \cdot \overrightarrow v = 0 \qquad \Rightarrow \qquad \overrightarrow a \perp \overrightarrow v$$
Ossia l'accelerazione è un'accelerazione centripeta, quindi il moto descritto è un moto circolare uniforme, ossia il raggio $R$ è costante e $\| \overrightarrow v\|$ è costante.
Sappiamo anche che: 
$$\begin{align*}
\overrightarrow a = \frac{d^2 \overrightarrow x}{dt^2} \qquad \Rightarrow & \qquad \overrightarrow a = (a_x, a_y, a_z) = \left(\frac{d^2x}{dt^2}, \frac{d^2y}{dt^2}, \frac{d^2z}{dt^2}\right)\\
\overrightarrow v = \frac{d \overrightarrow x}{dt} \qquad \Rightarrow &\qquad \overrightarrow v = (v_x, v_y, v_z) = \left(\frac{dx}{dt}, \frac{dy}{dt}, \frac{dz}{dt}\right)
\end{align*}$$
Allora dalla formula che avevamo ricavato in precedenza che legava accelerazione e velocità abbiamo che: 
$$\begin{dcases}
\frac{d^2x}{dt^2} = -\frac{qB}{m} \frac{dz}{dt}\\ 
\frac{d^2z}{dt^2} = \frac{qB}{m} \frac{dx}{dt}
\end{dcases} \xRightarrow{\text{Integrando}} \begin{dcases}
x(t) = -v_{0,z}\frac{m}{qB} + \left(x_0 + \overbrace{\frac{v_{0,z}m}{qB}}^{x_c}\right)\cos\left( \frac{qBt}{m}\right) + v_{0,x}\frac{m}{qB} \sin \left(\frac {qB}m t\right)\\
z(t) = - v_{0,x} \frac{m}{qB} + \left(z_0 + \underbrace{\frac{v_{0,x}m}{qB}}_{z_c}\right) \cos \left(\frac{qBt}{m}\right) + v_{0,z}\frac{m}{qB} \sin\left( \frac{qB}{m}t\right)
\end{dcases}$$
Sapendo poi che $$(x(t) - x_c)^2 + (z(t) - z_c)^2 = R^2$$
Otteniamo che $$\overrightarrow v = \| \overrightarrow v \| \overrightarrow u_T \qquad \overrightarrow a = a_T \overrightarrow u_T + a_n \overrightarrow u_n$$
Dove $\overrightarrow u_T$ è la direzione tangenziale e $\overrightarrow u_n$ è la direzione normale
Sapendo poi che $\overrightarrow u_T$ e $\overrightarrow u_n$ sono vettori ortogonali, abbiamo che il loro prodotto scalare è nullo per ogni istante di tempo
Sapendo poi anche che: $$v \perp a \quad\Rightarrow\quad \overrightarrow v \cdot \overrightarrow a= 0 \quad\Rightarrow\quad a_T = 0\quad \Rightarrow\quad \overrightarrow a = a_n \overrightarrow u_n$$
Sapendo inoltre che: $$\overrightarrow a = \frac d{dt}\overrightarrow v = \frac d{dt} \left(\|\overrightarrow v\| \cdot \overrightarrow u_T\right)$$
Sapendo inoltre che $\overrightarrow u_n \cdot \overrightarrow u_T = 0$ per ogni istante di tempo segue che: $$\dot{\overrightarrow u}_n \cdot \overrightarrow u_T + \overrightarrow u_n \cdot \dot{\overrightarrow u}_T = 0$$
Da tutto ciò si ottiene che il valore dell'accelerazione vale: $$\fbox{$a_n = \| \overrightarrow v\| \frac{d}{dt} \overrightarrow u_T$}\qquad \text{con }\frac{d}{dt}\overrightarrow v_T\text{ cambiamento di direzione di }\overrightarrow v$$
Ma allora, mettendo tutto insieme con le formule del moto circolare uniforme, abbiamo che l'accelerazione centripeta vale: $a_c = v^2/R$
Andando a calcolare la risultante delle forze abbiamo che: $$F_B = F_c \quad\Rightarrow\quad qvB = ma_c\quad \Rightarrow\quad a_c = \frac{q}{m}vB \quad\Rightarrow \quad \fbox{$R = \frac{mv}{qB}$} \propto \frac 1B$$
Per fare un giro completo abbiamo che il periodo vale: $$T = \frac{2 \pi R}{v} \qquad \Rightarrow \qquad \fbox{$T = \frac{2 \pi m}{qB}$}$$
Conoscendo il periodo possiamo anche calcolare la frequenza come $\nu = 1/T$: 
$$\fbox{$\nu = \frac{qB}{2 \pi m}$}$$
E conoscendo la frequenza possiamo anche calcolare la velocità angolare: $\omega = 2 \pi \nu$
$$\fbox{$\omega = \frac {qB}m$}$$
*Notiamo che se il corpo si fosse mosso anche in una direzione parallela al campo magnetico, il moto che avrebbe avuto sarebbe stato quello di un'elica, invece che quello di una circonferenza*

### Esperimento di Thomson
*L'esperimento di Thomson utile per la determinazione di $\frac qm$ per gli elettroni: *

![[Drawing 2023-11-15 07.26.53.excalidraw|center]]

Per poter effettivamente determinare il rapporto carica/massa possiamo considerare questo sistema a due reginmi:

- **Regime 1**: $\overrightarrow E≠0$ costante e $\overrightarrow B≠0$ costante:
  *L'obiettivo di questo regime è quello di individuare $v_0$*
  Poiché il corpo che stiamo studiando (l'elettrone) ha una carica negativa, e poiché vi sono un campo magnetico e un campo elettrico, si ha che agiscono due forze, una magnetica e una elettrica sulla carica
  Data la struttura del problema, abbiamo che la forza elettrica punta verso l'armatura con carica positiva, mentre la forza magnetica, viste la direzione e il verso del campo magnetico, abbiamo che tende a spostare l'eletrtone verso l'armatura negativa.
  Abbiamo quindi un sistema di forze in cui: $$\overrightarrow F_{tot} = \overrightarrow F_c + \overrightarrow F_m \qquad \Rightarrow \qquad F_{tot} = F_c - F_m = qE -qv_0B$$
  Noi vogliamo far si che la direzione del moto sia orizzontale, quindi vogliamo che la forza risultante sia nulla, e nel fare ciò possiamo regolare la differenza di potenziale, quindi: $$qE - qv_0B =0 \qquad \Rightarrow \qquad qE = qv_0B \qquad \Rightarrow \qquad \fbox{$v_0 = \frac EB$}$$

- **Regime 2** $\overrightarrow E≠0$ costante e $\overrightarrow B = 0$
  *Con questo regime possiamo effettivamente il rapporto voluto*
  Sapendo che $$\overrightarrow F = m\overrightarrow a = q \overrightarrow E \xRightarrow{q = -|e|} \overrightarrow E = -\|\overrightarrow E\| \overrightarrow u_y$$
  Abbiamo quindi che le equazioni del moto sono: $$\begin{cases}y = y_0 + v_{0,y}t + \frac 12 a_y t^2\\ x = x_0 + v_{0,x}t\end{cases} \quad \Rightarrow \quad \begin{cases}y = y_0 + \frac 12 a_y t^2\\ x = x_0 + v_{0,x}t\end{cases}$$
  Possiamo assumere $x_0 = y_0 =0$ e risolvendo per $y$ abbiamo che: $$\begin{cases}L = \Delta x = v_{0,x}t \Rightarrow t = \frac{L}{v_{0,x}}\\ \Delta y= \frac 12 \frac{|qE|}{m}t^2\end{cases} \quad \Rightarrow \quad \Delta y = \frac 12 \frac{|qE|}m \left(\frac L {v_{0,x}}\right)^2$$
  Adesso basta andare a risolvere per $\frac{|q|}m$ e otteniamo che: $$\fbox{$\frac{|q|}{m} = \frac{2 \Delta y E}{L^2B^2}$}$$

### Spettrometro di Massa
*Serve per determinare la massa di particelle di carica*

![[Drawing 2023-11-15 08.06.02.excalidraw | 100%]]

Nella zona in cui c'è solo campo elettrico, abbiamo che la forza risultante è quindi solo la forza di Coulomb: $$\overrightarrow F_{ris} = \overrightarrow F_c \quad \Leftrightarrow \quad qE = ma_y \quad \Rightarrow \quad a_y = \frac{qE}{m} \qquad \Rightarrow \qquad\begin{cases}y = y_0 + v_{0,y}t + \frac 12 a_yt^2\\ v_y = v_{0,y} + a_yt\end{cases}$$
Vogliamo trovare $v_y$ quando $y = D$ e dal sistema appena scritto otteniamo: $$t(y = D) = \sqrt{2D \left| \frac m {qE}\right|} \qquad \Rightarrow \qquad v_y(y = D) = \sqrt{2D \left|\frac{qE}{m}\right|}$$
Nella zona in cui c'è solo il campo magnetico, abbiamo che agisce solo la forza magnetica: $$F_{ris} = F_m \quad \Rightarrow\quad  qvB = ma \quad \Rightarrow \quad ma_c = \frac{mv^2}{R} \quad \Rightarrow \quad R = \frac{mv^2}{qvB}$$
Da cui otteniamo che: $$\fbox{$R = \frac{mv}{qB}$} \qquad \text{dove }v = v_y(y = D)$$
Andando poi a sostituire si ha che: $$m = \frac{RqB}{v} \qquad \Rightarrow \qquad \fbox{$m = \frac{qB^2R^2}{2DE}$}$$

### Ciclotrone
*È l'antenato di un acceleratore di particelle*

![[Drawing 2023-11-16 11.10.07.excalidraw | center]]

Andiamo a mettere una particella carica all'interno delle due armature.
Nella regione in cui c'è solo il campo elettrico viene accelerata per la presenza del campo elettrico $\overrightarrow E$, mentre nella regione in cui c'è solo il campo magnetico $\overrightarrow B$ per la forza di Lorentz ruota e torna indietro

Per la conservazione dell'energia nella regione con solo campo elettrico, abbiamo che: $$E_i = \frac 12 mv^2_i + qV_i = \frac 12 mv_f^2 + qV_f = E_f \qquad \Rightarrow \qquad v_f^2 = v_i^2 + \frac{2q\Delta V}{m}$$
Questa calcolo viene fatto $n$ volte, quindi ad ogni passagio si ottiene che: $$\fbox{$v_{i+1}^2 = v_i^2 + \frac{2q \Delta V}{m}$}$$
Quindi la velocità finale aumenta sempre 

Nelle regioni a solo campo magnetico costante abbiamo che l'unica forza che agisce è quella di Lorentz $\overrightarrow F_L$ che è una forza centripeta, quindi otteniamo che: $$F_L = F_c \quad \Rightarrow \quad qv_{i+1}B = m \frac{v^2_{i+1}}{R_{i+1}} \quad \Rightarrow \quad \fbox{$R_{i+1} = \frac{mv_{i+1}}{qB}$}$$
Da questo posso poi calcolare il tempo di percorrenza nella parte in cui c'è solo il campo magnetico, sapendo che: $$v_{i
1} = \frac{\pi R_{i+1}}{\Delta t_{i+1}} \qquad \Rightarrow \qquad \Delta t_{i+1} = \frac{\pi R_{i+1}}{v_{i+1}} \qquad \Rightarrow \qquad \fbox{$\Delta t_{i+1} = \frac{\pi m}{qB} = \Delta t$}$$
È importante notare che il periodo è indipendente dalla velocità in quanto in questo modo possiamo calcolare la pulsazione del ciclotrone come: $$\omega_{RF} = \frac{qB}{m}$$ In modo poter invertire il campo elettrico in modo da poter accelerare la particella, in particolare, avrà un grafico di questo tipo: 

![[Drawing 2023-11-16 11.42.48.excalidraw | center]]

*Ciò è possibile se la velocità non è troppo alta, altrimenti entrano in gioco le leggi della relatività ristretta *

Chiaramente non può superare una certa velocità, in quanto deve comunque essere contenuto dentro le armature in cui c'è il campo magnetico, quindi il raggio non deve superare $R_{max}$, cioè: $$v_{max} = \frac{qB}m R_{max} \quad \Rightarrow \quad E_{C, max} = \frac 12 mv^2_{max} 0 \frac{1}{2m}(qBR_{max})^2$$

Vediamo ora un caso particolare della forza magnetica:

![[Forza Magnetica su un filo di corrente]]

### Momento Torcente su una Spira percorsa da Corrente Elettrica

![[Drawing 2023-11-16 12.15.55.excalidraw | 100%]]

Dal sistema di riferimento che abbiamo preso, segue subito che $\overrightarrow n = (1,0,0)$
Sia $\overrightarrow B = (B_x, B_y, B_z)$ il campo magnetico che agisce sulla spira

Andiamo a vedere le forze che agiscono su lati della spira:
- Sul lato che abbiamo indicato come $1$ abbiamo che: $$\overrightarrow F_1 = I(\overrightarrow L_1 \times \overrightarrow B)$$
  Sapendo che $\overrightarrow L_1 = L_1(0, -1, 0)$, abbiamo che: $$\overrightarrow F_1 = IL_1 \det \begin{pmatrix}\overrightarrow u_x & \overrightarrow u_y & \overrightarrow u_z\\ 0 & -1 & 0\\ B_x & B_y & B_z\end{pmatrix} = IL_1 (-B_z \overrightarrow u_x + B_z \overrightarrow u_z)$$
- Per la seconda forza otteniamo che: $$\overrightarrow L_2 = L_2(0, 0, -1) \quad \Rightarrow \quad \overrightarrow F_2 = IL_2 \det \begin{pmatrix}\overrightarrow u_x & \overrightarrow u_y & \overrightarrow u_z \\ 0 & 0 & -1\\ B_x & B_y & B_z \end{pmatrix} = IL_2 (-B_x\overrightarrow u_y + B_y \overrightarrow u_x)$$

Per le altre cariche *nascondendo tutti i conti* otteniamo che
$$\overrightarrow F_3 = IL_3(B_z\overrightarrow u_x - B_x \overrightarrow u_z) \qquad \text e \qquad \overrightarrow F_4 = IL_4(B_x \overrightarrow u_y - B_y \overrightarrow u_x)$$

Per pura comodità assumiamo che la spira sia rettangolare, quindi abbiamo che $L_1 = L_3$ e $L_2 = L_4$

La situazione diventa quindi: 
![[Drawing 2023-11-16 12.42.32.excalidraw | center]]

Andiamo a studiare il centro di massa: $$\overrightarrow F_{tot} = \sum_{i = 1}^4 \overrightarrow F_i = 0 \quad \Rightarrow \quad \overrightarrow a_{tot} = 0$$
Otteniamo quindi che il centro di massa è a riposo, cioè non si muove

Possiamo calcolare nell'effettivo la rotazione attraverso il momento torcente
Dalle formule del moto rotatorio uniforme abbiamo che la quantità di moto rotazionale è$$\overrightarrow L = I \cdot \overrightarrow \omega$$
Sappiamo che il momento torcente vale: $$\overrightarrow \tau = I \cdot \overrightarrow \gamma \qquad \text{con }\overrightarrow \gamma \text{ accelerazione angolare}$$ 
Ma sappiamo anche che $$\overrightarrow \tau = \overrightarrow r \times \overrightarrow F \qquad \text{con }\overrightarrow r \text{  il punto di applicazione della forza}$$
Allora per ottenere il momento torcente totale basta: $$\overrightarrow \tau_{tot} = \sum_{i = 1}^4 \overrightarrow tau_i = \sum_{i = 1}^4 I_i \overrightarrow \gamma_i$$
*Per comodità possiamo assumere che $\overrightarrow r$ sia al centro della spira*

*Sempre per comodità assumiamo che la spira sia un quadrato, ossia $L_1 = L_2 = L_3 = L_4 = L$*
Allora possiamo prendere: $$\overrightarrow r_1 = \frac L2 \overrightarrow u_z \qquad \overrightarrow r_2 = -\frac L2 \overrightarrow u_y \qquad \overrightarrow r_3 = -\frac L2 \overrightarrow u_z \qquad \overrightarrow r_4 = \frac L2 \overrightarrow u_y$$
Adesso possiamo calcolare $\overrightarrow \tau =\overrightarrow \tau_1 + \overrightarrow \tau_2 + \overrightarrow \tau_3 + \overrightarrow \tau_4$: 
$$\left.\begin{matrix}
\overrightarrow \tau_1 = \overrightarrow r_1 \times \overrightarrow F_1 = \frac {L^2}2 I \det \begin{pmatrix}\overrightarrow u_x & \overrightarrow u_y & \overrightarrow u_z\\ 0 & 0 & 1\\ -B_z & 0 & B_y\end{pmatrix}\\
\overrightarrow \tau_2 = \overrightarrow r_2 \times \overrightarrow F_2 = \frac {L^2}2 I \det \begin{pmatrix}\overrightarrow u_x & \overrightarrow u_y & \overrightarrow u_z\\ 0 & -1 & 0\\ B_y & -B_x & 0\end{pmatrix}\\
\overrightarrow \tau_3 = \overrightarrow r_3 \times \overrightarrow F_3 = \frac {L^2}2 I \det \begin{pmatrix}\overrightarrow u_x & \overrightarrow u_y & \overrightarrow u_z\\ 0 & 0 & -1\\ B_z & 0 & -B_7\end{pmatrix}\\
\overrightarrow \tau_4 = \overrightarrow r_4 \times \overrightarrow F_4 = \frac {L^2}2 I \det \begin{pmatrix}\overrightarrow u_x & \overrightarrow u_y & \overrightarrow u_z\\ 0 & 1 & 0\\ -B_y & B_x & 0\end{pmatrix}
\end{matrix} \right \} \begin{matrix}\overrightarrow \tau_1= \overrightarrow \tau_3\\ \overrightarrow \tau_2 = \overrightarrow \tau_4\end{matrix}$$
Da cui otteniamo che: $$\overrightarrow \tau = 2 (\overrightarrow \tau_1 +\overrightarrow \tau_2) = 2 \frac{IL^2}{2}(-B_z\overrightarrow u_y + B_z \overrightarrow u_z) = IL^2(-B_z \overrightarrow u_y + B_y \overrightarrow u_z)$$
Sapendo poi che il vettore normale alla spira è $\overrightarrow n =(1, 0, 0)$ otteniamo che: $$\fbox{$\overrightarrow\tau = IL^2(\overrightarrow n \times \overrightarrow B)$}$$
In generale questo è diverso da zero
Se andiamo a definire $IL^2\overrightarrow n$ come il momento magnetico della spira $\overrightarrow \mu$, otteniamo allora che: $$\fbox{$\overrightarrow \tau = \overrightarrow \mu \times \overrightarrow B$}$$

****
<div style="page-break-after: always;"></div>

# Campi Magnetici generati da Correnti Elettriche
*La prima volta che fu osservato un campo magnetico generato da una corrente elettrica fu nel 1820*

![[Drawing 2023-11-16 14.43.55.excalidraw | center]]

Sia $d \overrightarrow B$ il campo magnetico infinitesimo generato da una sezione infinitesima $d \ell$ di un filo percorso da una corrente $I$ nel punto $\overrightarrow r$, empiricamente si osserva che:
	- La direzione di $d \overrightarrow B$ è ortogonale al piano definito dai vettori $d\overrightarrow \ell$ e $\overrightarrow r$
	- Il verso di $d \overrightarrow B$ è dato dalla regola della mano destra (con ordine: prima $d \overrightarrow \ell$ e poi $\overrightarrow r$) 
	- Il modulo è dato da: $$\| d \overrightarrow B\| = \frac{\mu_0}{4 \pi} \cdot \frac{I d\ell \sin \theta}{r^2} \qquad \text{dove }\mu_0 = 4 \pi 10^{-7} \frac{Tm}{A} \text{ è la permeabilità magnetica}$$

In forma vettoriale si può scrivere secondo la legge di Biot - Savart. 

>[!th] **Legge di Biot - Savart**
>Il campo magnetico vale:
>$$d \overrightarrow B = \frac{\mu_0}{4 \pi} I \frac{d \overrightarrow \ell \times \overrightarrow r}{r^3}$$

Usando il principio della sovrapposizione, si ha che il campo magnetico totale vale: $$\fbox{$\overrightarrow B = \int_{filo} \frac{\mu_0}{4 \pi} I \frac{d \overrightarrow \ell \times \overrightarrow r}{r^3}$}$$

Dalla legge di Biot - Savart possiamo calcolare il campo magnetico $\overrightarrow B$ calcolato in una particella di carica $q$ che si muove di velocità $v$.
Infatti, sapendo che $I = \frac{dq}{ft}$ abbiamo che: $$d\overrightarrow B = \frac{\mu_0}{4 \pi} \frac{dq}{dt} \frac{d \overrightarrow \ell \times \overrightarrow r}{r^3} \qquad \Rightarrow \qquad \fbox{$d \overrightarrow B = \frac{\mu_0}{4 \pi} dq \frac{\overrightarrow v \times \overrightarrow r}{r^3}$}$$

Andiamo adesso a vedere come si comporta il campo magnetico con alcune simmetrie: 

![[Campo Magnetico generato da da un filo infinito in cui passa corrente]]

<br>

![[Campo Magnetico Generato da una Spira Circolare]]

*L'importante è sempre scrivere la funzione in variabili indipendenti*
Se il punto non fosse per l'asse passante per il centro della spira, otterremmo delle formule diverse, ma il processo è lo stesso

Prima di vedere il caso con il solenoide, descriviamo effettivamente cosa sia un solenoide:

>[!def] **Definizione di Solenoide**
>Il Solenoide è un filo conduttore a forma di elica a piccolo passo, caratterizzato da una lunghezza $d$, da un raggio $R$, da un numero di spire $N$ e da una densità di spire per unità di misura $n$

![[Campo Magnetico Generato da un Solenoide]]

Vediamo ora come si comportano due fili paralleli in cui circola corrente elettrica:

![[Campo Magnetico Generato da Due Fili Conduttore]]

****

<div style="page-break-after: always;"></div>

# Flusso del Campo Magnetico
L'assenza dei monopoli magnetici si può tradurre nella seconda legge di Maxwell:

>[!th]  **Seconda Legge di Maxwell**
>$$\oint_S \overrightarrow B \cdot d \overrightarrow S = 0\qquad \text{Per ogni superdicie }S \text{ chiusa}$$

Questo giustifica anche il fatto che le linee di campo sono chiuse 
*Per fare un confronto con il campo elettrico, abbiamo che dalla legge di Gauss abbiamo che: $$\oint_S \overrightarrow E \cdot \overrightarrow n dS = \frac{Q_{int}}{\varepsilon_0}$$*

Vediamo come si comporta un filo infinito percorso da una corrente $I$.

![[Drawing 2023-11-21 06.37.20.excalidraw | center]]

*Notiamo che non ci sono vincoli oltre al fatto che deve essere una superficie chiusa*

![[Flusso del Campo Magnetico in una Qualunque Superficie che contiene il Filo]]

Andiamo anche a vedere il caso in cui non fosse chiusa: 

![[Flusso del Campo Magnetico in una Superficie che non contiene il Filo]]

<div style="page-break-after: always;"></div>

Diamo al volo la Terza legge di Maxwell: 

>[!th]  **Terza Legge di Maxwell**
>$$\oint_S \overrightarrow B \cdot d \overrightarrow S = 0$$
>*Cioè il flusso del campo magnetico è nullo per ogni superficie $S$ chiusa*

>[!th]  **Legge di Ampère - Quarta Legge di Maxwell**
>$$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \mu_0 I_{Conc}$$
> Dove $I_{Conc}$ è la somma algebrica delle correnti (con segno) delle correnti interne alla curva $\gamma$ùù

![center | 300](Drawing%202023-11-27%2018.08.09.excalidraw.md)

In questo caso abbiamo che $$I_{Conc} = -I_1 + I_1 - I_2 + I_3$$
*Questo non è altro che l'analogo magnetico della circuitazione per il campo elettrico: $$\oint_\gamma \overrightarrow E \cdot d \overrightarrow \ell = 0$$*

**Verifica:**
Verifica che questa cosa valga in quattro casi distinti.

**Caso Filo Infinito con curva regolare $\gamma$ attorno al filo**

![[Drawing 2023-11-27 18.20.07.excalidraw | center]]

Sia quindi $\gamma$ una circonferenza che centrata nel filo, allora abbiamo, per simmetria della figura, che: $$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \phi = \int \| \overrightarrow B \| Rd\phi$$
*Qui abbiamo sfruttato che valgono le seguenti cose:* $$\overrightarrow B = \| \overrightarrow B \| \overrightarrow u_\phi\qquad e \qquad \|d \overrightarrow \ell\| = R d \phi$$
Dalla quarta legge di Maxwell abbiamo che: $$\int\|\overrightarrow B\| Rd\phi = \mu_0 I$$
In questo modo otteniamo che $$\| \overrightarrow B \| \underbrace{\int_0^{2\pi} Rd\phi}_{2 \pi R} = \mu_0 I \qquad \Rightarrow \qquad \fbox{$\|\overrightarrow B \| = \frac{\mu_0 I}{2 \pi R}$}$$

**Caso Filo Infinito, con Spicchio di Corona Circolare $\gamma$ non contenente il filo**

![[Drawing 2023-11-27 18.33.47.excalidraw | 100%]]

Da solo la geometria della situazione, possiamo vedere che $$\underbrace{\overrightarrow B \perp d \overrightarrow \ell_1 \qquad \overrightarrow B \perp d \overrightarrow \ell_3}_{\text{I prodotti scalari sono nulli}} \qquad \overrightarrow B \parallel d \overrightarrow \ell_4 \qquad \overrightarrow B \parallel - d \overrightarrow \ell_2$$
In questo modo otteniamo che: $$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \sum_{i = 1}^4 \int_{\gamma_i} \overrightarrow B \cdot d \ell_i = \int_{\gamma_2} \overrightarrow B \cdot d \overrightarrow \ell_2 + \int_{\gamma_4} \overrightarrow B \cdot d \overrightarrow \ell_4$$
Sfruttando quanto ottenuto prima, cioè che $\|\overrightarrow B \| = \frac{\mu_0I}{2 \pi R}$, otteniamo che: $$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \int_{\phi'}^{\phi'+ \Delta \phi} \frac{\mu_0I}{2 \pi R_4}R_4 d \phi + \int_{\phi'}^{\phi' + \Delta \phi} \frac{\mu_0 I}{2 \pi R_2}R_2 d \phi$$
Tuttavia, sapendo che $\overrightarrow B$ e $d\overrightarrow \ell_2$ sono antiparalleli, davanti all'integrale che coinvolge $\gamma_2$ c'è un meno davanti, otteniamo quindi che: $$\oint \overrightarrow B \cdot d \overrightarrow \ell = \frac{\mu_0I}{2 \pi} \int_{\phi'}^{\phi' + \Delta \phi}(1-1)d \phi = 0$$
Quindi otteniamo che la circuitazione del campo magnetico è nulla se e solo se la corrente concatenata (interna) è nulla, cioè: $$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = 0 \quad \Leftrightarrow \quad I_{Conc} = 0$$
E comunque viene rispettata la quarta legge di Maxwell
<p style="text-align:right;">⃞</p>

Questi prototipi possono poi essere estesi ad un caso più generale, ossia quando queste figure non sono esattamente delle figure regolari, ossia non abbiamo una circonferenza che circonda il filo nel primo caso e nella seconda non abbiamo uno spicchio di corona circolare, ma abbiamo una qualsiasi figura bidimensionale.

Nel primo caso, al posto di $R$ andiamo a mettere una funzione periodica $$R(\phi): R(0) = R(2π) \qquad \text{con }\phi \in [0, 2π]$$
In questo modo, sapendo che $$\overrightarrow B = \| \overrightarrow B \| \overrightarrow u_\phi\qquad \text e \qquad d \ell = \dot R d \phi \overrightarrow u_r + R d\phi \overrightarrow u_\phi$$
Otteniamo che: $$\oint \overrightarrow B \cdot d \overrightarrow d \ell = \int_0^{2\pi} B R d \phi = \frac{\mu_0I}{2 \pi} \underbrace{\int_0^{2 \pi} d\phi}_{2π} = \mu_0I$$
In conclusione, se $I$ è interna a $\gamma$, allora abbiamo che: $$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \mu_0I$$

Nel secondo caso, possiamo prendere due punti $\phi_{min}$ e $\phi_{max}$ appartenenti alla curva $\gamma$ in modo da poter divedere la curva stesse in due parti, una più interna $\gamma_1$ (più vicina al filo) e una più esterna $\gamma_2$, allora otteniamo che: $$\gamma = \gamma_1 + \gamma_2$$
Quindi preso $\phi \in [\phi_{min}, \phi_{max}]$, abbiamo che: $$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \int_{\gamma_1} \overrightarrow B \cdot d \overrightarrow \ell_1 + \int_{\gamma_2} \overrightarrow B \cdot d \overrightarrow \ell_2$$

Sapendo inoltre che: $$\overrightarrow B = \frac{\mu_0I}{2π} \overrightarrow u_\phi$$
Otteniamo che: $$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \underbrace{\int_{\phi_{min}}^{\phi_{max}} \| \overrightarrow B \| R (\phi) d\phi}_{\gamma_1} + \underbrace{\int_{\phi_{max}}^{\phi_{min}} \| \overrightarrow B \| R (\phi) d\phi}_{\gamma_2} = \frac{\mu_0I}{2\pi}\underbrace{\left(\int_{\phi_{mix}}^{\phi_{max}}d \phi + \int_{\phi_{max}}^{\phi_{min}}d \phi\right)}_0 = 0$$

*Va sottolineato che se ci sono tante correnti che passano all'interno della curva $\gamma$, allora la corrente concatenata è la somma algebrica delle correnti, cioè: $$I_{Conc} = \sum I_i$$*

## Simmetrie per la Circuitazione del Campo Magnetico

![[Circuitazione del Campo Magnetico per una Superficie Cilindrica]]

![[Circuitazione del Campo Magnetico per un Cilindro Pieno]]

![[Circuitazione del Campo Magnetico in un Solenoide Infinito]]

![[Circuitazione del Campo Magnetico in un Solenoide Toroidale]]

Facciamo un esempio per il calcolo del campo magnetico con la circuitazione: 

![[Esempio di Calcolo del Campo Magnetico con la Circuitazione]]

Con questi esempi possiamo finalmente elencare le 4 leggi di Maxwell:

>[!def] **Leggi di Maxwell - In Elettro-Magnetostatica**
> - Esistenza dei Monopoli Elettrici: $\displaystyle{\oint_S \overrightarrow E \cdot d \overrightarrow S = \frac{Q_{int}}{\varepsilon_0}}$
> - Campo Elettrico Conservativo: $\displaystyle{\oint_\gamma \overrightarrow E \cdot d\overrightarrow\ell=0}$
> - Non esistenza dei Monopoli Magnetici: $\displaystyle{\oint_S \overrightarrow B \cdot d \overrightarrow S = 0}$
> - Campo Magnetico non Conservativo: $\displaystyle{\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \mu_0I_{Conc}}$

****

<div style="page-break-after: always;"></div>

# Elettrodinamica e Magnetodinamica

*Indicherò con $\xi$ la differenza di potenziale o forza elettromotrice, per il semplice il fatto che il prof fa una $E$ corsivo in teoria, che si potrebbe confondere con l'energia del sistema, quindi $\xi$ sia*
Vediamo come si comporta una spira chiusa conduttrice con corrente $I$ con un magnete permanente:

![center | 300](Drawing%202023-11-28%2017.18.14.excalidraw.md)

Se avviciniamo o allontaniamo un magnete ad una spira conduttrice, comincia a circolare in essa una corrente $I$
Questa corrente è creata dalla variazione temporale del flusso di $\overrightarrow B$ attraverso la spira.
Quindi se esiste una corrente $I≠0$, allora esiste una differenza di potenziale o una forza elettromotrice: $$\fbox{$\xi = \oint_\gamma \overrightarrow E \cdot d \overrightarrow \ell ≠0$} \qquad \gamma \text{ chiusa}$$

Questo fenomeno prende il nome di legge di Faraday

>[!def] **Legge di Faraday**
>$$|\xi| = \left|\frac d{dt}\left(\oint_S \overrightarrow B \cdot d \overrightarrow S\right)\right|$$

Successivamente Neumann e Lenz hanno dato un segno a questa legge: $$\fbox{$\xi = -\frac d{dx} \Phi_S(\overrightarrow B)$}$$
*La corrente indotta nella spira circola in modo da produrre un campo magnetico inverso che si oppone alla variazione del flusso*

Vediamo come si comporta rispetto al segno del flusso $\Phi_S(\overrightarrow B)$

![[Drawing 2023-11-29 06.12.56.excalidraw | 100%]]

 - Se $\Phi_S(\overrightarrow B)$ è crescente, allora abbiamo che: $$\Phi_S(\overrightarrow B)\text{ crescente} \quad \Rightarrow \quad \frac{d\Phi_S(\overrightarrow B)}{dt}>0 \quad \Leftrightarrow \quad \xi<0 \quad \Rightarrow \quad I_{Ind}<0$$
 - Se $\Phi_S(\overrightarrow B)$ è decrescente, allora abbiamo che: $$\Phi_S(\overrightarrow B)\text{ decrescente} \quad \Rightarrow \quad \frac{d\Phi_S(\overrightarrow B)}{dt}<0 \quad \Leftrightarrow \quad \xi>0 \quad \Rightarrow \quad I_{Ind}>0$$

Se andiamo ad osservare per bene la formula del flusso del campo magnetico, notiamo che: $$\Phi_S(\overrightarrow B) = \oint_S\overrightarrow B \cdot \overrightarrow n dS = \int_SdS \|\overrightarrow B\|\cdot \|\overrightarrow n\| \cos \alpha = \int_SdS \|\overrightarrow B\| \cos \alpha$$
Potrebbe dipendere da $3$ principali fattori, indipendenti tra di loro:
	- $\|\overrightarrow B\|$ varia nel tempo ($B(t)$)
	- $S$ varia nel tempo ($S(t)$)
	- $\alpha$ varia nel tempo ($\alpha(t)$)

*Andiamo a vedere che succede quando variano nel tempo*

### Evoluzione Temporale del Campo Magnetico $\|\overrightarrow B\|$

*Vediamolo in un caso piuttosto specifico giusto per dar l'idea di cosa succede*
Sia quindi una spira quadrata di lato $L$ nel piano $(x,y)$ immerso in un campo magnetico $\overrightarrow B$ con: $$\overrightarrow B = B(t)\overrightarrow u_z\qquad B(t) = B_0\left(\frac{t^2}{2}-t\right)$$

![[Drawing 2023-11-29 06.37.41.excalidraw | center]]

Andando a calcolare il flusso del campo magnetico con questa legge otteniamo che: $$\Phi_S(\overrightarrow B) = \oint_S dS \|B(t)\| = \underbrace{\int_0^L dx \int_0^Ldy}_{L^2} B_0\left(\frac{t^2}{2}-t\right)$$
Per cui per Faraday otteniamo che: $$\xi = - \frac{d}{dt}\Phi_S(\overrightarrow B)=-L^2B_0(t-1) \quad \Rightarrow \quad \fbox{$\xi = L^2B_0(1-t)$}$$
Graficamente otteniamo che:

![[Drawing 2023-11-29 06.37.41.excalidraw | center]]

È la stessa cosa che succede per un trasformatore, che trasforma alta tensione e bassa corrente in bassa tensione e alta corrente

![center | 500](Drawing%202023-11-29%2006.59.57.excalidraw.md)

*Il metallo dolce serve principalmente per non disperdere campo magnetico*
Per calcolare la differenza di potenziale primaria con la legge di Faraday abbiamo che: $$V_P = -\frac d{dt}\Phi_P(\overrightarrow B) = -N_P \frac{d}{dt}\Phi_1(\overrightarrow B)$$
Dove $\Phi_1(\overrightarrow B)$ è il flusso del campo magnetico attraverso una spira nell'avvolgimento primario e $N_P$ è il numero di spire nell'avvolgimento primario
In particolare, visto che il campo magnetico è confinato all'interno del metallo dolce, abbiamo che: $$\Phi_1(\overrightarrow B) = \Phi_2(\overrightarrow B)$$
Sempre dalla legge di Faraday, abbiamo che c'è una differenza di potenziale tra i due capo dell'avvolgimento secondario: $$V_S = -\frac d{dt}\Phi_S(\overrightarrow B) = -N_S \frac d{dt} \Phi_2(\overrightarrow B) = -N_S \frac{d}{dt}\Phi_1(\overrightarrow B) = -\frac{N_S}{N_P} \frac{d}{dt}\Phi_P(\overrightarrow B) = \frac{N_S}{N_P}V_P$$
Da cui otteniamo che: $$\frac{V_S}{V_P} = \frac{N_S}{N_P}\qquad \Leftrightarrow \qquad \frac{V_P}{V_S} = \frac{N_P}{N_S}$$
Se quest'ultimo rapporto è maggiore di $1$, allora si parla di trasformatore in salita, altrimenti si parla di trasformatore in discesa (*è lo stesso del pc*)

### Evoluzione Temporale della Superficie $S$

Supponiamo di avere una spira rettangolare nel piano $(x,y)$ di larghezza $a$ e di lunghezza variabile, in particolare per la presenza di un lato che può scorrere verso destra seguendo la legge $b = b_0 + vt$, immerso in un campo magnetico costante $\overrightarrow B = \| \overrightarrow B\| \overrightarrow u_z$

![[Drawing 2023-11-29 07.31.39.excalidraw | center]]

Poiché l'area è variabile, abbiamo che: $$S = S(t) = ab(t) = a(b_0 + vt)$$
Da questo otteniamo che: $$\Phi_S(\overrightarrow B) = \int_S dS \|\overrightarrow B\| = BS(t)\qquad \Rightarrow \qquad  \Phi_S(\overrightarrow B) = \| \overrightarrow B \| a(b_0+vt)$$
Per la legge di Faraday abbiamo che: $$\xi = -\frac{d}{dt}\left(\Phi_S(\overrightarrow B)\right) = -\|\overrightarrow B\| a(b_0 + vt)$$
Se poi la spira ha una resistenza, abbiamo allora che: $$I_{Ind} = \frac \xi R = - \frac{\| \overrightarrow B\| av}{R}$$

### Evoluzione Temporale dell'Angolo $\alpha$

Supponiamo di avere una spira di lato $L$ che ruota attorno all'asse verticale, immerso in un campo magnetico costante: $$\overrightarrow B = \| \overrightarrow B \| \overrightarrow u_y$$
*Per questioni di comodità poniamo la condizione che il vettore normale e il campo magnetico siano allineati all'istante $t = 0$*

![center | 160](Drawing%202023-11-29%2007.45.32.excalidraw.md)

Chiamiamo $\theta$ l'angolo compreso tra il vettore normale e il campo magnetico e sia l'evoluzione temporale dell'angolo: $$\theta = \theta(t) = \theta_0 + \omega t$$
Per la condizione iniziale abbiamo che $\theta_0 = \theta(0) = 0$
Allora abbiamo che: $$\Phi_S(\overrightarrow B) = \int_SdS\|\overrightarrow B\| \cos(\theta (t)) \qquad \Rightarrow \qquad \fbox{$\Phi_S(\overrightarrow B) = L^2\| \overrightarrow B\| \cos (\omega t)$}$$

Con Faraday abbiamo che: $$\xi = -\frac{d}{dt}\left(\Phi_S(\overrightarrow B)\right) = -(-L^2 \| \overrightarrow B\| \sin(\omega t)\omega) = \underbrace{L^2 \| \overrightarrow B\| \omega}_{\xi_{max}}\cos (\omega t)$$

Graficamente otteniamo che: 

![[Drawing 2023-11-29 08.01.46.excalidraw | center]]

Questo è lo stesso principio di funzionamento di un generatore.

## Generalizzazione della Terza Legge di Maxwell

Grazie a Faraday sappiamo che: $$\xi = -\frac{d}{dt}\int_S \overrightarrow B \cdot d \overrightarrow S$$
*Con $\xi$ la forza elettromotrice o differenza di potenziale indotta*.
Quindi c'è un campo elettrico $\overrightarrow E$ all'interno della spira in questo circuito
Tuttavia, è anche vero che: $$\xi = V_B - V_A = \int_A^B \overrightarrow E \cdot d \overrightarrow \ell$$
Da cui otteniamo che, se $\gamma$ è un circuito chiuso: $$\fbox{$\oint_\gamma \overrightarrow E \cdot d \overrightarrow \ell = -\frac d{dt}\oint_S \overrightarrow B \cdot d \overrightarrow S$}$$
*Nel caso statico avremmo che $$\oint_\gamma \overrightarrow E \cdot d \overrightarrow \ell = 0$$*

****

# Induttori e Induttanza

L'induttore è il dispositivo utilizzato per produrre un campo magnetico noto in una determinata regione

>[!def] **Definizione di Induttanza**
>Si definisce induttanza di un solenoide (di $N$ spire) percorse da una corrente $I$ il valore: $$L \equiv\frac{N\Phi(\overrightarrow B)}{I}$$
>Si misura in $[L] = \frac{Tm^2}{A} \equiv H$ (henny)

Vediamo come si comporta l'induttanza in un solenoide di lunghezza $\ell$, con $N$ spire e corrente $I$

![[Induttanza in un Solenoide]]

## Autoinduzione 

Consideriamo un solenoide in cui l'intensità di corrente $I$ varia nel tempo $I=I(t)$
Sappiamo che se $I$ varia nel tempo, allora abbiamo che si genera un campo magnetico $B(t)$ e quindi varia il flusso $\Phi_B(t)$ e quindi per la legge di Faraday abbiamo che esiste una $\xi$ differenza di potenziale.

![[Drawing 2023-12-04 17.44.14.excalidraw | center]]

Per la definizione di $L$ abbiamo che: $$n\Phi_B = LI$$
Per Faraday segue allora che: $$\xi_L = -\frac{d}{dt}(N\Phi_B)\quad \Leftrightarrow \quad \xi_L = -\frac{d}{dt}(L\Phi_B)$$
Da cui arriviamo poi a: $$\xi_L = -L\frac{d\Phi_B}{dt}$$

## Circuiti RL

![[Drawing 2023-12-04 18.30.10.excalidraw | center]]

>[!def] **Definizione di Circuito RL**
>Un Circuito RL è un circuito chiuso in cui sono collegati in serie un induttore, una resistenza e un interruttore.

Possiamo fare la distinzione tra quando è in aumento e quando è in diminuzione

### In Aumento

Poniamo per comodità, l'istante $t=0$ come l'istante in cui chiudiamo l'interruttore (quindi per istanti $t<0$ è tutto fermo)
La corrente in questo caso è in aumento e gira in senso orario e dalla legge delle maglie abbiamo che: $$V = V_R - \xi_L$$
Andando a sostituire le leggi di Ohm e di Faraday otteniamo che: $$\fbox{$\frac{dI}{dt} + \frac RL I = \frac VL$}\qquad \xRightarrow{\text{Risolvendo}} \qquad \fbox{$I(t) = \frac VR \left(1-e^{-\frac RLt}\right)$}$$

Possiamo definire come la Costante di Tempo Induttiva il valore: $$\tau_L = \frac LR \qquad \text{Da cui}\qquad I(t) = \frac VR \left( 1-e^{-\frac t {\tau_L}} \right)$$

![[Drawing 2023-12-04 18.56.25.excalidraw | center]]

In particolare abbiamo che: $$\left. \frac{dI}{dt}\right|_{t = 0} = \frac VR \cdot \frac 1{\tau_L}$$
Abbiamo anche che per $t>> \tau_L$ si ha che: $$I(t>> \tau_L) \rightarrow \frac VR$$
Quando si ha questa situazione si dice che il circuito è in equilibrio.

*Inizialmente l'induttanza si comporta in modo da contrastare la variazione di corrente. Dopo invece un certo tempo $(t>> \tau_L)$ si ha che si comporta come un semplice filo ocnduttore*

Inoltre all'istante $t = \tau_L$ si ha che: $$I(t = \tau_L) = \frac VR (1-e^{-1}) \approx \frac VR \cdot 0.63$$ cioè $\tau_L$ è il tempo necessario affinché la corrente raggiunga il $63\%$ del suo massimo

### In Diminuzione 

In questo caso abbiamo che; $$\frac{dI}{dt}<0\qquad \text e \qquad V_R + \xi_L = 0$$
Per le leggi precedenti diventa: $$\fbox{$RI + L\frac{dI}{dt}=0$}\qquad \Rightarrow \qquad \fbox{$I(t) = \frac VR e^{-\frac RTL}$}$$
*Abbiamo ottenuto questo risultato dopo aver posto che $I(t = 0) = \frac VR$*

![[Drawing 2023-12-04 19.21.20.excalidraw | center]]

Raggiungiamo quindi una situazione di equilibrio quando $I(t>> \tau_L)\rightarrow 0$

## Induttanze in Serie 

![[Drawing 2023-12-05 06.47.05.excalidraw | 100%]]

Sapendo che sono collegate in serie abbiamo che l'intensità di corrente è costante: $$I = I_1 = I_2$$
In particolare, per la legge di Faraday abbiamo che: $$\xi_1 = -L_1 \frac {dI_1}{dt}\quad \xi_2 = -L_2 \frac{dI_2}{dt}\quad \Rightarrow \quad \xi_{eq} = \xi_1 + \xi_2 = -L_1\frac{dI_1}{dt} - L_2\frac{dI_2}{dt} \quad \xRightarrow{I_1 = I_2} \quad \fbox{$\xi_{eq}-(L_1 + L_2)\frac{dI}{dt}$}$$
Quindi abbiamo che: 

![[Drawing 2023-12-05 06.59.25.excalidraw | 100%]]

In generale abbiamo che: $$\fbox{$L_{eq} = \sum_{i = 1}^n L_i$}$$

## Induttanze in Parallelo

![[Drawing 2023-12-05 07.02.18.excalidraw | center]]

In questo caso abbiamo che la differenza di potenziale è uguale sia prima sia dopo, cioè: $$\xi = \xi_1 = \xi_2$$
Quello però che cambia è l'intensità di corrente: $$I = I_1 + I_2$$
Dalla legge di Faraday abbiamo che: $$\xi_1 = -L_1\frac{dI_1}{dt}\qquad \xi_2 = -L_2\frac{dI_2}{dt}$$
Tuttavia, sapendo che $I_2 = I-I_1$ otteniamo che: $$\frac{dI_2}{dt} = -\frac{dI}{dt} + \frac{dI_1}{dt}\qquad \xi_2 = -L_2\frac{dI_2}{dt} - \frac{L_2}{L_1}\xi_1$$
Inoltre, sapendo che $\xi_1 = \xi_2 = \xi$ otteniamo che: $$\fbox{$\xi = -\frac{L_2L_1}{L_1 + L_2}\frac{dI}{dt}$}\qquad \Leftrightarrow \qquad \fbox{$L_{eq} = \frac{L_2L_1}{L_1 + L_2}$}$$

![[Drawing 2023-12-05 07.12.47.excalidraw | 100%]]

****

<div style="page-break-after: always;"></div>

# Energia Immagazzinata in un Campo Magnetico

Supponiamo di avere un circuito RL in aumento, allora vogliamo trasformare la legge: $$VI = RI^2 + LI\frac{dI}{dt}$$ in un bilancio di energia 
*Abbiamo che $VI$ è la potenza dissipata dal generatore, $RI^2$ è la potenza dissipata dalla resistenza e $LI \frac{dI}{dt}$ è la potenza immagazzinata nel campo magnetico generato dall'induttore*

Sapendo che $[P] = \frac Js \simeq W$ otteniamo che: $$P_L = \frac{dE_L}{dt}\qquad \text{Con }E_L \text{ Energia Meccanica}$$
Otteniamo quindi che: $$P_L = LI \frac{dI}{dt} \quad \Rightarrow \quad E_L = \int P_L dt = \int LI \frac{dI}{dt}dt = L\int I \frac{dI}{dt}dt = L\int IdI \quad \Rightarrow \quad \fbox{$E_L = L\frac{I^2}2$}$$
Questa è l'energia Meccanica Imaggazzinata in un campo magnetico

## Densità di Energia in um campo Magnetico 

Andiamo a calcolare l'energia meccanica nel caso particolare di un solenoide lungo (cioè con $\ell >> \sqrt S$) avente $n$ spire per lunghezza e $L$ induttanza

![[Drawing 2023-12-05 07.24.06.excalidraw | center]]

Per un solenoide lungo ($\ell \rightarrow ∞$) abbiamo che: $$\begin{cases}B = \mu_0nI\\ L = \mu_0 n^2 S\ell\end{cases}$$
Andando a sostituire con quanto trovato nella formula precedente abbiamo che: $$E_L = \frac{n^2 \mu_0 S\ell}{2}\left(\frac{B}{\mu_0n}\right)^2 \quad \Rightarrow \quad \fbox{$\frac{E_L}{S} = \frac 12 \frac{B^2}{\mu_0} = \rho_B$}$$

>[!def] **Definizione di Densità di Energia Magnetica**
>Si definisce densità di Energia Magnetica la quantità: $$\rho_B = \frac 12 \frac{B^2}{\mu_0}$$

Vediamo un esempio in cui calcoliamo / utilizziamo $\rho_B$

![[Esempio sulla Densità di Energia Magnetica]]

****

# Campi Magnetici Indotti e la legge di Ampère - Maxwell

**Osservazione**: All'interno di un condensatore in carica si genera un campo magnetico oltre ad uno elettrico

Supponiamo infatti di avere un condensatore circolare con raggio $R$ a distanza $d$ fra le armature

![[Drawing 2023-12-05 07.42.38.excalidraw | center]]

Se $I$ dipende dal tempo, cioè $I=I(t)$ allora abbiamo che $\overrightarrow B≠0$ e per la legge di Maxwell dovremmo avere: $$\oint_\gamma \overrightarrow B\cdot d \overrightarrow \ell = \mu_0 I_{Conc}$$
Tuttavia, sapendo che non passano effettive correnti all'interno della curva $\gamma$, dovremmo avere che questo integrale è nullo. Ma non è così, quindi ci deve essere necessariamente essere un'altra componente.

In un condensatore in carica abbiamo che: $$Q = Q(t) = \underbrace{Q_{max}}_{CV}\left(1 - e^{(-\frac t{\tau_C})}\right)$$
Se abbiamo il condensatore in carica, per un $t< \tau_C$ abbiamo che: $$E(t) = \frac{\sigma(t)}{\varepsilon_0} = \frac{Q(t)}{π R^2 \varepsilon_0}\qquad \Rightarrow \qquad \fbox{$E(t) = \frac{Q_{max}}{\pi R^2 \varepsilon_0}\left(1- e^{-\frac t{\tau_C}}\right)$}$$

Inoltre per un $t>> \tau_C$ si *osserva* che: $$E(t) \rightarrow \frac{Q_{max}}{\pi R^2 \varepsilon_0} \qquad \text e \qquad B \rightarrow 0$$

Quindi si ha questa serie di correlazioni: $$B≠0 \quad \Leftrightarrow \quad E = E(t) \quad \Leftrightarrow \quad \Phi_E = \Phi_E(t) \quad \Leftrightarrow \quad \frac d{dt}\Phi_S(\overrightarrow E)≠0$$

Quindi a questo punto siamo pronti per dare la nuova versione della legge di Maxwell: 

>[!th]  **Quarta Legge di Maxwell**
>$$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \mu_0 I_{Conc} + \mu_0 \varepsilon_0 \frac{d\Phi_S(\overrightarrow E)}{dt}\qquad \text{con }\gamma = ∂S$$

![[Esempio di Applicazione della Quarta Legge di Maxwell]]

>[!def] **Definizione di Corrente di Spostamento**
>Possiamo definire come Corrente di Spostamento la quantità: $$I_{SP}= \varepsilon_0 \frac{d}{dt}\left(\Phi_S(\overrightarrow E(t))\right)$$

Va sottolineato che a questa quantità non è associato nessuno spostamento di carica, nonostante dimensionalmente ritorni esattamente quello di una carica in movimento. 

Ritorniamo un secondo al caso precedente, del condensatore piano con armature circolari.
Se uniamo i due capi del del circuito con un filo conduttore, allora abbiamo che nei fili c'è una corrente: $$I = \frac{dq(t)}{dt}$$
La corrente sulle armature del condensatore è pari a $q(t)$, in particolare: $$\|\overrightarrow E\| = \frac{q(t)}{\varepsilon_0 A}\qquad \text{Per la legge di Gauss}$$
In particolare, abbiamo che: $$\|\overrightarrow E\| = \frac{q(t)}{\varepsilon_0 A} \Rightarrow q(t) = \|\overrightarrow E\| \varepsilon_0 A \Rightarrow \frac{dq(t)}{dt} = \varepsilon_0 A \frac{d\| \overrightarrow E\|}{dt} \Rightarrow \frac{dq(t)}{dt} = \varepsilon_0  \underbrace{\frac{d A\| \overrightarrow E\|}{dt}}_{\Phi_A(\overrightarrow E)} = \varepsilon_0 \Phi_A(\overrightarrow E) = I_{SP}$$
Quindi la corrente reale di carica e la corrente fittizia di spostamento hanno lo stesso valore assoluto e il modulo del campo magnetico vale: $$\fbox{$\|\overrightarrow B\| = \begin{dcases}\frac{\mu_0 I_{SP} r}{2 \pi R^2} & r<R\\ \frac{\mu_0 I_{SP}}{2 \pi r} & r>R\end{dcases}$}$$

****

<div style="page-break-after: always;"></div>

# Leggi Di Maxwell Generalizzate

Nei capitoli precedenti abbiamo visto che per $S$ superficie chiuse e $\gamma = ∂S$: $$\oint_S \overrightarrow E\cdot d\overrightarrow S = \frac{Q_{int}}{\varepsilon_0}\qquad \oint_S \overrightarrow B \cdot d\overrightarrow S = 0\qquad \oint_\gamma \overrightarrow E\cdot d \overrightarrow \ell = -\frac{d}{dt} \oint_S \overrightarrow B \cdot d\overrightarrow S \qquad \oint_\gamma \overrightarrow B\cdot d \overrightarrow \ell = \mu_0\left(I_{Conc}+ \varepsilon_0\frac{d}{dt}\oint_S \overrightarrow E \cdot d \overrightarrow S\right)$$

Ricordiamo due teoremi che ci permetteranno di scrivere le formule in forma differenziale:
- *Teorema di Stokes*: Sia $\overrightarrow F$ un campo vettoriale in $\mathbb R^3$ e sia $S$ una superficie con bordo $\gamma$ ($\gamma = ∂S$), allora: $$\oint_\gamma \overrightarrow F \cdot d \overrightarrow \ell = \int_S (\overrightarrow \nabla \times \overrightarrow F)d\overrightarrow S$$
<br>
- *Teorema della Divergenza*: Sia $\overrightarrow F$ un campo vettoriale su $\mathbb R^3$ e siano $S$ e $\gamma$ come nel teorema precedente, allora $$\oint_S\overrightarrow F\cdot d \overrightarrow S = \int_V(\overrightarrow \nabla \times \overrightarrow F)dV$$

Vediamo anche dei risultati notevoli: $$\rho = \frac{dQ}{dV} \quad \Rightarrow \quad \fbox{$Q_{int} = \int_V \rho dV$}\qquad\text e \qquad \overrightarrow j = \frac{dI}{dS} \quad \Rightarrow \quad \fbox{$I_{Conc} = \int_S\overrightarrow j \cdot d \overrightarrow S$}$$

Andiamo ad analizzare le Leggi di Maxwell una per una:

### Prima Legge - Legge di Gauss

Dalla prima legge utilizziamo il teorema della divergenza e otteniamo che: $$\oint_S \overrightarrow E \cdot d \overrightarrow S = \frac{Q_{int}}{\varepsilon_0} \quad \Rightarrow \quad \oint_S \overrightarrow E \cdot d \overrightarrow S = \int_V \overrightarrow \nabla \cdot \overrightarrow E\; dV \xlongequal{\text{Per prima}}\frac{1}{\varepsilon_0}\int\rho dV\quad \Rightarrow \quad \fbox{$\int_V \overrightarrow \nabla \cdot \overrightarrow E \; dV = \int_V \frac{\rho}{\varepsilon_0}dV$}$$
Poiché la cosa deve essere valida per ogni volume, abbiamo che le funzioni integrande devono essere uguali: $$\fbox{$\overrightarrow \nabla \cdot \overrightarrow E = \frac{\rho}{\varepsilon_0}$}$$

### Seconda Legge - Legge di Gauss

Basta applicare il teorema della divergenza come nel caso precedente:
$$\oint_S \overrightarrow B \cdot d \overrightarrow S = 0\quad \xRightarrow{\text{Divergenza}}\quad \int_V \overrightarrow \nabla \cdot \overrightarrow B \; dV=0 \quad \xRightarrow{\forall V} \quad \fbox{$\overrightarrow \nabla \cdot \overrightarrow B = 0$}$$

### Terza Legge - Legge di Faraday

Dalla terza legge, applicando il teorema di Stokes otteniamo che: $$\oint_\gamma \overrightarrow E \cdot d \overrightarrow \ell = - \frac{d}{dt}\oint_S \overrightarrow B \cdot d \overrightarrow S \quad \Rightarrow \quad \int_S(\overrightarrow \nabla \cdot \overrightarrow E) \cdot d \overrightarrow S = -\frac{d}{dt}\oint_S \overrightarrow B \cdot d \overrightarrow S$$
Inoltre visto che abbiamo una superficie $S$ fissata e indipendente dal tempo, abbiamo che: $$\int_S(\overrightarrow \nabla \cdot \overrightarrow E) \cdot d \overrightarrow S = -\frac{d}{dt}\oint_S \overrightarrow B \cdot d \overrightarrow S = - \int_S \left(\frac{∂}{∂t}\overrightarrow B\right)\cdot \overrightarrow S$$
Sapendo poi che la cosa vale per ogni superficie $S$, abbiamo che: $$\fbox{$\overrightarrow \nabla \times \overrightarrow E = -\frac{∂}{∂t} \overrightarrow B$}$$

### Quarta Legge - Legge di Ampère-Maxwell

Utilizzando la definizione di densità di corrente $\overrightarrow j$ si ha che: $$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \mu_0 \left(I_{Conc} + \varepsilon_0 \frac d{dt} \oint_S \overrightarrow E\cdot d \overrightarrow S\right) \quad \Rightarrow \quad \oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell = \mu_0 \left(\int_S \overrightarrow j \cdot d \overrightarrow S + \varepsilon_0 \int_S \frac{∂\overrightarrow E}{∂t}\cdot d\overrightarrow S\right)$$
Per il teorema di Stokes segue che:
$$\oint_\gamma \overrightarrow B \cdot d \overrightarrow \ell =\int_S(\overrightarrow \nabla \times \overrightarrow B)dS= \int_S\left(\mu_0 \overrightarrow j + \varepsilon_0 \mu_0\frac{∂\overrightarrow E}{∂t}\right)\cdot d\overrightarrow S$$
Inoltre, sapendo che vale per ogni superficie abbiamo che: $$\fbox{$\overrightarrow \nabla \times \overrightarrow B = \mu_0 \overrightarrow j + \varepsilon_0 \mu_0\frac{∂\overrightarrow E}{∂t}$}$$

## Riassumendo

Le nuove leggi di Maxwell scritte in maniera differenziale sono:
$$\overrightarrow \nabla \cdot \overrightarrow E = \frac \rho{\varepsilon_0}\qquad \overrightarrow \nabla \cdot \overrightarrow B = 0\qquad \overrightarrow \nabla \times \overrightarrow E = -\frac{∂\overrightarrow B}{∂t}\qquad \overrightarrow \nabla \times \overrightarrow B = \mu_0 \left(\overrightarrow j + \varepsilon_0 \frac{∂\overrightarrow E}{∂t}\right)$$

Se consideriamo il sistema delle quattro equazioni, otteniamo un sistema differenziale non omogeneo per $\overrightarrow E$ e $\overrightarrow B$
*Trovare una soluzione esatta è difficile, per questo ci bastano delle approssimazioni*

Poi possiamo distinguere anche dei casi particolari:
- Elettrostatica e Magnetostatica (*sono i casi che abbiamo già studiato in precedenza*): $$\frac{∂\overrightarrow E}{∂t} = \frac{∂ \overrightarrow B}{∂t} = 0$$
<br>
- Nel vuoto (*Senza sorgenti*): $$\overrightarrow j = \rho = 0$$
  In questo caso otteniamo poi che: $$\overrightarrow \nabla \times \overrightarrow E = \overrightarrow \nabla \times \overrightarrow B = 0\qquad \text e \qquad \overrightarrow \nabla \times \overrightarrow E = -\frac{∂\overrightarrow B}{∂t}\quad \overrightarrow \nabla \times \overrightarrow B = \varepsilon_0 \mu_0 \frac{∂\overrightarrow E}{∂t}$$
<br>
- Nel caso statico e nel vuoto (*unendo i due prima*): $$\overrightarrow \nabla \cdot \overrightarrow E = \overrightarrow \nabla \cdot \overrightarrow B = \overrightarrow \nabla \times \overrightarrow E = \overrightarrow \nabla \times \overrightarrow B = 0\qquad \text{Cioè }\overrightarrow E \; \text e \; \overrightarrow B \text{ sono costanti}$$

## Conservazione dell'Energia 

La conservazione dell'energia è già implicita nelle leggi di Maxwell, in particolare, ponendo la divergenza nella quarta abbiamo: 
$$\overrightarrow \nabla \times \overrightarrow B = \mu_0 \overrightarrow j + \mu_0 \varepsilon_0 \frac{∂\overrightarrow E}{∂t}\qquad \Rightarrow \qquad \overrightarrow \nabla \cdot (\overrightarrow \nabla \times \overrightarrow B) = \overrightarrow \nabla \cdot \left(\mu_0 \overrightarrow j + \varepsilon_0 \mu_0 \frac{∂\overrightarrow E}{∂t}\right)$$
Risolvendo per $\overrightarrow \nabla \times \overrightarrow j$ otteniamo che:
$$\overrightarrow \nabla \cdot (\overrightarrow \nabla \times \overrightarrow B) =\overrightarrow \nabla \cdot \left(\mu_0 \overrightarrow j + \varepsilon_0 \mu_0 \frac{∂\overrightarrow E}{∂t}\right) \quad \Rightarrow \quad \overrightarrow \nabla \cdot \overrightarrow j = \frac 1{\mu_0} \left(\underbrace{\overrightarrow \nabla \cdot (\overrightarrow \nabla \times\overrightarrow B)}_{0}\right) - \varepsilon_0 \overrightarrow \nabla \cdot \left(\frac{∂\overrightarrow E}{∂t}\right) \quad \Rightarrow \quad \overrightarrow \nabla \cdot \overrightarrow j = -\varepsilon_0 \overrightarrow \nabla\cdot \left(\frac{∂\overrightarrow E}{∂t}\right)$$
In particolare, sviluppando la seconda parte abbiamo che: $$\begin{align*}
\overrightarrow \nabla \cdot \frac{∂\overrightarrow E}{∂t} &= \frac ∂{∂x}\frac{∂E_x}{∂t} + \frac ∂{∂y}\frac{∂E_y}{∂t} + \frac ∂{∂z}\frac{∂E_z}{∂t} = \frac{∂}{∂t}\left(\frac ∂{∂t}E_x + \frac{∂}{∂y}E_y + \frac ∂{∂z}E_z\right) = \frac{∂}{∂t}\left(\overrightarrow \nabla \times \overrightarrow E\right)\xlongequal{\text{Gauss}}\frac{∂}{∂t}\frac \rho{\varepsilon_0}\end{align*}$$
Da cui otteniamo che: $$\fbox{$\overrightarrow \nabla \cdot \overrightarrow j = -\frac{∂\rho}{∂t}$}$$

*L'equazione che abbiamo appena ottenuto è un'equazione di continuità che spiega a livello di carica la conservazione della carica*, cioè la densità di carica deve variare in ogni punto in cui la densità di corrente è non nulla, cioè la carica è conservata localmente (per ogni volume infinitesimo)

Integrando l'equazione di continuità in un volume $V$ con bordo $S$ ($S = ∂V$) otteniamo che: 
$$\int_V \frac{∂\rho}{∂t}dV =-\int_V -\overrightarrow \nabla \times \overrightarrow j\; dV$$
Utilizzando poi il teorema della Divergenza abbiamo che
$$\int_V \frac{∂\rho}{∂t}dV =- \underbrace{\oint_S \overrightarrow j \cdot d \overrightarrow S}_I$$
Inoltre se abbiamo una superficie $V$ fissata, cioè indipendente dal tempo, abbiamo che: $$\int_V \frac{∂\rho}{∂t}dV = \frac{d}{dt}\int_V \rho\; dV = \frac{d}{dt}Q_{int}$$
Da cui otteniamo che: $$\fbox{$\frac{d}{dt}Q_{int} = - I$}$$

****

<div style="page-break-after: always;"></div>

# Onde Elettromagnetiche

Consideriamo la terza e la quarta legge di Maxwell nel vuoto: 
$$\overrightarrow \nabla \times \overrightarrow E = -\frac{∂\overrightarrow B}{∂t}\qquad \text e \qquad \overrightarrow \nabla \times \overrightarrow B = \varepsilon_0\mu_0 \frac{∂\overrightarrow E}{∂t}$$
Dalla terza legge prendiamo le derivate temporali: 
$$\frac{∂}{∂t}\left(\overrightarrow \nabla \times \overrightarrow E\right) = -\frac{d^2\overrightarrow B}{∂t^2} \qquad \xLeftrightarrow{\text{Prima}}\qquad \overrightarrow \nabla \times\left(\frac{∂\overrightarrow E}{∂t}\right) = -\frac{∂^2\overrightarrow B}{∂t^2}$$
Sfruttando poi la quarta legge di Maxwell abbiamo che:
$$\overrightarrow \nabla \times \overrightarrow B = \varepsilon_0\mu_0 \frac{∂\overrightarrow E}{∂t}\Rightarrow \frac{∂\overrightarrow E}{∂t} = \frac{\overrightarrow \nabla \times \overrightarrow B}{\mu_0 \varepsilon_0}\quad \Rightarrow \quad \overrightarrow \nabla \times\left(\frac{∂\overrightarrow E}{∂t}\right) =\overrightarrow \nabla \times \left(\frac{\overrightarrow \nabla \times \overrightarrow B}{\mu_0 \varepsilon_0}\right)= -\frac{∂^2\overrightarrow B}{∂t^2}$$
Inoltre, sapendo che, dato un campo vettoriale $\overrightarrow F$: $$\overrightarrow \nabla \times(\overrightarrow \nabla\times \overrightarrow F) = -\overrightarrow \nabla^2 \cdot \overrightarrow F + \overrightarrow \nabla \cdot (\overrightarrow \nabla \cdot \overrightarrow F)$$
E sapendo anche che: $$\overrightarrow F = \overrightarrow B \qquad \Rightarrow \qquad \overrightarrow \nabla \cdot \overrightarrow F = \overrightarrow \nabla \cdot \overrightarrow B = 0$$
Si ottiene che: 
$$\fbox{$\overrightarrow \nabla ^2 \cdot \overrightarrow B = \varepsilon_0 \mu_0 \frac{∂^2\overrightarrow B}{∂t^2}$}$$

In modo del tutto analogo partendo dalla quarta legge otteniamo che: $$\overrightarrow \nabla \times \overrightarrow B = \mu_0 \varepsilon_0\frac{∂\overrightarrow E}{∂t}\qquad \xRightarrow{\text{Derivate temporali}}\qquad \overrightarrow \nabla \times \frac{∂\overrightarrow B}{∂t} = \mu_0 \varepsilon_0 \frac{∂^2 \overrightarrow E}{∂t^2}$$
Da quanto abbiamo visto prima abbiamo che: $$\frac{∂\overrightarrow B}{∂t} = -\overrightarrow \nabla \times \overrightarrow E\qquad \Rightarrow \qquad \overrightarrow \nabla \times \overrightarrow \nabla \times \overrightarrow E = \varepsilon_0 \mu_0 \frac{∂^2 \overrightarrow E}{∂t^2}$$
Conoscendo poi lo sviluppo di $\overrightarrow \nabla \times \overrightarrow \nabla \times \overrightarrow E$ e sapendo di stare nel vuoto, otteniamo che: $$\fbox{$\overrightarrow \nabla^2 \cdot \overrightarrow E = \varepsilon_0 \mu_0\frac{∂^2 \overrightarrow E}{∂t^2}$}$$

>[!th] **Definizione di Equazione delle Onde**
>Sia il campo elettrico $\overrightarrow E$ sia il campo magnetico $\overrightarrow B$ risolvono la seguente equazione, che prende il nome di Equazione delle Onde
>$$\overrightarrow \nabla^2 f(t, \overrightarrow x) = -\frac 1{c^2} \frac{∂^2}{∂t^2}f(t, \overrightarrow x) = 0$$

Dimensionalmente parlando, $c$ è una velocità, in particolare è la velocità di propagazione dell'onda
Per le onde elettromagnetiche nel vuoto si ha che: $$\frac 1{c^2} = \varepsilon_0 \mu_0\qquad c \approx 2,99 \cdot 10^8 m/s$$
Questa è la velocità della luce nel vuoto.

Risolviamo l'equazione delle onde prima in casi specifici più semplici per poi andare a studiare con il campo elettrico e con il campo magnetico:

### Risoluzione in Una Dimensione

Sia $f(t,x)$ una funzione che soddisfa l'equazione delle onde con velocità di propagazione $v$: 
$$\frac{∂^2}{∂x^2}f(t,x) - \frac 1{v^2}\frac{∂^2}{∂t^2}f(t, x)=0$$
$f$ può essere di qualsiasi tipo e può dipendere da $\phi_\pm = x\pm vt$, cioè se $f$ dipende da $t$ e $x$ tramite una funzione $\phi_\pm$, ossia: $$f(t,x) = f(\phi_\pm = x\pm vt)\qquad \text{Con }\phi_\pm \text{ funzione che descrive la fase dell'onda}$$

**Verifica**:
Mostriamo quindi l'uguaglianza. Nel fare ciò mostriamo che sono uguali le derivate prime e seconde sia rispetto al tempo sia rispetto alla posizione.
Per il tempo:
$$f(t,x)=f(\phi_\pm) \Leftrightarrow \begin{dcases}\frac{∂}{∂t}f(x,t) = \frac{∂}{∂t}f(\phi_\pm) = \frac{∂f}{∂\phi_\pm}\frac{∂\phi_\pm}{∂t} = \pm v \frac{∂f}{∂\phi_{pm}} & \left(\frac{∂\phi_\pm}{∂t} = \pm v\right)\\
\frac{∂^2}{∂t^2}f(t,x) = \frac{∂}{∂t}\left(\frac{∂}{∂t}f(t,x)\right)= \frac{∂}{∂\phi_\pm}\left(\pm v \frac{∂f}{∂\phi_\pm}\right)\frac{∂\phi_\pm}{∂t}\end{dcases}$$
Da cui otteniamo che: $$\fbox{$\frac{∂^2f}{∂t^2} = v^2 \frac{∂^2d}{d\phi_\pm^2}$}$$
Per la posizione:
$$f(t,x)=f(\phi_\pm) \Leftrightarrow \begin{dcases}\frac{∂}{∂x}f(t,x) = \frac{∂}{∂x}f(\phi_\pm) = \frac{∂f}{∂\phi_\pm}\frac{∂\phi_\pm}{∂x} = \frac{∂f}{∂\phi_\pm} & \left(\frac{∂\phi_\pm}{∂x} = 1\right)\\ \text{In maniera uguale a sopra si ottiene che }\frac{∂^2}{∂x^2}f(x,t) = \frac{∂^2f}{∂x^2}\frac{∂^2f}{∂\phi_\pm^2}\end{dcases}$$
Da cui otteniamo che: 
$$\fbox{$\frac{∂^2f}{∂x^2} = \frac{∂^2f}{∂\phi_\pm^2}$}$$
Mettendo tutto insieme otteniamo che: $$\fbox{$\frac{∂^2f}{∂t^2} = v^2\frac{∂^2f}{∂x^2}$}$$
E quindi l'equazione è verificata
<p style="text-align:right;">⃞</p>

Vediamo il profilo d'onda, cioè quando l'onda si sposta da $x_0$

![[Drawing 2023-12-13 06.43.53.excalidraw | center]]

Andiamo a vedere che succede quando l'onda si sposta.
Andiamo più che altro (*nel caso del disegno*) a studiare il massimo della funzione
Abbiamo che con $t_1>t_0$ si ha che: $$f(t_0, x_0) = f(t_1,x_1)$$
Per quanto appena visto, questo è equivalente a scrivere a: $$f(x_0 \pm v t_0) = f(x_1 \pm vt_1) \quad \Leftrightarrow \quad x_0 \pm vt_0 = x_1 \pm vt_1\quad \Rightarrow \quad \fbox{$x_1 = x_0 \mp v(t_1-t_0)$}$$
Quindi se il segno della funzione $\phi_\pm$ è $-$ (*quindi abbiamo $\phi_-$*) allora abbiamo che l'onda si propaga con velocità $-v$ e $$x_1 = x_0 + v(t_1-t_0)$$
Se invece il segno della funzione $\phi_\pm$ è $+$ (*quindi $\phi_+$*) allora abbiamo che l'onda si propaga con velocità $v$ e: 
$$x_1 = x_0 - v(t_1-t_0)$$

### Generalizzazione a Tre Dimensioni

In generale, sulla pista del caso monodimensionale, le soluzioni sono del tipo: 
$$f(t, \overrightarrow x) = f(\overrightarrow k \cdot \overrightarrow x \pm \omega t)$$
Dove $\overrightarrow k \in \mathbb R^3$ è la direzione di propagazione dell'onda e $\omega \in \mathbb R$ è la pulsazione dell'onda

Siccome l'equazione è lineare, possiamo dire che c'è un insieme completo di soluzioni indipendenti dato dalle onde piane.

>[!def] **Definizione di Onde Piane**
>Delle onde elettromagnetiche si definiscono onde piane se sono soluzione di un'equazione lineare, in particolare se risolvono: $$f(\overrightarrow k \cdot \overrightarrow x+ \omega t) = f_0 \sin(\overrightarrow k \cdot \overrightarrow x + \omega t)$$
> Dove $f_0$ è l'ampiezza dell'onda, $\overrightarrow k$ è il numero d'onda misurato in $[\overrightarrow k] = m^{-1}$ e $\omega$ è la frequenza misurata in $s^{-1}$

A tempo fissato abbiamo che: 

![[Drawing 2023-12-13 07.05.18.excalidraw | center]] 

La lunghezza d'onda $\lambda$ ci da la periodicità spaziale dell'onda
Per ottenere $k$ infatti possiamo: 
$$\sin(kx_0 \pm \omega t) = \sin(k(x_0 + \lambda)\pm \omega t)\quad \Leftrightarrow \quad kx_0 = k(x_0 + \lambda) + 2 \pi \quad \Rightarrow \quad \fbox{$k = \frac{2 \pi}{\lambda}$}$$

Quando invece abbiamo la posizione fissata otteniamo che:

![[Drawing 2023-12-13 07.22.22.excalidraw | center]]

Conoscendo la periodicità temporale possiamo calcolare $\omega$: 
$$f(kx \pm \omega t_0) = f(kx_0 \pm) \qquad \Rightarrow \qquad \fbox{$\omega = \frac{2 \pi}{T}$}$$

Nel caso in cui abbiamo $\overrightarrow k$ vettore, abbiamo che: $$\omega = \frac{2\pi}{T}\qquad \text e \qquad \lambda = \frac{2 \pi}{\|\overrightarrow k\|}$$
Inoltre, sapendo che: $$v = \frac \lambda T \qquad \Rightarrow \qquad \frac{\omega}{\|\overrightarrow k\|}\qquad \Rightarrow \qquad \fbox{$\omega = \overrightarrow k \cdot \overrightarrow v$}$$

Andiamo ora a sostituire $\overrightarrow E$ e $\overrightarrow B$ al posto di $f(t, \overrightarrow x)$:
$$\overrightarrow \nabla^2 \overrightarrow E - \frac 1{c^2} \frac{∂^2\overrightarrow E}{∂t^2}=0\qquad \text e \qquad \overrightarrow \nabla^2 \overrightarrow B - \frac 1{c^2}\frac{∂^2\overrightarrow B}{∂t^2}=0$$
Vogliamo vedere delle soluzioni che siano del tipo: $$\overrightarrow E (t, \overrightarrow x) = \overrightarrow E_0 \cos(\overrightarrow k \cdot \overrightarrow x \pm \omega t)\qquad \text e \qquad \overrightarrow B(t , \overrightarrow x) = \overrightarrow B_0\cos(\overrightarrow k \cdot \overrightarrow x \pm \omega t)$$

*Per quanto fatto prima per il caso generale di $\overrightarrow f$, poiché verifica l'equazione delle onde, verifica anche questo tipo di soluzioni*

<div style="page-break-after: always;"></div>

In particolare vale: 

>[!prop] **Proposizione**
>Nel vuoto si ha che $$\overrightarrow k \cdot \overrightarrow E = 0\qquad \text e \qquad \overrightarrow k \cdot \overrightarrow B = 0$$

**Dimostrazione**:
In coordinate cartesiane abbiamo che: $$\overrightarrow \nabla = \left(\frac{∂}{∂x}, \frac{∂}{∂y}, \frac{∂}{∂z}\right)$$
Da cui otteniamo che:
$$\begin{align*}\overrightarrow \nabla \cdot \overrightarrow E
&= \frac{∂}{∂x} \left(E_x\cos (\overrightarrow k \cdot \overrightarrow x \pm \omega t)\right) +\frac{∂}{∂y} \left(E_y\cos (\overrightarrow k \cdot \overrightarrow x \pm \omega t)\right) + \frac{∂}{∂z} \left(E_z\cos (\overrightarrow k \cdot \overrightarrow x \pm \omega t)\right)\\
&= -E_{0,x} \sin(\overrightarrow k \cdot \overrightarrow x +\pm \omega t) -E_{0,y} \sin(\overrightarrow k \cdot \overrightarrow x +\pm \omega t) -E_{0,z} \sin(\overrightarrow k \cdot \overrightarrow x +\pm \omega t) = 0
\end{align*}$$
Da cui si ottiene che: $$\overrightarrow k \cdot \overrightarrow E_0 = 0\quad \Rightarrow \quad \overrightarrow k \cdot \overrightarrow E=0 \quad \Rightarrow \quad \overrightarrow k\perp \overrightarrow E$$
*In maniera del tutto analoga anche per il campo magnetico $\overrightarrow B$*
<p style="text-align:right;">⃞</p>

Mostriamo anche che $\overrightarrow B \perp \overrightarrow E$

**Dimostrazione**:
Andiamo a vedere il rotore di $\overrightarrow E$:
$$\overrightarrow \nabla \times \overrightarrow E = \left( \frac{∂}{∂\overrightarrow x}\right)\times \left(\overrightarrow E_0 \cos(\overrightarrow k \cdot \overrightarrow x \pm \omega t)\right) = -(\overrightarrow k \cdot \overrightarrow E_0) \sin (\overrightarrow k \cdot \overrightarrow x \pm \omega t)$$
È anche vero però che: $$\frac{∂}{∂t}\overrightarrow B = \mp \omega \overrightarrow B_0 \sin(\overrightarrow k \cdot \overrightarrow x \pm \omega t)$$
Otteniamo quindi che: $$\overrightarrow B_0 = \frac{\overrightarrow k \times \overrightarrow E_0}{\omega} \quad \Rightarrow\quad \fbox{$\overrightarrow B = \frac{\overrightarrow k \times \overrightarrow E}{\omega}$}\quad \Rightarrow \quad \overrightarrow B \cdot \overrightarrow E = 0\quad \Rightarrow \quad \overrightarrow B \perp \overrightarrow E $$
<p style="text-align:right;">⃞</p>


Possiamo quindi rappresentare un'onda elettromagnetica nel seguente modo:

![[Drawing 2023-12-14 09.48.55.excalidraw | 100%]]

>[!prop] **Proposizione**
>Vale la relazione: $$\|\overrightarrow E\|^2 = c^2 \|\overrightarrow B\|$$

**Dimostrazione**:
Per quanto abbiamo visto prima, abbiamo che: $$\overrightarrow B = \frac{\overrightarrow k \times \overrightarrow E}{\omega}\qquad \Rightarrow \qquad \overrightarrow B \cdot \overrightarrow B = \| \overrightarrow B\|^2 = \frac{(\overrightarrow k \times \overrightarrow E)\cdot (\overrightarrow k \times \overrightarrow E)}{\omega^2}$$
Sapendo che: $\overrightarrow k \cdot \overrightarrow E=0$, possiamo definire $\hat k = (1, 0, 0)$ e $\overrightarrow E = (0, E_2, E_3)$, da cui:
$$\hat k \times \overrightarrow E = \det\begin{pmatrix}\overrightarrow u_1 & \overrightarrow u_2 & \overrightarrow u_3\\ 1 & 0 & 0\\ 0 & E_2 & E_3\end{pmatrix} = (0, -E_3, E_2)\quad \Rightarrow \quad(\hat k \times \overrightarrow E)\cdot(\hat k \times \overrightarrow E) = \|\hat k\|^2 (E_2^2 + E_3^2) = \|\overrightarrow E\|^2$$
Inoltre, sapendo poi che: $$\frac \omega k = c\quad \Rightarrow \quad \|\overrightarrow B\|^2 = \frac 1{\omega^2} \|\overrightarrow k\|^2 \|\overrightarrow E\|^2 = \frac{1}{c^2}\|\overrightarrow E\|^2$$
Da cui segue la tesi
<p style="text-align:right;">⃞</p>

## Energia di un'onda

Per l'energia di un'onda elettromagnetica dobbiamo studiare il vettore di Poynting

Nel vuoto la densità di eneergia di un campo elettrico $\overrightarrow E$ è: $$\fbox{$U_E = \frac 12 \varepsilon_0 \|\overrightarrow E\|^2$}$$
Mentre quella del campo magnetico $\|\overrightarrow B\|$ è: $$\fbox{$U_B = \frac 1{2 \mu_0} \|\overrightarrow B\|$}$$

>[!def] **Definizione di Densità di Energia Istantanea**
>La densità di Energia Istantanea è data da: $$U = \frac 12 \varepsilon_0 \|\overrightarrow E\|^2 + \frac{1}{2\mu_0}\|\overrightarrow B\| = \varepsilon_0 \| \overrightarrow E\|^2 = \frac{\|\overrightarrow B\|^2}{\mu_0}$$

*Quindi in generale, l'energia trasportata è portata metà dal campo elettrico e metà da quello magnetico*

Andiamo a vedere in che modo si può calcolare:

![[Drawing 2023-12-14 18.41.03.excalidraw | center]]

L'energia contenuta nella figura di volume $V = \Sigma c \Delta t$ è: $$dU = u(\underbrace{\Sigma c\Delta t}_{V})$$
Da cui l'energia contenuta nella superficie $\Sigma$ è: $$P = \frac{dU}{dt} = u \Sigma c \qquad \Rightarrow \qquad \fbox{$P = \varepsilon_0 \|\overrightarrow E\| \Sigma c$}$$
$P$ può essere espresso come il flusso attraverso la superficie $\Sigma$ del vettore: $$\fbox{$\overrightarrow S = \varepsilon_0 \| \overrightarrow E\| c \overrightarrow u_k$}\qquad \Leftrightarrow \qquad \fbox{$P = \Phi_\Sigma(\overrightarrow S)$}$$

>[!def] **Definizione di Vettore di Poynting**
>Possiamo definire il vettore di Poynting come: $$\overrightarrow S = \varepsilon_0 \| \overrightarrow E\| c \overrightarrow u_k$$

*Volendo è possibile dimostrare che: $$\overrightarrow S = \frac 1{\mu_0} \overrightarrow E \times \overrightarrow B$$*

Il vettore di Poynting ha direzione e verso al vettore di propagazione e $\| \overrightarrow S\|$ rappresenta la potenza che attraversa una superficie perpendicolare alla direzione di propagazione

![[Caso Particolare del Vettore di Poynting]]

Ora possiamo dare un paio di definizioni dai risultati appena ottenuti:

>[!def] **Definizione di Valore Efficace di $\overrightarrow E$**
>Si definisce il valore efficace di $\overrightarrow E$ il valore: $$E^2_{Eff} = (\|\overrightarrow E\|^2)_M$$

>[!def] **Definizione di Intensità Media**
>Si definisce Intensità Media per Unità di superficie il valore: $$I = \|\overrightarrow S\|_M = \varepsilon_0 c (\| \overrightarrow E\|^2)_M = \varepsilon_0 c \frac{\|\overrightarrow E_0\|^2}{2}$$

## Quantità di Moto di un'Onda Elettromagnetica Piana
*È un concetto che si rifa molto al concetto di pressione di radiazione*
Cerchiamo di capire come funziona

![center | 200](Drawing%202023-12-18%2018.37.22.excalidraw.md)

*Con $\Sigma$ superficie e $\sigma$ densità di carica*
Una carica in $\Sigma$ acquista una velocità $\overrightarrow v_\sigma \parallel \overrightarrow E$. Il campo elettrico trasferisce a $\Sigma$ una potenza per unità di superficie pari a: $$P_\sigma = \|\overrightarrow F_\sigma\| \cdot \|\overrightarrow v_\sigma\| = \sigma \|\overrightarrow E\| \cdot \|\overrightarrow v_\sigma\|$$
Andando a considerare la potenza media otteniamo che: $$(P_\sigma)_m = \sigma(\|\overrightarrow E\| \cdot \|\overrightarrow v_\sigma\|)_m\qquad \text{Per la conservazione dell'energia vale}\qquad I = (P_\sigma)_m$$

Visto che la forza esercitata sulle cariche nella superficie $\Sigma$ è verticale, abbiamo che $\overrightarrow F_\sigma \parallel \Sigma$ (*la superficie, non il vettore normale*). Questa forza non causa effetti meccanici apparenti (in modo diretto).
Per capire quantitativamente che cosa faccia questa forza, assumiamo le condizioni $\|\overrightarrow v_\sigma\|≠0$ e $\|\overrightarrow B\|≠0$, allora esiste sicuramente una forza non nulla, che è la forza di Lorentz: 
$$\overrightarrow F_L = q\cdot (\overrightarrow v \times \overrightarrow B) = \Sigma \sigma (\overrightarrow v_\sigma \times \overrightarrow B)$$
In questo modo abbiamo una situazione in cui la velocità della carica infinitesima su $\Sigma$ è parallela a $\overrightarrow E$ ($\overrightarrow v_\sigma \parallel \overrightarrow E$) ed è perpendicolare al campo magnetico $\overrightarrow B$ ($\overrightarrow v_\sigma \perp \overrightarrow B$). In particolare abbiamo che: $$\overrightarrow F_L = \Sigma \sigma \| \overrightarrow v_\sigma \|\cdot \|\overrightarrow B\| \cdot \hat k \qquad \text{Per la regola della mano destra}$$
Sapendo che per un'onda elettromagnetica vale: $$\|\overrightarrow E\| = c \|\overrightarrow B\|\qquad \Rightarrow \qquad \overrightarrow F_L = \Sigma \sigma \frac{\|\overrightarrow v_\sigma\| \cdot \|\overrightarrow E\|}{c}\hat k$$
Tutto questo è in funzione del tempo, quindi capire l'intensità dobbiamo prendere il valore medio:
$$( F_L)_m = \frac \sigma c \Sigma (\|\overrightarrow v_\sigma\| \cdot \| \overrightarrow E\|)_m$$
Riprendendo quanto fatto prima abbiamo che: $$I = (P_\sigma)_m = \sigma(\|\overrightarrow v_\sigma\| \cdot \| \overrightarrow E\|)_m\quad \Rightarrow \quad (\|\overrightarrow v_\sigma\| \cdot \| \overrightarrow E\|)_m = \frac I \sigma\qquad \Rightarrow \qquad (F_L)_m = \frac \sigma c \Sigma \frac I \sigma\quad \Rightarrow \quad \fbox{$(F_L)_m = \Sigma \frac Ic$}$$

Sapendo tutto ciò possiamo definire la Potenza di Radiazione come:

>[!def] **Definizione di Pressione di Radiazione**
>Si definisce Pressione di Radiazione il valore: $$P_{Rad} = \frac{(F_L)_m}{\Sigma} = \frac Ic$$

Le onde elettromagnetiche trasportano quantità di moto su area per tempo e vale l'uguaglianza: $$P_{Rad} = \frac Ic = \frac 12 \varepsilon_0 \|\overrightarrow E_0\|^2 = \varepsilon_0 E^2_{Eff}$$

In base al tipo di superficie $\Sigma$ possiamo distinguere due casi:

- Se $\Sigma$ è una superficie completamente assorbente otteniamo che l'onda elettromagnetica cede tutta la sua quantità di moto alla superficie 
<br>
- Se $\Sigma$ è una superficie perfettamente riflettente abbiamo l'effetto contrario

![[Drawing 2023-12-18 19.20.13.excalidraw | 100%]]

![[Esempio sulla Potenza di Radiazione]]

*Come si misura la Pressione di Radiazione*?
Possiamo utilizzare la Bilancia di Torsione:

![[Drawing 2023-12-18 19.41.30.excalidraw | 100%]]

Visto che per una superficie riflettente abbiamo $P_{Rad} = 2 \frac Ic$ e per una lente nera (completamene assorbente) abbiamo $P_{Rad} \frac Ic$ otteniamo che: 
$$P_{Specchio} = 2 P_{Nero} \qquad \Rightarrow \qquad \text{Rotazione}$$


# Polarizzazione

Premettiamo con il dire che l'equazione delle onde è lineare, cioè che se $\overrightarrow E_1$ e $\overrightarrow E_2$ allora anche $\overrightarrow E_1 + \overrightarrow E_2$ è ancora soluzione.

Consideriamo un'onda che si propaga nella direzione $\overrightarrow x$, allora sappiamo che il suo campo elettrico è: $$\overrightarrow E = E_0 \cos(k\cdot x - \omega t)\hat u$$
Dall'equazione di Maxwell $\overrightarrow \nabla \times \overrightarrow E = 0$ otteniamo che $$\hat u = (0, u_y, u_z)$$
*In quanto avevamo che $\overrightarrow k = \| \overrightarrow k\|\cdot(1, 0, 0)$*
Visto che la norma di $\hat u$ è $1$, allora possiamo scrivere $\hat u$ come: $$\hat u = (0, \cos \theta, \sin \theta)$$
L'angolo $\theta$ prende nome di Angolo di Polarizzazione.

![center | 200](Drawing%202023-12-18%2021.25.18.excalidraw.md)

In questo modo possiamo calcolare direttamente l'angolo sapendo che: $$\tan \theta = \frac{E_z}{E_y}\qquad \text{con}\qquad \begin{cases}E_z = E_0 \sin \theta\\ E_y = E_0 \cos \theta\end{cases}$$
In questo modo otteniamo che $\tan \theta$ non dipende dal tempo.

>[!def] **Definizione di Onda Elettromagnetica Polarizzata Linearmente**
>Un'onda Elettromagnetica si definisce Polarizzata Linearmente se l'angolo di Polarizzazione non dipende dal tempo.

Prendiamo un'altra soluzione dell'equazione delle onde dalla formula: $$\overrightarrow E(\overrightarrow x, t) = E_0 \cos(kx - \omega t)\overrightarrow u_y \pm E_0 \sin (kx - \omega t)\overrightarrow u_z$$
Questa (sempre per la regola della mano destra) è un'onda che si propaga in direzione $\overrightarrow k \parallel \overrightarrow u_x$
Tuttavia qui abbiamo che l'angolo dipende dal tempo, cioè $\theta = \theta(t)$ e otteniamo che: $$\tan\theta = \frac{E_z}{E_y} = \pm\frac{E_0\sin(kx-\omega t)}{E_0 \cos (kx - \omega t)}$$
*Diversamente da prima, le componenti che avevano il tempo si cancellavano, ora no.*
Infatti quello che resta è: $$\tan\theta = \pm \tan(kx - \omega t)$$

![center | 200](Drawing%202023-12-18%2021.40.29.excalidraw.md)

In particolare abbiamo che per: $$\tan\theta = \begin{cases}+\tan(kx-\omega t) & \Rightarrow & \dot \omega(t) = - \omega & \Rightarrow & \text{Ruota in senso orario}\\ -\tan(kx-\omega t) & \Rightarrow & \dot \omega(t) = + \omega & \Rightarrow & \text{Ruota in senso antiorario} \end{cases}$$

>[!def] **Definizione di Onda Elettromagnetica con Polarizzazione Circolare**
>Un'onda si definisce che ha polarizzazione circolare se l'angolo $\theta$ dipende dal tempo e le componenti perpendicolari alla direzione dell'onda hanno stesso modulo

Nel caso in cui abbiamo che $$\overrightarrow E(\overrightarrow x, t) = E_{0,y}\cos(kx - \omega t)\pm E_{0,z}\sin(kx - \omega t)$$
Con $E_{0,y}≠E_{0,z}$ allora si parla di rotazione ellittica

Con la polarizzazione lineare e quella circolare possiamo rappresentare tutti i possibili stati di polarizzazione di un'onda elettromagnetica piana.

>[!def] **Definizione di Onda Elettromagnetica non Polarizzata**
>Un'onda elettromagnetica si definisce non polarizzata se l'angolo $\theta$ di polarizzazione varia nel tempo in maniera casuale

## Filtro Polarizzatore

Il filtro polarizzatore è un materiale che lascia passare soltanto una componente del campo elettrico che sia parallela al suo asse di polarizzazione:

![[Drawing 2023-12-19 08.29.35.excalidraw | 100%]]

Se andiamo ad indicare con $E_0$ il modulo del campo elettrico dopo la prima polarizzazione, allora avremo che dopo la seconda polarizzazione avrà un modulo pari a $E_0 \cos \theta$, allo stesso modo, per l'Intensità abbiamo che: $$I_i = \frac{\varepsilon_0c}{2}E_0^2\qquad \Rightarrow \qquad I_f = \frac{\varepsilon_0c}{2} E_f^2 = \frac{\varepsilon_0c}{2} E_0^2 \cos^2 \theta$$

>[!th]  **Legge di Malus**
>Il campo elettrico rispetto a prima e dopo una polarizzazione varia con il coseno dell'angolo di polarizzazione, cioè: $$E_f = E_i \cos \theta$$
>In maniera analoga, l'Intensità varia con il quadrato del coseno dell'angolo:
>$$I_f = I_i \cos^2 \theta$$

Se la luce è non polarizzata, allora $\cos \theta$ varia casualmente nel tempo, quindi possiamo prendere il valore medio dell'angolo: $$(\cos^2\theta)_m = \frac 12 \qquad \Rightarrow \qquad I_f = \frac{I_0}{2}$$

![[Esempio di un Sistema con due Polarizzatori]]