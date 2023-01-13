FROM node:alpine
EXPOSE 3001
COPY server.js .
CMD node server.js
