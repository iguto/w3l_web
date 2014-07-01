'use strict'

###*
 # @ngdoc function
 # @name ngC3lWebApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the ngC3lWebApp
###
angular.module('ngC3lWebApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
