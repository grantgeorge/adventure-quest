angular.module "adventureQuest"
  .directive 'acmeNavbar', ->

    NavbarController = (moment, $location) ->
      vm = this
      # "vm.creation" is avaible by directive option "bindToController: true"
      vm.relativeDate = moment(vm.creationDate).fromNow()
      vm.isActive = (route) ->
        if $location.path() == route
          true
        else
          false
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      scope: creationDate: '='
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
