#set enum(numbering: "1. a. i.", indent: 0pt)
#set heading(numbering: "1. a. i.")
#set page("a4", 
margin: (top: 20mm, bottom: 20mm, left: 20mm, right: 20mm),
footer: [Logique 4 #h(1fr) #counter(page).display("1 / 1",both: true)  #h(1fr) IUT de Bordeaux])  

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
  [#align(center+horizon)[#text(18pt)[Les connecteurs logiques] \ TD4 \ Logique et raisonnements]],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#head()

#Exercice("")

Construire la table de vérité de la proposition suivante :

$ p arrow.l.r.double lr((p plus.circle r)) $


#Exercice("")

Ecrire la négation, la réciproque et la contraposée de la proposition :

- S\'il fait beau et si je suis en vacances alors j\'irai à la plage.


#Exercice("")

Décider si le raisonnement suivant est valide :

Jean est fatigué ou malade \
S\'il est fatigué alors il est contrarié \
Jean n\'est pas contrarié

Donc Jean est malade.


#Exercice("")


Retrouver une proposition simple vérifiant la table de vérité. On
simplifiera l\'expression obtenue.


#align(center,table(columns: 4, align:center,
[p],[q],[r],[f(p;q;r)],
[0],[0],[0],[0],
[0],[0],[1],[1],
[0],[1],[0],[0],
[0],[1],[1],[1],
[1],[0],[0],[0],
[1],[0],[1],[0],
[1],[1],[0],[0],
[1],[1],[1],[1]
))

#Exercice("")

Simplifier les propositions suivantes puis indiquer les éventuelles tautologies

- $lr((p arrow.r.double.long p)) arrow.r.double.long q$

- $lr((p and q)) arrow.r.double.long lr((p or q))$

#Exercice("")

Ecrire la négation des propositions suivantes

$p arrow.l.r.double q quad semi quad p or lr((q and r)) quad semi quad lr((not p or q)) arrow.r.double.long r$


#Exercice("")

On construit le connecteur binaire $bar.v$ appelé connecteur de Sheffer par
$ p bar.v q arrow.l.r.double lr((overline(p))) or lr((overline(q))) $

- Construire la table de vérité de $p bar.v q$.

- Calculer $p bar.v p$, $quad overline(p bar.v q)$,
  $quad overline(p) bar.v overline(q)$

- En déduire l’écriture des propositions :$quad overline(p)$,$quad$ $p and q$,$quad$ $p or q$, $quad$ $p arrow.r.double.long q$ uniquement à l’aide du connecteur de Sheffer.
]

#Exercice("")

#strong[Le demi-additionneur]

Un additionneur est un circuit logique permettant de réaliser une addition. Ce circuit est très présent dans les ordinateurs pour le calcul arithmétique mais également pour le calcul d'adresses.

Pour additionner deux nombres binaires, il faut d’abord additionner les 2 bits de poids faible, puis additionner les bits suivants sans oublier les retenues.

Un demi-additionneur ou #emph[Half Adder (HA)] est un circuit qui additionne les 2 bits de poids faibles pour lesquelles la retenue propagée n’est pas prise en compte.

+ Compléter la table suivante pour $A plus B$ :

#align(center,table(columns: 4, align:center,
[A],[B],[Sum],[Carry],
[0],[0],[],[],
[0],[1],[],[],
[1],[0],[],[],
[1],[1],[],[]
))

+ Compléter par une expression #emph[logique] simple :

$ S eq #h(8em)  C eq $

#align(center,image("images/porteadd.png", width: 50%))

#strong[Additionneur complet 1 bit]

Pour additionner les bits de poids supérieur
$a_i comma b_i lr((0 lt i lt n))$ et tenir compte de la retenue
$r_(i minus 1)$ propagée depuis le rang $i minus 1$, il faut avoir
recours à un #emph[Full Adder] ou additionneur complet.

Un #emph[Full Adder] peut additionner 2 bits avec un report, soit trois
entrées et deux sorties.

Un additionneur complet nécessite donc une entrée supplémentaire : une
retenue. L\'intérêt de celle-ci est de permettre le chaînage des
circuits.

+ Compléter la table de vérité d\'un additionneur complet
  $lr((A plus B plus C_(i n)))$:

#align(center,table(columns: 5, align:center,
[A],[B],[$C_(i n)$],[Sum],[$C_(o u t)$],
[0],[0],[0],[],[],
[0],[0],[1],[],[],
[0],[1],[0],[],[],
[0],[1],[1],[],[],
[1],[0],[0],[],[],
[1],[0],[1],[],[],
[1],[1],[0],[],[],
[1],[1],[1],[],[]
))


+ Vérifier que :

$ S eq A plus.circle B plus.circle C_(i n) $

+ Puis que :

$ C_(o u t) eq lr((A and B)) or ( C_(i n) and lr((A plus.circle B)) ) $

#align(center,image("images/fulladd.png"))