'use strict'

angular.module('ngC3lWebApp')
  .controller 'gameCtrl', ($scope, MapFactory, Unit) ->

    $scope.panels = "hoge"
    $scope.map = new MapFactory()
    $scope.units = [new Unit()]

    $scope.map.mergeUnits($scope.units)
