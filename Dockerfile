FROM node:lts-alpine3.10
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
RUN npm install nodemon
COPY . .
EXPOSE 8238
CMD ["npm", "start"]