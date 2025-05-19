FROM node:20-slim


WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install

COPY . .

RUN apt-get update && apt-get install -y openssl



RUN npx prisma generate
RUN npm run build 

EXPOSE 3000

CMD ["npm","run","dev:docker"]
