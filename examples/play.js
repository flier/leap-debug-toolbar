require.config({
    paths: {
        jquery: '../lib/jquery/jquery',
        underscore: '../lib/underscore/underscore',
        underscore_string: '../lib/underscore/underscore.string',
        leap: '../lib/leapjs/leap',
        leap_debug_toolbar: '../build/leap.debug.toolbar',
        text: '../lib/requirejs/text'
    },
    shim: {
        jquery: {
            exports: '$'
        },
        underscore: {
            exports: '_'
        },
        underscore_string: {
            deps: ['underscore']
        },
        leap: {
            exports: 'Leap'
        },
        leap_debug_toolbar: {
            deps: ['leap']
        }
    }
});

require(['jquery', 'leap', 'leap_debug_toolbar'], function ($, leap) {
    console.log('play now!');
});
