angular.module('ngC3lWebApp')
  .directive 'grid', ->
    restrict: "A"
    controller: 'gameCtrl'
    scope: '='
    templateUrl: 'views/partials/grid.html'
    link: (scope, element, attrs) ->
      scope.$watch 'player.position', (newPosition, oldPosition) ->
        scope.map.panels[oldPosition.y][oldPosition.x].unit = null
        scope.map.panels[newPosition.y][newPosition.x].unit = scope.player
