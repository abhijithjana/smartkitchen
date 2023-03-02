const express=require("express")
const pushnotificationservice=require("./pushnotificationservice")
const app=express.Router();

app.get("/SendNotification",pushnotificationservice.Sendnotification);
module.exports=app;