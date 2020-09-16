FROM node:12.18.2
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
USER 1000:1000
ENV PORT=8080
CMD [ "npm", "start" ]
