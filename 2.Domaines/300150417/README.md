1. Choix du Domaine

Le domaine choisi est la gestion d’un site de changement de devise en ligne.
Ce système permet de modéliser le cycle complet depuis l’inscription d’un client, la consultation des taux de change, la conversion d’un montant d’une devise vers une autre, jusqu’au paiement et à l’enregistrement de l’historique des transactions.

2. Normalisation
📁 Fichier 1 : 1FN (Première Forme Normale)

Dans cette phase, toutes les données sont regroupées dans une structure plate (Flat Table).
Chaque attribut est atomique.
Il n’y a pas encore de clés techniques (ID).

Attributs :

Client_Nom, Client_Prenom, Client_Email, Client_Telephone,
Num_Rue, Rue, Ville, Code_Postal, Pays_Client,
Devise_Source, Devise_Cible, Taux_Change,
Montant_Initial, Montant_Converti, Date_Transaction, Statut_Transaction,
Mode_Paiement, Montant_Paye,
Nom_Prestataire_Paiement

📁 Fichier 2 : 2FN (Deuxième Forme Normale)

Dans cette étape, les entités sont séparées et les relations avec leurs cardinalités sont définies afin d’éliminer les redondances partielles.

CLIENT (1,N) —— EFFECTUE —— (1,1) TRANSACTION
CLIENT (1,1) —— HABITE —— (1,1) ADRESSE

DEVISE (1,N) —— EST_SOURCE_DE —— (1,1) TRANSACTION
DEVISE (1,N) —— EST_CIBLE_DE —— (1,1) TRANSACTION

DEVISE (1,1) —— POSSÈDE —— (1,N) TAUX_CHANGE

TRANSACTION (1,1) —— EST_PAYÉE_PAR —— (1,1) PAIEMENT

PAIEMENT (1,1) —— UTILISE —— (1,1) MODE_PAIEMENT

📁 Fichier 3 : 3FN (Troisième Forme Normale)

Dans cette phase finale, les dépendances transitives sont éliminées.
Les clés primaires (ID) et les clés étrangères (#) sont introduites.
La structure est prête pour l’implémentation SQL.

Tables finales :

Client
(ID_Client, Nom, Prénom, Email, Téléphone, Pays)

Adresse
(ID_Adresse, Num_Rue, Rue, Ville, Code_Postal, #ID_Client)

Devise
(ID_Devise, Code_Devise, Nom_Devise, Symbole)

Taux_Change
(ID_Taux, Valeur_Taux, Date_Mise_A_Jour, #ID_Devise_Source, #ID_Devise_Cible)

Transaction
(ID_Transaction, Date_Transaction, Montant_Initial, Montant_Converti, Statut, #ID_Client, #ID_Devise_Source, #ID_Devise_Cible)

Paiement
(ID_Paiement, Montant_Paye, Date_Paiement, #ID_Transaction, #ID_Mode_Paiement)

Mode_Paiement
(ID_Mode_Paiement, Nom_Mode)

## 📊 Diagramme Entité-Relation

![Diagramme ER - Site de changement de devise](images/DR.png)
