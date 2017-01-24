const http = require('http')
const port = 8080

const requestHandler = (req, res) => {
	console.log(req.url)
	res.end('readys')
}

const server = http.createServer(requestHandler)

server.listen(port, err => {
	if(err)
	{
		console.log('someting wrong', err)
	}

	console.log('server run on ', port)
})