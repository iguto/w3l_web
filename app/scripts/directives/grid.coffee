angular.module('ngC3lWebApp')
  .directive 'grid', ->
    restrict: "A"
    controller: 'gameCtrl'
    scope: '='
    templateUrl: 'views/partials/grid.html'
    link: (scope, element, attrs) ->
      scope.$watch 'player.unit.position', (newPosition, oldPosition) ->
        if newPosition? and oldPosition?
          scope.map.at(oldPosition).unit = null
          scope.map.at(newPosition).unit = scope.player.unit
