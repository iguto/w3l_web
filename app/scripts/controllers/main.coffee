'use strict'

###*
 # @ngdoc function
 # @name ngC3lWebApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the ngC3lWebApp
###
angular.module('ngC3lWebApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
