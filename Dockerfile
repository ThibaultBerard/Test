# Utilise une image officielle de Python comme base
FROM python:3.9-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie tout le contenu du répertoire courant (ton projet) dans le répertoire de travail du conteneur
COPY . .

# Commande à exécuter
CMD ["python", "test.py"]
