var nats = require('websocket-nats');

var servers = ['ws://localhost:4223'];

// Randomly connect to a server in the cluster group.
var nats = nats.connect({'servers': servers});

// Simple Publisher
nats.publish('foo', 'Hello World!');

// Simple Subscriber
nats.subscribe('foo', function(msg) {
  console.log('Received a message: ' + msg);
});

// currentServer is the URL of the connected server.
console.log("Connected to " + nats.currentServer.host);
