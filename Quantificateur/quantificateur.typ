#set enum(numbering: "1. a. i.", indent: 0pt)
#set heading(numbering: "1. a. i.")
#set page("a4", 
margin: (top: 20mm, bottom: 20mm, left: 20mm, right: 20mm),
footer: [Quantificateur  #h(1fr) #counter(page).display("1 / 1",both: true)  #h(1fr) IUT de Bordeaux])  

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
  [#align(center+horizon)[#text(18pt)[Les quantificateurs] \  Logique et raisonnements]],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#head()
 
#outline(title: "Plan du cours", indent: auto)

= Le quantificateur universel $forall$ : pour tout

Une proposition $P$ peut dépendre d'un paramètre $x$, par exemple
$x^2 gt.eq 1$, la proposition $P lr((x))$ est vraie ou fausse selon la
valeur de $x$.

La proposition : $ forall x in E , quad P  (x)  $

est vraie lorsque les propositions $P lr((x))$ sont vraies pour tous les
éléments $x$ de l'ensemble $E$.

On lit : #strong[pour tout $x$ appartenant à $E$, $P lr((x))$].

#strong[Pour tout $x$ appartenant à $E$, $P lr((x))$ est vraie].

**Exemple :**

- $forall x in bracket.l 1 , + oo bracket.l , quad lr((x^2 gt.eq 1))$ est une proposition vraie.

- $forall x in bb(R) , quad lr((x^2 gt.eq 1))$ est une proposition
  fausse.

- $forall n in bb(N) , quad n lr((n + 1)) upright(" est divisible par ") 2$
  est vraie.

= Le quantificateur existentiel $exists$ : il existe

La proposition : $ exists x in E med bar.v quad P lr((x)) $

est vraie lorsque l'on peut trouver #strong[au moins] un $x$ de $E$
pour lequel $P lr((x))$ est vraie.

On lit : #strong[il existe $x$ appartenant à $E$ tel que $P lr((x))$
(soit vraie)] .

**Exemple :**

- $exists x in bb(R) med bar.v quad lr((x lr((x minus 1)) lt 0))$ est
  vraie.

Par exemple $x eq 1 / 2$ vérifie bien la propriété.

- $exists n in bb(N) med bar.v quad n^2 minus n gt n$ est vraie.

Il y a plein de choix, par exemple $n eq 3$ convient, mais aussi
$n eq 10$ ou même $n eq 100$, un seul suffit pour dire que la
proposition est vraie.

- $exists x in bb(R) med bar.v quad lr((x^2 eq minus 1))$ est fausse.

Aucun réel au carré ne donnera un nombre négatif.

= La négation des quantificateurs

La négation de : $quad forall x in E , quad P lr((x)) #h(2em)$ est
$#h(2em) exists x in E med bar.v quad not P lr((x))$ .

*Exemple :*

- La négation de
  $forall x in bracket.l 1 , + oo bracket.l , quad lr((x^2 gt.eq 1))$

est la proposition :
$exists x in bracket.l 1 , + oo bracket.l med bar.v quad lr((x^2 lt 1))$.

En effet, la négation de $x^2 gt.eq 1$ est $not lr((x^2 gt.eq 1))$ mais
s'écrit + simplement $x^2 lt 1$.

- La négation de $exists x in E med bar.v quad P lr((x))$ est :
  $quad forall x in E , quad not P lr((x))$.

*Exemple :*

- La négation de
  $exists z in bb(R) med bar.v quad lr((z^2 + z + 1 eq 0))$ est :
  $quad quad forall z in bb(R) , quad lr((z^2 + z + 1 eq.not 0))$.

- La négation de  $forall x in RR, quad (x+1 in
  ZZ) quad $ est :
  $quad quad exists x in bb(R) med bar.v quad lr((x + 1 in.not bb(Z)))$.

- Ce n'est pas + difficile d'écrire la négation de phrases
  complexes.

Pour la proposition :

$ forall x in bb(R) , quad exists y gt 0 med bar.v quad lr((x + y gt 10)) $

Sa négation est :

$ exists x in bb(R) med bar.v quad forall y gt 0 , quad lr((x + y lt.eq 10)) dot.basic $

*Remarque :* 

- L'ordre des quantificateurs est très important.

Par exemple les deux phrases logiques :

$ forall x in bb(R) , quad exists y in bb(R) med lr(|quad lr((x + y gt 0)) #h(2em) upright("et") #h(2em) exists y in bb(R) med|) quad forall x in bb(R) , quad lr((x + y gt 0)) dot.basic $

sont différentes.

La première est vraie, la seconde est fausse.

En effet, une phrase logique se lit de #strong[gauche à droite], ainsi
la première phrase affirme :

$ forall x in bb(R) , quad exists y in bb(R) med bar.v quad lr((x + y gt 0)) $

Pour tout réel $x$, il existe un réel $y$ (#strong[qui peut donc
dépendre de $x$]) tel que $x + y gt 0$

(par exemple on peut prendre $y eq lr(|x|) + 1$).

C'est donc une phrase vraie.

Par contre la deuxième se lit :

$ exists y in bb(R) med bar.v quad forall x in bb(R) , quad lr((x + y gt 0)) dot.basic $

Il existe un réel $y$, tel que pour tout réel $x$, $x + y gt 0$.

Cette phrase est fausse, cela ne peut pas être le même $y$ qui convient pour tous les $x$ !

On retrouve la même différence dans les phrases en français suivantes :

Voici une phrase vraie :

\" Pour toute personne, il existe un numéro de téléphone \"

Bien sûr, le numéro dépend de la personne.

Par contre cette phrase est fausse :

\" Il existe un numéro, pour toutes les personnes.\"

Ce serait le même numéro pour tout le monde !

= Unicité et existence

Quand on écrit :
$exists x in bb(R) med bar.v quad lr((f lr((x)) eq 0))$,

cela signifie juste qu'il existe un réel pour lequel $f$ s'annule.
Rien ne dit que ce réel est unique.

Vous pouvez lire la phrase ainsi : il existe #strong[au moins] un réel
$x$ tel que $f lr((x)) eq 0$.

Afin de préciser que $f$ s'annule en une #strong[unique] valeur, on
rajoute un #strong[point d'exclamation $excl$] :

$ exists bold(excl) thin x in bb(R) med bar.v quad lr((f lr((x)) eq 0)) dot.basic $

*Remarque :* 

Pour la négation d'une proposition, *il faut être précis*.

La négation de l'inégalité stricte $lt$ est l'inégalité large $gt.eq$,
et inversement.

*Les quantificateurs ne sont pas des abréviations*.

- Soit vous écrivez une phrase en français :

Pour tout réel $x$, si $f lr((x)) eq 1$ alors $x gt.eq 0$.

- Soit vous écrivez la phrase logique :

$ forall x in bb(R) , quad lr((f lr((x)) eq 1 arrow.r.double.long x gt.eq 0)) dot.basic $

- Mais n'écrivez pas :

$forall x$ réel, si $f lr((x)) eq 1 arrow.r.double.long x$ positif ou
nul.

- Il est défendu d'écrire  $exists.not$, $(arrow.r.double.not)$. Ces symboles n'existent pas !

#Exercice("")

Soit $x$ représentant un chat quelconque et $P(x)$ le prédicat selon lequel $x$ est gris.

On note $C$ l'ensemble des chats.

1. Ecrire chacune des propositions suivantes sous forme symbolique :

- Tous les chats sont gris.

- Il existe un chat non gris.

- Aucun chat n’est gris.


2. Soit $x$ représentant un chat quelconque,$P lr((x))$ le prédicat selon
lequel $x$ est gris,$Q lr((x))$ le prédicat selon lequel $x$ a des
moustaches.

Exprimer la proposition :

$ forall x in C , lr((P lr((x)) and Q lr((x)))) $

3. Parmi les propositions suivantes, laquelle en est la négation ?

- Il existe un chat non gris et sans moustache.

- Il n’existe aucun chat gris et avec des moustaches.

- Il existe un chat non gris ou sans moustache.


#Exercice("")


Ecrire à l'aide des quantificateurs les phrases suivantes, puis écrire les négations :

- Pour tout nombre réel, son carré est positif.

- Pour chaque réel strictement positif, je peux trouver un entier relatif tel que leur produit soit strictement + grand que $1$.

- Pour tout entier naturel $n$ non nul, il existe un unique réel $x$ tel que $exp lr((x))$ égale $n$.


#Exercice("")

Soit le prédicat $P lr((x ; y)) : x + y eq 0$

Pour chacune des propositions suivantes, donner sa valeur de vérité et écrire sa négation :

- $forall x in bb(R) , exists y in bb(R) med bar.v quad P lr((x ; y))$
- $exists y in bb(R) med bar.v med forall x in bb(R) , quad P lr((x ; y))$
- $forall x in bb(R) , forall y in bb(R) med , quad P lr((x ; y))$
- $exists x in bb(R) , med exists y in bb(R) med bar.v quad P lr((x ; y))$


#Exercice("L’ordre des quantificateurs")

Pour chacune des zones A représentées dans les repères ci-dessous , indiquer quelles propositions sont vraies :

#align(center,image("quantificateur.png"))

+ $forall x in lr([0 ; 1]) med , quad exists y in lr([0 ; 1]) #h(0em) bar.v quad lr((x , y)) in A$

+ $forall y in lr([0 ; 1]) med , quad exists x in lr([0 ; 1]) #h(0em) bar.v quad lr((x , y)) in A$

+ $exists x in lr([0 ; 1]) #h(0em) bar.v quad forall y in lr([0 ; 1]) med , quad lr((x , y)) in A$

+ $exists y in lr([0 ; 1]) #h(0em) bar.v quad forall x in lr([0 ; 1]) #h(0em) , quad lr((x , y)) in A$


#Exercice("")

Associer les propositions :


+ $forall x in bb(R) , quad f lr((x)) gt 0$
+ $exists x in bb(R) med bar.v quad f lr((x)) gt 0$
+ $forall x in bb(R) , quad f lr((x)) eq.not 0$
+ $exists x in bb(R) med bar.v quad f lr((x)) eq.not 0$

a. La fonction n’est pas nulle.

b. La fonction n’est pas négative.

c. La courbe ne coupe pas l’axe des abscisses.

d. La courbe est au-dessus de l’axe des abscisses.


#Exercice(" ")


Ecrire la négation des propositions suivantes et dire si elles sont vraies (avec un exemple d’existence) ou fausses (avec un contre-exemple).

+ $forall y in bb(R) , exists x in bb(R) divides y eq cos x$
+ $exists x_1 in bb(R) , exists x_2 in bb(R) divides forall x in bb(R) , x^2 minus 4 x + 3 eq lr((x minus x_1)) lr((x minus x_2))$
+ $forall x in bb(R) , forall y in bb(R^ast.basic) thin #h(2em) x / y lt 1 arrow.r.double.long x lt y$
+ $forall lr((n , p , q)) in bb(N^ast.basic)^3 , n divides p q arrow.r.double.long n divides p #h(0em) upright("ou") #h(0em) n divides q$
]

#Exercice("")


Ecrire la négation des propositions suivantes :

+ $forall x in E , exists y in E #h(0em) divides p lr((x ; y)) arrow.r.double.long q lr((x ; y))$

+ $lr((forall x in E , #h(0em) exists y in E divides p lr((x ; y)))) arrow.r.double.long lr((forall z in E , r lr((z))))$.

