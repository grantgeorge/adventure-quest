angular.module "adventureQuest"
  .directive 'acmeNavbar', ->

    NavbarController = (moment, $location, $auth, $rootScope) ->
      vm = this
      # "vm.creation" is avaible by directive option "bindToController: true"
      vm.relativeDate = moment(vm.creationDate).fromNow()
      vm.isActive = (route) ->
        if $location.path() == route
          true
        else
          false

      vm.signOut = ->
        console.log 'signOut func'
        $auth.signOut().then((resp) ->
          # handle success response
          console.log 'sign out success'
          $location.path '/sign_in'
          true
        ).catch (resp) ->
          # handle error response
          console.log 'logout error'
          false
        return

      return vm

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      scope: creationDate: '='
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
