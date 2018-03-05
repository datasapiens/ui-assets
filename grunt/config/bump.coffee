##
# Bump package version.
# @see https://www.npmjs.com/package/grunt-bump
#

module.exports = (grunt) ->

    options:
        files: [
            'package.json'
        ]
        updateConfigs: ['pkg']
        commitMessage: 'Bump v%VERSION%'
        commitFiles: ['-a']
        prereleaseName: 'rc'
        pushTo: 'origin'
