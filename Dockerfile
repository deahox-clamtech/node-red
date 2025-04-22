FROM node:18
WORKDIR /usr/app
COPY package*.json ./
RUN npm install -g --unsafe-perm node-red
COPY . .
EXPOSE 1880
CMD ["node-red"]