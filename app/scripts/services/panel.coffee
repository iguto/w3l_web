'use strict'

angular.module('ngC3lWebApp')
  .factory 'Panel', () ->
    this.colors = ["red", "blue", "white"]
    factory = this
    Panel = (point, role=null) ->
      panel = this
      this.color = "red"
      this.x = point.x
      this.y = point.y
      this.role = role
      this.unit = null

      rand_index = Math.floor(Math.random() * 3)
      this.color = factory.colors[rand_index]

      return this

angular.module('ngC3lWebApp')
  .factory 'MapFactory', (Panel) ->
    ->
      this.panels = []
      this.size = 6
      map = this

      buildEmptyPanels = ->
        for y in [0..map.size-1]
          row = []
          for x in [0..map.size-1]
            row.push(new Panel({x: x, y: y}))
          map.panels.push row
        map.panels

      setStart = ->
        rand_index = Math.floor(Math.random() * map.size)
        map.panels[0][rand_index] = new Panel({x: rand_index, y: 0}, "start")
      setGoal = ->
        rand_index = Math.floor(Math.random() * map.size)
        map.panels[map.size-1][rand_index] = new Panel({x: rand_index, y: map.size-1}, "goal")

      buildEmptyPanels()
      setStart()
      setGoal()

      this.mergeUnits = (units) ->
        for unit in units
          position = unit.position
          map.panels[position.y][position.x].unit = unit
      map
