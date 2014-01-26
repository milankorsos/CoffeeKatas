#global module:false
module.exports = (grunt) ->

	# Project configuration.
	grunt.initConfig

		# Metadata

		pkg: grunt.file.readJSON("package.json")


		# Task configurations



	# Load plugins

	grunt.loadNpmTasks "grunt-newer"
	grunt.loadNpmTasks "grunt-contrib-watch"
	grunt.loadNpmTasks "grunt-contrib-coffee"
	grunt.loadNpmTasks "grunt-mocha"

