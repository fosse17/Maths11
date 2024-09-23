#set enum(numbering: "1. a. i.", indent: 0pt)
#set heading(numbering: "1.a.i.")
#set page("a4", margin: (x:1.5cm,y:1.5cm),
footer: [Th. de Bezout 2 #h(1fr) #counter(page).display("1 / 1",both: true)  #h(1fr) IUT de Bordeaux])  

#let c = counter("mycounter")

#let Exercice(t) = block[
  #set text(12pt,weight:  "bold")
  #c.step()
  Exercice #c.display()  #t
]

#let chapitre(t) = grid(
  v(10pt),
  c.update(0),
  columns: (1fr),
  [#align(center)[#text(20pt,weight:  "bold")[#sym.star.filled $quad$ #t $quad$ #sym.star.filled ]]],
  v(10pt)
)

#let head()=grid(
  columns: (1fr,2fr,1fr),
  rows: (50pt),
  [#align(left+top)[#image("../iut_bordeaux.jpg")]],
  [#align(center+horizon)[#text(18pt)[Arithmétique] \ #text(14pt)[Th. de Bezout 2]],],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#head()

= Résolution de l'équation #emph[diophantienne] $a x plus b y eq c$.

== Définition et existence

Une équation diophantienne est une équation à #strong[coefficients entiers] dont on cherche les #strong[solutions entières].

Soit $a , b$ et $c$ trois entiers relatifs, les équations diophantiennes du premier degré sont du type :

$ a x plus b y eq c dot.basic $

Remarque : `Diophante d’Alexandrie` est un mathématicien grec du IIIe siècle.

== existence de solutions

Une équation diophantienne du premier degré, de la forme $a x plus b y eq c$, où $a$, $b$ et $c$ sont des entiers relatifs, admet des solutions #strong[si, et seulement si,] $c$ est un multiple du
PGCD(a, b).

*Exemples :*

- L’équation $17 x - 33 y eq 1$ admet des solutions car
 $"PGCD" lr((17 , 33)) eq 1$.
- L’équation $8 x - 4 y eq 3$ n'admet pas de solution car $"PGCD" lr((8 , 4)) eq 2$ et 3 n'est pas un multiple de 2.

== Méthode de résolution

- On cherche une solution particulière à l’équation.

- On recherche ensuite l’ensemble des solutions en soustrayant termes à termes l’équation et l’égalité de la solution particulière.

- On applique le *théorème de Gauss*, puis l’on vérifie que les solutions trouvées vérifient bien l’équation.

== Exemple d’application

Déterminer l’ensemble des solutions de l’équation 
$(E): 17 x - 33 y eq 1 $.

- On cherche une solution particulière de (E). Ici, il existe une solution évequive : le couple (2 ;1), car
  $ 17 times 2 - 33 times 1 eq 34 - 33 eq 1 $.

- On recherche ensuite la solution générale de (E). On a :

$ cases(17 x & - & 33 y & eq 1\
17 times 2 & - & 33 times 1 & eq 1 ) $

Par soustraction termes à termes des deux égalités, on obtient :

$ 17 lr((x - 2)) - 33 lr((y - 1)) eq 0 arrow.l.r.double 17 lr((x - 2)) eq 33 lr((y - 1)) #h(2em) upright("(E’)") $

33 divise $17 lr((x - 2))$. Or $"PGCD" lr((17 , 33)) eq 1$,
donc d’après le théorème de #strong[Gauss], 33 divise $lr((x - 2))$.

Il existe donc $k in bb(Z)$ tel que $x - 2 eq 33 k$

En remplaçant dans $(E’)$, on trouve $y - 1 eq 17 k$.

Les solutions de $(E)$ sont de la forme :

$ cases(x eq 2 plus 33 k\
y eq 1 plus 17 k comma k in Z dot.basic) $

On vérifie pour conclure que ces solutions vérifient effectivement l’équation.

$ forall k in bb(Z) , quad 17 lr((2 plus 33 k)) - 33 lr((1 plus 17 k)) eq 1 $

#Exercice("")


Rechercher (indépendemment) les solutions (entières) des équations diophantiennes :
]

+ $ 4235 x plus 42 y eq 15 $

+ $ 4235 x plus 42 y eq 14 $

#Exercice("")

Determiner tous les entiers relatifs tels que $ 11 x equiv 4 lr((50)) $.

#Exercice("")


Determiner toutes les solutions $x in bb(Z)$ du système
$ cases(x equiv 1 lr((7))\
x equiv 9 lr((15)))
 $

#Exercice("")


Un théatre pratique les tarifs suivants : 19 euros l’entrée pour les abonnées et 29 euros l’entrée pour les autres. A la fin d’une séance, le montant des recettes s’élève à 818 euros.

La caissière a perdu le talon des billets, mais elle sait qu’en général, il y a environ deux fois moins d’abonnés que de non abonnés.

Peut-elle retrouver la répartition des spectateurs lors de cette séance ?

#Exercice(" : Chiffrement affine")

#strong[Partie A : Un premier exemple]

Afin de coder un message, on assimile chaque lettre de l’alphabet à un nombre entier

$ A -> 0 dots.h Z -> 25 $

Un chiffrement élémentaire est le chiffrement affine. On se donne une fonction de codage affine $f$ , par exemple :
$ f lr((x)) eq 11 x plus 8 $

À une lettre du message :

- on associe un entier x entre 0 et 25; \
- on calcule $f lr((x)) eq lr((11 x plus 8)) lr([26])$ \
- on traduit $y$ par une lettre.

#strong[Exemple :]

Si l’on veut coder la lettre G par la fonction
$f lr((x)) eq 11 x plus 8$, on passe par les étapes suivantes :

$ G arrow.r x eq 6 arrow.r.double 11 times 6 plus 8 eq 74 arrow.r 74 equiv 22 lr((26)) arrow.r y eq 22 arrow.r W $

La lettre G est donc codée par la lettre W.

+ Coder la lettre W.
+ Existence d’une fonction de décodage.
  - Pourquoi le théorème de Bézout permet-il d’affirmer qu’il existe un entier relatif u tel que : $11 u plus 26 v eq 1$ ?
  - Montrer alors que l’équation $11 x equiv 1 lr((26))$, puis que l’équation $11 x equiv j lr((26))$, $j$ étant un entier naturel,
  admettent une solution.
+ Déterminer la fonction de décodage.
  - Montrer que pour tous entiers relatifs x et j, on a :
  $11 x equiv j lr((26)) arrow.l.r.double x equiv 19 j lr((26))$. \
- En déduire que la fonction
  $f^(- 1) lr((y)) eq 19 y plus 4 lr((26)) dot.basic$ \
- Décoder la lettre L.

#strong[Partie 2 : Casser une fonction de cryptage]

On a reçu le message suivant : `FMEYSEPGCB`.

Par une étude statistique de la fréquence d’apparition des lettres sur un passage plus important, on déduit que le chiffrement est affine, que la lettre E est codée par la lettre E et que la lettre J est codée par la lettre N.

Soit la fonction affine $f$ définie par : $f lr((x)) eq a x plus b$ où $a$ et $b$ sont des entiers naturels compris entre 0 et 25.

1 - Démontrer que $a$ et $b$ vérifient le système suivant :

$ cases(4 a plus b equiv 4 lr((26))\
9 a plus b equiv 13 lr((26)) ) $

  + Démontrer que $5 a equiv 9 lr((26))$, puis que $a equiv 7 lr((26))$.

  + En déduire que $b equiv 2 lr((26))$ et que $f$ est définie par
$ f lr((x)) eq 7 x plus 2 lr((26)) $.
  + Démontrer que, pour tous relatifs $x$ et $z$, on a : $ 7 x equiv z lr((26)) arrow.l.r.double x equiv 15 z lr((26)) $.

+ En déduire que la fonction de décodage $f^(- 1)$ est définie par $ f^(- 1) lr((y)) eq 15 y plus 22 lr((26)) $.

+ Décoder le message.

```python
def f(a,b,x):
    return (a*x+b)%26

def affine(a,b,chaine):
    chaine=chaine.upper()
    retour=[]
    for lettre in chaine:
        x=ord(lettre)-65
        y=f(a,b,x)
        retour.append(chr(y+65))
    return retour

print(affine(15,22,"FMEYSEPGCB"))
```

```
['T', 'U', 'E', 'S', 'G', 'E', 'N', 'I', 'A', 'L']
```

```python
```
