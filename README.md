# 🔖 Stack Overflow Tag Predictor – Orchestrateur Docker Compose  
Par Agnès Regaud – Projet 5 – OpenClassrooms – Parcours Ingénieur Machine Learning

Ce projet propose une solution complète de prédiction automatique de tags pour les questions Stack Overflow,  
composée de deux services dockerisés :

- 🔧 Une API Flask qui retourne des prédictions de tags à partir d’une question.  
- 📊 Une application Streamlit pour visualiser et tester les prédictions de manière interactive.

Ce dépôt contient l’orchestration complète de ce système via Docker Compose.

## 📁 Contenu du dépôt

- docker-compose.yml : orchestration des services API Flask et dashboard Streamlit  
- build_and_push.sh : script pour builder et pousser les images Docker (CI/CD)  
- .gitignore : règles d’exclusion pour Git  
- README.md : ce fichier

## 🚀 Prérequis

- Docker  
- Docker Compose

## ▶️ Lancement local rapide

Depuis la racine du dépôt, lancez les services avec :

docker-compose up --pull always

- API Flask accessible sur : http://localhost:5001  
- Dashboard Streamlit accessible sur : http://localhost:8501

## 🧪 Tests

Des tests unitaires sont fournis pour l’API Flask.

Pour les lancer :

cd app_flask  
pytest

Une exécution automatique des tests est assurée via GitHub Actions dans ce dépôt.

## 📌 Remarques

- Ce dépôt ne contient pas de code métier.  
- Il est uniquement dédié à l’orchestration des services via Docker Compose pour un usage local et développement.  
- Cette orchestration n’est pas utilisée pour le déploiement sur AWS (ECS Fargate) ni pour Streamlit Cloud.  
- Les notebooks d'exploration, d'entraînement, les jeux de données et les artefacts sont exclus pour garder ce projet léger et ciblé sur la partie déploiement.

## 📄 Licence

Ce projet est open source. N’hésitez pas à l’adapter à vos besoins.
