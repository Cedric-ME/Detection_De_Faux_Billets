# Utilise une image Python officielle
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de l'application dans le conteneur
COPY . .

# Installer les dépendances
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Exposer le port si ton application en utilise un (facultatif)
# EXPOSE 8000

# Commande à exécuter au démarrage du conteneur
CMD ["python", "main.py"]
