/* global angular */

(function () {
  "use strict";

  angular.module("app").controller("networkingsCtrl", function($scope, $http, $window) {
    $scope.setup = function() {
      $http.get('/api/v1/networkings.json').then(function(response){
        $scope.networkings = response.data;     
        });
    };

    // $scope.addJob = function(inputCompany, inputPosition, inputSource, inputStatus) {
    //   var params = {
    //     company: inputCompany,
    //     position: inputPosition,
    //     source: inputSource,
    //     status: inputStatus
    //   };

    //   $http.post('/api/v1/jobs.json', params).then(function(response) {
    //     $scope.jobs.push(response.data);
    //     console.log(params);
    //   });
    //   $scope.setup();
    // };

    window.$scope = $scope;
   
    $scope.message = "Hello world";
  });
})();