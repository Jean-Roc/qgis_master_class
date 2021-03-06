Excercice 2 : les sites pollués
-------------------------------

Importer des données vecteurs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Dans la liste du panneau *Entrées* qui se situe à gauche de la fenêtre, double-cliquez sur *Vector layer*.

Définissez les paramètres suivants :

- *Parameter Name* : Sites
- *Shape Type* : Point
- *Required* : Yes

Sélection de sites
^^^^^^^^^^^^^^^^^^

Sélection des sites marqués comme étant des dépôts de liquides inflammables.

*Extract by attribute*

- *Input Layer* : basias
- *Selection attribute* : activites
- *Comparison* : Contains
- *Value* : inflammable


Sélection des sites qui sont encore en activité.

*Extract by attribute*

- *Input Layer* : Output from algorithm 0
- *Selection attribute* : etat_site
- *Comparison* : Contains
- *Value* : En activit

La lettre *é* n'est pas utilisée car le module fait une recherche de caractères ASCII qui se heurte à cet accent UTF-8.

Sauvegarder la sélection
^^^^^^^^^^^^^^^^^^^^^^^^

*Save selected feature*

- *Input* : Output from algorithm 1
- *Output* : basias_selection

Obtenir un tampon
^^^^^^^^^^^^^^^^^

Ce module va nous permettre d'obtenir des polygones représentants un espace autour d'un site, les différents tampons dont les surfaces se superposent seront fusionnées. Pour laisser le choix à l'utilisateur, nous allons ajouter un paramètre *Number* qui lui permettra de saisir la valeur de distance.

*Number*

- *parameter name* : taille du tampon 
- *Min/Max values* : 25/200
- *Defaut value* : 100

*Fixed distance buffer*

- *Input* : Output from algorithm 2
- *Distance* : 100
- *Segments* : 20
- *Dissolve* : Yes
- *Output* : zone tampon

Créer une carte de densité
^^^^^^^^^^^^^^^^^^^^^^^^^^

Ce module va créer une carte de chaleur des sites encore en activité.

*Kernel density estimation*

- *Points* : Output from algorithm 2
- *Weight* : poid
- *Radius* : 1000
- *Cellsize* : 100

..	figure:: ./fig/traitement_basias.png
	:align: center
	:scale: 50%

