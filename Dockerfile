#FROM nginx:alpine
#COPY public/ /usr/share/nginx/html
#EXPOSE 80
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080
ENV PORT=8080

CMD ["node", "server.js"]