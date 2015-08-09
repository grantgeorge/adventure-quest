angular.module "adventureQuest"
  .controller "EventsController", ($scope, Event) ->
    Event.query().then (events) -> $scope.events = events
