require.config({
    paths: {
        jquery: '../lib/jquery/jquery',
        underscore: '../lib/underscore/underscore',
        underscore_string: '../lib/underscore/underscore.string',
        leap: '../lib/leapjs/leap',
        text: '../lib/requirejs/text'
    },
    shim: {
        jquery: {
            exports: '$'
        },
        underscore_string: {
            deps: ['underscore']
        }
    }
});

require(['jquery', 'leap'], function ($, leap) {
    console.log('play now!');
});
