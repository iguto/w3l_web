'use strict'

angular.module('ngC3lWebApp')
  .factory 'Chips', (MoveUpChip, MoveDownChip, MoveRightChip, MoveLeftChip) ->
    @all = ->
      [
        new MoveUpChip,
        new MoveDownChip,
        new MoveRightChip,
        new MoveLeftChip
      ]

  .factory 'MoveUpChip', ->
    MoveUpChip = ->
      @name = 'MoveUp'
  .factory 'MoveDownChip', ->
    MoveDownChip = ->
      @name = 'MoveDown'
  .factory 'MoveRightChip', ->
    MoveRightChip = ->
      @name = 'MoveRight'
  .factory 'MoveLeftChip', ->
    MoveLeftChip = ->
      @name = 'MoveLeft'
