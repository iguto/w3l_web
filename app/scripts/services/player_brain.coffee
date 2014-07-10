angular.module 'ngC3lWebApp'
  .factory 'PlayerBrain', (Unit) ->
    PlayerBrain = (position) ->
      @unit = new Unit(position)
      @unit_map = null

      @setUnitMap = (unit_map) ->
        @unit_map = unit_map

      @is_movable = (dir) ->
        x = @unit.position.x + dir.x
        y = @unit.position.y + dir.y
        next_panel = @unit_map.at({x: x, y: y})
        return false unless next_panel?
        return true unless next_panel.unit?

      @moveLeft = ->
        dir = {x: -1, y: 0}
        if @is_movable(dir)
          @unit.moveLeft()
      @moveUp = ->
        dir = {x: 0, y: -1}
        if @is_movable(dir)
          @unit.moveUp()
      @moveDown = ->
        dir = {x: 0, y: 1}
        if @is_movable(dir)
          @unit.moveDown()
      @moveRight = ->
        dir = {x: 1, y: 0}
        if @is_movable(dir)
          @unit.moveRight()
      this
