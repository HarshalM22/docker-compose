## Manual Installation steps 
- install nodejs locally
- clone the repo 
- install dependencies ( npm install)
- start the DB locally 
- change the .env file and update your DB credentials
- npx prisma migrate dev
- npx prisma generate  
- npx run build 
- npm run start


## Docker installation steps(docker only)
- install docker 
- start postgres
    - docker run -e POSTGRES_PASSWORD=yourpassword -d -p 5432:5432 postgres
- build the image 
- start the image  


## Docker compose installation steps 
- install docker , docker-compose
- run `docker-compose up`
