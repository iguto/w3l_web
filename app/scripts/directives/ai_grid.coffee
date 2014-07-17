angular.module('ngC3lWebApp')
  .directive 'aiGrid', ($document) ->
    restrict: "A"
    controller: 'AICtrl'
    scope: '='
    templateUrl: 'views/partials/ai_grid.html'
    link: (scope, element, attrs) ->
      angular.element($document).on 'click', (e) ->
        target = angular.element(e.target)
        scope.is_chip_menu_visible = false
        target_position = angular.element(e.target).inheritedData('position')
        scope.is_chip_menu_visible = true if target[0].className.indexOf('arrow_box') >= 0
        scope.is_chip_menu_visible = true if target_position?
        scope.$apply()
