##
# Copy files and folders.
# @see https://www.npmjs.com/package/grunt-contrib-copy
#

module.exports = (grunt) ->

    dist:
        files: [
            {
                expand: true
                flatten: true
                cwd: '<%= path.source %>/woff'
                src: [
                    '**/*.{woff,woff2}'
                ]
                dest: '<%= path.dist %>/fonts'
            }
            {
                expand: true
                cwd: '<%= path.source %>'
                src: [
                    'browserconfig.xml'
                    'favicon.ico'
                    'manifest.json'
                    'robots.txt'
                ]
                dest: '<%= path.dist %>'
            }
        ]
