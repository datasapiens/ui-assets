##
# Gruntfile.
# @author David Sklar <david.sklar@datasapiens.co.uk>
#

path = require 'path'


module.exports = (grunt) ->

    # =================================
    # Options

    options =
        # Load package data.
        pkg: grunt.file.readJSON 'package.json'

        # Set banner.
        banner: [
            '/*!'
            ' * <%= pkg.title %> v<%= pkg.version %>'
            ' * Copyright (c) <%= grunt.template.today("yyyy") %>, <%= pkg.company.name %> <<%= pkg.company.url %>>'
            ' */'
            '\n'
        ].join('\n')

        # Set paths.
        path:
            dist:   'dist'
            source: 'src'
            temp:   '.tmp'
            vendor: 'node_modules'


    # =================================
    # Plugins configuration
    # @see ./grunt/config/*.coffee


    # =================================
    # Custom tasks
    # @see ./grunt/config/aliases.coffee


    # =================================

    # Log execution time.
    # @see https://npmjs.org/package/time-grunt
    require('time-grunt') grunt

    # Load plugins.
    # @see https://npmjs.org/package/jit-grunt
    require('jit-grunt') grunt,
        'bump-commit': 'grunt-bump'
        'bump-only':   'grunt-bump'

    # Load plugins configuration.
    # @see https://www.npmjs.org/package/load-grunt-config
    require('load-grunt-config') grunt,
        configPath: path.join process.cwd(), 'grunt/config'
        data: options
        loadGruntTasks: false



    # Prevent Coffeescript return.
    return
