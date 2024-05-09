# Use uma imagem base do Node.js
FROM node:latest

# Crie um diretório de trabalho no contêiner
WORKDIR /usr/src/app

# Copie o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie o restante do código-fonte para o diretório de trabalho
COPY . .

# Exponha a porta em que o aplicativo está sendo executado
EXPOSE 3000

# Comando para iniciar o aplicativo
CMD ["npm", "start"]
