# Utiliser l'image Python 3.9 comme base
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'application
COPY . .

# Installer les dépendances
RUN pip install -r requirements.txt

# Spécifier la commande pour exécuter l'application
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
