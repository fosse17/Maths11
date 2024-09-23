#set enum(numbering: "1. a. i.", indent: 0pt)
#set page("a4", margin: (x:1.5cm,y:1.5cm), numbering: "1.a.i.",
footer: [Nombres premiers  #h(1fr) #counter(page).display("1 / 1",both: true)  #h(1fr) IUT de Bordeaux])  
#set heading(numbering: "1.a.i.")
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
  [#align(center+horizon)[#text(18pt)[Arithmétique] \ #text(14pt)[Nombres premiers]],],
  [#align(right+horizon)[ Mathématiques discrètes \ 2024 - 2025 ]]
)

#head()

#outline(indent: 10pt)

= Reconnaître un nombre premier

== Définition

On dit qu\'un entier naturel $n$ est #strong[premier] s\'il a #strong[exactement] 2 diviseurs positifs : $1$ et $n$.

*Remarque :*

- $1$ n\'est pas premier, il a un seul diviseur positif, qui est $1$.

- $0$ n\'est pas premier, il a une infinité de diviseurs.

*Exemple :*

$2 , 3 , 5 , 7$ sont des nombres premiers.

*Remarques :*

Soit $n$ un entier, $n gt.eq 2$. Son plus petit diviseur positif différent de $1$ est un nombre premier.

En particulier, tout entier $n gt.eq 2$ a au moins un diviseur premier.

== propriété des nombres premiers

Soit $n$ un entier, $n gt.eq 2$. Si $n$ n\'est divisible par aucun nombre premier $p lt.eq sqrt(n)$, alors $n$ est un nombre premier.

#strong[Application.]

On considère $n eq 29$. On a $sqrt(29) tilde.eq 5 , 4$.

Les nombres premiers inférieurs à $sqrt(29)$ sont $2 , 3 , 5$.
Aucun ne divise $29$, donc $29$ est premier.

Cette méthode s'avère rapidement longue quand on a affaire à de grands nombres.

#Exercice("")

Le nombre 259 est-il premier ?


== Ensemble des nombres premiers
<ensemble-des-nombres-premiers>
=== Théorème
<théorème>
Il existe une infinité de nombres premiers.

==== Démonstration
<démonstration>
Faisons une preuve par l\'absurde on suppose que la propriété $P$ est
fausse, on en déduit un résultat impossible, on conclut que la propriété
$P$ est vraie.

Supposons qu\'il n\'y a qu\'un nombre fini de nombres premiers,
notons-les $p_1 , dots.h , p_n$.

On pose $N eq p_1 p_2 dots.h.c p_n plus 1$.

$N gt 1$ donc $N$ a au moins un diviseur premier $p$, et $p$ est
nécessairement égal à $p_i$ pour un certain
$i in brace.l 1 , dots.h , n brace.r$.

Donc $p$ divise $p_1 p_2 dots.h.c p_n$.

Or $p$ divise également $N$, donc $p$ divise
$N minus p_1 p_2 dots.h.c p_n eq 1$

C\'est impossible.

#strong[Conclusion :] il existe une infinité de nombres premiers.

== Décomposition en produit de facteurs premiers
<décomposition-en-produit-de-facteurs-premiers>
=== Théorème
<théorème>
Tout entier $n gt.eq 2$ peut s\'écrire de façon unique
$ n eq p_1 p_2 dots.h.c p_r , $ où $r in bb(N)^ast.basic$ et
$p_1 , p_2 , dots.h , p_r$ sont des nombres premiers tels
que $p_1 lt.eq p_2 lt.eq dots.h.c lt.eq p_r$.

==== Remarque
<remarque>
- Si $r eq 1$, le produit est réduit à un facteur : $n eq p_1$.

- Si les $p_i$ ne sont pas ordonnés, la décomposition n\'est pas unique.
  Par exemple, $6 eq 2 times 3 eq 3 times 2$.

=== Exemple
<exemple>
\$ 180\=2\\times 90\=2\\times 2\\times 45\=2\\times 2\\times 3\\times
15\=2\\times 2\\times 3\\times 3\\times 5. \$

Quand on a déjà un produit, il suffit de décomposer les facteurs.
Exemple :
$15 times 10 eq lr((3 times 5)) times lr((2 times 5)) eq 2 times 3 times 5 times 5$.

== Définition
<définition>
Soit $n in bb(N)^ast.basic$ et $p$ un nombre premier.

$•$ Si $p$ divise $n$, on dit que $p$ est un #strong[facteur premier] de
$n$

$•$ Le plus grand entier $k$ tel que $p^k$ divise $n$ s\'appelle
#strong[l\'exposant de $p$ dans $n$].

Dans la décomposition en facteurs premiers, on regroupe les nombres
premiers identiques et on écrit
$ n eq p_1^(alpha_1) p_2^(alpha_2) dots.h.c p_s^(alpha_s) $

où $p_1 , dots.h , p_s$ sont des nombres premiers tels que
$p_1 lt p_2 lt dots.h.c lt p_s$ et $alpha_1 , dots.h , alpha_s$
sont des entiers strictement positifs.

L\'exposant de $p_i$ dans $n$ est $alpha_i$. Si $p$ n\'apparaît pas dans
la décomposition, son exposant est $0$.

==== Exemple
<exemple>
- $n^2$ n\'a que des exposants pairs car
  $n^2 eq p_1^(2 alpha_1) p_2^(2 alpha_2) dots.h.c p_s^(2 alpha_s)$.

- $180 eq 2^2 times 3^2 times 5$ n\'est pas un carré.

- $2^2 times 7^6 eq lr((2 times 7^3))^2$ est un carré.

=== Exercice 2
<exercice-2>

Décomposer 2520 en produit de facteurs premiers.
]

== Application à la divisibilité
<application-à-la-divisibilité>
=== Théorème
<théorème>
Soit $a$ et $b$ des entiers strictement positifs. Pour tout nombre
premier $p$, notons $alpha lr((p))$ l\'exposant de $p$ dans $a$ et
$beta lr((p))$ l\'exposant de $p$ dans $b$. Alors $a$ divise $b$ si et
seulement si pour tout nombre premier $p$ on a
$alpha lr((p)) lt.eq beta lr((p))$.

=== Exemple
<exemple>
$•$ $15 eq 3 times 5 eq 2^0 times 3^1 times 5^1$ divise
$180 eq 2^2 times 3^2 times 5^1$.

$•$ $25 eq 5^2$ ne divise pas $180$.

$•$ $20 eq 2^2 times 5$, donc les diviseurs positifs de $20$ sont de la
forme $2^alpha 5^beta$ avec $alpha eq 0$, $1$ ou $2$ et $beta eq 0$ ou
$1$.

=== Exercice 3
<exercice-3>

+ Donner le nombre de diviseur de 340 et les écrire tous.

+ quel est le nombre de diviseur de
  $A eq 2^4 times 3^3 times 7 times 11^7$ ?

+ #strong[carré parfait]

- Décomposer 7 425 en produit de facteurs premiers.

- En déduire que 7 425 n\'est pas un carré parfait (c\'est à dire qu\'il
  n\'est pas égal au carré d\'un entier naturel). Justifier.

- Trouver le plus petit carré parfait multiple de 7 425
]

== Crible d\'ératosthène
<crible-dératosthène>
Le crible d\'Eratosthène (Eratosthène est un mathématicien et philosophe
grec du IIIe siècle avant J.C. Il réalisa la première mesure du diamètre
de la Terre en mesurant l\'angle des rayons du soleil avec la verticale
en deux points éloignés) est un algorithme pour trouver tous les nombres
premiers inférieurs à un entier $N$ fixé.

- On écrit tous les entiers de $1$ à $N$. On barre $1$ qui n\'est pas
  premier.

- Le premier entier non barré est $2$, il est premier. On barre tous ses
  multiples sauf lui-même.

- Le premier entier non barré est $3$, il est premier. On barre tous ses
  multiples sauf lui-même.

- On répète l\'opération. à chaque étape, le premier entier non barré
  est premier (car il n\'est divisible par aucun nombre premier plus
  petit). On s\'arrête au moment où on considère un nombre premier
  $p gt sqrt(N)$ (les entiers $n$ avec $sqrt(N) lt n lt.eq N$ qui ne
  sont pas encore barrés sont premiers car ils ne sont divisibles par
  aucun nombre premier $p lt.eq sqrt(n)$).

- L\'ensemble des nombres premiers inférieurs à $N$ est alors
  l\'ensemble des entiers non barrés.

==== Exemple avec $N eq 100$
<exemple-avec-n100>
\$\$
\\begin{array}{rrrrrrrrrr}
\\color{red}{1}&{2}&{3}&\\color{red}{4}&{5}&\\color{red}{6}&{7}&\\color{red}{8}&\\color{red}{9}&\\color{red}{10}\\\\
{11}&\\color{red}{12}&{13}&\\color{red}{14}&\\color{red}{15}&\\color{red}{16}&{17}&\\color{red}{18}&{19}&\\color{red}{20}\\\\
\\color{red}{21}&\\color{red}{22}&{23}&\\color{red}{24}&\\color{red}{25}&\\color{red}{26}&\\color{red}{27}&\\color{red}{28}&{29}&\\color{red}{30}\\\\
{31}&\\color{red}{32}&\\color{red}{33}&\\color{red}{34}&\\color{red}{35}&\\color{red}{36}&{37}&\\color{red}{38}&\\color{red}{39}&\\color{red}{40}\\\\
{41}&\\color{red}{42}&{43}&\\color{red}{44}&\\color{red}{45}&\\color{red}{46}&{47}&\\color{red}{48}&\\color{red}{49}&\\color{red}{50}\\\\
\\color{red}{51}&\\color{red}{52}&{53}&\\color{red}{54}&\\color{red}{55}&\\color{red}{56}&\\color{red}{57}&\\color{red}{58}&{59}&\\color{red}{60}\\\\
{61}&\\color{red}{62}&\\color{red}{63}&\\color{red}{64}&\\color{red}{65}&\\color{red}{66}&{67}&\\color{red}{68}&\\color{red}{69}&\\color{red}{70}\\\\
{71}&\\color{red}{72}&{73}&\\color{red}{74}&\\color{red}{75}&\\color{red}{76}&\\color{red}{77}&\\color{red}{78}&{79}&\\color{red}{80}\\\\
\\color{red}{81}&\\color{red}{82}&{83}&\\color{red}{84}&\\color{red}{85}&\\color{red}{86}&\\color{red}{87}&\\color{red}{88}&{89}&\\color{red}{90}\\\\
\\color{red}{91}&\\color{red}{92}&\\color{red}{93}&\\color{red}{94}&\\color{red}{95}&\\color{red}{96}&{97}&\\color{red}{98}&\\color{red}{99}&\\color{red}{100}
\\end{array} \$\$

==== Remarque
<remarque>
Quand on considère le nombre premier $p$, il suffit de barrer les
multiples $k p$ avec $k gt.eq p$ car les multiples plus petits ont déjà
été barrés à une étape précédente.

Méthode très efficace sur ordinateur pour $N eq 10^6$. Pour des nombres
très grands (de l\'ordre de 100 chiffres), on utilise d\'autres méthodes
pour déterminer si un entier est premier

== PGCD et décomposition
<pgcd-et-décomposition>
Soit a,b deux entiers naturels non nuls dont les décompositions en
produits de facteurs premiers sont respectivement
$a eq p_1^(alpha_1) dots.h.c p_r^(alpha_r) upright(" et ") b eq p_1^(beta_1) dots.h.c p_r^(beta_r)$.
Alors
$ upright("pgcd") lr((a , b)) eq p_1^(delta_1) dots.h.c p_r^(delta_r) $
où pour tout
$i eq 1 , dots.h , r , delta_i eq min lr((alpha_i , beta_i))$.

=== Exemple
<exemple>
Avec $A eq 2^3 times 5^2 times 7^4 times 11^3$ et
$B eq 2^5 times 7^2 times 13$, \
PGCD(A,B)\=$2^3 times 7^2$

=== Exercice 4
<exercice-4>

On donne $a eq 588$ et $b eq 616$

- Décomposer $a$ et $b$ en produits de facteurs premiers.

- En déduire PGCD($a$ ; $b$)

- Déduire également de la première question PPCM($a$ ; $b$) (c\'est à
  dire le plus petit multiple commun à $a$ et à $b$ ).

- Enoncer une propriété similaire à celle du PGCD pour la décomposition
  du PPCM.

- Calculer la décomposition de $a times b$ et celle de PGCD($a$,$b$)
  $times$ PPCM($a$,$b$)

Cette remarque est en fait toujours vraie
]

=== Exercice 5 (travail personnel)
<exercice-5-travail-personnel>

+ Expliquer pourquoi : \"Un nombre premier différent de 2 et 3 est
  congru à 1 ou -1 modulo 6\".

+ Choisissez un nombre premier différent de 2 et 3. Élevez-le au carré,
  ajoutez 17, divisez par 12, et rappelez-vous le reste.

Vous avez tous obtenu 6 !
]
