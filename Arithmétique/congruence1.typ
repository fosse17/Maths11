#set enum(numbering: "1. a. i.", indent: 0pt)
#set heading(numbering: "1.a.i.")
#set page("a4", margin: (x:1.5cm,y:1.5cm),
footer: [Congruence 1 #h(1fr) #counter(page).display("1 / 1",both: true)  #h(1fr) IUT de Bordeaux])  

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
  [#align(center+horizon)[#text(18pt)[Arithmétique] \ #text(14pt)[Congruence 1]],],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#head()

#outline(indent: 10pt)


= Définition de la congruence modulo n

Soit $n$ un entier naturel $(n gt.eq 2)$, $a$ et $b$ deux entiers relatifs.

On dit que deux entiers $a$ et $b$ sont #strong[congrus modulo $n$] si, et seulement si, $a$ et $b$ ont le même reste dans la division euclidienne par $n$.

On note alors :

$ a equiv b (n) upright(" ou ") a equiv b [n] . $


*Exemple :* 

- $57 equiv 15 (7)$ car : $57 = 7 times 8 + 1$ et $15 = 7 times 2 + 1$

- $41 equiv - 4 (9)$ car : $41 = 9 times 4 + 5$ et $- 4 = 9 times (-1) + 5$

= propriété de la congruence

+ Un nombre est congru à son reste modulo n dans la division euclidienne par n.

- $2 008 equiv 8 (10)$ car 2 008 = 10 times 200 + 8 \

- $17 equiv 1 (4)$ \

- $75 equiv 3 (9)$

- $x equiv 0 (2) arrow.l.r.double x upright(" est pair")$ \

- $x equiv 1 (2) arrow.l.r.double x upright(" est impair")$


```python
# Le reste dans le division euclidienne est donné par %

print(2005%10)
print(17%4)
print(75%9)
```

#Exercice("")

Déterminer les congruences suivantes :

+ Modulo 5 des nombres suivants : 12 ; 45 ; 87 ; -12 ; 104
+ Modulo 7 des nombres suivants : -14 ; -85 ; 24 ; 46


#Exercice("")

+ Quels sont les restes possibles dans une division euclidienne par 9 ?

+ Déterminer les restes possibles dans la division de $4 x$ par 9 suivant les valeurs de l’entier relatifs $x$.

+ Résoudre alors : $4 x equiv 5 (9)$

Le script ci-dessous donne une aide pour résoudre ce problème.

+ Modifier ce code pour résoudre $5 x equiv 3 [11]$

```python
Solution=[]
for x in range(9):
    reste=(4*x)%9
    print(f"pour x={x}, le reste est {reste}")
    if reste==5:
        Solution.append(x)
for s in Solution : 
    print(f"solution de la forme x=9k+{s}")
```
```
pour x=0, le reste est 0
pour x=1, le reste est 4
pour x=2, le reste est 8
pour x=3, le reste est 3
pour x=4, le reste est 7
pour x=5, le reste est 2
pour x=6, le reste est 6
pour x=7, le reste est 1
pour x=8, le reste est 5
solution de la forme x=9k+8
```

== Propriétés

- $a equiv 0 (n) arrow.l.r.double a upright(" est un multiple de ") n upright(" ou ") n upright(" est un diviseur de ") a$.

- La congruence est une relation d’#strong[équivalence];, c’est-à-dire,
pour tous entiers $a$, $b$, $c$, on a :

+ $a equiv a (n)$ (réflexivité)

+ Si $a equiv b (n)$, alors $b equiv a (n)$ (symétrie)

+ Si $a equiv b (n)$ et si $b equiv c (n)$, alors $a equiv c (n)$ (transitivité)


== Théorème : lien avec la divisibilité
+ Soit $n$ un entier naturel $(n gt.eq 2)$, $a$ et $b$ deux entiers relatifs.

$ a equiv b (n) arrow.l.r.double a - b equiv 0 (n) $

*Exemple :*

$124 equiv 1 [3]$ donc $124 - 1 equiv 123 equiv 0 [3]$ i.e $123$ est un multiple de $3$



== Compatibilité de la congruence avec l’addition et la multiplication

Soit $n$ un entier naturel $(n gt.eq 2)$ et $a$, $b$, $c$, $d$ des entiers relatifs vérifiant : 
$ 
cases(a equiv b (n)\
c equiv d (n) )
 $

La relation de congruence est compatible :

- avec l’addition : $ a + c equiv b + d (n) $

- avec la multiplication : $ a c equiv b d (n) $

- avec les puissances : pour tout entier naturel k,$ a^k equiv b^k (n) $


#Exercice("")

Déterminer les restes dans la division euclidienne par 7 des nombres :

+ $50^100$
+ 100
+ $100^3$
+ $50^100 + 100^100$
+ $15 times 6^43 - 48$.


#Exercice("")

Un tableau de congruence est un tableau permettant de présenter des résultats de manière exhaustive en se référant aux restes possibles dans une division euclidienne.

1) Déterminer suivant les valeurs de l’entier relatif $n$, le reste de la division de $n^2$ par 7.

#figure(
  align(center)[#table(
    columns: 8,
    align: (center,center,center,center,center,center,center,center,),
    table.header([Reste de la division de $n$ par
      7], [0], [1], [2], [3], [4], [5], [6],),
    table.hline(),
    [Reste de la division de $n^2$ par
    7], [\_], [\_], [\_], [\_], [\_], [\_], [\_],
  )]
  , kind: table
  )

2) En déduire alors les solutions de l’équation $x^2 equiv 2 (7)$.


#Exercice("")


La proposition suivante est-elle vraie ou fausse ?

Tout entier est congru modulo 6 à un des entiers 0, 1, 2, 3, -1 ou -2.


#Exercice("")

+ Montrer que : $forall n in bb(N) , 3^(n + 3) - 4^(4 n + 2)$ est divisible par 11.

+ Montrer que : $forall n in bb(N) , 3^(2 n + 1) + 2^(n + 2)$ est divisible par 7.

