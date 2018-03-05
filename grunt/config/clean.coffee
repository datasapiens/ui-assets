##
# Clean files and folders.
# @see https://www.npmjs.com/package/grunt-contrib-clean
#

module.exports = (grunt) ->

    options:
        dot: true
        force: true

    dist: [
        '<%= path.dist %>'
    ]

    preprocess: [
        '<%= path.temp %>'
    ]
