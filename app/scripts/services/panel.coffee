'use strict'

angular.module('ngC3lWebApp')
  .factory 'Panel', () ->
    this.colors = ["red", "blue", "white"]
    factory = this
    Panel = (point, role=null) ->
      panel = this
      @color = "red"
      @position = point
      @role = role
      @unit = null

      rand_index = Math.floor(Math.random() * 3)
      @color = factory.colors[rand_index]

      return this

angular.module('ngC3lWebApp')
  .factory 'MapFactory', (Panel) ->
    ->
      @panels = []
      @size = 6
      # null埋めした2次元配列を生成する
      @buildEmptyPanels = (size) ->
        panels = []
        for y in [0..size-1]
          panels[y] = []
          for x in [0..size-1]
            panels[y][x] = null
        panels
      # Panelを格納した、size*sizeの2次元配列を生成する
      @buildPanels = ->
        for y in [0..@size-1]
          @panels[y] = []
          for x in [0..@size-1]
            @panels[y][x] = new Panel({x: x, y: y})
      # スタートパネルを設置する
      @setStart = ->
        rand_index = Math.floor(Math.random() * @size)
        @panels[0][rand_index] = new Panel({x: rand_index, y: 0}, "start")
      # ゴールパネルを設置する
      @setGoal = ->
        rand_index = Math.floor(Math.random() * @size)
        @panels[@size-1][rand_index] = new Panel({x: rand_index, y: @size-1}, "goal")
      # Map上にUnitを配置する
      @mergeUnits = (units) ->
        for unit in units
          position = unit.position
          @panels[position.y][position.x].unit = unit
      # 指定したpositionのPanelを返す
      @at = (position) =>
        for y in [0..@size-1]
          for x in [0..@size-1]
            if JSON.stringify(@panels[y][x].position) is JSON.stringify(position)
              return @panels[y][x]
      # Unit用のミニマップを生成
      @genUnitMap = (position) ->
        size = 1
        unit_map = @buildEmptyPanels(size*2 + 1)
        min_sub = -1 * size
        max_sub = size
        for sub_y in [min_sub..max_sub]
          for sub_x in [min_sub..max_sub]
            x = position.x + sub_x
            y = position.y + sub_y
            unit_map[y][x] = @at({x: x, y: y})
        unit_map
      #初期化関数
      @init = ->
        @buildPanels()
        @setStart()
        @setGoal()
        return this
      # 即時実行
      map = this
      do ->
        map.init()
