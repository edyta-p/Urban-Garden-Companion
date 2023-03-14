// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import CompassController from "./compass_controller"
application.register("compass", CompassController)

import GardenController from "./garden_controller"
application.register("garden", GardenController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import LocationController from "./location_controller"
application.register("location", LocationController)

import ShareController from "./share_controller"
application.register("share", ShareController)
