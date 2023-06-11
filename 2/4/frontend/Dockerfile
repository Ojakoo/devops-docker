FROM node:16-alpine3.17

ARG BACKEND_URL="http://localhost:8080"

WORKDIR /app

COPY package-lock.json .
COPY package.json .

RUN npm ci

COPY . .

RUN REACT_APP_BACKEND_URL=$BACKEND_URL npm run build
RUN npm install -g serve

EXPOSE 5001:5000

CMD ["serve", "-s", "-l", "5000", "build"]