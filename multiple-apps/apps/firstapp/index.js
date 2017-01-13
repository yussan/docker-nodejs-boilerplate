const http = require('http')
const port = 8081

const server = http.createServer(require('./app'))

server.listen(port, err => {
	if(err) console.log('someting wrong', err)

	console.log('first app run on', port)
})
