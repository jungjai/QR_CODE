var express = require('express')
var qrcode = require('qrcode');
var app = express()

app.get('/:qrcode',(req, res) =>{
    let inputStr = req.params.qrcode;
    qrcode.toDataURL(inputStr, function (err, url) {
        let data = url.replace(/.*,/,'')
        let img = new Buffer(data,'base64')
        res.writeHead(200,{
            'Content-Type' : 'image/png',
            'Content-Length' : img.length
        })
        res.end(img)
    })
})

app.listen(3000, function(){
  console.log("start! server on 3000")
})
