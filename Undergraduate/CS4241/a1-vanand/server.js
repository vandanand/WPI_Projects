/*const http = require('http'),
      fs   = require('fs'),
      port = 3000

const server = http.createServer( function( request,response ) {
  switch( request.url ) {
    case '/':
      sendFile( response, 'index.html' )
      break
    case '/index.html':
      sendFile( response, 'index.html' )
      break
    case '/style.css':
      sendFile( response, 'style.css' )
      break
    default:
      response.end( '404 Error: File Not Found' )
  }
})

server.listen( process.env.PORT || port )

const sendFile = function( response, filename ) {
   fs.readFile( filename, function( err, content ) {
     filename = content
     response.end( content, 'utf-8' )
   })
}*/

const http = require( 'http' ),
      fs = require( 'fs' ),
      mime = require('mime'),
      port = 3000

const server = http.createServer(function(request, response){
  const url = request.url.slice( 1 )
  if( request.url === '/'){
    sendFile( response, 'index.html')
  }
  else{
    sendFile(response, url)
  }
  
})

server.listen( process.env.PORT || port ) 

const sendFile = function( response, filename ){
  const mimeType = mime.getType( filename )
  response.writeHeader( 200, { "Content-Type" : mimeType})
  fs.readFile( filename, function( error, content ) {
    if( error === null){
      response.end( content, 'utf-8')
    }else{
      response.writeHeader(404)
      response.end("Error 404 file now found")
    }
    
  })
}
