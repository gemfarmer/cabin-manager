###
 # Serve JSON to our AngularJS client
###

exports.names = (req, res) ->
	res.json(
		{names: [
			{name:'Brian', city:'Minneapolis'}, 
			{name:'Chase', city:'Madison'}, 
			{name:'Collin', city:'Boulder'}, 
			{name: 'Brian', city: 'Boulder'}]
		}
	);

# Initialize Data
data = {
	"todos": [
		{
			"text": "Chop firewood",
			"done": false
		},
		{
			"text": "Refill gas in boat",
			"done": true	
		}
	]
};
# GET
exports.todos = (req, res) ->
	todos = [];
	data.todos.forEach (todo, i) ->
		todos.push({
			id: i
			text: todo.text
			done: todo.done
		})

	res.json({
		todos: todos
	});
exports.todo = (req, res) ->
	id = req.params.id;
	if (id >= 0 && id < data.todos.length)
		res.json({todo: data.todos[id]})
	else
		res.json(false);

# POST
exports.addTodo = (req, res) ->
	console.log("todo to push",req.body)
	data.todos.push(req.body);
	res.json(req.body);
