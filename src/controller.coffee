# controller.coffee
define [
  'underscore',
  'leap'
], (_, leap) ->
  controller = new leap.Controller()

  controller.on 'connect', () ->
    console.log 'controller connected!'

  controller.on 'deviceConnected', () ->
    console.log 'leap device ready'

  controller.on 'deviceDisconnected', () ->
    console.log 'leap device offline'

  controller.connect()