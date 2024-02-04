FROM node:14

WORKDIR /usr/src/app

COPY index.html .
COPY m.mp3 .
#C'est pour le port du serv NODE JS
EXPOSE 8080

RUN npm install -g http-server

CMD ["http-server", "--port", "8080"]