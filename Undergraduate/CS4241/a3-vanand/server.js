const http = require( 'http' ),
      fs   = require( 'fs' ),
      mime = require( 'mime' ),
      dir  = 'public/',
      port = 3000;

//Express intialization
const express = require('express'),
      app = express(),
      session   = require( 'express-session' ),
      passport  = require( 'passport' ),
      Local     = require( 'passport-local' ).Strategy,
      bodyParser= require( 'body-parser' ),
      cookies   = require('cookie-parser'),
      helmet    = require('helmet');

//Connect to lowdb
const low = require('lowdb');
const FileSync = require('lowdb/adapters/FileSync');
 
const adapter = new FileSync('db.json');
const db = low( adapter );

const appdata = [
  { 'user': 'vandana', 'model': 'Toyota', 'year': 2002, 'mpg': 23, 'tripDistance': 300, 'gasPrice': 2.39, 'totalGallons': 13.04, 'totalCost': 31.16 },
  { 'user': 'bob', 'model': 'Honda', 'year': 2004, 'mpg': 30, 'tripDistance': 230, 'gasPrice': 3.40, 'totalGallons': 7.66, 'totalCost': 26.04  },
  { 'user': 'vandana', 'model': 'Ford', 'year': 2000, 'mpg': 14, 'tripDistance': 113, 'gasPrice': 4.50, 'totalGallons': 8.07, 'totalCost': 36.31 }
];

const users = [
    {username: 'vandana', password: 'hello'},
    {username: 'bob', password: 'jacksonhill'}
]

db.defaults({ appdata:appdata, users:users }).write();

app.use(express.static(dir));
app.use(passport.initialize());
app.use(bodyParser.json());
app.use(cookies());
app.use(helmet());


app.get('/', function(request, response) {
  console.log('Cookies: ', request.cookies)
  console.log('Signed Cookies: ', request.signedCookies)
  response.sendFile(__dirname + '/public/index.html');
});

app.get('/carData', (req, res)=>{
  let data = db.get('appdata').value();
  res.send(data);
});

app.post('/submit', function(req, res){

  let submitBtn = req.body;
  console.log(req.body);
        //server logic 
        let totalGallons = (parseInt(submitBtn.tripDistance) / parseInt(submitBtn.mpg));

        let totalCost = (totalGallons*(parseInt(submitBtn.gasPrice)));
        
        const carData = {
            'user': submitBtn.user,
          'model': submitBtn.model,
          'year': submitBtn.year,
          'mpg': submitBtn.mpg,
          'tripDistance': submitBtn.tripDistance,
          'gasPrice': submitBtn.gasPrice,
          'totalGallons': totalGallons.toFixed(2),
          'totalCost': totalCost.toFixed(2)
        };

  
          // if( req.url === '/submit') {
          //   let index = req.body.rowData;
          //   let numItems = db.get('appdata').size().value()
          //   let foundName=false //figuring out if something already exists
          //   for (let i=0; i<numItems; i++){
          //     if((db.get('appdata['+index+'].model').value())===carData.model){
          //       foundName = true
          //       console.log("IT IT TRUEEEEEE")
          //     }
          //   }
          //   if(foundName == false){
          //     db.get( 'appdata' ).push(carData).write();
          //     console.log("IT IS FALSEEEEEE")
          //   }
          // }
        
        db.get( 'appdata' ).push(carData).write();

        console.log(appdata);

        res.writeHead( 200, { 'Content-Type': 'application/json'});
        res.end( JSON.stringify( appdata ) )
  
});

app.post('/delete', function(req, res){
    let index = req.body.rowData;
    let indexVal = db.get('appdata['+index+']').value();
    db.get('appdata')
        .remove(indexVal)
        .write();

       res.writeHead( 200, { 'Content-Type': 'application/json'});
       res.end()
  
});


app.post('/update', function(req, res){
  let updateBtn = req.body;
  console.log(req.body);
  let index = updateBtn.index;

    db.get('appdata['+index+']')
        .assign({ model: updateBtn.model, year: updateBtn.year, mpg: updateBtn.mpg,
            tripDistance: updateBtn.tripDistance, gasPrice: updateBtn.gasPrice,
            totalGallons: updateBtn.totalGallons, totalCost: updateBtn.totalCost})
        .write();

        res.writeHead( 200, { 'Content-Type': 'application/json'});
        res.end( JSON.stringify( appdata ) )
 
});


const myLocalStrategy = function( username, password, done ) {

    const user = db.get('users').find( {username} )

    if( user === undefined ) {
        return done( null, false, { message:'user not found' })
    }else if( user.value().password === password ) {

        return done( null, { username, password })
    }else{

        return done( null, false, { message: 'incorrect password' })
    }
}

passport.use( new Local( myLocalStrategy ) )
passport.initialize()


app.post(
    '/login',
    passport.authenticate( 'local' ),
    function( req, res ) {
        console.log( 'user:', req.user )
        res.json({ status:true })
    }
)


passport.serializeUser( ( user, done ) => done( null, user.username ) )


passport.deserializeUser( ( username, done ) => {
    const user = users.find( u => u.username === username )
    console.log( 'deserializing:', name )

    if( user !== undefined ) {
        done( null, user )
    }else{
        done( null, false, { message:'user not found; session not restored' })
    }
})

app.use( session({ secret:'cats cats cats', resave:false, saveUninitialized:false }) )
app.use( passport.initialize() )
app.use( passport.session() )

app.post('/test', function( req, res ) {
    console.log( 'authenticate with cookie?', req.user )
    res.json({ status:'success' })
})

app.get('/register', (req, res) => {
    let data = db.get('users').value()
    res.send(data)
})

app.post('/register', (req, res) => {
    let data = req.body
    db.get('users').push(data).write()
    res.status(200).send("User added to DB!")
})

app.listen( process.env.PORT || 3000 );
