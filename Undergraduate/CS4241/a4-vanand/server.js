const dir  = 'public/';
    // http = require('http'),
    // fs   = require('fs'),
    // mime = require('mime'),
    // port = 3000;

//Express intialization
const express = require('express'),
    app = express(),
    session = require('express-session'),
    bodyParser = require('body-parser'),
    cookies = require('cookie-parser'),
    helmet = require('helmet'),
    compression = require('compression');


app.use(express.static(dir));
app.use(bodyParser.json());
app.use(cookies());
app.use(helmet());
app.use(compression());
app.use(session({secret: 'cats cats cats', resave: false, saveUninitialized: false}));


app.get('/', function(request, response) {
    "use strict";
    console.log('Cookies: ', request.cookies);
    console.log('Signed Cookies: ', request.signedCookies);
    response.sendFile(__dirname + '/public/index.html');
});

app.post('/test', function(req, res) {
    "use strict";
    console.log('authenticate with cookie?', req.user);
    res.json({status: 'success'});
});


app.listen(process.env.PORT || 3000);
