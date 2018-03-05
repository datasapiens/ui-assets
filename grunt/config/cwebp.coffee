##
# Convert images to WebP.
# @see https://www.npmjs.com/package/grunt-cwebp
#

module.exports = (grunt) ->

    options:
        preset: 'photo'

    dist:
        options:
            preset: 'icon'

        files: [
            {
                expand: true
                flatten: true
                src: [
                    '<%= path.source %>/png/launcher-icon@*.png'
                ]
                dest: '<%= path.dist %>/images/manifest'
            }
        ]
