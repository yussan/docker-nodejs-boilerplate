const http = require('http')
const port = 8081

const requestHandler = (req, res) => {
	console.log(req.headers.host+req.url)
	res.end('first app is ready')
}

const server = http.createServer(requestHandler)

server.listen(port, err => {
	if(err)
	{
		console.log('someting wrong', err)
	}

	console.log('first app run on', port)
})
