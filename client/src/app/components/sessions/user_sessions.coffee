angular.module "adventureQuest"
  .controller "UserSessionsCtrl", ($scope) ->
    $scope.$on 'auth:login-error', (ev, reason) ->
      $scope.error = reason.errors[0]
