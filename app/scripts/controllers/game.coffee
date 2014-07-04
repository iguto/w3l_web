'use strict'

angular.module('ngC3lWebApp')
  .controller 'gameCtrl', ($scope, MapFactory, Unit, KeyboardManager) ->

    $scope.panels = "hoge"
    $scope.map = new MapFactory()

    $scope.units = []
    $scope.player = new Unit
    $scope.units.push $scope.player

    $scope.map.mergeUnits($scope.units)

    $scope.key_manager = new KeyboardManager($scope.player)

    $scope.keyCallback =  ->
      console.log "key event called"
      $scope.keyboard_manager.down()
    console.log angular.element(document)
