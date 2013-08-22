# controller.coffee
define [
  'underscore',
  'leap',
  'toastr'
], (_, leap, toastr) ->
  controller = new leap.Controller()

  if toastr
    toastr.options =
      positionClass: "toast-bottom-right"
      onclick: null

  # The client is connected to the websocket server
  controller.on 'connect', () ->
    if toastr
      toastr.success 'Leap Motion', 'controller connected!'
    else
      console.log 'controller connected!'

  # The protocal has been selected for the connection.
  controller.on 'protocol', (protocol) ->
    console.log 'connection selected prototol v' + protocol.version

  # The protocol has been selected
  controller.on 'ready', () ->
    console.log 'protocol selected'

  # A Leap device has been connected
  controller.on 'deviceConnected', () ->
    if toastr
      toastr.success 'Leap Motion', 'leap device ready'
    else
      console.log 'leap device ready'

  # A Leap device has been disconnected
  controller.on 'deviceDisconnected', () ->
    if toastr
      toastr.warning 'Leap Motion', 'leap device offline'
    else
      console.log 'leap device offline'

  controller.connect()