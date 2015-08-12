angular.module "adventureQuest"
  .run ($rootScope, $location, $log) ->
    $log.debug 'runBlock end'
    $rootScope.$on 'auth:login-success', ->
      $location.path '/'
