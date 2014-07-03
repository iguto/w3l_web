angular.module('ngC3lWebApp')
  .directive 'grid', ->
    restrict: "A"
    controller: 'gameCtrl'
    templateUrl: 'views/partials/grid.html'
