#!/bin/bash

# ================================
# 🚀 Script autonome de déploiement P5 StackOverflow
# Clone directement les 3 repos dans projet5_deploy et lance Docker Compose
# ================================

# 📂 Chemin du dossier projet
PROJECT_DIR=~/projet5_deploy

echo "======================================="
echo "🔥 Déploiement Projet 5 - StackOverflow"
echo "======================================="

# 🗑️ Suppression du dossier existant
if [ -d "$PROJECT_DIR" ]; then
    echo "👉 Suppression de $PROJECT_DIR..."
    rm -rf $PROJECT_DIR
else
    echo "✅ Aucun dossier $PROJECT_DIR à supprimer."
fi

# 📁 Création du dossier
echo "📁 Création de $PROJECT_DIR..."
mkdir -p $PROJECT_DIR
cd $PROJECT_DIR

# 📥 Clonage des 3 dépôts GitHub au même niveau
echo "📥 Clonage des dépôts GitHub..."
git clone https://github.com/agnesr23/OC_IML_P5_Stackoverflow_tags_prediction_api_flask.git
git clone https://github.com/agnesr23/OC_IML_P5_Stackoverflow_tags_prediction_dashboard_streamlit.git
git clone https://github.com/agnesr23/OC_IML_P5_Stackoverflow_tags_prediction_orchestrator_deploy.git

# 🚀 Lancement de Docker Compose depuis le repo orchestrator
echo "🚀 Lancement de Docker Compose..."
cd OC_IML_P5_Stackoverflow_tags_prediction_orchestrator_deploy
docker compose up -d

# ✅ Fin
echo "======================================="
echo "🎉 Déploiement terminé et services en ligne !"
echo "======================================="
