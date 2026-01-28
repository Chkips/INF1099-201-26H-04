# 📘 Site d’échange de devises

## 📌 Présentation du projet

Ce projet consiste à concevoir une base de données relationnelle pour un site d’échange de devises en ligne.
La plateforme permet aux clients de créer un compte, consulter les taux de change, effectuer des conversions
entre différentes devises et procéder au paiement des transactions.

---

## 🎯 Objectifs

- Modéliser un domaine réel
- Appliquer les règles de normalisation (1FN, 2FN, 3FN)
- Éliminer les redondances
- Obtenir une structure prête pour une implémentation SQL

---

## 🧩 Choix du domaine

Le domaine choisi est la gestion d’un site d’échange de devises.
Le système gère les clients, les devises, les taux de change, les transactions de conversion
et les paiements associés.

---

## 📂 Normalisation

### Première Forme Normale (1FN)

Les données sont regroupées dans une table plate.
Tous les attributs sont atomiques et aucune clé technique n’est définie.

---

### Deuxième Forme Normale (2FN)

Les données sont séparées en entités afin d’éliminer les dépendances partielles.
Les relations et cardinalités sont définies entre les entités.

---

### Troisième Forme Normale (3FN)

Les dépendances transitives sont éliminées.
Les clés primaires (PK) et clés étrangères (FK) sont introduites.

---

## 📌 Structure finale des entités

Client (ID_Client, Nom, Prénom, Téléphone, Email)

Adresse (ID_Adresse, Numéro_Rue, Rue, Ville, Code_Postal, Pays, #ID_Client)

Compte_Client (ID_Compte, Date_Création, Statut, #ID_Client)

Devise (ID_Devise, Code_Devise, Nom_Devise, Symbole)

Taux_Change (ID_Taux, Valeur_Taux, Date_Mise_À_Jour, #ID_Devise_Source, #ID_Devise_Cible)

Transaction (ID_Transaction, Date_Transaction, Montant_Initial, Montant_Converti, Statut, #ID_Client, #ID_Devise_Source, #ID_Devise_Cible, #ID_Taux)

Paiement (ID_Paiement, Date_Paiement, Montant_Payé, #ID_Transaction, #ID_Mode_Paiement)

Mode_Paiement (ID_Mode_Paiement, Nom_Mode)

Prestataire_Paiement (ID_Prestataire, Nom_Prestataire, Type_Service)

Historique_Transaction (ID_Historique, Date_Action, Action, #ID_Transaction)

---


## 📊 Diagramme Entité-Relation

![Diagramme ER - Site de changement de devise](images/DR.png)
