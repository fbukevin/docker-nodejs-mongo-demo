const MongoClient = require('mongodb').MongoClient


// Connection URL
const url = `mongodb://${process.env.DB_PORT_27017_TCP_ADDR}:${process.env.DB_PORT_27017_TCP_PORT}/app`

MongoClient.connect(url, (err, db)=>{
	if(err) console.log(err.message())
	else console.log('Connected successfully to server')
})
