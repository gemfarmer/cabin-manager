// Generated by CoffeeScript 1.6.3
/*
 # Serve JSON to our AngularJS client
*/


(function() {
  var data;

  exports.names = function(req, res) {
    return res.json({
      names: [
        {
          name: 'Brian',
          city: 'Minneapolis'
        }, {
          name: 'Chase',
          city: 'Madison'
        }, {
          name: 'Collin',
          city: 'Boulder'
        }, {
          name: 'Brian',
          city: 'Boulder'
        }
      ]
    });
  };

  data = {
    "todos": [
      {
        "text": "Chop firewood",
        "done": false
      }, {
        "text": "Refill gas in boat",
        "done": true
      }
    ]
  };

  exports.todos = function(req, res) {
    var todos;
    todos = [];
    data.todos.forEach(function(todo, i) {
      return todos.push({
        id: i,
        text: todo.text,
        done: todo.done
      });
    });
    return res.json({
      todos: todos
    });
  };

  exports.todo = function(req, res) {
    var id;
    id = req.params.id;
    if (id >= 0 && id < data.todos.length) {
      return res.json({
        todo: data.todos[id]
      });
    } else {
      return res.json(false);
    }
  };

  exports.addTodo = function(req, res) {
    console.log("todo to push", req.body);
    data.todos.push(req.body);
    return res.json(req.body);
  };

}).call(this);
