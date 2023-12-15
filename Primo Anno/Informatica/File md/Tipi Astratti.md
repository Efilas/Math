---
tag: Mate, Info
---
## Tipi Astratti

Un esempio saranno i numeri complessi:
Prima soluzione = Convenzione: Un complesso è una tupla di $\text{float}$ lunga due e dunque possiamo definire le operazioni sui complessi

```py
def Re(c):
	return c[0]

def Im(c):
	return c[1]

def somma(c1, c2):
	return (Re(c1) + Re(c2), Im(c1) + Im(c2))

c1 = (1, 1)
c2 = (2, 3)
s = somma(c1, c2) #Fa la somma
t = c1 + c2       #Concatema le tuple
```

I linguaggi di programmazione ad alto livello come Python sono linguaggi utilizzati nella costruzione.

I linguaggi di programmazione servono a costruire _modelli computazionali_ (strutture formali, non solo di programmi, ma anche di descrizione dei dati che descrivono situazioni del mondo reale - non solo procedurale ma anche la struttura, in modo tale che manifesta un aspetto computazionale)

```py
class Complex:
	def __init__(self, re, im):
		self.__real = re
		self.__img = im
	def Re(self)
		return self.__real
	def Im(self):
		return self.__img
	def __add__(self, other):
		return Complex(self.__real + other.__real, self.__img + other.__img)
		#Oppure return Complex(Re(self) + Re(other), Im(self) + Im(other))
		#Ma è meglio scrivendolo direttamente perché sono ancora nella definizione della
		#classe
	def __str__(self):
		return str(self.__real) + '+' + str(self.__img) + 'i'
	def __repr__(self):
		return self.__str__
```

Lo scopo è: l'utilizzatore utilizza la classe dei complessi, senza sapere cosa c'è all'interno dei vari metodi magici e vengano soltanto utilizzati gli operatori predefiniti (questa è la definizione di Tipo Astratto)

I metodi $\text{Re}$ e $\text{Im}$ vengono chiamati "getter" in quanto restituisco degli attributi privati.
Così ci sono i metodi "setter" che modificano i metodi privati.

Tra i tanti tipi di tipi astratti ci sono gli alberi i binari ("serie di palle collegate da linee")
****