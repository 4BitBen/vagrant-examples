var express = require('express');
var os = require('os');
var app = express();


app.get('/ping', function (req, res) {
    res.send('pong ' + os.hostname() + '\n');
});

var server = app.listen(3000, function () {

    var host = server.address().address;
    var port = server.address().port;

    console.log('Ping service listening at http://%s:%s', host, port);

});
