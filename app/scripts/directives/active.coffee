'use strict';

angular.module('ngC3lWebApp')
  .directive 'activeLink', ($location) =>
    link: (scope, element, attrs) =>

      href_path = element.children()[0].attributes['ng-href'].value
      href_path = href_path.replace(/^#/, '')

      scope.location = $location
      scope.$watch 'location.path()', ->
        if href_path is $location.path()
          setTimeout ->
            element.addClass('active')
        else
          element.removeClass('active')

          setTimeout ->
            scope.$apply ->
              scope.$eval(attrs.remove)
          , 200
