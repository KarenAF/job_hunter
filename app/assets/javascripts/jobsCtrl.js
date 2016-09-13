/* global angular */

(function () {
  "use strict";

  angular.module("app").controller("jobsCtrl", function($scope, $http, $window) {
    $scope.setup = function() {
      $http.get('/api/v1/jobs.json').then(function(response){
        $scope.jobs = response.data;
        $scope.notYetAppliedJobs = [];
        $scope.applyingJobs = [];
        $scope.appliedJobs = [];
        $scope.interviewSetupJobs = [];
        $scope.interviewedJobs = [];
        $scope.offeredJobs = [];

        for(var i = 0; i < $scope.jobs.length; i++){
          if ($scope.jobs[i].status == "not_yet_applied"){
            $scope.notYetAppliedJobs.push($scope.jobs[i]);
          }
          else if ($scope.jobs[i].status == "applying_to"){
            $scope.applyingJobs.push($scope.jobs[i]);
          }
          else if ($scope.jobs[i].status == "applied_to"){
            $scope.appliedJobs.push($scope.jobs[i]);
          }
          else if ($scope.jobs[i].status == "interview_set_up"){
            $scope.interviewSetupJobs.push($scope.jobs[i]);
          }
          else if ($scope.jobs[i].status == "interviewed_with"){
            $scope.interviewedJobs.push($scope.jobs[i]);
          }
          else if ($scope.jobs[i].status == "job_offered"){
            $scope.offeredJobs.push($scope.jobs[i]);
          }                                                  
        };
      });
    };

    $scope.updateStatus = function(inputJob, inputStatus){
      $scope.job = inputJob;
      var params = {
        status: inputStatus
      };
      $http.post('/api/v1/jobs.json', params).then(function(response){
        console.log(params);
      });
      $scope.setup();
    };

    $scope.addJob = function(inputCompany, inputPosition, inputSource, inputStatus) {
      var params = {
        company: inputCompany,
        position: inputPosition,
        source: inputSource,
        status: inputStatus
      };

      $http.post('/api/v1/jobs.json', params).then(function(response) {
        $scope.jobs.push(response.data);
        console.log(params);
      });
      $scope.setup();
    };

    window.$scope = $scope;
   
    $scope.message = "Hello world";
  });
})();