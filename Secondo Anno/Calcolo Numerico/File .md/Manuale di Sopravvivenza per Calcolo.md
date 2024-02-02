<br>

| Elemento                        | Notazione                | Descrizione                                            |
| ------------------------------- | ------------------------ | ------------------------------------------------------ |
| Matrice                         | $A$                      | Lettera Latina Maiuscola                               |
| Vettore                         | $x$                      | Lettera Latina Minuscola                               |
| Vettore colonna di una matrice $A$ | $\underline a_i$ ||
| Scalare                         | $\alpha$                 | Lettera Greca Minuscola                                |
| Insieme delle Matrici           | $\mathbb C^{n \times m}$ | Al posto di scrivere $M_{m,n}(\mathbb C)$              |
| Norma di Matrice                | $\| \cdot \|$            | Al posto di $\cdot$ ci va una qualsiasi matrice        |
| Matrice Identità                | $I$                      |                                                        |
| Matrice Trasposta               | $A^T$                    |                                                        |
| Matrice Trasposta Coniugata     | $A^*$ oppure  $A^H$      | È la trasposta di $A$ e con i coniugati degli elementi |
| Autocoppia                      | $(\lambda, x)$           | (Autovalore, Autovettore)                              |
| Traccia di una matrice          | $tr(\cdot)$              | Al posto di $\cdot$  c'è una matrice qualsiasi         |
| Valori Singoli di $A$           | $\sigma(A)$              |                                                        |
| Matrice Diagonale simile a $A$  | $\Lambda(A)$             |                                                        |
| Insieme degli autovalori di $A$ | $Spec(A)$                |                                                        |
| Matrice Triangolare Superiore   | $U$                      |                                                        |
| Matrice Triangolare Inferiore   | $L$                      |                                                        |
| Matrice Ortogonale              | $Q$                      |                                                        |
| Matrice di Permutazione         | $\Pi$                    |                                                        |
| Matrice Definita Positiva       | $A \succ 0$              |                                                        |
| Vettore temporaneo o di Lavoro  | $w$                      |                                                        |
| Tolleranza Fissata              | $tol$                    |                                                        |
| Vettore di Errore               | $e$                      | A volte può esserci un pedice per indicare il passo    |
| Vettore Residuo                 | $r$                      |                                                        |
| Norma del Residuo | $\rho$ | | 
| Matrice di Condizionamento      | $P$                      |                                                        |


<div style="page-break-after: always;"></div>

| Elemento                        | Notazione                | Descrizione                                            |
| ------------------------------- | ------------------------ | ------------------------------------------------------ |
| Raggio Spettrale di una matrice $A$  | $\rho(A)$ |                                                        |
| Range di una Matrice $A$ | $Im(A)$ | | 
| Nucleo di una Matrice $A$ | $Ker(A) = N(A)$ | |
| Rango di una Matrice $A$ | $R(A)$ | |
| Matrice di Proiezione | $P$ | |
| Matrice di Riflessione di Householder | $\boldsymbol P = I - \beta v^Tv$ | Dove $\beta = \displaystyle{\frac{2}{\|v\|^2}}$

**Considerazioni Importanti**: Se non sono specificate
	- Una matrice ha sempre $n$ autovalori (anche in campo complesso)
	- Una matrice è sempre non singolare (invertibile)
	- I vettori se non specificato sono vettori colonna
	- Con Matlab, mai calcolare inverse di matrici, né determinanti
	- Evitare anche di fare cicli ```for``` e cercare di sfruttare le funzioni già presenti in Matlab
	- Per ottimizzare i conti e farli più leggeri, sfruttare le parentesi
	- Se non è specificato, si pone $x_0 = 0$
	- Se possibile, fare delle sostituzioni di lato, non fare tutti i conti tutte le volte che sono richieste
	- Evitare di scrivere temi, l'importante è essere sintetici 

A volte alcuni elementi saranno indicati con:
	- $(\square)$: Matrice Quadrata
	- $(◹)$: Matrice Triangolare Superiore
	- $(◺)$: Matrice Triangolare Inferiore
	- $(\mid)$: Vettore Colonna
	- $(-)$: Vettore Riga
	- $(\setminus \!◹)$: Matrice Hessenberg Superiore
	- $(◺\! \setminus)$: Matrice Hessenberg Inferiore