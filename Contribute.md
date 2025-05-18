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
- create a network - docker network create user_project
- start postgres
    - docker run --name user-project --network user_project -e POSTGRES_PASSWORD=yourpass -d -p 5432:5432 postgres
- build the image - `docker build --network=host -t  user-project .`
- start the image - `docker run -e DATABASE_URL=postgresql://postgres:yourpass@user-project:5432/postgres --network user_project -p 3000:3000 user-project`  


## Docker compose installation steps 
- install docker , docker-compose
- run `docker-compose up`
