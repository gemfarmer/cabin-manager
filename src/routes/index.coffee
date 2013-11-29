console.log("fire index.js")

module.exports = {
	index: (req, res) ->
		res.render('index', { title: 'Cabin Manager' })
		return
	charts: (req, res) ->
		res.render('charts.jade', { title: 'Cabin Manager' })
		return
	forms: (req, res) ->
		res.render('forms.jade', { title: 'Cabin Manager' })
		return
}
