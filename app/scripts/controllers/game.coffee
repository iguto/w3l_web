'use strict'

angular.module('ngC3lWebApp')
  .controller 'gameCtrl', ($scope, MapFactory, Unit, KeyboardManager, PlayerBrain, Turn) ->
    $scope.map = new MapFactory()

    $scope.units = []
    $scope.player = new PlayerBrain()
    $scope.units.push $scope.player.unit

    $scope.map.mergeUnits($scope.units)

    $scope.key_manager = new KeyboardManager($scope.player)

    $scope.allKey = ->
      new Turn($scope.map, $scope.player)
    $scope.upKey = ($event)->
      $scope.allKey()
      $scope.key_manager.up($event)
    $scope.downKey = ($event)->
      $scope.allKey()
      $scope.key_manager.down($event)
    $scope.leftKey = ($event)->
      $scope.allKey()
      $scope.key_manager.left($event)
    $scope.rightKey = ($event)->
      $scope.allKey()
      $scope.key_manager.right($event)

  .factory 'Turn', (KeyboardManager) ->
    Turn = (map,player) ->
      unit_map = map.genUnitMap(player.unit.position)
      player.setUnitMap(unit_map)
      this
