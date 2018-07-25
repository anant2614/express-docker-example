var router = require('express').Router();

router.get("/", function(er,res,next){
    res.json("Hello there Noder !!")
    return next();
});

module.exports=router;