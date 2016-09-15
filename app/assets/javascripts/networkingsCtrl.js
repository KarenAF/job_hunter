/* global angular */

(function () {
  "use strict";

  angular.module("app").controller("networkingsCtrl", function($scope, $http, $window) {
    $scope.setup = function() {
      $http.get('/api/v1/networkings.json').then(function(response) {
        $scope.networkings = response.data;
      });
    };

    window.$scope = $scope;
  });

})();