module.exports = (grunt) ->
  grunt.loadNpmTasks('grunt-bower-concat')
  grunt.loadNpmTasks('grunt-browserify')
  grunt.initConfig
    bower_concat:
      all:
        dest: 'public/vendor.js'
        dependencies:
          'chai-jquery': ['jquery','chai']
        bowerOptions:
          relative: false

    browserify:
      app:
        files:
          'public/all.js': [
            'app/**/*.coffee'
          ]
        options:
          transform: ['coffeeify']

      test:
        files:
          'test/assets/test.js': [
            'test/**/*.coffee'
          ]
        options:
          transform: ['coffeeify']

  grunt.registerTask "default", ["bower_concat", "browserify"]
