 const {one_single_config}=require("./notificationconfig");
const pushnotification=require('./pushnotificationservice')

 exports.Sendnotification=(req,res,next)=>{
    var message={
        app_id:one_single_config.app_id,
        contents:{"en":"testing"},
        included_segments:["All"],
        content_available:true,
        small_icon:"ic_notification_icon",
        data:{
            PushTitle:"CUSTOM NOTIFICATION",
        }
    };
    pushnotification.Sendnotification(messag,(error,result)=>{
        if(error){
            return next(error);
        }
        return res.status(200).send({
            message:"Success",
            data:result
        })
    })
 }

 