#set enum(numbering: "1. a. i.", indent: 0pt)
#set heading(numbering: "1. a. i.")
#set page("a4", 
margin: (top: 20mm, bottom: 20mm, left: 20mm, right: 20mm),
footer: [Logique 1  #h(1fr) #counter(page).display("1 / 1",both: true)  #h(1fr) IUT de Bordeaux])  

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
  [#align(center+horizon)[#text(18pt)[Les connecteurs logiques] \ TD1 \ Logique et raisonnements]],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#head()
 
#outline(indent: auto)

= Qu’est ce que la logique ?

== Définition

La logique vient du grec #emph[« logos »] qui signifie #emph[« parole, discours »], et par extension #emph[« rationalité »], la logique est donc la science de la raison. \
Plus précisément, c’est la science qui étudie les règles que doivent respecter tout raisonnement et qui permet de distinguer un raisonnement valide d’un raisonnement qui ne l’est pas.

== (Très) brève description des mathématiques

Les mathématiques actuelles sont bâties de la façon suivante :

- On part d’un petit nombre d’affirmations, appelées #strong[axiomes], supposées vraies à priori (et que l’on ne cherche donc pas à démontrer) ;
- On définit ensuite la notion de #strong[démonstration] (en définissant par exemple de ce qu’est une implication, une équivalence...) ; 
- On décide enfin de qualifier de vraie toute affirmation obtenue en fin de démonstration et on appelle #strong[« théorème »] une telle affirmation (vraie).
- A partir des axiomes, on obtient donc des théorèmes qui viennent petit à petit enrichir la théorie mathématique.

== Proposition

Un scientifique étudie des objets, à propos desquels il énonce des faits (ou propositions). \
La logique manipule de façon formelle les propositions.

En logique, une #strong[proposition] (ou #strong[assertion]) est tout simplement une affirmation. \
Il faut faire attention que cette affirmation puisse être vrai ou fausse. \
Un principe fondamental pour la logique est ce qu’on appelle le #strong[principe du tiers exclu] : une proposition est soit vraie soit fausse mais pas autre chose. \
On dit que la #strong[« valeur de vérité »] d’une proposition est « vraie » ou « fausse ».

On peut noter également #strong[1 le vrai], et #strong[0 le faux].

*Exemple :* 

- #emph[« $pi$ est un nombre entier »] est une proposition fausse.
- #emph[« 18 est divisible par 3 »] est une proposition vraie.

*Remarque :*

La phrase #emph[« Cette proposition est fausse. »] n’est ni vraie, ni fausse. Ce n’est donc pas une proposition logique.

#Exercice("")

Les énoncés suivants sont-ils des propositions ?

+ $1 / 2 + 1 / 3 = 1 / 5$ \
+ #emph[Ouvre la fenêtre !]
+ #emph[Tous les chats sont gris.]
+ #emph[Le ou la prof de maths est sympathique.]
+ #emph[Il y a une infinité de nombres premiers.]
+ #emph[Demain, il va pleuvoir.]
+ #emph[Je mens.]


== Prédicat

En mathématiques, on travaille souvent avec des variables. Définir une variable $x$ signifie que l'on définit aussi l'ensemble dans lequel elle varie, soit $E$. \
$x$ peut valoir n'importe quel élément de $E$ et on note $x in E$.

Un #strong[prédicat] est un énoncé qui peut contenir plusieurs variables et qui devient une proposition chaque fois que les variables sont fixées dans leurs ensembles respectifs et deviennent des constantes.

*Exemple :*

- #emph[$x$] est un nombre impair n'est pas un prédicat.
- #emph[$x in bb(N)$] est un nombre impair est un prédicat.

Lorsqu'un prédicat dépend d’une variable $x$, on le note souvent $P lr((x))$.

*Exemple :*

- $P lr((x)) : x in bb(R) , x^2 lt 2 .$

#Exercice("")

Les énoncés suivants sont-ils des prédicats ?

+ $P lr((x)) : x in bb(R) , x eq pi .$
+ $P lr((x , y)) : ln lr((x y)) eq ln lr((x)) plus ln lr((y)) .$
+ $P lr((t)) : cos lr((t)) eq 1 .$
+ $P lr((x)) : x$ est positif.
+ $P lr((x , y)) : x in bb(R) , y in bb(R) , x eq 2 y .$
+ $P lr((x)) : x in bb(R) , x^2 gt.eq 1 .$

= Connecteurs logiques et tables de vérité

Si $P$ est une proposition et $Q$ est une autre proposition, nous allons définir de nouvelles propositions construites à partir de $P$ et de $Q$.
\
Lorsque l’on combine des propositions grâce à des connecteurs logiques, on obtient des phrases qui ont aussi une valeur de vérité. \
Le principe du tiers exclu s’applique aussi à ces phrases.

== La négation "non" ( $not$ )

C’est le connecteur le plus simple de tous. \
Considérons une proposition $P$, la proposition #emph[« non $P$ »] est vraie si $P$ est faux, et fausse si $P$ est vraie. \
On passe d'une proposition $P$ à sa négation par le biais du symbole $not$ ou $overline(P)$.
#align(center,table(columns: 2, align: (center, center),
[$P$],[  $not P$ ],
[  $V$ ],[  $F$ ],
[  $F$ ],[  $V$ ])
)

#Exercice("")

Donner le négation de chaque proposition :

- $P$ : $x eq 2$.
- $P$ : #emph[$x lt 3$].
- $P$ : \"#emph[Tous les étudiants sont travailleurs.]\"


== La conjonction : connecteur logique "et" ( $and$ )

Ce connecteur permet de former des formules comme « $P$ et $Q$ ». \
La proposition $P$ et $Q$ est vraie si $P$ est vraie et $Q$ est vraie.
La proposition $P$ et $Q$ est fausse sinon.

On résume ceci en une #strong[table de vérité] :

#align(center,table(columns: 3, align: (center, center, center),
[$P$],[$Q$],[$P and Q$],
[  $V$ ],[  $V$ ],[  $V$ ],
[  $V$ ],[  $F$ ],[  $F$ ],
[  $F$ ],[  $V$ ],[  $F$ ],
[  $F$ ],[  $F$ ],[  $F$ ]
))

*Exemple :*

- $p$ : #emph[\"n est un nombre entier.\"]

- $q$ : #emph[\"n est compris entre 7,5 et 11,3\".]

La proposition $P : p and q$ est vraie pour
$n in brace.l 8 semi 9 semi 10 semi 11 brace.r$.

== La disjonction : connecteur logique "ou" ( $or$ )

Ce connecteur permet de former des formules comme « $P$ ou $Q$ ». \
La proposition $P$ ou $Q$ est vraie si l'une (au moins) des deux
propositions $P$ ou $Q$ est vraie. \
La proposition $P$ ou $Q$ est fausse si les deux propositions $P$ et $Q$ sont fausses.

On reprend ceci dans la table de vérité :

#align(center,table(columns: 3, align: (center, center, center),
[$P$],[$Q$],[$P or Q$],
[  $V$ ],[  $V$ ],[  $V$ ],
[  $V$ ],[  $F$ ],[  $V$ ],
[  $F$ ],[  $V$ ],[  $V$ ],
[  $F$ ],[  $F$ ],[  $F$ ]
))

*Exemple :*
- $p$ : #emph["n est un nombre entier."] \
- $q$ : #emph["n est compris entre 7,5 et 11,3".]

La proposition $P : p or q$ est vraie pour $n in [ 7.5 semi 11.3 ]$.

*Remarque :*

Dans le langage courant, #emph[« ou »] a en général un sens exclusif (fromage #emph[« ou »] dessert). En mathématiques, le #emph[« ou »] est toujours inclusif : si $P$ et $Q$ sont toutes les deux vraies, alors $P or Q$ est vraie. \
Prenons cette phrase : #emph[Supposons que $m$ ou $n$ est impair.] Le mathématicien exprime que (au moins) l'un des deux est impair et que l'autre peut être pair ou impair.

#Exercice("")

Les propositions suivantes sont-elles vraies ou fausses ?

- $2$ divise $3$ et $2$ divise $4$.
- $2$ divise $3$ ou $2$ divise $4$.
- $2$ divise $3$ ou $2$ divise $5$.


== L'implication ( $=>$)

Contrairement à sa signification usuelle, qui suppose entre deux propositions un lien sémantique de type cause-effet, il ne faut voir dans l'implication logique qu'un simple procédé syntaxique qui permet à partir de propositions élémentaires $P$ et $Q$ d'écrire la nouvelle proposition \"Si $P$ alors $Q$\".

La proposition #strong[$P => Q$] se lit en français $P$ implique $Q$. \
Elle se lit aussi #strong[si $P$ alors $Q$] ou #strong[$Q$ si $P$].

Dans une implication du type $P => Q$, il y a deux
parties :

- l'énoncé $P$ qui est appelé l'#strong[hypothèse] ou la #strong[condition], et
- l'énoncé $Q$ qui est appelé la #strong[conclusion].

La définition mathématique est la suivante : La proposition #strong[($not P$) ou $Q$] est notée #strong[$P => Q$].

La table de vérité est :
#align(center,table(columns: 3, align: (center, center, center),
[$P$],[$Q$],[$P => Q$],
[  $V$ ],[  $V$ ],[  $V$ ],
[  $V$ ],[  $F$ ],[  $F$ ],
[  $F$ ],[  $V$ ],[  $V$ ],
[  $F$ ],[  $F$ ],[  $V$ ]
))

*Remarque :*

- Si $P$ est fausse alors l'assertion $P => Q$ est toujours vraie.
- Une implication n'est *fausse* que dans le cas #strong[vrai implique faux].

#Exercice("")

+ $P$ et $Q$ sont deux propositions telles que $P => Q$ est vraie.
  - On suppose que $P$ est vraie. Quelle est la valeur de vérité de $Q$ ?
  - On suppose que $Q$ est fausse. Quelle est la valeur de vérité de $P$ ?
  - On suppose que $Q$ est vraie. Quelle est la valeur de vérité de $P$ ?
+ $P$ et $Q$ sont deux propositions telles que $Q => P$ est fausse.
  - Quelles sont les valeurs de vérité de $P$ et de $Q$ ?


#Exercice("")

Les propositions suivantes sont-elles vraies ou fausses ?

- pour tout $ x in bb(R)^plus, quad 0 lt.eq x lt.eq 25 => sqrt(x) lt.eq 5$. \
- pour tout $x in bb(R), quad x in bracket.r minus oo , minus 4 bracket.l => x^2 plus 3 x minus 4 > 0$.
  \
- pour tout $theta in bb(R),quad sin(theta)=0 => theta = 0$.
- $1$ est un nombre premier implique que $27$ est un nombre premier.
- Si $2$ divise $4$ alors $2$ divise $3$.
- $2$ divise $4$ si $2$ divise $3$.

== L'équivalence ( $arrow.l.r.double$)

L'équivalence est définie par : #strong[$P arrow.l.r.double Q$] est la proposition
#strong[$lr((P => Q)) and lr((Q => P))$].

On dira #strong[$P$ est équivalent à $Q$] ou #strong[$P$ si et seulement si $Q$].

Cette proposition est vraie lorsque $P$ et $Q$ sont vraies ou lorsque $P$ et $Q$ sont fausses.

La table de vérité est :

#align(center,table(columns: 3, align: (center, center, center),
[$P$],[$Q$],[$P arrow.l.r.double Q$],
[  $V$ ],[  $V$ ],[  $V$ ],
[  $V$ ],[  $F$ ],[  $F$ ],
[  $F$ ],[  $V$ ],[  $F$ ],
[  $F$ ],[  $F$ ],[  $V$ ]
))

*Exemple :*

- Pour $x , x prime in bb(R)$, l'équivalence (#strong[$x times x prime eq 0 paren.r arrow.l.r.double lr((x eq 0 or x prime eq 0))$] est vraie.

- Pour $x , x prime in bb(R)$, l'équivalence (#strong[$x times x prime eq 0 paren.r arrow.l.r.double lr((x eq 0 and x prime eq 0))$] est fausse.

- Voici une équivalence #strong[toujours fausse] (quelle que soit la proposition $P$) : $P arrow.l.r.double not lr((P))$.

#Exercice("")

Les propositions suivantes sont-elles vraies ou fausses ?

+ Pour tout $x in bb(R) , x gt 1 arrow.l.r.double x^2 gt 1$.
+ Pour tout $ x in bb(R)-{-1,1},((x-1)(x-2))/(x^2-1)=0 <=> x=2$. 
+ Tout triangle ABC est rectangle ssi $A B^2 eq A C^2 plus C B^2 .$ 
+ pour tout $n in bb(N)$, $n$ divise $6$ si et seulement si $n$ divise $12$.


== La disjonction exclusive ( XOR $plus.circle$ ) :

$P plus.circle Q$ correspond à la proposition $lr((P or Q)) and not lr((P and Q))$ ou encore à $lr((P and not Q)) or lr((not P and Q))$  \ c'est-à-dire en français : soit $P$, soit $Q$, mais pas les deux à la
fois.

La table de vérité est :

#align(center,table(columns: 3, align: (center, center, center),
[$P$],[$Q$],[$P plus.circle Q$],
[  $V$ ],[  $V$ ],[  $F$ ],
[  $V$ ],[  $F$ ],[  $V$ ],
[  $F$ ],[  $V$ ],[  $V$ ],
[  $F$ ],[  $F$ ],[  $F$ ]
))

#Exercice("")

Exprimer en fonction $p$, 0 ou 1 les propositions suivantes :

- $p plus.circle 1 eq$
- $p plus.circle 0 eq$
- $p plus.circle p eq$
- $p plus.circle overline(p) eq$


#Exercice("")

$P$ : $m$ est un entier pair. \
$Q$ : $n$ est un entier pair.

Exprimer en français l'expression $P plus.circle Q$.


== D’autres connecteurs ...

Ces connecteurs ne sont pas ou peu utilisés en mathématiques, mais
plutôt en électronique et en informatique.

Les « portes logiques » correspondent à ces connecteurs. \
La porte NOT est le « non » logique, la porte AND est le « et » et la
porte OR est le « ou ».

On trouve aussi la porte NOR (NOT OR). \

Compléter le tableau correspondant à la porte NOR :

#align(center,table(columns: 3, align: (center, center, center),
[$P$],[$Q$],[$P arrow.b Q$],
[  $V$ ],[  $V$ ],[  $$ ],
[  $V$ ],[  $F$ ],[  $$ ],
[  $F$ ],[  $V$ ],[  $$ ],
[  $F$ ],[  $F$ ],[  $$ ]
))

La porte NAND (NOT AND). \

Compléter le tableau correspondant à la porte NAND :
#align(center,table(columns: 3, align: (center, center, center),
[$P$],[$Q$],[$P arrow.t Q$],
[  $V$ ],[  $V$ ],[  $$ ],
[  $V$ ],[  $F$ ],[  $$ ],
[  $F$ ],[  $V$ ],[  $$ ],
[  $F$ ],[  $F$ ],[  $$ ]
))
