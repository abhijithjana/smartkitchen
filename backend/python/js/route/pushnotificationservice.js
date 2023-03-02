const { json } = require('express');
const Flatted = require('flatted');
const {one_single_config}=require('./notificationconfig')

async function Sendnotification(data,callback){
    let header={
        'content-type': 'application/json; Charset=UTF-8',
        "Authorization":"Basic "+one_single_config.app_key
    };
    let options={
        host:"onesignal.com",
        port:443,
        path:"/api/v1/notification",
        method:"POST",
        heades:header
    };
    var https=require("https");
    var req=https.request(options,function(res){
        res.on("data",function(data){
            console.log(JSON.parse(data));
            return callback(null,JSON.parse(data))
        })
    });
    req.on("error",function(e){
       return callback({
        message:e
       }) 
    
    });
    req.write(json.stringify(data))
    req.end(); 
}

module.exports={Sendnotification};
