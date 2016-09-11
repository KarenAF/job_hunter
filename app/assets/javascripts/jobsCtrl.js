/* global angular */

(function () {
  "use strict";

  angular.module("app").controller("jobsCtrl", function($scope, $http, $window) {
    $scope.setup = function() {
      $http.get('/api/v1/jobs.json').then(function(response){
        $scope.jobs = response.data;
        console.log($scope.jobs);
      });
    };
   $scope.message = "Hello world";

   $scope.addJob = function(inputCompany, inputPosition, inputSource, inputStatus) {
    var params = {
      company: inputCompany,
      position: inputPosition,
      source: inputSource,
      status: inputStatus
    };
    $http.post('/api/v1/jobs.json', params).then(function(response) {
        $scope.jobs.push(response.data);
        $scope.errors = [];
        console.log(params);
      }, function(errorResponse){
        $scope.errors = errorResponse.data.errors;
      });
   };

    window.$scope = $scope;
  });
})();