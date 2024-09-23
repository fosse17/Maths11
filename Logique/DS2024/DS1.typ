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


#let question(t) = block[
  #set text(12pt,weight:  "bold")
  #c.step()
  Question #c.display()  #t
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
  [#align(left+top)[#image("../../iut_bordeaux.jpg")]],
  [#align(center+horizon)[#text(18pt)[DS 1   \ Logique et arithmétique \ 2024 - 2025]]],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#let reponse(a,b,c,d) = block[
  #grid(columns:(1fr,1fr,1fr,1fr),
  [#sym.square.stroked.big #h(5pt) #a],[#sym.square.stroked.big #h(5pt) #b],[\u{2B1C} #h(5pt) #c],[\u{2B1C} #h(5pt) #d]
  )
]

#head()

#question("Modifier les valeurs et donner deux solution possibles")
la table de vérité suivante est celle d'une fonction logique $f$ à trois variables $x$ et $y$ et $z$.
#align(center, table(columns: 4, 
[$x$],[$y$],[$z$],[$f(x,y,z)$], 
[0],[0],[0],[1], 
[0],[0],[1],[0], 
[0],[1],[0],[1], 
[0],[1],[1],[0], 
[1],[0],[0],[0], 
[1],[0],[1],[1], 
[1],[1],[0],[0], 
[1],[1],[1],[1]) )
#v(10pt)
on peut avoir 
#reponse($f(x,y,z) = x and y and z$
,$f(x,y,z) = x or y or z$
,$f(x,y,z) = x and y or z$
,$f(x,y,z) = x or y and z$)

#question("")
- calculs avec priorité et puissance
- simplification et addition de racine carrée
- sqrt(2)^5
- factorisation par n+1  avec 1
- sommes
- pair / impair
- puissance 0

#question("")
$1/2+1/3$ vaut :
#reponse(
$10/12$,$2/6$,$5/6$,$2/5$)

#question("")
On remplace $n$ par $n+1$ dans l'expression $n^2-2n-1$ , on obtient : 
#reponse($n^2-2n-2$
,$n^2-2n+2$
,$n^2-2$
,$n^2+2$)

#question("")
une simplification de $sqrt(32)$ est :
#reponse($4 sqrt(2)$
,$2 sqrt(8)$
,$4 sqrt(8)$
,$8 sqrt(2)$)

#question("")
$3 times (-4)^2$ vaut :
#reponse(
$48$
, $-144$
, $144$
, $-24$)


#question("")
La moitié de $4^8$ est :
#reponse(
$2^8$
, $4^4$
, $4^7$
, "aucun de ces résultats"
)

#question("") 
Si on remplace $n$ par 0 dans l'expression $(1-sqrt(2)/ 3)^n$ on obtient : 
#reponse(
$1$
, $1-sqrt(2)/ 3$
, "une erreur de calcul"
, $0$
)

#question("")
On factorise par $n+1$ l'expression $n^2-1-(n+1)(n+2)$ on obtient :
#reponse(
$-3(n+1)$
, $3(n+1)$
,$-(n+1)$
, $(n+1)(n+3)$)

#question("")
$2+4+6+ dots +2n$ peut s'écrire sous la forme :
#reponse(
$n(n+1)$
,$sum_(k=1)^n 2k$
, $2  times sum_(k=1)^n k$
, $sum_(k=0)^n 2k$)


#question("")
Soit $n in NN^, 1/n - 1/(n+2)$ se simplifie en 
#reponse(
$1/(n(n+2))$
,$2/(n(n+2))$
, $-1/(n+1)$
, "aucune de ces formes")

#question("")
$(2x-3)^2$ se développe en :
#reponse(
$2x^2 - 6x + 9$
, $4x^2 - 12x + 9$
, $2x^2 - 6x + 9$
, "Aucune des formes précédentes")

#question("")
L'ensemble des solutions de l'équation $9x^2-5= 0$ sont :
#reponse(
$S={sqrt(5/9)}$
, $S={sqrt(5)/3}$
, $S={sqrt(5/9),-sqrt(5)/3}$
, $sqrt(5)/sqrt(9)$)

#question("")
la forme factorisée de $x^2 - 4x + 4$ est :
+ $(x-2)^2$
+ $(x+2)^2$
+ $(x-2)(x+2)$
+ Aucune des formes précédentes

#question("")
Soit $a$ et $b$ deux entiers relatifs. On dit que a$$ divise $b$ si et seulement si :

+ Il existe un entier relatif $k$ tel que $a = k times b$.
+ $b$ est un multiple de $a$.
+ $a$ est un diviseur de $b$.
+ Toutes les réponses précédentes sont correctes.

#question("")
Lesquelles de ces propriétés sont fausses ?

+ Si a divise b et b divise c, alors a divise c.
+ Si a divise bc alors a divise b et a divise c.
+ Si a divise b, alors a divise -b.
+ Si a divise 0, alors a = 0.

#question("")
Un nombre est divisible par 4 si et seulement si :

+ Son chiffre des unités est pair.
+ La somme de ses chiffres est divisible par 4.
+ Les deux derniers chiffres forment un nombre divisible par 4.
+ Aucun de ces critères n'est suffisant

#question("")
Laquelle de ces propriétés est vraie ?

+ Si a divise b, alors b divise a.
+ Si a divise b et c divise b, alors (a+c) divise b.
+ Si a divise b et a divise c, alors a divise tout nombre de la forme kb + lc, où k et l sont des entiers.
+ Si a divise b, alors a est inférieur à b.

#question("")
Le nombre d'entiers relatifs multiples de 3 compris entre -50 et 50 est
+ 16
+ 17
+ 32
+ 33

Le reste de la division de 12345 par 7 est
$12345=7 times 1762 + 11$ 

+ 7
+ 4
+ 1762
+ 11

#question("")
Le quotient de la division euclidienne de $n$ par 5 est 12. Les valeurs possibles de $n$ sont :

+ 5, 10, 15, 20
+ les entiers de 60 à 65
+ 0, 1, 2, 3, 4
+ 60, 61, 62, 63, 64

#question("")
Les restes possible dans une division par 5 sont :
+ 0, 1, 2, 3, 4
+ 1, 2, 3, 4, 5
+ -1, -2, -3, -4, 0, 1, 2, 3, 4
+ 0, 1, 2, 3, 4, 5

#question("")
183214 est divisible par :
+ 2
+ 3
+ 11
+ 9

#question("")

Quelle est la loi de De Morgan pour la négation d'une conjonction ?
+ $not(A and B) equiv not(A) and not(B)$
+ $not(A and B) equiv not(A) or not(B)$
+ $not(A and B) equiv A or B$
+ Aucune des réponses précédentes

#question("")
Simplifier l'expression suivante : $A and A$
+ 0
+ 1
+ $A$
+ $not(A)$

#question("")
Quelle est la loi d'identité pour l'opération $or$ ?
+ $A or 0 equiv A$
+ $A or 1 equiv 1$
+ $A or A equiv A$
+ $A or not(A) equiv 1$

#question("")
Simplifier : $(A or B) and not(A)$
+ B
+ A
+ 0
+ 1

#question("")
Quelle est la forme développée de la fonction logique $ F = (not A and B) or (A and not B) $ 
+ $(not A or B) and (A or not B)$
+ $(A or B) and (not A or not B)$
+ $(not A and not B) or (A and B)$
+ Aucune des réponses précédentes

#question("")
Quelle expression est équivalente à $A and (A or B)$ ?
+ $A$
+ $B$
+ $A and B$
+ $A or B$

#question("")
Quelle loi permet de transformer $(A and B) or (A and C)$ en $A and (B or C)$ ?
+ Loi de De Morgan
+ Loi distributive
+ Loi d'absorption
+ Loi d'identité

#question("")
Soit $P$ et $Q$ deux propositions. Si $P => Q$ est vraie et $Q=> P$ est fausse, alors :

+ P est une condition nécessaire et suffisante pour Q.
+ P est une condition nécessaire mais pas suffisante pour Q.
+ P est une condition suffisante mais pas nécessaire pour Q.
+ Aucune des propositions ci-dessus n'est vraie.

#question("")
Considérons l'affirmation suivante : "Pour qu'un nombre soit divisible par 6, il est nécessaire et suffisant qu'il soit divisible par 2 et par 3." Cette affirmation est :

+ Vraie.
+ Fausse.
+ Indécidable.
+ Dépend du nombre considéré.

#question("")
Si "être un oiseau" est une condition nécessaire pour "voler", alors :

+ Tous les oiseaux volent.
+ Tous les animaux qui volent sont des oiseaux.
+ Aucun oiseau ne vole.
+ Aucun animal qui vole n'est un oiseau.

#question("")
Soit P et Q deux propositions. La contraposée de $P => Q$ est :

+ $Q => P$
+ $not(P)=> not(Q)$
+ $not(Q)=> not(P)$
+ $P=> Q$

#question("")
Qu'est-ce qu'une proposition logique ?

+ Une phrase qui exprime une opinion.
+ Une phrase qui peut être vraie ou fausse, mais pas les deux à la fois.
+ Une phrase qui contient au moins un connecteur logique.
+ Une phrase interrogative.

#question("")
"$x^2$ est toujours un nombre positif ou nul". Cette phrase est-elle :
+ Une proposition logique.
+ Une proposition mathématique.
+ un prédicat
+ Aucune des réponses précédentes

#question("")
Quelle est la négation de la proposition "Tous les hommes sont mortels" ?
+ Tous les hommes ne sont pas mortels.
+ Certains hommes ne sont pas mortels.
+ Tous les hommes sont immortels.
+ Aucune des réponses précédentes

#question("")
si un entier naturel $d$ divise $2n+1$ et $3n+2$ alors :
+ $d$ divise $n$
+ $d$ divise $n+1$
+ $d=1$

#question("")
Le reste dans la division euclidienne  de $2^(2023)$ par $2$ est :

+ 0  
+ 1  
+ 2  
+ sans calculatrice, je ne peux pas savoir.  

#question("")
 Pour tout  $k$  entier relatif, le nombre $2k+5$ est :

+ un multiple de 5.   
+ impair.  
+ divisible par 2.    
+ divisible par 5.    

#question("")
La phrase  $x in bb(R), x^2 -2x-3=0$  est :

+ vraie.  
+ fausse.  
+ un prédicat.  
+ une proposition.  

#question("")
$2/3$ appartient à l'ensemble :

+ $QQ$.
+ $ZZ$.
+ $NN$.
+ $DD$. 

#question("")
Lequel de ces nombres est un multiple de 11 :

+ 524 368
+ 524 369 
+ 524 370
+  524 371  

#question("")

Soit $x$ un nombre réel, et $P(x) : x^2=4, quad  Q(x): x=2$. 

+ $P(x)$ est suffisant pour $Q(x)$.  
+ $P(x)$ est nécessaire pour $Q(x)$.  
+ $P(x)$ est nécessaire et suffisant pour $Q(x)$. 
+ $P(x)$ n'est ni nécessaire ni suffisant pour $Q(x)$.

#question("")
Les solutions du système:$cases(2x+1=0 \ 3x-2=0)$ sont :
+ $S=\{-1/2,3/2\}$
+ $S=\{-1/2,2/3\}$
+ Il y a une infinité de solutions
+ Il n'y a pas de solution

#question("")
Une simplification de $A xor A$ est :
+ 0
+ 1
+ $not A$
+ $A$
  
#question("")

la contraposée de la proposition "Si $x$ est un nombre pair, alors $x^2$ est pair" est :
+ Si $x^2$ est impair, alors $x$ est impair.
+ Si $x$ est impair, alors $x^2$ est impair.
+ Si $x$ est impair, alors $x^2$ est pair.
+ Si $x^2$ est pair, alors $x$ est impair.

#question("")
Le reste d'un entier naturel $n$ dans la division par 12 est 7 donc :
+ $n$ est impair.
+ le reste de la division de $n$ par 6 est 1.
+ le reste de la division de $n$ par 3 est 1.
+ $n$ est divisible par 12.


