angular.module "adventureQuest"
  .controller "UserRegistrationsCtrl", ($scope, $auth) ->
    $scope.handleRegBtnClick = ->
      $auth.submitRegistration($scope.registrationForm).then ->
        $auth.submitLogin
          email: $scope.registrationForm.email
          password: $scope.registrationForm.password

    $scope.$on 'auth:registration-email-error', (ev, reason) ->
      $scope.errors = reason.errors
      console.log $scope.errors
