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
      helmet    = require('helmet'),
      mongodb   = require('mongodb');

//Iniitialize
// const appdata = [
//   { 'user': 'vandana', 'model': 'Toyota', 'year': 2002, 'mpg': 23, 'tripDistance': 300, 'gasPrice': 2.39, 'totalGallons': 13.04, 'totalCost': 31.16 },
//   { 'user': 'bob', 'model': 'Honda', 'year': 2004, 'mpg': 30, 'tripDistance': 230, 'gasPrice': 3.40, 'totalGallons': 7.66, 'totalCost': 26.04  },
//   { 'user': 'vandana', 'model': 'Ford', 'year': 2000, 'mpg': 14, 'tripDistance': 113, 'gasPrice': 4.50, 'totalGallons': 8.07, 'totalCost': 36.31 }
// ];

// const users = [
//     {username: 'vandana', password: 'hello'},
//     {username: 'bob', password: 'jacksonhill'}
// ]


//MongoDB Connection

//const uri = `mongodb+srv://vanand:eyesea@roadtrip-planner-qzq7p.azure.mongodb.net/test?retryWrites=true&w=majority`
const uri = 'mongodb+srv://'+process.env.USER+':'+process.env.PASS+'@'+process.env.HOST+'/'+process.env.DB

let collectionUsers = null
let collectionItems = null

const client = new mongodb.MongoClient( uri, { useNewUrlParser: true, useUnifiedTopology:true })
let collection = null


client.connect()
  .then( () => {
    // will only create collection if it doesn't exist 
    return client.db( 'roadtrips' ).createCollection( 'Roadtrip-Planner' )
  })
  .then( __collection => {
    // store reference to collection
    collectionItems = __collection
    // blank query returns all documents
  return collectionItems.find({}).toArray();

  })
  .then( console.log )

client.connect()
  .then( () => {
    // will only create collection if it doesn't exist 
    return client.db( 'roadtrips' ).createCollection( 'users' )
  })
  .then( __collection => {
    // store reference to collection
    collectionUsers = __collection
    // blank query returns all documents
  return collectionUsers.find({}).toArray();

  })
  .then( console.log )



app.use( (req,res,next) => {
  if( collectionItems !== null ) {
    next()
  }else{
    res.status( 503 ).send()
  }
})


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

    if( collectionItems !== null ) {
    collectionItems.find({ }).toArray().then( result => res.json( result ) )
  }
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

  
        collectionItems.insertOne( carData ).then( result => res.json( result ) )

  
});

app.post('/delete', function(req, res){
    let index = req.body.rowData;
    console.log(req.body); //{rowData:2}
    // let indexVal = db.get('appdata['+index+']').value();
    // db.get('appdata')
    //     .remove(indexVal)
    //     .write();
    collectionItems.deleteOne({ _id:mongodb.ObjectID( req.body.rowData ) }).then( result => res.json( result ) )

       // res.writeHead( 200, { 'Content-Type': 'application/json'});
       // res.end()
  
});


app.post('/update', function(req, res){
  let updateBtn = req.body;
  console.log(req.body);
  let indexs = updateBtn.index;

    // db.get('appdata['+index+']')
    //     .assign({ model: updateBtn.model, year: updateBtn.year, mpg: updateBtn.mpg,
    //         tripDistance: updateBtn.tripDistance, gasPrice: updateBtn.gasPrice,
    //         totalGallons: updateBtn.totalGallons, totalCost: updateBtn.totalCost})
    //     .write();
  
    collectionItems.updateOne({ index:mongodb.ObjectID( indexs) },{ $set:{ model: updateBtn.model, year: updateBtn.year, mpg: updateBtn.mpg,
             tripDistance: updateBtn.tripDistance, gasPrice: updateBtn.gasPrice,
             totalGallons: updateBtn.totalGallons, totalCost: updateBtn.totalCost} })
    .then( result => res.json( result ) )

        // res.writeHead( 200, { 'Content-Type': 'application/json'});
        // res.end( JSON.stringify( appdata ) )
 
});


const myLocalStrategy = function( username, password, done ) {
    let user;

    collectionUsers.find({username:username}).toArray().then( result => {
      user = result[0];

    if( user === undefined ) {
        return done( null, false, { message:'user not found' })
    }else if( user.username === username && user.password === password ) {

        return done( null, { username, password })
    }else{

        return done( null, false, { message: 'incorrect password' })
    }
  })
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

    let user;
    collectionUsers.find({ }).toArray().then( result => {
    user = result[0];
  
    console.log( 'deserializing:', name )

    if( user !== undefined ) {
        done( null, user )
    }else{
        done( null, false, { message:'user not found; session not restored' })
    }
  })
})

app.use( session({ secret:'cats cats cats', resave:false, saveUninitialized:false }) )
app.use( passport.initialize() )
app.use( passport.session() )

app.post('/test', function( req, res ) {
    console.log( 'authenticate with cookie?', req.user )
    res.json({ status:'success' })
})

app.get('/register', (req, res) => {
  if( collectionUsers !== null ) {
    collectionItems.find({ }).toArray().then( result => res.json( result ) )
  }
})

app.post('/register', (req, res) => {
  let data = req.body;
  collectionUsers.insertOne(data)
  res.status(200).send("User was added to Database!")
  
})

app.listen( process.env.PORT || 3000 );
