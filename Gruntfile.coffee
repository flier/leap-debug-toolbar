module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    clean:
      build:
        src: ['build/*'],
      release:
        src: ['build/*', 'dist/*']

    coffee:
      compile:
        options:
          join: true
          sourceMap: true
        files:
          'build/leap.debug.toolbar.js': ['src/*.coffee']

    jshint:
      options:
        curly: true
        eqeqeq: true
        eqnull: true
        browser: true
        globals:
          jQuery: true
      files: ['build/*.js']

    uglify:
      options:
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
      build:
        src: 'build/<%= pkg.name %>.js'
        dest: 'build/<%= pkg.name %>.min.js'

  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jshint'
  grunt.loadNpmTasks 'grunt-contrib-uglify'

  grunt.registerTask 'default', ['clean:build', 'coffee:compile', 'jshint']
  grunt.registerTask 'release', ['clean:release', 'coffee:compile', 'jshint', 'uglify']
