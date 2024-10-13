# Utilise une image officielle de Python comme base
FROM python:3.9-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie tout le contenu du répertoire courant (ton projet) dans le répertoire de travail du conteneur
COPY . .

# Installe les dépendances nécessaires (si tu as un fichier requirements.txt, sinon tu peux ignorer cette ligne)
# RUN pip install -r requirements.txt

# Indique quel fichier Python doit être exécuté
CMD ["python", "test.py"]
