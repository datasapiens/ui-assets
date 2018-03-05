##
# Custom tasks.
#

module.exports = (grunt) ->

    default: [
        'dist'
    ]

    dist: [
        'clean'
        'copy'
        'images'
        'fonts'
    ]

    fonts: [
        'imagemin:icon'
        'webfont'
    ]

    changelog: [
        'prompt:changelog'
        'conventionalChangelog'
    ]

    images: [
        'imagemin:dist'
        'cwebp'
    ]

    release: [
        'prompt:bump'
        'shell:bump'
        'changelog'
        'shell:commit'
    ]
