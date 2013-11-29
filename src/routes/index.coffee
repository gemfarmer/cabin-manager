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
	calendar: (req, res) ->
		res.render('calendar.jade', { title: 'Cabin Manager', subtitle: 'Calendar' })
		return
	contacts: (req, res) ->
		res.render('contacts.jade', { title: 'Cabin Manager', subtitle: 'Contacts' })
		return
	tables: (req, res) ->
		res.render('tables.jade', { title: 'Cabin Manager', subtitle: 'Tables' })
		return
}
