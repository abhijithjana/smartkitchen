//package import
const express=require('express');
const spawn=require('child_process').spawn;
const fs=require('fs')



const app=express();
app.use(express.json())
const route=require('./route/approute.js')
app.use(route);
const port=3000;

app.get("/",async (req,res)=>{
console.log("hh")
const pythonpross= spawn('python',["../python/yolowebcam/yolo_webcam.py"]);

pythonpross.stdout.on("data",(data)=>{

    mystr=data.toString();
    myjson=JSON.parse(mystr);

   
     
})
 pythonpross.on('close', (code) => {
 console.log(`child process close all stdio with code ${code}`);
 // send data to browser

 });
console.log("hhhh")
})





app.listen(port,"0.0.0.0",()=>{
    console.log(`succesfully connected port number ${port}`);
});