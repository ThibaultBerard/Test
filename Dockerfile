# Utilise une image officielle de Python comme base
FROM python:3.9-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie le contenu du répertoire courant dans le répertoire de travail
COPY . .

# Installe Flask (et autres dépendances si nécessaire)
RUN pip install Flask

# Expose le port 8000
EXPOSE 8000

# Commande pour démarrer l'application Flask
CMD ["python", "app.py"]
