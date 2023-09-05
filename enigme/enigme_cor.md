# Enigmes de rentrée

## Voyage en train

Chaque journée, il part un train de Paris vers Lyon à chaque heure pleine, puis toutes les dix minutes. Il en est de même entre Lyon et Paris. Le trajet entre les deux villes dure exactement deux heures. Lorsque je me rends de Paris à Lyon, combien de trains vais-je croiser durant mon voyage, en comptant éventuellement les trains que je peux croiser dans les deux gares ?

### Solution

L'énigme nous dit que les trains partent de Paris et de Lyon exactement au même moment. Lorsque mon train part de Paris, il croise celui qui est parti de Lyon deux heures plus tôt. Lorsque mon train arrive à Lyon, il croise celui qui part à Paris exactement à mon heure d'arrivée, soit deux heures après mon départ. Mon train va donc croiser tous les trains qui sont partis de Lyon durant un intervalle de 4h. Il y en a exactement 6 à chaque heure, plus le dernier, c'est-à-dire 25 trains.

### Les chateaux de cartes
  Savez-vous construire des châteaux de cartes. Avec un étage, c'est très simple :
  ![Alt text](image.png)

Avec deux étages, ce n'est pas beaucoup plus compliqué :

![Alt text](image-1.png)

Mais alors, avec un jeu de 52 cartes, combien d'étages au maximum peut comporter un château de cartes ?

### Solution

Remarquons que tout nouvel étage comporte 3 cartes de plus que l'étage précédent. En partant du haut on a donc :

1er étage : 2 cartes  
2ème étage : 2+3=5 cartes, soit 7 cartes en tout  
3ème étage : 5+3=8 cartes, soit 15 cartes en tout  
4ème étage : 8+3=11 cartes, soit 26 cartes en tout  
5ème étage : 11+3=14 cartes, soit 40 cartes en tout  
6ème étage : 14+3=17 cartes, soit 57 cartes en tout, c'est trop!  
On ne pourra construire qu'un château de cartes ayant au maximum 5 étages!

## Les jours de solitude de Nérosson

Nérosson reçoit tous les matins l'une de ses 3 maîtresses, Paulette, Louisette et Josette. Le mari de Paulette est professeur. Il enseigne tous les matins sauf le mercredi et le dimanche. Cela dit, le dimanche, il fait son tour de vélo habituel. Le mari de Louisette est routier. Il est absent deux jours sur trois et est parti hier matin de bonne heure. Celui de Josette est cosmonaute. Il survole sa maison tous les cinq jours pour faire signe à Josette. Il est passé avant-hier.
Nous sommes lundi. Dans combien de jours Nérosson devra-t-il passer un triste matin solitaire?

Le rugby
Au rugby, on peut marquer 3 points (passer une pénalité), 5 points (marquer un essai), auquel cas on peut encore marquer 2 points supplémentaires ou non, si l'essai est transformé.
Quels sont les totaux de points que l'on peut réaliser?

### Solution

On commence par regarder les premiers totaux que l'on peut réaliser. Il s'agit de 3, 5, 6 (=3+3), 7…et on peut s'arrêter là! En effet, tous les nombres suivants pourront être réalisés, en rajoutant un certain nombre de pénalités à 5,6 ou 7. En effet, 8=5+3, 9=6+3 et 10=7+3. On réalise de même les nombres 11, 12 et 13 à partir de 8,9 et 10.
D'un point de vue plus formel, on peut remarquer que tout entier s'écrit 3p, 3p+1 ou 3p+2. Les multiples de 3 sont donc atteints, ceux qui s'écrivent 3p+1 peuvent encore s'écrire 3(p-2)+7 et sont donc atteints à partir de 7. Ceux qui s'écrivent 3p+1 s'écrivent aussi 3(p-1)+5, et sont donc atteints à partir de 5.

## Vendredi 13

Je suis né une année extraordinaire proclame Annaelle. Il y avait 3 vendredis 13 durant cette année. En plus, ce n'était pas une année bissextile. Sachant que Annaelle est née le 25 aout, quel jour de la semaine est-elle née?

### Solution

Il faut déterminer quelles sont les configurations possibles pour pouvoir placer 3 vendredis 13 dans une année. On va attribuer un numéro de 1 à 7 pour chaque jour de la semaine, en attribuant (arbitrairement) le numéro 1 au 13 janvier. Ceci signifie que si le 13 janvier était un jeudi, alors le 14 était un vendredi (il porte le numéro 2), le 15 un samedi (il porte le numéro 3),…, le 20 janvier un vendredi (il porte à nouveau le numéro 1), etc…
  Quels sont les numéros attribués au 13 de chaque mois? Si le mois de janvier comportait 28 jours, le 13 du mois de février porterait également le numéro 1. Mais le mois de janvier comporte 31 jours, et donc le 13 du mois de février porte le numéro 4. On continue ainsi pour chaque mois, et on trouve que le 13 de chaque mois porte le numéro suivant :

## L'âge de nos enfants

Voici le dialogue quelque peu saugrenu que j'ai surpris un jour entre deux mathématiciens (on les appelera A(lexandre) et B(ertrand) ).
A: Au fait, quel est l'âge de tes 3 enfants?
B: Le produit de leurs âges est de 36.
A: Je ne vois pas.
B: Par un étrange hasard, la somme de leurs âges vaut la moitié du tien.
A: Je ne peux toujours pas conclure.
B: L'aîné s'est cassé la jambe lundi dernier.
A: Parfait. Maintenant, je sais quels sont leurs âges.

Et vous????

### Solution

Nous décomposons 36 en produits de 3 facteurs (les âges possibles des filles), et calculons la somme des 3 âges.
36= 1*1*36 38
  1*2*18 21
  1*3*12 16
  1*4*9 14
  1*6*6 13
  2*2*9 13
  2*3*6 11
  3*3*4 10
Puisqu'Alexandre n'a pas su conclure en connaissant la somme de leurs âges, c'est qu'on est dans le cas où deux sommes sont égales, et on est dans le cas 2*2*9, où 1*6*6. Mais puisqu'on a l'information supplémentaire de l'existence d'un aîné, on peut conclure que les âges respectifs des enfants de Bertrand sont 9,2,2 (et tant pis pour les grincheux qui diront que deux enfants de 6 ans peuvent ne pas être jumeaux car il peut y avoir juste 9 mois d'écart entre eux!)

### Au cm1

La maitresse range ses élèves en rang par 2 avant de les faire rentrer en classe. Elle constate que chaque rangée contient autant de filles que de garçons. Plus surprenant, quand les enfants rentrent, elle constate qu'il y a autant de paires mixtes que de paires de même sexe qui ont été constituées. Combien la classe comporte-t-elle d'élèves, sachant qu'il y en a entre 20 et 30.

## Les poignées de mains

  Quelle formidable soirée! Tout le monde repart ravi, en couple. Avec tous ses départs, 112 poignées de mains sont échangées. Mais combien y-avait-il de personnes dans cette soirée?

## Le partage équitable

Deux frères héritèrent d'un troupeau de moutons. Ils le vendirent, touchant pour chaque bête autant d'euros qu'il y avait de moutons dans le troupeau. Ils touchèrent cet argent en billets de 10 € plus, en monnaie, une somme inférieure à 10 €. Ils se répartirent la somme totale en plaçant les billets sur une table et en prenant un chacun à leur tour, jusqu'à ce qu'il n'en reste plus.
"Ce n'est pas juste !" se plaignit le plus jeune "C'est toi qui a pris le premier billet et c'est encore toi qui prends le dernier, tu as reçu dix euros de plus que moi. "
Pour rendre le partage plus équitable, le plus vieux céda à son frère toutes les pièces de monnaie ; mais celui-ci n'était toujours pas satisfait : "Tu m'as donné moins de dix euros, tu me dois donc encore de l'argent."
"C'est vrai répondit le plus vieux. Je te propose donc de te faire un chèque du montant nécessaire pour que nous recevions chacun la même somme." Le plus jeune accepta. Quelle fut la valeur du chèque ?

## Le troupeau

Un jour qu'un jeune homme (de moins de 20 ans) gardait le troupeau de ruminant de sa grand'ma, il se fit cette réflexion : c'est marrant, mais si je forme le produit du nombre de bêtes par le nombre de bêtes moins une, c'est exactement égal à la somme de 15 et du produit de mon âge par le nombre de têtes de bétail moins 2. Mais quel était son âge?

### Solution

Si on note n le nombre de bêtes du troupeau et a l'age du jeune homme, les données de l'énigme nous disent que n(n-1)=15+a(n-2). On va utiliser des propriétés arithmétiques pour trouver la valeur de a et de n. Remarquons que parmi les entiers n, n-1 et n-2, un seul est divisible par 3. Si c'est n-2, alors on aura une contradiction car, puisque 3 divise 15, on trouvera que 3 divise n(n-1), ce qui n'est pas le cas. Donc 3 divise n(n-1), et puisqu'il divise 15, il divise aussi a(n-2). Or, il ne divise pas n-2, donc il divise a. a est un multiple de 3 et s'écrit donc 3b. L'équation devient :
n(n-1)=15+3b(n-2)
On étudie maintenant des propriétés de parité. n(n-1) est toujours un entier pair. Puisque 15 est impair, 3b(n-2) est aussi impair, ce qui n'est possible que si b est impair et n-2 aussi. Ainsi, a s'écrit 3(2k+1), ce qui ne laisse que 3 possibilités d'âge inférieur ou égal à 20 : 3 ans, 9 ans et 15 ans. Il est inconcevable qu'on garde un troupeau à 3 ans, ceci est donc à exclure. On regarde ensuite si les équations n(n-1)=15+9(n-2) et n(n-1)=15+15(n-2) ont des solutions en nombre entier. Ce n'est pas le cas pour la première, mais c'est le cas pour la seconde avec n=1 et n=15. On en déduit que l'adolescent a 15 ans, et garde un troupeau de 15 bêtes.

## Les Saint-Nectaires

Nérosson, Yoshi et Freddy, accompagnées de leurs épouses Gertrude, Berthe et Mauricette se rendirent à la grande fête de Chambon sur Lac le week-end dernier. Tous y ont acheté quelques Saint-Nectaire, qu'ils ont payé le même prix que le nombre acheté (c'est à dire que si Yoshi a acheté 2 Saint-Nectaire, il a payé chaque Saint-Nectaire 2 euros, s'il en a acheté 7, il a payé chaque Saint-Nectaire 7 euros). Chaque homme paya 63 euros de plus que son épouse. Sachant que Nérosson a acheté 23 Saint-Nectaire de plus que Gertrude, et Yoshi 11 de plus que Berthe, qui est la femme de chacun?

## Les tiroirs

300 personnes sont devant 300 tiroirs, numérotés de 1 à 300.

La première ouvre tous les tiroirs
La seconde ferme les tiroirs pairs
La troisième ouvre les tiroirs multiples de 3 qui sont fermés, et ferme les tiroirs multiples de 3 qui sont ouverts.
La quatrième ouvre les tiroirs multiples de 4 qui sont fermés, et ferme les tiroirs multiples de 4 qui sont ouverts.
La cinquième.....
Quand tout le monde est passé, quels sont les tiroirs ouverts?

## Défi avec les nombres premiers

Véro et Fred jouent ensemble à un jeu qui consiste à choisir un nombre entier compris entre 1 et 7, et à l'ajouter au total précémment obtenu. Le premier qui ne peut plus former un nombre premier a perdu. Véro commence. A-t-elle une stratégie qui lui permet de gagner?

Les premiers nombres premiers sont :
2 - 3 - 5 - 7 - 11 - 13 - 17 - 19 - 23 - 29 - 31 - 37 - 41 - 43 - 47 - 53 - 59 - 61 - 67 - 71 - 73 - 79 - 83 - 89 - 97

## Somme des diviseurs et nombres premiers

Croute, Roro et Véro sont au bar de Fred. Croute et Roro veulent absolument savoir qui des deux est le meilleur matheux. Fred leur soumet alors une énigme : il choisit un nombre entier entre 1 et 12. Il indique ensuite à Croute la somme des diviseurs de N, et à Roro le plus grand diviseur premier de N. A charge pour eux de trouver N.
Après un cours instant de réflexion, Croute et Roro s'écrient tous deux : "Je ne sais pas quel est N".
Véro, qui les regarde d'un air amusé, et qui sait que Croute et Roro sont deux mathématiciens de grand talent, répond alors : mais moi, j'ai deviné ce que vaut N...
Et vous, sauriez-vous faire aussi bien que Véro?

## Un seul chiffre

Quel est le plus petit multiple de 2012 qui s'écrive (en écriture décimale) en utilisant un seul chiffre?
  