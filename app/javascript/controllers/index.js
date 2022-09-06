// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"
// import Carousel from 'stimulus-carousel'
// application.register('carousel', Carousel)

import ChatroomSubscriptionController from "./chatroom_subscription_controller"
application.register("chatroom-subscription", ChatroomSubscriptionController)

import EditController from "./edit_controller"
application.register("edit", EditController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MapController from "./map_controller"
application.register("map", MapController)

import SearchEventsController from "./search_events_controller"
application.register("search-events", SearchEventsController)

