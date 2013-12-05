function TodoCtrl($scope, $http, $location) {
	$http.get('/api/todos')
		.success(function(data, status, headers, config) {
			$scope.todos = data.todos;
		});
 
	$scope.addTodo = function() {
		// add todo to DOM
		$scope.todos.push({text:$scope.todoText, done:false});
		$scope.todoText = '';

		// Add todo to api server
		// $http.post('/api/todo', $scope.todos).
		// 	success(function(data) {
		// 		$location.path('/');
		// 	};
	};
 
	$scope.remaining = function() {
		var count = 0;
		angular.forEach($scope.todos, function(todo) {
			count += todo.done ? 0 : 1;
		});
		return count;
	};
 
	$scope.archive = function() {
		var oldTodos = $scope.todos;
		$scope.todos = [];
		angular.forEach(oldTodos, function(todo) {
			if (!todo.done) $scope.todos.push(todo);
		});
	};
}

function AddTodoCtrl($scope, $http, $location) {
	$scope.form = {};
	$scope.submitTodo = function () {
		$http.todo('/api/todo', $scope.form).
		success(function(data) {
			$location.path('/');
		});
	};
}
function ReadTodoCtrl($scope, $http, $routeParams) {
  $http.get('/api/todo/' + $routeParams.id).
    success(function(data) {
      $scope.todo = data.todo;
    });
}

// 	$scope.addTodo = function() {
// 		$scope.todos.push({text:$scope.todoText, done:false});
// 		$scope.todoText = '';
// 	};
 
// 	$scope.remaining = function() {
// 		var count = 0;
// 		angular.forEach($scope.todos, function(todo) {
// 			count += todo.done ? 0 : 1;
// 		});
// 		return count;
// 	};
 
// 	$scope.archive = function() {
// 		var oldTodos = $scope.todos;
// 		$scope.todos = [];
// 		angular.forEach(oldTodos, function(todo) {
// 			if (!todo.done) $scope.todos.push(todo);
// 		});
// 	};
// }