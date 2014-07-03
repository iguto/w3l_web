'use strict'

angular.module('ngC3lWebApp')
  .factory 'Unit', ->
    Unit = ->
      this.name = "unitA"
      this.position = {x: 0, y: 0}
      unit = this

      this.move = (dir) ->
        x = unit.position.x + dir.x
        y = unit.position.y + dir.y
        unit.position({x: x, y: y})
      this
