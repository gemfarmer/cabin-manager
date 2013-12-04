'use strict';

/* Directives */

angular.module('cabinManager.directives', []).
  directive('appVersion', function (version) {
    return function(scope, elm, attrs) {
      elm.text(version);
    };
  });
