 express = require('express')
const app = express()

app.get('/', function (req, res) {
	console.log('Method 1: ' + req.connection.remoteAddress) 	 // get IP by net.Socket object
	console.log('Method 2: ' + req.headers['x-forwarded-for']) // more common use even if the server is behind a proxy
  res.send('Docker is awesome')
})

app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})