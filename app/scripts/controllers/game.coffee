'use strict'

angular.module('ngC3lWebApp')
  .controller 'gameCtrl', ($scope, PanelsFactory) ->

    $scope.panels = "hoge"
    $scope.panels = new PanelsFactory()

    # $scope.panels = PanelsSrv.buildEmptyPanels()
