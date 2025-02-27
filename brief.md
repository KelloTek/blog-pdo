# Brief de projet : Développement d'un blog en PHP avec base de données SQL

## Contexte
L'objectif de ce projet est de développer un blog dynamique en PHP, structuré autour d'une base de données SQL. Ce projet s'inscrit dans une démarche de **pédagogie active**, permettant aux apprenants de valider plusieurs compétences du **Référentiel des Activités et Compétences DWWM**.

## Objectifs pédagogiques
À travers ce projet, les apprenants devront :
- Structurer un projet PHP en respectant les bonnes pratiques de développement
- Manipuler une base de données SQL pour gérer des articles et des commentaires
- Implémenter une interface responsive à l'aide de **Bootstrap 5**
- Intégrer des fonctionnalités dynamiques (ajout, modification, affichage des articles et commentaires)

## Cahier des charges
### 🔹 Fonctionnalités attendues

#### 📌 Structure du projet
- Architecture **claire et modulaire** (séparation des fichiers : pages, fonctions, connexion à la BDD...)
- Utilisation de **fonctions PHP** pour factoriser le code
- Gestion des erreurs et affichage des messages appropriés

#### 📌 Gestion des articles
- Page d'accueil listant les 5 derniers articles sous forme de "cards" avec **titre, extrait, image et date**
- Page "Archive des articles" :
  - Affichage des articles par date de publication (du plus récent au plus ancien)
  - Filtrage par **catégorie**
  - Affichage paginé des articles
- Page "Single Article" :
  - Affichage détaillé d'un article
  - Liste des **commentaires associés**
  - Formulaire d'ajout de commentaire
- Formulaire pour **ajouter / éditer un article** (titre, contenu, catégorie, date de publication)

#### 📌 Gestion des commentaires
- Possibilité **d'ajouter un commentaire** à un article via un formulaire
- Affichage des commentaires sous chaque article

#### 📌 Interface utilisateur
- Utilisation de **Bootstrap 5** pour le design
- Site **responsive** (adaptation mobile/tablette)
- Navigation fluide et claire entre les pages

### 🔹 Contraintes techniques
- **PHP 8+** 
- Base de données **MySQL/MariaDB**
- **PAS de système d'authentification** (gestion des articles et commentaires libre)
- Sécurité basique (ex. : **protection contre les injections SQL et XSS**)
- Hébergement possible en local avec **XAMPP/WAMP/LAMP**
- Bootstrap 5 installé localement via npm

## 📌 Livrables
Les étudiants devront fournir :
1. **Le code source du projet** (fichiers PHP, SQL, CSS...)
2. **Un export de la base de données** (.sql)
3. **Une documentation (fichier "README.md" à la racine du projet)**

## 📊 Compétences évaluées (Reac DWWM)
✅ **Développer la partie back-end d’une application web ou web mobile**
✅ **Créer une base de données et interagir avec celle-ci**
✅ **Produire une interface utilisateur responsive avec un framework CSS**
✅ **Utiliser un environnement de développement local (WAMP, LAMP, etc.)**