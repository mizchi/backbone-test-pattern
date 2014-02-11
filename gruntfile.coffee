module.exports = (grunt) ->
  grunt.loadNpmTasks('grunt-bower-concat')
  grunt.loadNpmTasks('grunt-browserify')
  grunt.initConfig
    bower_concat:
      all:
        dest: 'public/vendor.js'
        dependencies:
          # 'chai-jquery': 'jquery'
          'chai-jquery': ['jquery','chai']
        bowerOptions:
          relative: false

    browserify:
      dist:
        files:
          'public/all.js': [
            'app/**/*.js',
            'app/**/*.coffee'
          ]
        options:
          transform: ['coffeeify']

  grunt.registerTask "default", ["bower_concat", "browserify"]
