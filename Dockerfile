FROM node:20-alpine

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install

COPY . .

RUN apk update && apk add --no-cache openssl

ENV DATABASE_URL=postgresql://postgres:Harshal%4005@localhost:5432/postgres
RUN echo %DATABASE_URL

RUN DATABASE_URL=$DATABASE_URL npx prisma migrate dev
RUN npx prisma generate
RUN npm run build 

EXPOSE 3000

CMD ["npm","start"]
