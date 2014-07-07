'use strict'

###*
 # @ngdoc overview
 # @name opencubesDashboardApp
 # @description
 # # opencubesDashboardApp
 #
 # Main module of the application.
###
window.config = {
  host: "localhost:1234"
}
angular
  .module('opencubesDashboardApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/:slug/edit/body',
        templateUrl: 'views/editdescription.html'
        controller: 'EditdescriptionCtrl'
      .when '/:slug',
        templateUrl: 'views/mod.html'
        controller: 'ModCtrl'
      .when '/add',
        templateUrl: 'views/addmod.html'
        controller: 'AddmodCtrl'
      .when '/:slug/edit/meta',
        templateUrl: 'views/editmeta.html'
        controller: 'EditmetaCtrl'
      .when '/:slug/edit/versions',
        templateUrl: 'views/editversion.html'
        controller: 'EditversionCtrl'
      .when '/:slug/stats',
        templateUrl: 'views/stats.html'
        controller: 'StatsCtrl'
      #.otherwise
      #  redirectTo: '/'

window.menu = true
$ ->
