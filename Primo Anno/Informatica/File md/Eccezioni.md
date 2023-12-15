---
tag: Mate, Info
---
## Eccezioni

È un evento che normalmente dovrebbe causare degli errori.
Per evitare le eccezioni is usa:
```py
try:
	<blocco protetto>
except <eccezione>:
	<gestore>
```
Esempio:
```py
try:
	x = 0
	y = 10 / x
	z = 100
except ZeroDivisionError:
	print('Bischero, nun se divide per zero')
```

Per sollevare le eccezioni c'è il comando $\text{raise(<Errore>)}$ 
Se non c'è scritto nulla allora vengono calcolate tutte le eccezioni:
È possibile anche ottenere direttamente il valore dell'eccezione:
```py
try:
	print(A)
expect ErrorName as X:
	print('Bischero, nun se divide per zero')
	print(X)
```

Volendo si può implementare un $\text{else:}$ in caso non vengano sollevate eccezioni
Esiste anche un blocco $\text{finally:}$ che viene eseguito indipendentemente dall'esito di $\text{try}$

Chiaramente tutte le eccezioni si possono trovare sulla documentazione.

Poiché ogni cosa sono degli oggetti, allora lo sono anche le eccezioni e sono istanze di (una sottoclasse) della classe $\text{Exception}$ che qualcuno ha definito per noi.
Il linguaggio fa si che qualsiasi istanza di $\text{Exception}$ siano estenzioni, quindi oggetti e fa si che possano essere manipolati e utilizzati (Di solito non si usa mai la classe $\text{Exception}$) direttamente, ma si utilizza la sottoclasse:

```py
class MiaEccezione(exception):
	pass

try:
	x = 0
	raise MiaEccezione
	z = 100                  #z non è definito in quanto l'eccezione interrompe prima
except MiaEccezione:
	print('Eccezione catturata')
print('Dopo il try')
```

Se mettessi $\text{raise MiaEccezione(10)}$ passa anche valore
A quel punto possiamo fare
```py
class MiaEccezione(exception):
	pass

try:
	x = 0
	raise MiaEccezione(100)
	z = 100
except MiaEccezione as n:
	print('Eccezione catturata con valore:', n)
print('Dopo il try')
```

Come tutte le altre classi è possibile definire definire sottoclassi anche alle sottoclassi di $\text{Exception}$ 

Quindi la struttura di Eccezione diventa

```py
try:
	<blocco protetto>
except ClasseEccezione:
	<gestore>
```

Quello che fa $\text{ClasseEccezione}$ è intrappolare le eccezioni di ClasseEccezione incluse le istanze delle sue sottoclassi.
Per cui nell'esempio precedente, porre $\text{raise MiaEccezione}$ e $\text{raise AltraEccezione}$ non cambia, in quanto vengono catturate entrambe:

Esempio:
```py 
class B(Exception):
	pass

class C(B):
	pass

class D(C):
	pass

for c in [B, C, D]:
	try:
		raise c()
	except D:
		print('D')
	except C:
		print('C')
	except B:
		print('B')
```

Esempio:
```py
def prod():
	'Restituisce il prodotto di una lista di numeri'
	res = 1
	for e in L:
		if e == 0:
			return 0
		res *= e
	return res
```

Utilizzando le eccezioni diventa
Per interrompere una computazione in tempi opportuni.

```py
class Zero(Exception):
	pass
try:
	res = 1
	for e in L:
		if e == 0:
			raise Zero
		res *= e
except
	res = 0

print(res)
```

Il tutto è ancora più efficiente quando ci sono le ricorsioni.

Le eccezioni sono comode anche per poter uscire da dei cicli annidati, potenzialmente infiniti.
***