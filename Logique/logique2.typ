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

= Rappels
#align(center,table(columns: 2, align: (center, center),
[$P$],[  $not P$ ],
[  $0$ ],[  $1$ ],
[  $1$ ],[  $0$ ])
)

#align(center,table(columns: 6, align: (center),
[$P$],[  $Q$ ],[  $P and Q$ ],[  $P or Q$ ],[  $P arrow.r.double.long Q$ ],[  $P arrow.l.r.double Q$ ],
[  $0$ ],[  $0$ ],[  $0$ ],[  $0$ ],[  $1$ ],[  $1$ ],
[  $0$ ],[  $1$ ],[  $0$ ],[  $1$ ],[  $1$ ],[  $0$ ],
[  $1$ ],[  $0$ ],[  $0$ ],[  $1$ ],[  $0$ ],[  $0$ ],
[  $1$ ],[  $1$ ],[  $1$ ],[  $1$ ],[  $1$ ],[  $1$ ])
)

= La composition des propositions

Appliqués à des propositions élémentaires, les connecteurs construisent des propositions composées.

Il est possible d'appliquer à nouveau à ces dernières les connecteurs de négation, conjonction, disjonction, implication ou équivalence.

Ainsi, à partir des propositions :

- $p$ : $x in bb(N) , med x$ pair.
- $q$ : $y in bb(N) , med y$ pair.
- $r$ : $x in bb(N) , y in bb(N) , med x y$ est impair.

On peut former la proposition composée : \
$P colon not r arrow.r.double.long lr((p or q))$ qui se traduira par :

\" $x y$ pair $arrow.r.double.long x$ pair ou $y$ pair\".

Les parenthèses sont utiles dans les formules logiques car il faut se rendre compte par exemple que la formule $not P or Q$ est différente de la formule $not lr((P or Q))$.

Pour manipuler une proposition composée, on peut tout simplement parcourir la liste complète des valeurs de vérité possibles des propositions qui ont servi à la construire.

Ceci permet de remplacer un raisonnement par une simple vérification mécanique, exécutable par ordinateur.

Les tables de vérité servent de point de départ à ces vérifications.

#Exercice("")

Etablir la table de vérité de la proposition $P : not r =>
(p or q) $

#align(center,table(columns: 6, align: (center),
[$p$],[  $q$ ],[  $r$ ],[  $not r$ ],[  $p or q$ ],[  $not r => (p or q)$ ],
[  $1$ ],[  $1$ ],[  $$ ],[  $$ ],[  $$ ],[  $$ ],
[  $1$ ],[  $1$ ],[  $$ ],[  $$ ],[  $$ ],[  $$ ],
[  $1$ ],[  $0$ ],[  $$ ],[  $$ ],[  $$ ],[  $$ ],
[  $1$ ],[  $0$ ],[  $$ ],[  $$ ],[  $$ ],[  $$ ],
[  $0$ ],[  $1$ ],[  $$ ],[  $$ ],[  $$ ],[  $$ ],
[  $0$ ],[  $1$ ],[  $$ ],[  $$ ],[  $$ ],[  $$ ],
[  $0$ ],[  $0$ ],[  $$ ],[  $$ ],[  $$ ],[  $$ ],
[  $0$ ],[  $0$ ],[  $$ ],[  $$ ],[  $$ ],[  $$ ])
)

Logiquement, l'expression $P$ est vraie dans 7 cas sur 8.

Attention, *mathématiquement*, une implication n'a de sens que si la prémisse et la conclusion sont vraies.
- Faire ressortir ces cas de la table de vérité ci-dessus.
- Que pouvez-vous en conclure ?

#Exercice("")

Discuter suivant les valeurs de vérité de $p , q , r$ les valeurs de :

+ $q or lr((overline(q) and p)) dot.basic$ \
+ $ p => (p =>q)$.
+ $ p or (q => r).$


== Définitions : tautologie, antilogie

- Une #strong[tautologie] est une proposition composée qui est vraie quelles que soient les valeurs de vérité des propositions simples qui la composent.

$ not lr((not P)) arrow.l.r.double P\
not lr((P and not P))\
lr((P and Q)) arrow.l.r.double lr((Q and P))\
lr((P or Q)) arrow.l.r.double lr((Q or P)) $

sont des tautologies.

- Une #strong[antilogie] est une proposition composée qu est fausse quelles que soient les valeurs de vérité des propositions simples qui la composent.

*Exemple :*

Si $P$ et $Q$ sont deux propositions, alors $P arrow.r.double.long Q$ est équivalente à $lr((not P)) or Q$.

En effet, on peut vérifier cela à l’aide d’une table de vérité :

#align(center,table(columns: 6, align: (center),
[$P$],[  $Q$ ],[  $P arrow.r.double.long Q$ ],[  $not P$ ],[  $not P or Q$ ],[  $P arrow.r.double.long Q <=> not P or Q$ ],
[  $1$ ],[  $1$ ],[  $1$ ],[  $0$ ],[  $1$ ],[  $1$ ],
[  $1$ ],[  $0$ ],[  $0$ ],[  $0$ ],[  $0$ ],[  $1$ ],
[  $0$ ],[  $1$ ],[  $1$ ],[  $1$ ],[  $1$ ],[  $1$ ],
[  $0$ ],[  $0$ ],[  $1$ ],[  $1$ ],[  $1$ ],[  $1$ ])
)


Ainsi la proposition
$lr((P arrow.r.double Q)) arrow.l.r.double lr((lr((not P)) or Q))$ est toujours vraie, quelles que soient les valeurs de vérité rattachées aux assertions $P$ et $Q$.

C'est bien une #strong[tautologie].

#Exercice("")

Ces propositions sont-elles des tautologies ? des antilogies ?

+ $ ((P and Q) or R) <=> (P and (Q or R))$
+ $lr([P and lr((P arrow.r.double.long Q))]) arrow.r.double.long Q$


= Règles de simplifications et d'équivalences logiques

Il existe en logique un certain nombre de règles qui établissent un calcul des propositions, semblable au calcul algébrique.

Après application de l’une de ces règles sur une proposition, on obtient une proposition équivalente, c’est-à-dire ayant la même valeur de vérité.

Soient $P , Q , R$ trois propositions. Nous avons les
équivalences (vraies) suivantes :

#strong[Elément neutre :]

- $(P or 1) <=> 1 quad quad (P and 1) <=> P $

- $(P or 0) <=> P quad quad (P and 0) <=> 0$

#strong[Idempotence :]

- $(P or P) <=> P quad quad (P and P) <=> P$

#strong[Complémentarité :]

- $(P or not P) <=> 1 quad quad (P and not P) <=>
  0 $

#strong[Involution :]

- $P arrow.l.r.double not lr((not P))$

#strong[Commutativité :]

- $lr((P and Q)) arrow.l.r.double lr((Q and P)) quad  lr((P or Q)) arrow.l.r.double lr((Q or P))$

#strong[Associativité :]

- $(P or Q)or R <=> P or (Q or R) $

- $(P and Q)and R <=> P and (Q and R) $

#strong[Distributivité du $or$ sur le $and$ à gauche et à droite :]

- $(P or (Q and R)) <=> (P or Q) and (P or R) $

- $ ((P and Q) or R ) arrow.l.r.double ((P or R)) and ((Q or R))$

#strong[Distributivité du $and$ sur le $or$ à gauche et à droite:]

- $ (P and (Q or R) ) <=> (P and Q) or (P and R) $
- $ ((P or Q) and R)  <=> (P and R) or (Q and R)$

#strong[Contraposée :]

- ($P arrow.r.double.long Q$) $arrow.l.r.double$
  ($not lr((Q)) arrow.r.double.long not lr((P)) paren.r$

#strong[Equivalence :]

- $(P arrow.l.r.double Q) arrow.l.r.double  (P arrow.r.double.long Q) and (Q arrow.r.double.long P)$

#strong[Loi de De Morgan :]

- $not lr((P and Q)) arrow.l.r.double lr((not P)) or lr((not Q))$ \
- $not lr((P or Q)) arrow.l.r.double lr((not P)) and lr((not Q))$

#strong[Loi d\'absorption :]

- $(P or(P and Q)) <=> P quad quad quad (P and (P or Q)) <=> P $

#Exercice("")

La soustraction dans $bb(R)$ est elle commutative ? associative ?

Admet-elle un élément neutre ?


#Exercice("")

A l'aide de tables de vérité, démontrer :

- une propriété de distribuvité ;
- une loi de #emph[De Morgan] ;
- une loi d'absorption.


#Exercice("")

A l'aide d'une table de vérité, puis en utilisant les propriétés, démontrer la contraposée de l'implication.

= Exemple de simplifications logiques plus #emph[complexe]

$S eq lr((a and b and c)) or lr((overline(a) and b and overline(c))) or lr((overline(a) and b and c)) or lr((a and b and overline(c)))$

$S\=(a and b and c) or ( a and b  and overline(c) ) or (overline(a) and b  and overline(c))or (overline(a) and b and c) quad $ commutativité

$S\=[(a and b) and (c or overline(c))] or [( overline(a) and b ) and (c or overline(c))] $  distributivité

$S\=[(a and b) and (1)] or [( overline(a) and b ) and (1)] $  complémentarité

$S\=(a and b) or ( overline(a) and b ) $  élément neutre

$S\=( a or overline(a)) and b $  distributivité

$S\=1 and b $  complémentarité

$S eq b$ élément neutre


#Exercice("")

On donne la proposition
$P colon p arrow.r.double.long lr((q arrow.r.double.long r))$

- Etablir la table de vérité de $P$.

- Simplifier $P$. Retrouver les lignes de la table où
  $P arrow.l.r.double 1$.

- Simplifier $not P$ . Retrouver les lignes de la table où
  $P arrow.l.r.double 0$.

- Simplifier
  $Q colon lr((p arrow.r.double.long q)) arrow.r.double.long r$ et en déduire que l\'implication n\'est pas associative.


#Exercice("")

Dans chacun des cas suivants, #strong[simplifier] si possible les deux propositions puis dire si elles sont équivalentes ou pas.

- $p and lr((p arrow.r.double.long q)) #h(2em) " et "  p and q$

- $lr([p arrow.r.double.long lr((q arrow.r.double.long r))]) #h(2em) " et " #h(2em) lr([lr((p and q)) arrow.r.double.long r])$

- $lr([lr((p or q)) arrow.r.double.long r]) #h(2em) " et " #h(2em) lr([lr((p arrow.r.double.long r)) and lr((q arrow.r.double.long r))])$

