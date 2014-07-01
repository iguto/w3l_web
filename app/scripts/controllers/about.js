'use strict';

/**
 * @ngdoc function
 * @name slimApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the slimApp
 */
angular.module('slimApp')
  .controller('AboutCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
