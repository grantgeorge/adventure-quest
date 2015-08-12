angular.module "adventureQuest"
  .run ($rootScope, $location, $log) ->
    $log.debug 'runBlock end'
    $rootScope.$on 'auth:login-success', ->
      console.log 'login successful'
      $location.path '/'

    $rootScope.$on 'auth:session-expired', ->
      console.log 'session expired'

    $rootScope.$on 'auth:logout-success', ->
      console.log 'logout successful'
      $location.path '/'

    $rootScope.$on 'auth:validation-success', ->
      console.log 'auth:validation-success message'
