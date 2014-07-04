'use strict'

###*
 # @ngdoc overview
 # @name ngC3lWebApp
 # @description
 # # ngC3lWebApp
 #
 # Main module of the application.
###
angular
  .module('ngC3lWebApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ui.utils'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/game',
        templateUrl: 'views/game.html'
        controller: 'gameCtrl'
      .otherwise
        redirectTo: '/'
