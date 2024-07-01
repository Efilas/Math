Supponiamo quindi esistano $2$ fattorizzazioni $LU$, ossia esistano $L,L'$ matrici triangolai inferiori con tutti $1$ sulla diagonale principale e due matrici $U,U'$ triangolai superiori tali che: $$A = LU = L'U'$$
Chiaramente otteniamo che $LU = L'U'$
Poiché $L$ è invertibile otteniamo che $$LU = L'U' \Rightarrow (L')^{-1} L U = U'$$
*Supponiamo che $U$ sia non singolare, allora abbiamo che $A$ è non singolare*
Quindi possiamo porre l'uguaglianza $$(L')^{-1}L = U'U^{-1}$$
Notiamo che il membro a sinistra dell'uguaglianza è una matrice ancora triangolare inferiore, mentre quello a destra è una matrice triangolare superiore, segue quindi che, purché l'uguaglianza sia verificata, devono essere entrambe matrici diagonali.

Sappiamo inoltre che sulla diagonale di $L$ e di $L'$, e quindi anche su quella di $(L')^{-1}$ ci sono solo $1$ sulla diagonale principale, quindi anche sulla diagonale principale di $L(L')^{-1}$ ci sono solo $1$.
Ma affinché sia vera l'uguaglianza abbiamo che $U'U^{-1}$ deve essere diagonale e deve avere tutti $1$ sulla diagonale principale, ossia deve essere essere l'identità, quindi $U=U'$
Da qui segue direttamente che $(L')^{-1} L = I \Rightarrow L = L'$
Quindi la fattorizzazione è unica.

*Guardiamo ora il caso in cui la matrice $U$ non sia invertibile.*
Per questioni di comodità, definiamo $$\hat L = (L')^{-1}L$$
A questo punto otteniamo che: $$(L')^{-1}L U = U' \Rightarrow \hat LU = U'$$
Per le ipotesi del teorema abbiamo che $U_{1,1}, U_{2,2}, U_{n-1,n-1}$ sono elementi non nulli.
Notiamo anche ci stroviamo in una situazione del tipo $$(◺)\cdot (◹) = (◹)$$

Proviamo a moltiplicare l'ultima riga di $\hat L$ per la prima colonna di $U$, in questo modo otteniamo l'elemento $U'_{n,1}$
Tuttavia otteniamo che questo prodotto è nullo in quanto è un elemento di una matrice triangolare superiore situato sotto la diagonale principale. Segue quindi che uno tra $\hat L_{n,1}$ e $U_{1,1}$ è nullo, tuttavia sappiamo per l'osservazione appena fatta che $U_{1,1}≠0$, quindi $\hat L_{n,1} = 0$

Andiamo avanti con la seconda riga, quindi $$\hat L_{n,:} \cdot U_{:,2} = U'_{n,2} \Rightarrow  \hat L_{n,2} - U_{2,2} = 0 \Rightarrow \hat L_{n,2} = 0$$
In maniera analoga possiamo fare questo procedimento per ogni riga e per ogni colonna. Otterremo quindi che: $$\hat L_{i,j} = 0 \qquad \forall i>j$$
Quindi $\hat L = I \Rightarrow L = L'$, di conseguenza segue subito che $U = U'$
In questo modo abbiamo dimostrato che la fattorizzazione $LU$ è unica anche per matrici non singolari.