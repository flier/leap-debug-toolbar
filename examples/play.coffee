require.config
    paths:
        jquery: '../lib/jquery/jquery'
        underscore: '../lib/underscore/underscore'
        underscore_string: '../lib/underscore/underscore.string'
        toastr: '../lib/toastr/toastr'
        leap: '../lib/leapjs/leap'
        leap_debug_toolbar: '../build/leap.debug.toolbar'
        text: '../lib/requirejs/text'
    shim:
        jquery:
            exports: '$'
        underscore:
            exports: '_'
        underscore_string:
            deps: ['underscore']
        toastr:
            deps: ['css!../lib/toastr/toastr']
        leap:
            exports: 'Leap'
        leap_debug_toolbar:
            deps: ['leap']
    map:
      '*':
        'css': '../lib/requirejs/css'

require ['jquery', 'leap', 'leap_debug_toolbar'], ($, leap) ->
  console.log "play now!"

