const requestHandler = (req, res) => {
	console.log(req.headers.host+req.url)
	res.end('first app is readys')
}

module.exports = requestHandler
