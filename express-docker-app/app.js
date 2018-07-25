var http = require('http'),
    express = require('express');

var app = express();

app.use(require('./routes'));

var server = app.listen( process.env.PORT || 3000, function(){
    console.log('Listening on port ' + server.address().port);
  });
