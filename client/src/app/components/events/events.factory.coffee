angular.module "adventureQuest"
  .factory "Event", (RailsResource) ->
    class Event extends RailsResource
      @configure url: "/api/v1/events", name: "event"
