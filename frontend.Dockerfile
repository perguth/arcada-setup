FROM node:lts-alpine

WORKDIR /application
COPY . .
RUN npm i

CMD ["npm", "start"]
