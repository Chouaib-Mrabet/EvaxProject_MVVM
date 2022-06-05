FROM node:16
WORKDIR /app
COPY ./package*.json ./
RUN npm install
COPY . .
EXPOSE 4200
RUN npm run build
CMD npm run start:prod
