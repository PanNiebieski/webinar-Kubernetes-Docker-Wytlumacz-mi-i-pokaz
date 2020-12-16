FROM node:latest
FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm config set registry http://registry.npmjs.org/ \
    && npm install --no-optional \
    && npm cache clear

COPY index.js ./

EXPOSE 8080
CMD ["node","index.js"]
