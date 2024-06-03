# Imagem base do Node.js
FROM node:16-alpine

# Definir o diretório de trabalho no contêiner
WORKDIR /app

# Instalar o Vue CLI globalmente
RUN npm install -g @vue/cli

# Copiar package.json e package-lock.json
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o restante do código da aplicação
COPY . .

# Expor a porta de desenvolvimento do Vue.js
EXPOSE 8080

# Comando padrão para iniciar o servidor de desenvolvimento
CMD ["npm", "run", "serve"]