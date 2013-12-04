'use strict';

/* Controllers */

angular.module('cabinManager.controllers', [])
	.controller('SimpleController', function ($scope, $http) {
		$http({
			method: 'GET',
			url: '/api/names'
		})
		.success(function (data, status, headers, config) {
			$scope.names = data.names;
		})
		.error(function (data, status, headers, config) {
			$scope.names = 'Error!'
		});
		$scope.addPerson = function () {
			$scope.names.push(
				{
					name: $scope.newPerson.name,
					city: $scope.newPerson.city
				}
			)
		}
	})
	.controller('NoController', function ($scope) {
	// write Ctrl here
	})
	
