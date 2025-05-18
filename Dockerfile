FROM node:20-alpine

WORKDIR /app

COPY package* .

RUN npm install

COPY . .

RUN npm prisma migrate dev
RUN npx prisma generate
RUN npm run build 

CMD ["npm","start"]
