FROM node:8-alpine

WORKDIR /app

RUN npx create-react-app /app

WORKDIR /app/src

CMD ["npm", "start"]
