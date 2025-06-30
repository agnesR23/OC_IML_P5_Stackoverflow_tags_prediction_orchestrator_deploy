#!/bin/bash

echo "🔐 Docker Hub login"
read -p "🧑 Docker Hub username: " USER

if [ -z "$DOCKER_TOKEN" ]; then
  read -s -p "🔑 Access Token: " TOKEN
  echo
else
  TOKEN="$DOCKER_TOKEN"
  echo "🔑 Using token from environment variable DOCKER_TOKEN"
fi

read -p "🏷️  Version tag (ex: v1, v2, test): " VERSION
if [[ -z "$VERSION" ]]; then
  echo "❌ Le tag ne peut pas être vide."
  exit 1
fi

echo "📦 Logging in..."
echo "$TOKEN" | docker login --username "$USER" --password-stdin
if [ $? -ne 0 ]; then
  echo "❌ Login failed"
  exit 1
fi

echo "🐳 Building and pushing app_flask:$VERSION"
docker build -t $USER/app_flask:$VERSION ./app_flask || exit 1
docker push $USER/app_flask:$VERSION || exit 1

echo "🐳 Building and pushing app_streamlit:$VERSION"
docker build -t $USER/app_streamlit:$VERSION ./app_streamlit || exit 1
docker push $USER/app_streamlit:$VERSION || exit 1

echo "✅ All done! Images tagged '$VERSION' pushed to Docker Hub."
