#global module:false
module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig

    # Metadata

    pkg: grunt.file.readJSON("package.json")


    # Task configurations

    watch:
      FizzBuzz:
        files: ["FizzBuzz/*.coffee"]
        tasks: ["newer:coffee:FizzBuzz", "mocha:FizzBuzz"]

      StringCalculator:
        files: ["StringCalculator/*.coffee"]
        tasks: ["newer:coffee:StringCalculator", "mocha:StringCalculator"]

    coffee:
      FizzBuzz:
        expand: true
        flatten: false
        cwd: "FizzBuzz/"
        src: ["*.coffee"]
        dest: "FizzBuzz/build/"
        ext: '.js'

      StringCalculator:
        expand: true
        flatten: false
        cwd: "StringCalculator/"
        src: ["*.coffee"]
        dest: "StringCalculator/build/"
        ext: '.js'

    mocha:
      options:
        run: true

      FizzBuzz:
        src: ["FizzBuzz/runner.html"]
        options:
          reporter: "Spec"

      StringCalculator:
        src: ["StringCalculator/runner.html"]
        options:
          reporter: "Spec"


  # Load plugins

  grunt.loadNpmTasks "grunt-newer"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-mocha"


  # Register Tasks

  grunt.registerTask "FizzBuzz", [ "newer:coffee:FizzBuzz", "mocha:FizzBuzz" ]
  grunt.registerTask "StringCalculator", [ "newer:coffee:StringCalculator", "mocha:StringCalculator" ]
