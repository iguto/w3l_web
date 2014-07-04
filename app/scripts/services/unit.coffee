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
        unit.position = {x: x, y: y}

      this.moveLeft = ->
        unit.move({x: -1, y: 0})
      this.moveUp = ->
        unit.move({x: 0, y: -1})
      this.moveDown = ->
        unit.move({x: 0, y: 1})
      this.moveRight = ->
        unit.move({x: 1, y: 0})

      this
