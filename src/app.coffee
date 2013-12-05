
###
 # Module dependencies.
###
console.log("fire app.js")
express = require('express');
routes = require('./routes');
http = require('http');
api = require('./routes/api')
path = require('path');
mongoose = require('mongoose')

app = express();

# all environments
app.set('port', process.env.PORT or 3002);
app.set('views', __dirname + '/../views');
app.set('view engine', 'jade');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.bodyParser());
app.use(express.methodOverride());
app.use(app.router);
app.use(express.static(path.join(__dirname, '/../public')));

# development only
if ('development' == app.get('env'))
	app.use(express.errorHandler());


# Connect Mongo DB
# mongoURI = process.env.MONGOHQ_URL or 'mongodb://localhost/cabinmanager'
# mongoose.connect(mongoURI)

# Set up Schema
# TestModel = mongoose.model('TestModel', {
# 	name: String
# 	})

app.get('/', routes.layout)
# app.get('/charts', routes.charts)
# app.get('/forms', routes.forms)
# app.get('/tables', routes.tables)
# app.get('/contacts', routes.contacts)
# app.get('/calendar', routes.calendar)
# app.get('/log', routes.log)
# app.get('/howtos', routes.howtos)
# app.get('/directions', routes.directions)
# app.get('/memories', routes.memories)
# app.get('/finance', routes.finance)

# app.post '/submitdata', (req,res) ->
# 	submitedInfo = req.body
# 	console.log("submitedInfo", submitedInfo)
# 	testModel = new TestModel(submitedInfo)
# 	testModel.save (err,data) ->
# 		console.log("sent to database:",data)
# 		return
# 	return
app.get('/partials/:name', routes.partials);

# JSON API
app.get('/api/todos', api.todos);
app.get('/api/todo/:id', api.todo);
app.post('/api/todo', api.addTodo);

http.createServer(app).listen(app.get('port'), () ->
	console.log('Express server listening on port ' + app.get('port'));
	return
);
