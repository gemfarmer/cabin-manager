'use strict';

// Declare app level module which depends on filters, and services
angular.module("cabinManager", ['cabinManager.controllers',
	'cabinManager.controllers',
	'cabinManager.filters',
	'cabinManager.services',
	'cabinManager.directives'
])
.config(['$routeProvider','$locationProvider',function($routeProvider,$locationProvider){
	$routeProvider.
		when('/',
			{
				templateUrl: 'partials/index',
				controller: 'NoController'
			}).
		when('/charts',
			{
				templateUrl: 'partials/charts',
				controller: 'NoController'
			}).
		when('/forms',
			{
				templateUrl: 'partials/forms',
				controller: 'NoController'
			}).
		when('/tables',
			{
				templateUrl: 'partials/tables',
				controller: 'NoController'
			}).
		when('/contacts',
			{
				templateUrl: 'partials/contacts',
				controller: 'NoController'
			}).
		when('/calendar',
			{
				templateUrl: 'partials/calendar',
				controller: 'NoController'
			}).
		when('/log',
			{
				templateUrl: 'partials/log',
				controller: 'NoController'
			}).
		when('/howtos',
			{
				templateUrl: 'partials/howtos',
				controller: 'NoController'
			}).
		when('/directions',
			{
				templateUrl: 'partials/directions',
				controller: 'NoController'
			}).
		when('/memories',
			{
				templateUrl: 'partials/memories',
				controller: 'NoController'
			}).
		otherwise(
			{
				redirectTo: '/'
			})
	$locationProvider.html5Mode(true);
}]);