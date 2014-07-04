'use strict'

angular.module('ngC3lWebApp')
  .controller 'gameCtrl', ($scope, MapFactory, Unit) ->

    $scope.panels = "hoge"
    $scope.map = new MapFactory()

    $scope.units = []
    $scope.player = new Unit
    $scope.units.push $scope.player

    $scope.map.mergeUnits($scope.units)
