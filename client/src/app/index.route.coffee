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
        templateUrl: "app/components/events/events.html"
        controller: "EventsController"

      .state "login",
        url: "/sign_in"
        templateUrl: "app/components/sessions/sessions.new.html"
        controller: "UserSessionsCtrl"

      .state "register",
        url: "/sign_up"
        templateUrl: "app/components/registrations/registrations.new.html"
        controller: "UserRegistrationsCtrl"
        resolve: auth: [
          '$auth'
          ($auth) ->
            $auth.validateUser()
        ]

    $urlRouterProvider.otherwise '/'
