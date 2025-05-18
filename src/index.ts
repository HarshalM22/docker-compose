import express from 'express' ;
import {PrismaClient} from '@prisma/client'
const app = express();

const prismaClient = new PrismaClient() ;



app.get('/',async(req,res)=>{
   
    const user = await prismaClient.user.findMany() ;

    res.json({
         user,
        "message": "user"
    })
})


app.post('/',async(req,res)=>{
    await prismaClient.user.create({
        data :{
            username : Math.random().toString(12),
            passsword: Math.random().toString(12)
        }
    })
    res.json({
        "message": "created user"
    })
})


app.listen(3000);