# 🔖 Stack Overflow Tag Predictor  
*Projet 5 – OpenClassrooms – Parcours Ingénieur Machine Learning*


🔖 Stack Overflow Tag Predictor
Ce projet propose une solution de prédiction automatique de tags pour les questions Stack Overflow. Il comprend deux services dockerisés :

🔧 Une API Flask qui retourne des prédictions de tags à partir d’une question.

📊 Une application Streamlit pour visualiser et tester les prédictions de manière interactive.

Ce dépôt contient l’orchestration complète de ce système de prédiction automatique de tags pour les questions Stack Overflow.  


📁 Arborescence du dépôt :
OC_IML_P5_Stackoverflow_tags_prediction_orchestrator_deploy/
├── docker-compose.yml
├── build_and_push.sh
├── .gitignore
└── README.md

## 🚀 Lancement rapide

### 🔧 Prérequis

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### ▶️ Lancer les services

Depuis la racine du dépôt :

```bash
docker-compose up --pull always

API Flask : http://localhost:5001
Dashboard Streamlit : http://localhost:8501

📦 Références des services GitHub

Les deux services utilisent des images Docker publiées sur Docker Hub, référencées dans le fichier docker-compose.yml.

🐍 API Flask : OC_IML_P5_Stackoverflow_tags_prediction_api_flask

📊 Dashboard Streamlit : OC_IML_P5_Stackoverflow_tags_prediction_dashboard_streamlit


🧪 Tests
Des tests unitaires sont fournis pour l’API Flask :

cd app_flask
pytest

⚙️ Une exécution automatique est également assurée via GitHub Actions dans ce dépôt.

📌 Remarques
Ce dépôt ne contient pas de code métier. Il est uniquement dédié à l’orchestration des services via Docker.

Les notebooks d'exploration, d'entraînement, les jeux de données et les artefacts sont exclus pour garder ce projet léger et ciblé sur la partie déploiement.

📄 Licence
Ce projet est open source. N’hésitez pas à l’adapter à vos besoins.