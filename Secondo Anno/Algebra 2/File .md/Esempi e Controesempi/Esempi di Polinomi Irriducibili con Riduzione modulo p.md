*Consideriamo $$f = 7x^2 - 5x + 3 \in \mathbb Z[x]$$ è riducibile in $\mathbb Z[x]$?*
Facendo la riduzione in $\mathbb Z/_2$ abbiamo che $$\overline f = x^2+x+1$$ che è irriducibile in $\mathbb Z[x]/_2$, quindi $f$ è irriducibile

*Consideriamo $$g = 9x^3 + 5x^2 -3x + 2$$*
Facciamo la riduzione di $g$ in $\mathbb Z[2]/_2$, otteniamo che $$\overline g = x^3+x^2+x = x(x^2+x+1)$$
Avendo trovato una riduzione, il lemma non ci dice niente
Proviamo in $\mathbb Z/_5$, allora $$\overline g = -x^3 + 2x + 2$$ che in $\mathbb Z/_5$ non ha radici (Basta sostituire i 5 elementi)
Quindi $\overline g$ è irriducibile in $\mathbb Z[x]/_5$, quindi $g$ è irriducibile in $\mathbb Z[x]$

*Consideriamo $$h = x^4 - 3x^3 -x^2 +1$$*
Per quanto dimostrato in precedenza abbiamo che una delle possibili radici è $\pm 1$, tuttavia, andando a calcolare il polinomio in $\pm1$ non otteniamo $0$.
Abbiamo quindi che l'unica fattorizzazione possibile è quella in cui $h$ si scrive come prodotto di due polinomi di secondo grado
Proviamo a ridurre $h$ in $\mathbb Z/_2$, otteniamo che: $$\overline h = x^4 + x^3 + x^2 +1$$
e in questo caso $1$ è radice del polinomio, quindi la mera applicazione del corollario non serve a niente
Andiamo però a fare la scomposizione con Ruffini. 
Con Ruffini abbiamo che $\overline h$ si fattorizza come: $$\overline h = (x+1)(x^3 + x + 1)$$
Possiamo concludere che $h$ in $\mathbb Z[x]$ è irriducibile perché $\overline h$ in $\mathbb Z/_2[x]$ non è prodotto di due polinomi di grado $2$