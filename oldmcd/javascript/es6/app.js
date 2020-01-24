// App modules
var Farm = require('./modules/Farm.js');

const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
  let myAnimals = ['Cow', 'Pig', 'Horse'];
  myFarm = new Farm(myAnimals);

  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end(myFarm.sing());
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});



