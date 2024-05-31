# Usa un'immagine di base Node.js
FROM node:14

# Imposta la directory di lavoro nell'immagine Docker
WORKDIR /app

# Copia il file package.json e package-lock.json nell'immagine Docker
COPY package*.json ./

# Installa le dipendenze
RUN npm install

# Copia il resto del codice dell'app nell'immagine Docker
COPY . .

# Esponi la porta su cui l'app Express verrà eseguita
EXPOSE 3000

# Comando per eseguire l'app
CMD ["npm", "start"]

