#set enum(numbering: "1. a. i.", indent: 0pt)
#set page("a4", margin: (x:1.5cm,y:1.5cm),
footer: [Division Euclidienne  #h(1fr) #counter(page).display("1 / 1",both: true)  #h(1fr) IUT de Bordeaux])  

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
  [#align(center+horizon)[#text(18pt)[Arithmétique] \ #text(14pt)[Division euclidienne]],],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#head()

= Division euclidienne dans $bb(z)$.

== Définition de la division euclidienne dans $bb(Z)$.
Soient $a in bb(Z)$ et $b in bb(N)^convolve$, il existe un unique couple
$(q , r) in bb(Z) times bb(N)$ tel que
$ a = b q + r quad 0 lt.eq r < b $ (On appelle $a$ le
#strong[dividende];, $b$ le #strong[diviseur];, $q$ le #strong[quotient]
et $r$ le #strong[reste];.)


#Exercice("")

+ Écrire la division euclidienne de 185 par 31 en posant la division.

+ Ecrire la division euclidienne de -113 par 8.

+ Sachant que 12 079 233 = 75 968times159+321 déterminer le reste de la
  division euclidienne de 12 079 233 par 75 968, puis par 159.

+ Soit $n$ un entier. Quel est le reste de la division euclidienne de
  $12 n + 7$ par $3$

+ On fait la division euclidienne d\'un entier $n$ par $137$ et $143$. \
  Les quotients sont égaux et les restes respectifs sont $131$ et $5$. \
  Quel est cet entier $n$ ?

== Divisibilité.

Un entier $b$ est #strong[diviseur] d\'un entier $a$ (ou $a$ est
#strong[multiple] de $b$) s\'il existe un entier $q$ tel que $a = b q$

D’autres formulations sont possibles pour décrire la relation $a = b q$
:

- $a$ est divisible par $b$ \
- $b$ divise $a$
- $b$ est un diviseur de $a$

On utilise la notation $b divides a$ pour signifier que b divise a.

*Exemple :*
- $ 6 = 2 times 3$ donc 2 et 3 sont des diviseurs de 6.

Les diviseurs dans $bb(N)$ de 6 sont : 1, 2, 3, 6.

- $-52 = (-4) times 13$ donc -4, 4, -13 et 13 sont des diviseurs de -52.

Les diviseurs dans $bb(Z)$ de -52 sont : -52, -26, -13, -4, -2, -1, 1,
2, 4, 13, 26, 52.


*Remarque :*

+ $0$ est multiple de tout entier $a$ car $0 = 0 times a$.

+ $1$ divise tout entier $a$ car $a = a times 1$.

+ Si $a$ est un multiple de $b$ et si $a eq.not 0$, alors : $lr(|a|) gt.eq lr(|b|)$.


== Critères de divisibilité

- Un nombre est divisible par 2 si et seulement si son dernier chiffre
  est pair.

- Un nombre est divisible par 3 si et seulement si la somme de ses
  chiffres l’est.

- Un nombre est divisible par 4 si et seulement si le nombre formé par
  ses deux derniers chiffres l’est.

- Un nombre est divisible par 5 si et seulement si son dernier chiffre
  est 0 ou 5.

- Un nombre est divisible par 9 si et seulement si la somme de ses
  chiffres l’est.

- un entier est divisible par 11 si la différence entre la somme des
  chiffres de rangs pairs et la somme des chiffres de rangs impairs est
  divisible par 11.


#Exercice("")

- Faire la liste de tous les diviseurs de $30$.

- Donner un multiple de $11$ à $5$ chiffres non trivial

- Déterminer les entiers naturels $a$ et $b$ tels que $a^2 - b^2 = 25$.

- Soit $x y z$ un nombre de trois chiffres en base 10. \ Démontrer que la somme $x y z + z x y + y z x$ des trois nombres obtenus par permutation des chiffres est toujours multiple de 111. \ Exemple : 324+432+243=999 est un multiple de $111$.


#Exercice("Cours")


Soient a,b et c dans $ ZZ$.

Montrez (et retenez) les quatre propriétés suivantes :

+ $(a divides b)$ et $(b divides c) arrow.r.double.long a \| c$.

+ $a \| (b + c)$ et $a divides c$ $arrow.r.double.long a \| b$

+ pour tout
  $n , m in bb(Z) quad (a divides b) quad e t quad (a divides c) arrow.r.double.long a divides (n b + m c)$.

+ $(a divides b)$ et
  $(b divides a) arrow.r.double.long (a = b) med upright(" ou ") med (a = - b) .$


#Exercice("")


Lorsqu’on divise $a$ par $b$, le reste est 8 et lorsqu’on divise $2 a$ par $b$, le reste est $5$. Déterminer le diviseur $b$.

#Exercice("")

+ On considère l’ expression $B = n^2 - 1$ pour $n in bb(N)^(\*)$
  + Démontrer que pour $n$ pair, $B$ est impair.
  + Démontrer que pour $n$ un entier impair strictement supérieur à 1, $B$ est pair et divisible par 8.

+ L’exercice consiste à trouver les valeurs du naturel $n > 4$ pour lesquelles la fraction $frac(n + 17, n - 4)$ est un entier.
  + Démontrer que $n - 4$ divise $n + 17$ équivaut à $n - 4$ divise $21$.
  + Déterminer alors toutes les valeurs de $n$ correspondant au problème.

#Exercice("")


Soit l’équation $(E) : x y - 5 x - 5 y - 7 = 0$.
+ Montrer que : $x y - 5 x - 5 y - 7 = 0 arrow.l.r.double (x - 5) (y - 5) = 32$.
+ Déterminer les couples d’entiers naturels $(x ; y)$ qui vérifient $(E)$.

#Exercice("")


Soit $m$ et $n$ des entiers relatifs tels que $m$ divise à la fois $8 n + 7$ et $6 n + 5$. 

Montrer que $m = plus.minus 1$.

#Exercice("")

+ Montrer que si un entier naturel $d$ divise $12 n + 7$ et $3 n + 1$ alors il divise $3$.
+ Montrer que $frac(12 n + 7, 3 n + 1)$ est irréductible.

#Exercice("")

Pour faire comprendre la division - d’un entier naturel par un entier naturel non nul - à l’école primaire, on procède par soustractions successives.

Si l’on veut diviser 32 par 5, on soustrait 5 à 32 autant de fois que cela est possible.

#quote(block: true)[
$32 - 5 = 27 \
27 - 5 = 22 \
22 - 5 = 17 \
17 - 5 = 12 \
12 - 5 = 7 \
7 - 5 = 2$
]

On a ainsi enlevé 6 fois 5 et il reste 2. On peut donc écrire :

$32 = 5 times 6 + 2$


+ Compléter la fonction en Python , « division(a,b) », renvoyant le quotient $q$ et le reste $r$ de la division dans $bb(N)$ de a par $b gt.eq 0$ par soustractions successives.
+ Tester cette fonction avec : division(32,5); division(12,13) et division(1412,13).


```python
def division(a:int,b:int)->tuple[int,int]:
    init=a
    q=0
    while ...:
        a=...
        q=...
    print("%s = %s * %s + %s" %(init,q,b,init-q*b))
    return q,init-q*b

division(32,5)
```

#Exercice("Liste des diviseurs en Python")

Ecrire un programme Python donnant la liste des diviseurs d\'un entier naturel.


```python
# liste des diviseurs d'un entier.
# L.append(i) permet d'ajouter i à la liste L.
# a%b donne le reste dans la division de a par b.

from math import sqrt,floor

def diviseur1(n:int)->list[int]:
    L=[]

    return L


print(diviseur1(100))


# En plus condensé

def diviseur2(n:int)->list[int]: 
    return [i for i in range(1,n+1) if n%i==0] 

print(diviseur2(100))

# Bonus : proposer une amélioration à cette fonction pour ne plus parcourir 
# toutes les valeurs jusque n. (critère d'arrêt)

def diviseur_ameliore(n:int)->list[int]:
    L=[]

    return L
print(diviseur_ameliore(12331212332222))
```

