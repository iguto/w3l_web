'use strict';

/**
 * @ngdoc overview
 * @name ngC3lWebApp
 * @description
 * # ngC3lWebApp
 *
 * Main module of the application.
 */
angular
  .module('ngC3lWebApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
