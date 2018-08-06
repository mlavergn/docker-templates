var http = require('http');
var fs = require('fs');
var path = require('path');

http.createServer(function (request, response) {
	if (request.url.startsWith('/index')) {
		response.writeHead(200, {
			'Content-Type': 'text/html'
		});
		var htmlPath = path.join(__dirname, 'index.html');
		fs.createReadStream(htmlPath).pipe(response);
	} else {
		response.writeHead(200, {
			'Content-Type': 'text/plain'
		});
		response.write('Hello world');
		response.end();
	}
}).listen(8080);