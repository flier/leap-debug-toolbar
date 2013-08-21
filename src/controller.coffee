# controller.coffee
define [
  'underscore',
  'leap'
], (_, leap) ->
  controller = new leap.Controller()

  # The client is connected to the websocket server
  controller.on 'connect', () ->
    console.log 'controller connected!'

  # The protocal has been selected for the connection.
  controller.on 'protocol', (protocol) ->
    console.log 'connection selected prototol v' + protocol.version

  # The protocol has been selected
  controller.on 'ready', () ->
    console.log 'protocol selected'

  # A Leap device has been connected
  controller.on 'deviceConnected', () ->
    console.log 'leap device ready'

  # A Leap device has been disconnected
  controller.on 'deviceDisconnected', () ->
    console.log 'leap device offline'

  controller.connect()