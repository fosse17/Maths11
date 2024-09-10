#set enum(numbering: "1. a. i.", indent: 0pt)
#set heading(numbering: "1. a. i.")
#set page("a4", 
margin: (top: 20mm, bottom: 20mm, left: 20mm, right: 20mm),
footer: [Livret d'exercices  #h(1fr) #counter(page).display("1 / 1",both: true)  #h(1fr) IUT de Bordeaux])  

#let c = counter("mycounter")

#let Exercice(t) = block[
  #set text(12pt,weight:  "bold")
  #c.step()
  Exercice #c.display()  #t
]

#let chapitre(t,newpage:true) = {
  if newpage==true {pagebreak()}
  grid(
  v(10pt),
  c.update(0),
  columns: (1fr),
  [#align(center)[#text(20pt,weight:  "bold")[#sym.star.filled $quad$ #t $quad$ #sym.star.filled ]]],
  v(10pt))
}

#let head()=grid(
  columns: (1fr,2fr,1fr),
  rows: (50pt),
  [#align(left+top)[#image("../iut_bordeaux.jpg")]],
  [#align(center+horizon)[#text(18pt)[Les connecteurs logiques] \ TD2 \ Logique et raisonnements]],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#head()
 
#outline(indent: auto)

= Qu'est ce qu'un théorème ?

La notion de théorème s'applique aux prédicats.

Soit $P$ un prédicat, $P$ est un théorème si $P$ prend la valeur de vérité vraie pour toutes les valeurs que la (ou les) variable(s) peut prendre.

*Remarque :*

Lorsque $P$ est un théorème, on dira que $P$ est vrai.

Lorsqu'il existe une valeur ( au moins ) de la (ou les) variable(s) pour laquelle $P$ est faux, on dira que $P$ est faux ou n'est pas un théorème.

#Exercice("")

Les énoncés suivants sont-ils des théorèmes ?

+ Pour tout $x in bb(R)$, pour tout
  $y in bb(R) comma #h(0em) x eq y arrow.l.r.double x^2 eq y^2$.

+ Pour tout
  $q in bb(R) without brace.l 1 brace.r comma sum_(k eq 0)^n q^k eq frac(1 minus q^(n plus 1), 1 minus q)$.

+ Pour tout $n$ dans $bb(N)$, si $n$ est un entier impair alors $n^2$
  est impair.


=  Négation d\'une implication

La négation d’une implication $P arrow.r.double.long Q$ est :
$ lr((overline(P arrow.r.double.long Q))) arrow.l.r.double lr((P and overline(Q))) $

#strong[Attention] : $P arrow.r.double.long Q$ #strong[n\'est pas
équivalent à] $overline(P) arrow.r.double.long overline(Q)$ même si le langage usuel nous conduit à penser que c\'est vrai.

#Exercice("")

Démontrer cette équivalence par une table de vérité puis par un calcul propositionnel.

#Exercice("")


L' énoncé suivant est-il un théorème ?

- Pour tout $n in bb(N)$, si $n$ est divisible par $4$ et $n$ est divisible par 6, alors n est divisible par $24$.


= Contraposée d\'une implication

Que pensez-vous des 2 propositions suivantes ? :

- Si ce polygone a trois côtés alors ce polygone est un triangle.

- Si ce polygone n'est pas un triangle alors il n'a pas trois côtés.

La proposition $P arrow.r.double.long Q$ a pour #strong[contraposée] la proposition $lr((overline(Q))) arrow.r.double.long lr((overline(P)))$.

Une implication et sa contraposée sont vraies en même temps et fausses en même temps.

Elles sont #strong[équivalentes].

Cette équivalence sera utilisée dans les techniques de démonstration.

#Exercice("")

+ Montrer en utilisant la simplification logique que les propositions $P arrow.r.double.long Q$ et $lr((overline(Q))) arrow.r.double.long lr((overline(P)))$ sont équivalentes.

+ Ecrire la contraposée des énoncés suivants :

- Le théorème de Pythagore.

- Si $n$ est un nombre entier premier, alors $n eq 2$ ou $n$ est impair.

+ Démontrer par contraposée les énoncés suivants :

- Si $n^2$ est un entier impair alors $n$ est un entier impair.

- $x in bb(R)^plus$, si $x$ est irrationnel alors $sqrt(x)$ est irrationnel.


= Réciproque d\'une implication

La proposition $P arrow.r.double.long Q$ a pour #strong[réciproque] la proposition : $Q arrow.r.double.long P$

Une implication est son implication réciproque #strong[non pas toujours
la même valeur de vérité].

*Exemple :*

- Pour tout $x in bb(R) comma quad x eq 1 arrow.r.double.long x^2 eq 1$ est vrai.

- Pour tout $x in bb(R) comma quad x^2 eq 1 arrow.r.double.long x eq 1$ est faux.

#Exercice("")

On considère les propositions suivantes :

- $p$ : #emph[Il pleut.]

- $q$ : #emph[Il y a des nuages.]

Ecrire l’implication $p arrow.r.double.long q$, sa contraposée, sa réciproque, sa négation et la contraposée de sa réciproque.

Lesquelles sont vraies ?


#Exercice("")

Pour tout $n$ entier naturel, $n gt.eq 2$, l’implication ($n$ premier et $n gt 2$) $arrow.r.double.long$ ($n$ impair) est vraie.

Ecrire la contraposée, la réciproque et la négation de cette implication et dites à chaque fois s'il s'agit d'un théorème.


#Exercice("")

Pour $x$ et $y$ des réels et $a$ un réel strictement positif, donner la contraposée, la réciproque, et la négation de l'implication suivante : 

$ x lt y arrow.r.double.long a x lt a y $

Lesquelles sont des théorèmes ?


#Exercice("")

Soit $m$ et $n$ des entiers naturels, donner la contraposée, la réciproque, et la négation de l'implication suivante :

$ lr((m n upright(" est pair"))) arrow.r.double.long lr((lr((m upright(" est pair"))) upright(" ou ") lr((n upright(" est pair"))))) $

Lesquelles sont des théorèmes ?


= Nécessaire et suffisante

Les concepts logiques sont souvent établis sous la forme de condition nécessaire et suffisante.

Heureusement, le sens des mots \"nécessaire\" et \"suffisante\" rejoint
le langage courant.

== Conditions nécessaires

Une #strong[condition nécessaire] est indispensable pour qu'unen conclusion soit vraie.

Elle ne garantit pas que le résultat soit vrai.

En d'autres mots "$Q$ est nécessaire pour $P$ " signifie que $P$ est vrai seulement si $Q$ est vrai. Ce qui revient à

$ P arrow.r.double.long Q $.

*Exemple :*

- Pour qu'un triangle soit équilatéral, il est nécessaire qu'il soit isocèle.

$ é q u i l a t é r a l arrow.r.double.long i s o c è l e $

- $x in bb(R)$, $x lt.eq 0$ est nécessaire pour que $x eq minus 2$.

$ x in bb(R) comma x eq minus 2 arrow.r.double.long x lt.eq 0 $

== Conditions suffisantes

Une #strong[condition suffisante] est telle qu'elle garantisse que la conclusion soit vraie.

Autrement dit "$P$ est suffisant pour $Q$ signifie que $Q$" est vrai si $P$ est vrai.

Ce qui revient à $ P arrow.r.double.long Q $.

*Exemple :*

- $x in bb(R),x=-2 $ est suffisant pour $x lt.eq 0 $.

- Pour qu'un triangle soit isocèle, il est suffisant qu'il soit équilatéral.
  Remarquez qu'il ne doit pas être obligatoirement équilatéral pour être isocèle.

== synthèse

Il s'agit en fait d'une autre façon d'exprimer les implications. Les phrases suivantes ont le même sens :

- $P => Q$ ;

- pour que $P$ soit vraie, il faut que $Q$ soit vraie ;

- $Q$ est une condition nécessaire pour que $P$ ;

- pour que $Q$ soit vraie, il suffit que $P$ soit vraie ;

- $P$ est une condition suffisante pour que $Q$.

La même implication peut donc s\'écrire

- soit comme une condition suffisante, \ \"pour que la conclusion soit vraie, il suffit que l\'hypothèse soit vraie\",

- soit comme une condition nécessaire,\  \"pour que l\'hypothèse soit
  vraie, il faut que la conclusion soit vraie\".

#Exercice("")

Pour tout $x in RR $ :

- $P colon x^2 minus 2 x minus 3 gt 0$.

- $Q colon x gt 3$.

Parmi les énoncés suivants, lesquels sont vrais , lesquels sont faux ?

+ $P arrow.r.double.long Q$.

+ $Q arrow.r.double.long P$.

+ $P$ est nécessaire pour $Q$.

+ $P$ est suffisant pour $Q$.

+ $overline(Q) arrow.r.double.long overline(P)$.


#Exercice("révisions rapides")

- Démontrer, à l'aide d\'une table de vérité, l'associativité du $xor$.

- Ecrire la négation de
  $ P and lr((Q or R))$.

- Quelle est la contraposée de
  $P arrow.r.double.long lr((Q arrow.r.double.long R))$ ?

- Simplifier l'expression
  $R arrow.r.double.long lr((S arrow.r.double.long R))$.

