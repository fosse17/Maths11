#set enum(numbering: "1. a. i.", indent: 0pt)
#set heading(numbering: "1.a.i.")
#set page("a4", margin: (x:1.5cm,y:1.5cm),
footer: [Congruence 2  #h(1fr) #counter(page).display("1 / 1",both: true)  #h(1fr) IUT de Bordeaux])  

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
  [#align(center+horizon)[#text(18pt)[Arithmétique] \ #text(14pt)[Congruence 2]],],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#head()


#Exercice("")

+ On souhaite déterminer le reste possible de la division euclidienne de $247^349$ par 7.

  + Montrer que cela revient à chercher le reste de la division euclidienne de $2^349$ par 7.

  + Montrer que, pour tout nombre entier naturel $k$ :

  - $ 2^(3 k) equiv 1 lr([7]) comma quad 2^(3 k plus 1) equiv 2 lr([7]) comma quad 2^(3 k plus 2) equiv 4 lr([7]) $

  + En déduire le résultat

2 . Quel est le reste de la division par 11 du nombre $57383^2015$ ?


#Exercice("")

Soient $lr((a comma b)) in bb(Z)^2$ dont les restes modulo 11 sont 7 et 2 respectivement.

Donner le reste modulo 11 de $a^2 minus b^2$

#Exercice("")

Un code barre est une suite de 12 chiffres $c_12 c_11 dot.basic dot.basic dot.basic c_1$ suivie d’un chiffre de contrôle $c_0$ vérifiant

$ c_12 plus 3 c_11 plus c_10 plus 3 c_9 plus c_8 plus 3 c_7 plus c_6 plus 3 c_5 plus c_4 plus 3 c_3 plus c_2 plus 3 c_1 plus c_0 equiv 0 lr((10)) $

La suite de 12 chiffres attribuée à un produit est 308612610032.

Calculer son chiffre de contrôle.


#Exercice("")

Quels sont les entiers x et y tels que $x^2 plus y^2 equiv 2 lr((8))$ ?


#Exercice("")

En utilisant un tableau de congruence, trouver tous les entiers relatifs $n$ tels que $n^2 + n + 1$ soit divisible par 7.


#Exercice("")

+ Pour tout entier naturel $n$, déterminer les restes possibles dans la division euclidienne de $n^2$ par 5.
+ En déduire les restes possibles dans la division euclidienne de $n^4$ par 5.
+ Montrer que $n lr((n^4 minus 1))$ est divisible par 5.

#Exercice("Exponentiation modulaire rapide") 

+ Un premier exemple avec $5^11 lr((14))$

L’idée est de seulement calculer $5 comma 5^2 comma 5^4 comma 5^8$ ...et
de réduire modulo $n$ à chaque fois.

Pour cela on remarque que $11 eq 2^3 plus 2^1 plus 2^0 eq 8 plus 2 plus 1$ en décomposant uniquement avec des puissances de 2, donc

on calcule les $5^(2^i) lr((14))$ :

- $5 equiv 5 lr((14))$

- $5^2 equiv 25 equiv 11 lr((14))$

- $5^4 equiv 5^2 times 5^2 equiv 11 times 11 equiv 121 equiv 9 (14) $

- $5^8 equiv 5^4 times 5^4 equiv 9 times 9 equiv 81 equiv 11 lr((14))$

A chaque étape est effectuée une multiplication modulaire.

*Conséquence :*

- $5^11 equiv 5^(8 plus 2 plus 1) lr((14)) equiv 5^8 times 5^2 times 5 lr((14))$

- $5^11 equiv 11 times 11 times 5 lr((14)) equiv 11 times 55 equiv 11 times 13 equiv 143 equiv 3 lr((14)) dot.basic$

Nous obtenons donc un calcul de $5^11 lr((14))$ en 5 opérations au lieu
de $10$ si on avait fait $5 times 5 times 5...$ et surtout avec des nombres plus petits à manipuler.

En fait, cette technique est basée sur la décomposition en base 2 de l'exposant.

+ Voici un autre exemple à compléter :

Calculer $17^154 lr((100))$.

Tout d’abord on décompose l’exposant k \= 154 en base 2 :


$lr((154))_10 eq dots$


On en déduit la décomposition en somme de puissance de 2.


$154 eq dots$

Ensuite on calcule
$17 comma 17^2 comma 17^4 comma 17^8 comma dot.basic dot.basic dot.basic lr((100))$


$ 17 & equiv\
17^2 & equiv\
17^4 & equiv\
17^8 & equiv\
17^16 & equiv\
17^32 & equiv\
17^64 & equiv\
17^128 & equiv\
 $

Il ne reste qu’à rassembler :


$17^{154} equiv dots $
]

#strong[Application :]

Calculer $234^97 lr([7])$


