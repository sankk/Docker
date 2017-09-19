var ip   = "0.0.0.0",
    port = 3000,
    http = require('http');

function onRequest(request, response) {
  console.log("Request received.");
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.write("Hello World");
  response.end();
}
http.createServer(onRequest).listen(port, ip);
console.log("Server has started.");
