#set enum(numbering: "1. a. i.", indent: 0pt)
#set heading(numbering: "1.a.i.")
#set page("a4", margin: (x:1.5cm,y:1.5cm),
footer: [TH. Bezout 1 #h(1fr) #counter(page).display("1 / 1",both: true)  #h(1fr) IUT de Bordeaux])  

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
  [#align(center+horizon)[#text(18pt)[Arithmétique] \ #text(14pt)[Th. de Bezout 1]],],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#head()

#outline(indent: 10pt)

= Définition du PGCD
Soit $a , b in bb(Z)^*$.

Le plus #strong[grand entier] qui divise à la fois $a$ et $b$ s\'appelle le #strong[plus grand commun diviseur] ou #strong[PGCD] de $a$ et $b$.

On le note #strong[PGCD(a,b)] ou $a and b$.

#Exercice("")
Donner en partant de la définition :

- PGCD(12,36)
- PGCD(13,43)
- PGCD(57,9)


*Remarque :* 

$upright("PGCD") lr((a , b)) eq upright("PGCD") lr((lr(|a|) , lr(|b|)))$.

== Propriété du PGCD

Soit $a , b in bb(Z)^ast.basic$. Si $a$ divise $b$ alors
$upright("PGCD") lr((a , b)) eq lr(|a|)$.

#Exercice("")

Soit $a$ un entier relatif.

Déterminer le PGCD $d$ des entiers $m eq 14 a plus 3$ et $n eq 21 a plus 4$ et trouver des entiers $u$ et $v$ tels que $u m plus v n eq d$.


= Algorithme d\'Euclide

== Principe de base

Soit $a , b in bb(Z)^ast.basic$.

S'il existe des entiers $k$ et $s$ avec $s eq.not 0$ tels que $a eq b k plus s$ alors les diviseurs communs à $a$ et $b$ sont exactement les diviseurs communs à $b$ et $s$, et $upright("PGCD") lr((a , b)) eq upright("PGCD") lr((b , s))$.

== Algorithme d'Euclide

Soit $a in bb(Z)^ast.basic$ et $b in bb(N)^ast.basic$. On cherche
$d eq upright("PGCD") lr((a , b))$. On note $r_0 eq b$.

On effectue des divisions euclidiennes successives tant que le reste est
non nul.

$ a & eq & r_0 q_1 plus r_1 & quad & 0 lt r_1 lt r_0\
b & eq & r_1 q_2 plus r_2 &  & 0 lt r_2 lt r_1\
r_1 & eq & r_2 q_3 plus r_3 &  & 0 lt r_3 lt r_2\
quad dots.v &  & \
r_(n minus 3) & eq & r_(n minus 2) q_(n minus 1) plus r_(n minus 1) &  & 0 lt r_(n minus 1) lt r_(n minus 2)\
r_(n minus 2) & eq & r_(n minus 1) q_n plus r_n &  & 0 lt r_n lt r_(n minus 1)\
r_(n minus 1) & eq & r_n q_(n plus 1) plus 0 &  & r_(n plus 1) eq 0\
 $

$lr((r_k))_(k in bb(N))$ est une suite strictement décroissante d'entiers naturels donc, #emph[au bout d'un certain temps], on obtient un reste nul et l'algorithme s'arrête.

Si $r_(n + 1) eq 0$ alors $r_n$ divise $r_(n - 1)$, donc
$ upright("PGCD") lr((r_(n - 1) , r_n)) eq r_n $.

=== Théorème
<théorème>
Le PGCD de $a$ et $b$ est le dernier reste non nul obtenu par l\'algorithme d\'Euclide. (ci-dessus, c\'est $r_n$).

*Remarque :*

Si $r_1 eq 0$, c\'est que $b$ divise $a$, donc $upright("PGCD") lr((a , b)) eq b eq r_0$. (l\'algorithme s\'arrête immédiatement).

#Exercice("")

Calculer $P G C D lr((8820 semi 3150))$ avec l\'algorithme d\'Euclide.


*Propriétés :* 

Soit $a , b in bb(Z)^ast.basic$. Si $d$ divise $a$ et $b$ alors $d$
divise $upright("PGCD") lr((a , b))$.

$ cases(d divides a\
d divides b )arrow.r.double.long d divides P G C D lr((a , b)) $

*Remarque :*

On peut définir le PGCD de 3 entiers ou plus. On peut utiliser la propriété suivante :

si $d eq upright("PGCD") lr((a , b))$ alors
$upright("PGCD") lr((a , b , c)) eq upright("PGCD") lr((d , c))$.

*Exemple :*

$P G C D lr((12 , 28 , 18)) eq P G C D lr((4 , 18)) eq 2$

= Nombres premiers entre eux

== Définition

Soit $a$ et $b$ deux entiers non nuls.

On dit que $a$ et $b$ sont #strong[premiers entre eux] si $upright("PGCD") lr((a , b)) eq 1$.

On dit aussi que #strong[$a$ est premier avec $b$].

== Propriétés

Soit $a , b in bb(Z)^ast.basic$ et $d eq P G C D lr((a , b))$.
 $ a / d  " et " b / d "sont premiers entre eux" $

Une fraction est irréductible si le numérateur et le dénominateur sont premiers entre eux. Pour obtenir une fraction irréductible égale à
$p / q$, il suffit de simplifier par le PGCD .

= Théorème de Bachet-Bézout (ou Identité de Bézout)

Soient $a$ et $b$ deux entiers relatifs.

#strong[Si] $d$ est le PGCD de a et b, #strong[alors] il existe deux entiers relatifs $x$ et $y$ tels que $a x plus b y eq d$.

*Exemple :*

26 et 34 admettent 2 comme PGCD, il existe donc deux entiers relatifs $u$ et $v$ tels que $ 26 u plus 34 v eq 2 $

= Théorème de Bézout

Deux entiers non nuls $a$ et $b$ sont premiers entre eux #strong[si et seulement si], il existe des entiers $u$ et $v$ tels que:
$a u plus b v eq 1$

Trouver une relation de Bezout pour $a$ et $b$, c'est trouver des entiers $u$ et $v$ tels que $a u plus b v eq p g c d lr((a , b))$.

Pour cela :

- On applique l\'algorithme d\'Euclide $a$ et $b$.

- On part de l\'égalité donnant le pgcd, et on #strong[\"remonte\"] l\'algorithme.

$ a eq 116 , b eq 10 #h(2em) #h(2em) 116 & eq 11 times 10 plus 6\
10 & eq 1 times 6 plus 4\
6 & eq 1 times 4 plus 2\
4 & eq 2 times 2 plus 0 $

On remonte maintenant en remplaçant systématiquement le reste de la
ligne précédente. 
$
2 &= 6 - 1 times 4 \
2 &= 6 -1 times (10-6) = 2 times 6 -10 \
2 &= 2 times(116 - 10 times 11) -10 = 2 times 116 - 23 times 10 \
$

$2 a minus 23 b eq 2$ est une relation de Bezout pour $a eq 116$ et
$b eq 10$ ($u eq 2 , v eq minus 23$).

- Une fois qu\'on a calculé $u$ et $v$, il est facile de vérifier que $a u plus b v eq P G C D lr((a , b))$.

- $u$ et $v$ ne sont pas uniques.

$7 a minus 81 b eq 2$ est une autre relation de Bezout pour $a eq 116$ et $b eq 10$.

#Exercice("")


- A l\'aide de l\'algorithme d\'Euclide, déterminer le PGCD de $420$ et $637$, puis exprimer ce PGCD comme combinaison linéaire de ces deux nombres.

- Même question pour $152$ et $184$

- Montrer que $forall n in bb(N) , lr((2 n plus 1))$ et $lr((3 n plus 2))$ sont premiers entre eux.


== Conséquences du théorème de Bézout

Le théorème de Bézout permet de démontrer #emph[facilement] des théorèmes arithmétiques importants.

#Exercice("")

Si un nombre $n$ est divisible par $a$ et par $b$ et que ces deux nombres sont premiers entre eux, il est divisible par $a times b$.


#strong[Démonstration guidée]

D’après les hypothèses, on peut trouver des entiers $k$ et $l$ tels que
:

$n = dots $ et $n eq dots$.

De plus, d’après le théorème de Bézout, on peut trouver $u$ et $v$ tels que $dots.h.c$.

On a alors

$n eq & 1 times n\
eq & \
eq & \
eq & \
eq & a b times lr((u l plus v k))\
$

qui est bien divisible par $a times b$.

#Exercice("")

Comment reconnaître facilement qu’un nombre est un multiple de 45 ?

Par exemple, est-ce que 4 685 368 545 est un multiple de 45 ?


#Exercice("")


$a$ et $b$ sont deux entiers naturels non nuls.

Démontrer que
$"PGCD" lr((3 a plus 4 b semi 4 a plus 5 b)) eq "PGCD" lr((a semi b))$.


= Lemme de Gauss

Soit $a, b " et " c$ trois nombres entiers tels que #strong[a divise bc]. Si $a$ est premier avec $b$, alors $a$ divise $c$.

#strong[Démonstration à connaître]

On écrit une relation de Bézout pour $a$ et $b$ : \
il existe des entiers $u$ et $v$ tels que $ a u plus b v eq 1 $

La relation de divisibilité indique qu’il existe un entier $k$ tel que
$ a k eq b c dot.basic $

On a alors

$ a k v & eq b c v\
a k v & eq c times b v\
a k v & eq c lr((1 minus a u))\
a k v & eq c minus a c u\
a k v minus a c u & eq c\
a lr((k v minus c u)) & eq c $

ce qui montre que $c$ est un multiple de $a$.

#Exercice("")

Donner un contre-exemple illustrant le fait que la *seconde hypothèse du lemme de Gauss est indispensable*.

