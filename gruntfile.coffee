module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-bower-concat'
  grunt.loadNpmTasks 'grunt-mocha-phantomjs'
  grunt.loadNpmTasks 'grunt-browserify'
  grunt.loadNpmTasks 'grunt-este-watch'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.initConfig
    bower_concat:
      all:
        dest: 'public/vendor.js'
        dependencies:
          'chai-jquery': ['jquery','chai']
          'backbone': ['jquery','lodash']
        bowerOptions:
          relative: false

    browserify:
      app:
        files:
          'public/all.js': [
            'app/initialize.coffee'
          ]
        options:
          transform: ['coffeeify', 'hbsfy']

      test:
        files:
          'test/assets/test.js': [
            'test/initialize.coffee'
          ]

        options:
          transform: ['coffeeify', 'hbsfy']

    mocha_phantomjs:
      options:
        reporter: 'spec'
      all: ['test/assets/test.html']

    esteWatch:
      options:
        dirs: ['app/**/', 'test/**/']
      coffee: (filepath) ->
        console.log filepath
        ['build', 'test']

    connect:
      app:
        options:
          port: 8888
          base: 'public'

  grunt.registerTask "build", ["bower_concat", "browserify"]
  grunt.registerTask "default", ["build"]
  grunt.registerTask "test", ["build", "mocha_phantomjs"]
  grunt.registerTask "server", ["connect", "esteWatch"]
