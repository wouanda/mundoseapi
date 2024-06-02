# Utiliser l'image officielle de Node.js comme image de base
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier le fichier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste de l'application
COPY . .

# Exposer le port que l'application utilisera
EXPOSE 3000

# Définir la commande à exécuter lorsque le conteneur démarre
CMD ["npm", "start"]
