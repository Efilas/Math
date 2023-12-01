---
tag: Mate, Info
---
## Alberi
Dallo scherma seguente può sembrare la gerarchia delle classi sia un albero / grafo ![[Drawing 2023-04-17 14.47.56.excalidraw]]In realtà non è così perché (per esempio) una classe può essere sottoclasse di molte: $\text{class B(C,D,A)}$ 
![[Drawing 2023-04-19 15.29.51.excalidraw]]

Questo tipo di linguaggio viene chiamata **Ereditarietà Multipla** e in questo caso $B$ eredita tutti gli attributi di $A, C, D$ 

Esempio:
```py
class A:
	def g(self):
		return 0

class C:
	def f(self):
		return 1

class D:
	def h(self):
		return 3

class B(A,C,D):
	def f(self):
		return 100

[SHELL]
>>> bb = B()
>>> bb.f()
100
>>> bb.g()
1
>>> bb.h()
3
```

Altro Esempio:
![[Drawing 2023-04-19 15.35.34.excalidraw]]
```py
class A:
	def f(self):
		return 'a'

class B:
	def f(self):
		return 'b'

class C(A, B):
	pass

[SHELL]
>>> c = C()
>>> c.f()
```

In questo caso viene fatto prima $f$ di $A$ perché nella definizione della sottoclasse abbiamo prima invocato $A$ e poi $B$.

Prendiamo un'altra situazione:

```py
class top:
	def f(self):
		return 'top'

class A(top):
	def f(self):
		return 'a'

class B(top):
	pass

class C(A, B):
	pass

[SHELL]
>>> c = C()
>>> c.f()
'a'
```

Ma se provassimo ad invertire, ossia:

```py
class top:
	def f(self):
		return 'top'

class A(top):
	pass

class B(top):
	def f(self):
		return 'b'

class C(A, B):
	pass

[SHELL]
>>> c = C()
>>> c.f()
'b'
```

Ossia, quando viene chiamata una funzione di una sottoclasse (in cui la stessa funzione non è stata definita) va prima a vedere la vicinanza della funzione e se si trova a "distanza 1" (ossia deriva direttamente), lo prende dal primo chiamato.

Esiste un ordine con cui vengono prese le funzioni, che è quello di $M.R.O.$ ossia **Method Resolution Order**, che stabilisce l'ordine con cui vengono cercate le classi. In particolare con $\text{c.mro}$ si ottiene la lista con la gerarchia delle classi.

Chiaramente ci sono delle applicazioni in cui sembra non esserci un M.R.O., ossia l'algoritmo non produce un risultato preciso.

```py
class A:
	pass
class B:
	pass
class C(A, B):
	pass
class D(B, A):
	pass
class E(C, D):
	pass
```

***