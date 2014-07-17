'use strict'

angular.module('ngC3lWebApp')
  .controller 'AICtrl', ($scope, AIChips) ->
    $scope.ai_chips = new AIChips(3)
    $scope.count = 0
    $scope.is_chip_menu_visible = false

  .factory 'AIChips', ->
    class AIChips
      constructor: (@size) ->
        @chips = []
        console.log "created chips"
        for y in [0..@size-1]
          @chips[y] = []
          for x in [0..@size-1]
            @chips[y][x] = { x: x, y: y }
