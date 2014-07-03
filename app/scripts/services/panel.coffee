'use strict'

angular.module('ngC3lWebApp')
  # .factory 'Panel', (point) ->
  .factory 'Panel', () ->
    Panel = (point) ->
      this.color = "red"
      this.x = point.x
      this.y = point.y

angular.module('ngC3lWebApp')
  .factory 'PanelsFactory', (Panel) ->
    ->
      this.panels = []
      this.size = 5

      count = 0
      for y in [0..this.size-1]
        row = []
        for x in [0..this.size-1]
          # this.panels.push({count: count})
          row.push(new Panel({x: x, y: y}))
          count += 1
        this.panels.push row
      this.panels
