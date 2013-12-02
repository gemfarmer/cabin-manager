console.log("fire index.js")

module.exports = {
	index: (req, res) ->
		res.render('index', { title: 'Cabin Manager'})
		return
	charts: (req, res) ->
		res.render('charts.jade', { title: 'Cabin Manager', subtitle: 'Charts' })
		return
	forms: (req, res) ->
		res.render('forms.jade', { title: 'Cabin Manager', subtitle: 'Forms' })
		return
	tables: (req, res) ->
		res.render('tables.jade', { title: 'Cabin Manager', subtitle: 'Tables' })
		return 
	contacts: (req, res) ->
		res.render('contacts.jade', { title: 'Cabin Manager', subtitle: 'Contacts' })
		return
	calendar: (req, res) ->
		res.render('calendar.jade', { title: 'Cabin Manager', subtitle: 'Calendar' })
		return
	log: (req, res) ->
		res.render('log.jade', { title: 'Cabin Manager', subtitle: 'Log' })
		return
	howtos: (req, res) ->
		res.render('howtos.jade', { title: 'Cabin Manager', subtitle: 'How Tos' })
		return
	directions: (req, res) ->
		res.render('directions.jade', { title: 'Cabin Manager', subtitle: 'Directions' })
		return
	memories: (req, res) ->
		res.render('memories.jade', { title: 'Cabin Manager', subtitle: 'Memories' })
		return
	finance: (req, res) ->
		res.render('finance.jade', { title: 'Cabin Manager', subtitle: 'Finance' })
		return
}
