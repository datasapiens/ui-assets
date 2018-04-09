##
# Generate custom icon webfonts from SVG files.
# @see https://www.npmjs.com/package/grunt-webfont
#

module.exports = (grunt) ->

    options:
        # codepoints:
        destHtml: '<%= path.temp %>'
        # font: 'icon'
        # fontHeight: 48
        hashes: false
        # ligatures: true
        # optimize: false
        stylesheet: 'scss'
        template: 'grunt/webfont/templates/settings.scss'
        templateOptions:
            "baseClass": ""
            "classPrefix": "ico"
            "mixinPrefix": ""
        types: [
            'woff'
            'woff2'
        ]

    appicons:
        options:
            customOutputs: [
                {
                    template: 'grunt/webfont/templates/data.json'
                    dest: '<%= path.dist %>/data/appicons.json'
                }
            ]
            font: 'appicons'
            fontFoo: 'aaa'
            fontFamilyName: 'Sapiens Appicons'
            fontFilename: 'sapiens-appicons'
        src: '<%= path.temp %>/svg/icons/appicons/*.svg'
        dest: '<%= path.dist %>/fonts'
        destCss: '<%= path.dist %>/stylesheets/settings'

    webicons:
        options:
            customOutputs: [
                {
                    template: 'grunt/webfont/templates/data.json'
                    dest: '<%= path.dist %>/data/webicons.json'
                }
            ]
            font: 'webicons'
            fontFamilyName: 'Sapiens Webicons'
            fontFilename: 'sapiens-webicons'
        src: '<%= path.temp %>/svg/icons/webicons/*.svg'
        dest: '<%= path.dist %>/fonts'
        destCss: '<%= path.dist %>/stylesheets/settings'
