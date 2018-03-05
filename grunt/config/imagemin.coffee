##
# Minify images.
# @see https://www.npmjs.com/package/grunt-contrib-imagemin
#

module.exports = (grunt) ->

    options:
        svgoPlugins: [
            { removeAttrs: { attrs: 'data-name' } }
            { removeTitle: true }
        ]

    dist:
        files: [
            {
                expand: true
                flatten: true
                src: [
                    '<%= path.source %>/png/apple*.png'
                ]
                dest: '<%= path.dist %>'
            }
            {
                expand: true
                cwd: '<%= path.source %>/svg'
                src: [
                    '**/*.svg'
                    '!icons/**/*.svg'
                ]
                dest: '<%= path.dist %>/images'
            }
            {
                expand: true
                flatten: true
                src: [
                    '<%= path.source %>/png/launcher-icon@*.png'
                ]
                dest: '<%= path.dist %>/images/manifest'
            }
            {
                expand: true
                flatten: true
                src: [
                    '<%= path.source %>/png/metro-tile*.png'
                ]
                dest: '<%= path.dist %>/images/browserconfig'
            }
        ]

    icon:
        files: [
            {
                expand: true
                flatten: true
                src: [
                    '<%= path.source %>/svg/icons/*.svg'
                ]
                dest: '<%= path.dist %>/images/icons'
            }
            {
                expand: true
                cwd: '<%= path.source %>/svg/icons'
                src: [
                    '!*.svg'
                    '**/*.svg'
                ]
                dest: '<%= path.temp %>/svg/icons'
            }
        ]
