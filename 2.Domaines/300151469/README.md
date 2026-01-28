\# Domaine 2 – Prise de rendez-vous TCF



\*\*Nom :\*\* Rabia Bouhali 

\*\*Numéro étudiant :\*\* 300151469 

\*\*Cours :\*\* INF1099 



\## Description

Ce domaine présente un système de prise de rendez-vous pour le test TCF.

Il inclut la gestion des utilisateurs, des centres TCF, des rendez-vous

et des paiements.



Le schéma de base de données est normalisé jusqu'à la 3ème forme normale (3FN).

# Travail INF1099 - Domaine 300151469 : Rendez-vous TCF Canada

## 1. Choix du domaine
Le domaine choisi est la gestion des rendez-vous pour passer le **TCF au Canada**.  
Ce projet permet de modéliser le cycle complet depuis la réservation d’un candidat jusqu’au paiement et à l’organisation des sessions de test.

---

## 2. Contenu du dossier

- **1FN.txt** : Première Forme Normale 
  Contient une **table plate** avec tous les attributs atomiques des candidats et rendez-vous.

- **2FN.txt** : Deuxième Forme Normale 
  Contient les **relations et cardinalités** entre les entités pour éviter les redondances partielles.  
  Exemple : `CANDIDAT (1,N) —— PREND —— (0,N) RENDEZVOUS`.

- **3FN.txt** : Troisième Forme Normale 
  Contient les **tables finales** avec **Clés Primaires (ID)** et **Clés Étrangères (#)** pour éliminer les dépendances transitives.

- **diagramme_er.mmd** : Diagramme E/R en **Mermaid** représentant les relations entre les entités : Candidat, Session, Lieu, Rendez-vous et Paiement.

---

## 3. Diagramme ER (Mermaid)

```mermaid
erDiagram
    CANDIDAT ||--o{ RENDEZVOUS : prend
    RENDEZVOUS ||--|{ PAIEMENT : est_payé
    RENDEZVOUS ||--|{ SESSION : se_deroule
    SESSION ||--|{ LIEU : a_lieu

    CANDIDAT {
        string ID_Candidat PK
        string Nom
        string Prenom
        string Email
        string Telephone
    }

    SESSION {
        string ID_Session PK
        date Date
        string Heure
        string Type_Test
        string ID_Lieu FK
    }

    LIEU {
        string ID_Lieu PK
        string Nom_Lieu
        string Adresse
    }

    RENDEZVOUS {
        string ID_RendezVous PK
        string ID_Candidat FK
        string ID_Session FK
        string Statut
    }

    PAIEMENT {
        string ID_Paiement PK
        float Montant
        string Mode_Paiement
        date Date_Paiement
        string ID_RendezVous FK
    }
4. Commandes utilisées
Git
bash
Copier le code
git add 2.Domaines/300151469
git commit -m "Ajout fichiers Domaine 300151469 - Rendezvous TCF Canada"
git push origin main
Nano (création des fichiers)
bash
Copier le code
nano README.md
nano 1FN.txt
nano 2FN.txt
nano 3FN.txt
nano diagramme_er.mmd
Ces commandes permettent de créer les fichiers dans le dossier, de sauvegarder le travail, et de le pousser sur GitHub.

5. Résumé
Grâce à ce travail, nous avons :

normalisé les données en 1FN, 2FN, 3FN

créé un diagramme ER clair pour le projet TCF

documenté toutes les étapes dans le README

préparé le dossier pour un futur développement ou automatisation.

