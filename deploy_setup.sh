#!/bin/bash

# ================================
# 🚀 Déploiement P5 StackOverflow
# Supprime projet5_deploy, clone les 3 dépôts et relance Docker Compose
# ================================

PROJECT_DIR=~/projet5_deploy

echo "======================================="
echo "🔥 Déploiement Projet 5 - StackOverflow"
echo "======================================="

# 🗑️ Supprimer l'ancien projet
if [ -d "$PROJECT_DIR" ]; then
    echo "👉 Suppression de $PROJECT_DIR..."
    rm -rf $PROJECT_DIR
else
    echo "✅ Aucun dossier $PROJECT_DIR à supprimer."
fi

# 📦 Installer git si absent
if ! command -v git &> /dev/null; then
    echo "📦 Installation de git..."
    sudo yum update -y
    sudo yum install -y git
fi

# 📁 Créer le dossier projet
echo "📁 Création de $PROJECT_DIR..."
mkdir -p $PROJECT_DIR
cd $PROJECT_DIR

# 📥 Cloner les 3 dépôts
echo "📥 Clonage des dépôts..."
git clone https://github.com/agnesr23/OC_IML_P5_Stackoverflow_tags_prediction_api_flask.git
git clone https://github.com/agnesr23/OC_IML_P5_Stackoverflow_tags_prediction_dashboard_streamlit.git
git clone https://github.com/agnesr23/OC_IML_P5_Stackoverflow_tags_prediction_orchestrator_deploy.git

# 🚀 Lancer Docker Compose
echo "🚀 Lancement de Docker Compose..."
cd OC_IML_P5_Stackoverflow_tags_prediction_orchestrator_deploy
docker-compose up -d

# ✅ Terminé
echo "======================================="
echo "🎉 Déploiement terminé et services en ligne !"
echo "======================================="
