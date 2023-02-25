//package import
const express=require('express');
const spawn=require('child_process').spawn;

const app=express();
const port=3000;

const pythonpross=spawn('python',["python/main.py"]);

pythonpross.stdout.on("data",(data)=>{
    console.log('hello');
    mystr=data.toString();
    myjson=JSON.parse(mystr);
    console.log(myjson);
})





app.listen(port,"0.0.0.0",()=>{
    console.log(`succesfully connected port number ${port}`);
});