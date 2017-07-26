
// import http module
var http = require('http'),

// Create a server
server = http.createServer(function(req,res){
	res.writeHead(200,{
		'Content-Type':'text/plain'
	});
	res.write('Hello world!');
	res.end();
});

// Listen to port 1234
server.listen(1234);
console.log('server started');