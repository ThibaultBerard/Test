# Utilise une image officielle de Python comme base
FROM python:3.9-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie tout le contenu du répertoire courant (ton projet) dans le répertoire de travail du conteneur
COPY . .

# Installe Flask
RUN pip install Flask

# Expose le port 8000
EXPOSE 8000

# Démarre l'application Flask
CMD ["python", "test.py"]
