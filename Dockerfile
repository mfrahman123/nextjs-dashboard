FROM node:21.6-alpine3.18

COPY package.json /app/
COPY app /app/
COPY public /app/
COPY scripts /app/

WORKDIR /app

RUN npm install

CMD ["npm", "run dev"]

