FROM node:16-alpine3.17

WORKDIR /app

COPY package-lock.json .
COPY package.json .

RUN npm ci

COPY . .

RUN npm run build
RUN npm install -g serve

EXPOSE 5001:5000

CMD ["serve", "-s", "-l", "5000", "build"]