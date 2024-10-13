# Utilise une image officielle de Python comme base
FROM python:3.9-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie tout le contenu du répertoire courant (ton projet) dans le répertoire de travail du conteneur
COPY . .

# Expose un port (exemple : 8000)
EXPOSE 8000

# Commande à exécuter
CMD ["python", "test.py"]
