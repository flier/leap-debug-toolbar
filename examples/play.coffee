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
        leap:
            exports: 'Leap'
        leap_debug_toolbar:
            deps: ['leap']

loadCss = (url) ->
  link = document.createElement "link"

  link.type = "text/css"
  link.rel = "stylesheet"
  link.href = url

  document.getElementsByTagName("head")[0].appendChild(link)

require ['jquery', 'leap', 'leap_debug_toolbar'], ($, leap) ->
  loadCss('../lib/toastr/toastr.css')

