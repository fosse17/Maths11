#set enum(numbering: "1. a. i.", indent: 0pt)
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
  [#align(left+top)[#image("iut_bordeaux.jpg")]],
  [#align(center+horizon)[#text(18pt)[Livret d'exercices]]],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#head()

#chapitre("Logique 1",newpage: false)

#Exercice("")

 Les énoncés suivants sont-ils des propositions ? 
1. $1/2+1/3=1/5$
2. Ouvre la fenêtre ! 
3. Tous les chats sont gris.
4. Le ou la prof de maths est sympathique.
5. Il y a une infinité de nombres premiers.
6. Demain, il va pleuvoir. 
7. Je mens.

#Exercice("")

Les énoncés suivants sont-ils des prédicats ? 
1. $P(x) : x in RR ,x=pi.$
2. $P(x,y) : ln(x y)=ln(x)+ln(y).$
3. $P(t) : cos(t)=1.$
4. $P(x) : x "est positif".$
5. $P(x,y) :x in RR,y in RR, x=2y.$
6. $P(x) : x in RR, x^2 = 1.$

#Exercice("")

 Donner le négation de chaque proposition :
+ $P_1$ : $x=2$. 
+ $P_2$ : $x<3$.
+ $P_3$ : "Tous les étudiants sont travailleurs."


#Exercice("")

Les propositions suivantes sont-elles vraies ou fausses ?
+ $2$ divise $3$ et $2$ divise $4$.
+ $2$ divise $3$ ou $2$ divise $4$.
+ $2$ divise $3$ ou $2$ divise $5$.

#Exercice("")


+ $P$ et $Q$ sont deux propositions telles que $P => Q$ est vraie.
  + On suppose que $P$ est vraie. Quelle est la valeur de vérité de $Q$ ?
  + On suppose que $Q$ est fausse. Quelle est la valeur de vérité de $P$ ?
  + On suppose que $Q$ est vraie. Quelle est la valeur de vérité de $P$ ? 

+ $P$ et $Q$ sont deux propositions telles que $Q =>  P$ est fausse. 
  + Quelles sont les valeurs de vérité de $P$ et de $Q$ ?


#Exercice("") 

Les propositions suivantes sont-elles vraies ou fausses ?
+ pour tout $ x$  dans $RR^+$, $0 <= x <= 25 => sqrt(x) <= 5$.  
+ pour tout $x$ dans $RR$, $x in ]-oo, -4[ => x^2+3x-4  0$.  
+ pour tout $theta$ dans $ RR$,$ sin(theta)=0 => theta = 0$.
+ $ 1$ est un nombre premier implique que $27$ est un nombre premier.   
+ Si $2$ divise $4$ alors $2$ divise $3$. 
+ $2$ divise $4$ si $2$ divise $3$.

#Exercice("")

Les propositions suivantes sont-elles vraies ou fausses ?  
+ Pour tout $x in RR, x < 1 <=> x^2 < 1$.  
+ Pour tout $ x in RR-\{-1,1\},((x-1)(x-2))/(x^2-1)=0 <=> x=2$.  
+ Tout triangle ABC est rectangle ssi $A B^2=A C^2+C B^2.$  
+ pour tout $n in NN$, $n$ divise $6$ si et seulement si $n$ divise $12$.

#Exercice("")

Exprimer en fonction $p$, $0$ ou $1$ les propositions suivantes :
+ $p xor 1=$
+ $p xor 0=$
+ $p xor p=$
+ $p xor overline(p)=$


#Exercice("") 

$P$ : $m$ est un entier pair.  \
$Q$ : $n$ est un entier pair.  

Exprimer en français l'expression $P xor Q$.  

#Exercice("")

Compléter le tableau correspondant à la porte NOR et à la porte NAND:

#grid(
  columns:(1fr,1fr),
  align: center,
[ #text(18pt)[Porte NOR],
  #table(
columns: 3,
[$P$], [$Q$] ,[ $P arrow.b Q$],
[1], [1], [ ],
[1], [0], [ ],
[0], [1], [ ],
[0], [0], [ ]
)],
[
  #text(18pt)[Porte NAND],
  #table(
columns: 3,
[$P$], [$Q$] ,[ $P arrow.t Q$],
[1], [1], [ ],
[1], [0], [ ],
[0], [1], [ ],
[0], [0], [ ]
)]
)

#chapitre("Logique 2")

#Exercice("")

Etablir la table de vérité de la proposition $P :  not r => (p or q) $
#align(center,table(
columns: 6,
[$P$], [$Q$], [$R$], [$ not R$], [$P or Q$], [$ not R => (P or Q)$],
[1], [1], [1], [ ], [ ], [ ],
[1], [1], [0], [ ], [ ], [ ],
[1], [0], [1], [ ], [ ], [ ],
[1], [0], [0], [ ], [ ], [ ],
[0], [1], [1], [ ], [ ], [ ],
[0], [1], [0], [ ], [ ], [ ],
[0], [0], [1], [ ], [ ], [ ],
[0], [0], [0], [ ], [ ], [ ]
))
Logiquement, l'expression $P$ est vraie dans 7 cas sur 8.  

Attention, mathématiquement, une implication n'a de sens que si la prémisse et la conclusion sont vraies.  

- Faire ressortir ces cas de la table de vérité ci-dessus.  
- Que pouvez-vous en conclure ?

#Exercice("")

Discuter suivant les valeurs de vérité de $p,q,r$ les valeurs de :  

+ $q or (overline(q) and p).$  
+ $ p => (p => q)$.  
+ $ p  or (q => r).$  

#Exercice("")


Ces propositions sont-elles des tautologies ? des antilogies ?    

+ $((P and Q) or  R) <=> (P and (Q or R))$

+ $[P and (P => Q)] => Q$


#Exercice("")

- La soustraction dans $RR$ est elle commutative ? associative ?  

- Admet-elle un élément neutre ?

#Exercice("")

A l'aide de tables de vérité, démontrer :

- une propriété de distributivité ;
- une loi de *De Morgan* ;
- une loi d'absorption.

#Exercice("")
A l'aide d'une table de vérité, puis en utilisant les propriétés, démontrer la contraposée de l'implication. 

#Exercice("") 
On donne la proposition $P:p => (q => r)$

- Établir la table de vérité de $P$.
- Simplifier $P$. Retrouver les lignes de la table où $P <=> 1$.
- Simplifier $not P$ . Retrouver les lignes de la table où $P <=> 0$.
- Simplifier $Q: (p => q) => r$ et en déduire que l'implication n'est pas associative.

#Exercice("")

Dans chacun des cas suivants, *simplifier* si possible les deux propositions puis dire si elles sont équivalentes ou pas.

- $p and (p => q) quad  quad" et "  quad quad p and q$

- $[p =>(q => r)] quad quad " et " quad quad[(p and q)=>r]$

- $[(p or q) => r] quad  "et"  quad quad[(p => r) and (q => r)]$

#chapitre("Logique 3")

#Exercice("")

Les énoncés suivants sont-ils des théorèmes ? 

+ Pour tout $x in RR$, pour tout $y in RR, x=y <=> x^2=y^2$. 
  
+ Pour tout $q in RR - {1},  sum_(k=0)^n q^k=(1-q^(n+1))/(1-q)$.
  
+ Pour tout $n$ dans $NN$, si $n$ est un entier impair alors $n^2$ est impair.


#Exercice("")
Démontrer cette équivalence par une table de vérité puis par un calcul propositionnel. 
$ overline(P => Q)<=> P and not Q $

#Exercice("")
L' énoncé suivant est-il un théorème ?   

- Pour tout $n in NN$, si $n$ est divisible par $4$ et $n$ est divisible par 6, alors $n$ est divisible par $24$.

#Exercice("")
+ Montrer en utilisant la simplification logique que les propositions $P => Q$ et $(overline(Q)) => (overline(P))$ sont équivalentes.
+ Écrire la contraposée des énoncés suivants :
  + Le théorème de Pythagore. 
  + Si $n$ est un nombre entier premier, alors $n=2$ ou $n$ est impair.
+ Démontrer par contraposée les énoncés suivants :  
  + Si $n^2$ est un entier impair alors $n$ est un entier impair.
  + $x in RR^+$, si $x$ est irrationnel alors $sqrt(x)$ est irrationnel.

#Exercice("")

On considère les propositions suivantes :

$p$ :  *Il pleut.* 

$q$ :  *Il y a des nuages.*

+ Ecrire l’implication $p => q$, sa contraposée, sa réciproque, sa négation et la contraposée de sa réciproque.  
+ Lesquelles sont vraies ?

#Exercice("")

Pour tout $n$ entier naturel, $n >= 2$, l’implication ($n$ premier et $n>2$) $=>$ ($n$ impair) est vraie.

+ Écrire la contraposée, la réciproque et la négation de cette implication et dites à chaque fois s'il s'agit d'un théorème.


#Exercice("")
Pour $x$ et $y$ des réels et $a$ un réel strictement positif, donner la contraposée, la réciproque, et la négation de l'implication suivante :
$ x<y => a x < a y $ 
Lesquelles sont des théorèmes ?

#Exercice("") 
Soit $m$ et $n$ des entiers naturels,  donner la contraposée, la réciproque, et la négation de l'implication suivante :

$ (m n "est pair") => ((m "est pair") or (n  "est pair")) $

Lesquelles sont des théorèmes ?

#Exercice("") 
Pour tout $x in  RR $ :  

- $P(x) : x^2-2x-3>0$.

- $Q(x) : x>3$.  

Parmi les énoncés suivants, lesquels sont vrais , lesquels sont faux ?  
+ $P =>  Q$.
+ $Q =>  P$.
+ $P$ est nécessaire pour $Q$.
+ $P$ est suffisant pour $Q$.
+ $not Q => not P$.

#Exercice("")
- Démontrer, à l'aide d'une table de vérité, l'associativité du $ xor$.
- Ecrire la négation de $(P and (Q or R) )$.
- Quelle est la contraposée de $P => (Q => R)$ ?
- Simplifier l'expression $R => (S => R)$.

#chapitre("Logique 4")

#Exercice("")

Construire la table de vérité de la proposition suivante :
$ p <=> (p xor r) $

#Exercice("")

Ecrire la négation, la réciproque et la contraposée de la  proposition :

_S'il fait beau et si je suis en vacances alors j'irai à la plage._

#Exercice("")

Décider si le raisonnement suivant est valide :

_Jean est fatigué ou malade \ 
S'il est fatigué alors il est contrarié  \
Jean n'est pas contrarié_ \

_Donc Jean est malade._

#Exercice("")

Retrouver une proposition simple vérifiant la table de vérité. On simplifiera l'expression obtenue.
#align(center,
table(columns: 4, align: center
,[$P$], [$Q$], [$R$], [$f(P;Q;R)$]
,[1], [1], [1], [1]
,[1], [1], [0], [0]
,[1], [0], [1], [0]
,[1], [0], [0], [0]
,[0], [1], [1], [1]
,[0], [1], [0], [0]
,[0], [0], [1], [1]
,[0], [0], [0], [0]
))
#Exercice("")

Simplifier les propositions suivantes puis indiquer les éventuelles tautologies 

+ $(p => p) => q$
+ $(p and q) => (p or q)$

#Exercice("")
Écrire la négation des propositions suivantes :

+ $p <=> q$ 
+ $p or (q and r)$
+ $(not p or q) => r$

#Exercice("")

On construit le connecteur binaire $|$ appelé connecteur de Sheffer par :
$ p|q <=> (not p) or (not q) $

+ Construire la table de vérité de $p|q$.
+ Calculer $p|p$, $quad overline(p|q)$, $quad  overline(p)|overline(q)$
+ En déduire l’écriture des propositions uniquement à l’aide du connecteur de Sheffer.:
  + $overline(p)$
  + $p and q$
  + $p or q$
  + $p => q$ 

#Exercice("Le demi-additionneur")

Un additionneur est un circuit logique permettant de réaliser une addition. Ce circuit est très présent dans les ordinateurs pour le calcul arithmétique mais également pour le calcul d'adresses.

Pour additionner deux nombres binaires, il faut d’abord additionner les 2 bits de poids faible, puis additionner les bits suivants sans oublier les retenues.

Un demi-additionneur ou *Half Adder (HA)* est un circuit qui additionne les 2 bits de poids faibles pour lesquelles la retenue propagée n’est pas prise en compte.

+ Compléter la table suivante pour $A+B$ :


#align(center,table(columns: 4, align: center,
[$A$], [$B$], [Sum], [Carry]
,[0], [0], [ ], [ ]
,[0], [1], [ ], [ ]
,[1], [0], [ ], [ ]
,[1], [1], [ ], [ ]
))

Compléter par une expression *logique* simple :

$ S="Sum"=..."      et      " C="Carry"=... $

*Additionneur complet 1 bit :*

Pour additionner les bits de poids supérieur $a_i , b_i (0 < i < n)$ et tenir compte de la retenue $r_(i-1)$ propagée depuis le rang $i-1$, il faut avoir recours à un *Full Adder* ou additionneur complet. 

Un *Full Adder* peut additionner 2 bits avec un report, soit trois entrées et deux sorties.

Un additionneur complet nécessite donc une entrée supplémentaire : une retenue. L'intérêt de celle-ci est de permettre le chaînage des circuits. 

1. Compléter la table de vérité d'un additionneur complet $(A+B+C_(i n))$:

#align(center,table(columns: 5, align: center,
[$A$], [$B$], [$C_(i n)$], [Sum], [Carry]
,[0], [0], [0], [ ], [ ]
,[0], [0], [1], [ ], [ ]
,[0], [1], [0], [ ], [ ]
,[0], [1], [1], [ ], [ ]
,[1], [0], [0], [ ], [ ]
,[1], [0], [1], [ ], [ ]
,[1], [1], [0], [ ], [ ]
,[1], [1], [1], [ ], [ ]
))  

Vérifier que :

$ S=A xor B xor C_(i n) $

Puis que :
 
$ C_("out")=(A and B ) or (C_("in") and (A xor B)\) $

#chapitre("Arithmétique Division euclidienne")

#Exercice("")

+ Écrire la division euclidienne de 185 par 31 en posant la division.  
+ Ecrire la division euclidienne de -113 par 8.
+ Sachant que $12 079 233 = 75 968 times 159+321$ déterminer le reste de la division euclidienne de 12 079 233 par 75 968, puis par 159.
+ Soit $n$ un entier. Quel est le reste de la division euclidienne de  $12n+7$ par $3$
+ On fait la division euclidienne d'un entier $n$ par $137$ et $143$. \ Les quotients sont égaux et les restes respectifs sont $131$ et $5$.  \ Quel est cet entier $n$ ?

#Exercice("")


+ Faire la liste de tous les diviseurs de $30$.
+ Donner un multiple de $11$ à $5$ chiffres non trivial
+ Déterminer les entiers naturels $a$ et $b$ tels que $a^2-b^2=25$.
+ Soit $x y z$ un nombre de trois chiffres en base 10.\ Démontrer que la somme $x y z + z x y + y z x$ des trois nombres obtenus par permutation  des chiffres est toujours multiple de 111.   \ Exemple : 324+432+243=999 est un multiple de $111$.

#Exercice("") 

Soient a,b et c dans $ZZ^* $. 

Montrez (et retenez) les quatre propriétés suivantes  :
+ $(a | b)$ et  $(b | c) => a | c$.  
+ $a | (b+c) "et"  a\| c => a | b$
+ pour tout $n,m in ZZ^2 quad (a | b)   "et"   (a | c) => a | (n b+m c)$.  
+ $(a | b)$ et $(b | a) => (a=b)  "ou"  (a=-b).$  

#Exercice("")

Lorsqu’on divise $a$ par $b$, le reste est 8 et lorsqu’on divise $2a$ par $b$, le reste est $5$. \ Déterminer le diviseur $b$.


#Exercice("")


+ On considère l’ expression $B =n^2- 1$ pour $n in NN^*$
  + Démontrer que pour $n$ pair, $B$ est impair.  
  + Démontrer que pour $n$ un entier impair strictement supérieur à 1, $B$ est pair et divisible par 8.

+ L’exercice consiste à trouver les valeurs du naturel $n > 4$ pour lesquelles la fraction $(n + 17)/(n - 4)$ est un entier.
  + Démontrer que $n- 4$ divise $n + 17$ équivaut à $n - 4$ divise $21$.  
  + Déterminer alors toutes les valeurs de $n$ correspondant au problème.  

#Exercice("")
Soit l’équation $(E) : x y - 5x - 5y - 7 = 0$.
+ Montrer que : $x y - 5x - 5y - 7 = 0 <=> (x - 5)(y - 5) = 32$.
+ Déterminer les couples d’entiers naturels $(x; y)$ qui vérifient $(E)$.

#Exercice("")

Soit $m$ et $n$ des entiers relatifs tels que $m$ divise à la fois $8n + 7$ et $6n + 5$. \ 
Montrer que $m = ±1$.

#Exercice("")
+ Montrer que si un entier naturel $d$ divise $12n+7$ et $3n+1$ alors il divise $3$.
  
+ Montrer que pour tout entier naturel $n$, $(12n+7)/(3n+1)$ est irréductible.

#Exercice("")

Pour faire comprendre la division d’un entier naturel par un entier naturel non nul à l’école primaire, on procède par soustractions successives.  

Si l’on veut diviser 32 par 5, on soustrait 5 à 32 autant de fois que cela est possible.

$ 32 - 5 &= 27  \
  27 - 5 &= 22  \
  22 - 5 &= 17  \
  17 - 5 &= 12  \
  12 - 5 &= 7  \
  7 - 5 &= 2  $

On a ainsi enlevé 6 fois 5 et il reste 2.
On peut donc écrire :

$32 = 5 times  6 + 2$
    
+ Compléter la fonction en Python , « division(a,b) », renvoyant le quotient $q$ et le reste $r$ de la division dans $NN$ de a par $b > 0$ par soustractions successives.  

+ Tester cette fonction avec : division(32,5); division(12,13) et division(1412,13).

```python 
def division(a:int,b:int)->tuple[int,int]:
    init=a
    q=0
    while ...:
        a=...
        q=...
    print(f"{init} = {q} * {b} + {init-q*b}")
    return q,init-q*b
```

#Exercice("")
+ Ecrire un programme Python donnant la liste des diviseurs d'un entier naturel.
+ Amélioration 1: utiliser une liste en compréhension.
+ Amélioration 2: Ne plus parcouir tous les entiers mais seulement jusqu'à la racine carrée de l'entier.

```python
# liste des diviseurs d'un entier.
# L.append(i) permet d'ajouter i à la liste L.
# a%b donne le reste dans la division de a par b.

from math import sqrt,floor

def diviseur1(n:int)->list[int]:
    L=[]
    ...

    return L


print(diviseur1(100))


# En plus condensé : Amélioration 1
def diviseur2(n:int)->list[int]: 
    return [i for i in range(1,n+1) if n%i==0] 

# Amélioration 2

def diviseur_ameliore(n:int)->list[int]:
    L=[]
    ...

    return L


print(diviseur_ameliore(12331212332222))
```

#chapitre("Arithmétique et Congruences")

#Exercice("")

Déterminer les congruences suivantes :
+ Modulo 5 des nombres suivants : 12 ; 45 ; 87 ; -12 ; 104
+ Modulo 7 des nombres suivants : -14 ; -85 ; 24 ; 46

#Exercice("")

+ Quels sont les restes possibles dans une division euclidienne par 9 ?
+ Déterminer les restes possibles dans la division de $4x$ par 9 suivant les valeurs de l’entier relatifs $x$.  
+ Résoudre alors : $4x eq.triple 5 (9)$
+ Le script ci-dessous donne une aide pour résoudre ce problème.
+ Modifier ce code pour résoudre $5x eq.triple 3[11]$
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
#Exercice("")
Déterminer les restes dans la division euclidienne par 7 des nombres :

+ $50^(100)$ 
+ 100 
+ $100^3$ 
+ $50^(100) + 100^(100)$
+ $15 times 6^(43) - 48$.

#Exercice("")
Un tableau de congruence est un tableau permettant de présenter des résultats de manière exhaustive en se référant aux restes possibles dans une division euclidienne.

+ Déterminer suivant les valeurs de l’entier relatif $n$, le reste de la division de $n^2$ par 7. \
  #table(columns: 8,align: center,
[ $n$ ], [ 0 ], [ 1 ], [ 2 ], [ 3 ], [ 4 ], [ 5 ], [ 6 ],
[ Reste de la division de $n^2$ par 7 ], [  ], [  ], [  ], [  ], [  ], [  ], [  ]
) 
+ En déduire alors les solutions de l’équation $x^2 equiv 2 (7)$.
  


#Exercice("")
La proposition suivante est-elle vraie ou fausse ?

Tout entier est congru modulo 6 à un des entiers 0, 1, 2, 3, -1 ou -2.

#Exercice("")

+ Montrer que : $forall n in NN, 3^(n+3) - 4^(4n+2)$ est divisible par 11.
+ Montrer que : $forall n in NN, 3^(2n+1) +2^(n+2)$ est divisible par 7.

#Exercice("")
+ On souhaite déterminer le reste possible de la division euclidienne de $247^(349)$ par 7.
  + Montrer que cela revient à chercher le reste de la division euclidienne de $2^(349)$ par 7.
  + Montrer que, pour tout nombre entier naturel $k$ : $ 2^(3k) ≡ 1[7], quad 2^(3k+1) ≡ 2[7], quad 2^(3k+2)  ≡ 4[7] $
  + En déduire le résultat
+ Quel est le reste de la division par 11 du nombre $57383^(2015)$ ?

#Exercice("")
+ Soient $(a, b)  in ZZ^2$ dont les restes modulo 11 sont 7 et 2 respectivement. 
+ Donner le reste modulo 11 de $a^2-b^2$

#Exercice("") 

Un code barre est une suite de 12 chiffres $c_(12)c_(11) . . . c_1$ suivie d’un chiffre de contrôle $c_0$ vérifiant  
$ c_(12) + 3c_(11) + c_(10) + 3c_9 + c_8 + 3c_7 + c_6 + 3c_5 + c_4 + 3c_3 + c_2 + 3c_1 + c_0 equiv 0 (10) $ 

La suite de 12 chiffres attribuée à un produit est 308612610032. 

Calculer son chiffre de contrôle.  

#Exercice("")

Quels sont les entiers x et y tels que $x^2 + y^2 equiv 2 (8)$ ?

#Exercice("")

En utilisant un tableau de congruence, trouver tous les entiers relatifs n tels que $n^2 + n + 1$ soit divisible par 7.

#Exercice("")
+ Pour tout entier naturel $n$, déterminer les restes possibles dans la division euclidienne de $n^2$ par 5.
+ En déduire les restes possibles dans la division euclidienne de $n^4$ par 5.
+ Montrer que $n(n^4- 1)$ est divisible par 5.

#Exercice("Exponentiation modulaire rapide") 

- Un premier exemple avec $5^(11) (14)$ 
L’idée est de seulement calculer $5,5^2,5^4,5^8$ ...et de réduire modulo $n$ à chaque fois. 

Pour cela on remarque que $11 = 2^3+2^1+2^0=8 + 2 + 1$ en décomposant uniquement avec des puissances de 2, donc

on calcule les $5^(2^i)(14)$ :

$5 & equiv 5 (14) \
5^2 & equiv 25 equiv 11 (14) \
5^4 &  equiv 5^2 times 5^2  equiv 11 times 11 equiv 121 equiv 9 (14)   \ 
5^8  & equiv 5^4 times 5^4  equiv 9 times 9 equiv 81 equiv 11 (14)$

A chaque étape est effectuée une multiplication modulaire. 

Conséquence :
$5^(11)  equiv 5^(8+2+1)(14) equiv 5^8 times 5^2 times 5(14)$

$5^(11)  equiv 11 times 11 times 5 (14) equiv 11 times 55  equiv 11 times 13  equiv 143  equiv 3(14).$

Nous obtenons donc un calcul de $5^(11) (14)$ en 5 opérations au lieu de $10$ si on avait fait $5 times 5 times 5...$ et surtout avec des nombres plus petits à manipuler.

En fait, cette technique est basée sur la décomposition en base 2 de l'exposant.

Voici un autre exemple à compléter :

- Calculer $17^(154) (100)$. 

Tout d’abord on décompose l’exposant k = 154 en base 2 : 

$(154)_(10)=$

On en déduit la décomposition en somme de puissance de 2.

$154 =$

Ensuite on calcule $17,17^2,17^4,17^8,... (100)$

$ 
17 & equiv  \
17^2 & equiv  \
17^4 & equiv \
17^8  & equiv \
17^(16) & equiv \
17^(32) & equiv \
17^(64)  & equiv \
17^(128) & equiv \
$

Il ne reste qu’à rassembler :

$17^(154) equiv $

- Calculer $234^{97} [7]$

#chapitre("Bezout Gauss")

#Exercice("")

Donner en partant de la définition :
+ PGCD(12,36)
+ PGCD(13,43)
+ PGCD(57,9)

#Exercice("")

Soit $a$ un entier relatif.  

Déterminer le PGCD $d$ des entiers $m = 14a + 3$ et $n = 21a + 4$ et trouver des entiers $u$ et $v$ tels que $u m + v n = d$.

#Exercice("")

Calculer $"PCCD"(8820,3150)$ avec l'algorithme d'Euclide.

#Exercice("")

- A l'aide de l'algorithme d'Euclide, déterminer le PGCD de $420$ et $637$, puis exprimer ce PGCD comme combinaison linéaire de ces deux nombres.

- Même question pour $152$ et $184$
- Montrer que $forall n in NN, (2n + 1)$ et $(3n + 2)$ sont premiers entre eux.

#Exercice("")

Si un nombre $n$ est divisible par $a$ et par $b$ et que ces deux nombres sont premiers entre eux, il est divisible par ab.

Démonstration guidée :

D’après les hypothèses, on peut trouver des entiers $k$ et $l$ tels que  : 

$n = \cdots $ et $n = \cdots$. 

De plus, d’après le théorème de Bézout, on peut trouver $u$ et $v$ tels que $\cdots$.

On a alors

$ 
n =& 1 times n \
=& \
=&  \
=& \
=& a b times (u l + v k)\
$

qui est bien divisible par ab.


#Exercice("")

Comment reconnaître facilement qu’un nombre est un multiple de 45 ?  

Par exemple, est-ce que 4 685 368 545 est un multiple de 45 ?

#Exercice("")

$a$ et $b$ sont deux entiers naturels non nuls.  

Démontrer que $"PGCD"(3a + 4b ; 4a + 5b)="PGCD"(a ; b)$.

#Exercice("")

Citer le lemme de Gauss et donner un contre-exemple illustrant le fait que la seconde hypothèse du lemme de Gauss est indispensable.

#chapitre("Arithmétique Bezout Gauss 2")

#Exercice("")
Rechercher (indépendamment) les solutions (entières) des équations diophantiennes :
   
- $4235x+42y = 15$
- $4235x+42y = 14$

#Exercice("")

Déterminer tous les entiers relatifs tels que $11x equiv 4 (50)$.

#Exercice("")

Déterminer toutes les solutions $x in ZZ$ du système
$ cases(
   x equiv 1 (7)\
    x equiv 9 (15)
)
$

#Exercice("")

Un théâtre pratique les tarifs suivants : 19 euros l’entrée pour les abonnées et 29 euros l’entrée pour les autres. A la fin d’une séance, le montant des recettes s’élève à 818 euros.

La caissière a perdu le talon des billets, mais elle sait qu’en général, il y a environ deux fois moins d’abonnés que de non abonnés.

Peut-elle retrouver la répartition des spectateurs lors de cette séance ?

#Exercice("Codage affine")


Si l’on veut coder la lettre G par la fonction $f(x) = 11x + 8$, on passe par les étapes suivantes : 

$ G => x = 6 -> 11 times 6 + 8 = 74 => 74 equiv 22 (26) => y = 22 -> W $

La lettre G est donc codée par la lettre W.

+ Coder la lettre W.
+ Existence d’une fonction de décodage.
  + Pourquoi le théorème de Bézout permet-il d’affirmer qu’il existe un entier relatif u tel que : $11u + 26v = 1$ ?
  + Montrer alors que l’équation $11x equiv 1 (26)$, puis que l’équation $11x equiv j (26)$, $j$ étant un entier naturel, admettent une solution
+ Déterminer la fonction de décodage.

+ Montrer que pour tous entiers relatifs $x$ et $j$, on a : $11x equiv j (26) <=> x equiv 19j (26)$.  
  + En déduire que la fonction $f^(-1)(y)=19y + 4(26).$  
  + Décoder la lettre L.  
+ Casser une fonction de cryptage \
On a reçu le message suivant : *`FMEYSEPGCB`*. \
Par une étude statistique de la fréquence d’apparition des lettres sur un passage plus important, on déduit que le chiffrement est affine, que la lettre E est codée par la lettre E et que la lettre J est codée par la lettre N. \
Soit la fonction affine $f$ définie par : $f(x) = a x + b$ où $a$ et $b$ sont des entiers naturels compris entre 0 et 25.
    + Démontrer que $a$ et $b$ vérifient le système suivant : $ cases(
      4a+b equiv 4 (26)\
        9a + b equiv 13 (26)
    ) $
    + Démontrer que $5a equiv 9 (26)$, puis que $a equiv 7 (26)$.
    + En déduire que $b equiv 2 (26)$ et que $f$ est définie par $f(x) = 7x + 2(26)$.
    + Démontrer que, pour tous relatifs $x$ et $z$, on a : $7x equiv z (26) <=> x equiv 15z (26)$.
    + En déduire que la fonction de décodage $f^(-1)$ est définie par $f^(-1)(y)=15y + 22(26)$.
    + Décoder le message.

#chapitre("Arithmétique Nombres Premiers")

#Exercice("")
Le nombre 259 est-il premier ?

#Exercice("")
Décomposer 2520 en produit de facteurs premiers.

#Exercice("")

+ Donner le nombre de diviseur de 340 et les écrire tous.
+ Quel est le nombre de diviseur de $A=2^4 times 3^3 times 7 times 11^7$ ?
+ Carré parfait
  + Décomposer 7 425 en produit de facteurs premiers.  
  + En déduire que 7 425 n'est pas un carré parfait (c'est à dire qu'il n'est pas égal au carré d'un entier naturel). Justifier.
  + Trouver le plus petit carré parfait multiple de 7 425

#Exercice("")

On donne $a=588$ et $b=616$
+ Décomposer $a$ et $b$ en produits de facteurs premiers.
+ En déduire PGCD($a$ ; $b$)
+ Déduire également de la première question PPCM($a$ ; $b$) (c'est à dire le plus petit multiple commun à $a$ et à  $b$ ).
+ Énoncer une propriété similaire à celle du PGCD pour la décomposition du PPCM.
+ Calculer la décomposition de $a times b$ et celle de PGCD($a$,$b$) $ times$ PPCM($a$,$b$) \ Cette remarque est en fait toujours vraie.

#Exercice("")

+ Expliquer pourquoi : "Un nombre premier différent de 2 et 3 est congru à 1 ou -1 modulo 6".
+ Choisissez un nombre premier différent de 2 et 3. Élevez-le au carré, ajoutez 17, divisez par 12, et rappelez-vous le reste.  \ Vous avez tous obtenu 6 ! \ Expliquez pourquoi.

#chapitre("Quantificateurs")

#Exercice("")
Soit $x$ représentant un chat quelconque et $P(x)$ le prédicat selon lequel x est gris. 
On note $C$ l'ensemble des chats.
+ Ecrire chacune des propositions suivantes sous forme symbolique :
  + Tous les chats sont gris.
  + Il existe un chat non gris.
  + Aucun chat n’est gris.

Soit $x$ représentant un chat quelconque,$P(x)$ le prédicat selon lequel $x$ est gris,$Q(x)$ le prédicat selon lequel $x$ a des moustaches.

Exprimer la proposition : 

+ $forall x in C, (P(x) and Q(x))$
+ Parmi les propositions suivantes, laquelle en est la négation ?
  + Il existe un chat non gris et sans moustache.
  + Il n’existe aucun chat gris et avec des moustaches.
  + Il existe un chat non gris ou sans moustache.

#Exercice("")

Ecrire à l'aide des quantificateurs les phrases suivantes, puis écrire les négations :
+ Pour tout nombre réel, son carré est positif.  
+ Pour chaque réel strictement positif, je peux trouver un entier relatif tel que leur produit soit strictement plus grand que $1$. 
+ Pour tout entier naturel $n$ non nul, il existe un unique réel $x$ tel que $exp(x)$ égale $n$.

#Exercice("")

Soit le prédicat $P(x; y) :x+y= 0$

Pour chacune des propositions suivantes, donner sa valeur de vérité et écrire sa négation : 
+ $forall x in RR, exists y in RR \: | quad P(x; y)$
  
+ $exists y in RR | forall x in RR, quad P(x; y)$
+ $ forall x in RR,forall y in RR, quad P(x; y)$
+ $exists x in RR,exists y in RR | quad P(x; y)$

#Exercice("") 

Pour chacune des zones A représentées dans les repères ci-dessous , indiquer quelles propositions sont vraies :
+ $forall x in [0;1] , quad exists y in [0;1]  | quad  (x, y) in A$
  
+ $forall y in [0;1], quad exists x in [0;1]  | quad (x, y) in A$
+ $exists x in [0;1]  | quad forall y in [0;1] , quad (x, y) in A$
+ $exists y in [0;1]  | quad forall x in [0;1]  , quad (x, y) in A$

#align(center,image("quantificateur.png"))

#Exercice("")

Associer les propositions : 

+ $forall x in RR, quad f(x) > 0$
+ $exists x in RR \: | quad f(x) > 0$
+ $forall x in RR, quad f(x) eq.not 0$
+ $exists x in RR \: | quad f(x) eq.not 0$


a. La fonction n’est pas nulle.    \
b. La fonction n’est pas négative.   \ 
c. La courbe ne coupe pas l’axe des abscisses. \   
d. La courbe est au-dessus de l’axe des abscisses.  

#Exercice("")
Ecrire la négation des propositions  suivantes et dire si elles sont vraies (avec un exemple d’existence) ou fausses (avec un contre-exemple).
+ $forall y  in RR, exists x in RR | y=cos(x)$
+ $exists x_1  in RR ,exists x_2  in RR| forall x in RR ,x^2-4x+3=(x-x_1)(x-x_2)$
+ $forall x in RR ,forall y   in RR^*, quad x/y<1 => x<y$
+ $forall (n, p, q)  in NN^*^3, n | p q => n | p  "ou" n | q$

#Exercice("")

Ecrire la négation des propositions suivantes :

+ $forall x in E, exists y in E | p(x;y) => q(x;y)$  
+ $(forall x in E, exists y in E | p(x;y)) => (forall z in E, r(z))$. 

#chapitre("Techniques de Démonstration")

#Exercice("")

Soit $n in NN$ et $n>2$, montrer que si $n$ est pair alors $2^n-1$ n'est pas un nombre premier.

#Exercice("")

Soit $n in NN$  et $P_n = n^2+7n+12$.  

+ Montrer que $sqrt(P_n)$ n'est jamais un nombre entier.

#Exercice("")

+ Résoudre dans $RR$, $2x=sqrt(x^2+1)$.

#Exercice("")

Montrer que : $forall (x,y ) in RR^2, quad x y <= 1/2 (x^2+y^2)$

#Exercice("")

On rappelle la définition de la valeur absolue :

$ |x|=cases( x quad "si" x >= 0 \
 -x "sinon" )$

Montrer que : $ forall x in RR, |x-1| < x^2-x+1$.

#Exercice("")

Soit $n in NN$. Montrer que si $n^2$ est pair alors $n$ est pair.

#Exercice("")

Soit $x,y in ]1, +oo[$, montrer que $x eq.not y => x+1/x eq.not y+1/y}$

#Exercice("")

Soient $a,b >= 0$. Montrer que si $a/(1+b)=b/(1+a)$ alors $a=b$.

#Exercice("")

Montrer que $sqrt(2)$ est irrationnel. (c'est à dire qu'il ne peut pas s'écrire sous la forme d'une fraction de nombres entiers).

#Exercice("")

Montrer que la proposition suivante est fausse :

- tout entier positif est somme de trois carrés.

#Exercice("")

Démontrer que , pour tout $n >= 1, $ $ S_n = 1/(1 times 2) + 1/(2 times 3) + 1/(3 times 4) + dots + 1/(n(n+1)) = 1 – 1/(n+1) $

#Exercice("")

Démontrer que pour tout entier naturel non nul $n$ :

$ sum_(k=1)^(n) k times k! =(n+1)!-1. $


#Exercice("")

Soit $(u_n)_(n in NN)$ la suite définie par :
$u_0 =2,u_1 =1$ et pour tout entier naturel $n$,$ u_(n+2)-u_(n+1)-6u_n =0 $

Montrer par récurrence que, pour tout $n in NN$, $ u_n = (-2)^n + 3^n. $

#Exercice("")

+ Démontrer que pour tout entier $n in NN$, $3^(2n) - 2^n$ est divisible par 7.

+ Retrouver cette démonstration avec les congruences.

#Exercice("")

+ Montrer que pour tout $n >= 1$, $1+2+ dots +n = n(n+1)/2$.
+ Soit $P_n$ la propriété définie pour tout entier $n >= 1$ par: $ 1 times 2+2 times 3+....+n times(n+1)=(n(n+1)(n+2))/3 $
    + Écrire la propriété au rang 1, au rang 2.
    + Vérifier que la propriété est vraie au rang 1 et au rang 2.
    + Écrire la propriété au rang $n+1$
    + Démontrer que pour tout entier $n >= 1$, la propriété $P_n$ est vraie. 
+ Soit $n in NN^*$, démontrer que si $n$ est le carré d'un entier, alors $2n$ n'est pas le carré d'un entier.
+ Montrer que $forall (x,y) in RR^2, x^2+y^2 =0 <=> x=y=0$