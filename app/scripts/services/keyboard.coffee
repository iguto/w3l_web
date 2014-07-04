angular.module('ngC3lWebApp')
  .factory 'KeyboardManager', ->
    KeyboardManager = (player) ->
      this.up = ($event) ->
        player.moveUp()
        $event.preventDefault()

      this.down = ($event) ->
        player.moveDown()
        $event.preventDefault()

      this.left = ($event) ->
        player.moveLeft()
        $event.preventDefault()

      this.right = ($event) ->
        player.moveRight()
        $event.preventDefault()
      this
