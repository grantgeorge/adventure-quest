angular.module "adventureQuest"
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/"
        templateUrl: "app/main/main.html"
        controller: "MainController"
        controllerAs: "main"

      .state "events",
        url: "/events"
        templateUrl: "app/components/events/events.html",
        controller: "EventsController"

    $urlRouterProvider.otherwise '/'
