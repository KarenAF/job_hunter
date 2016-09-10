/* global angular */

(function () {
  "use strict";

  angular.module("app").controller("jobsCtrl", function($scope, $http) {
    $http.get('/api/v1/jobs.json').then(function(response){
      $scope.jobs = response.data;

      console.log(response.data);
    });
   $scope.message = "Hello world";

  window.$scope = $scope;
  });
})();