##
# Add interactive UI on command line.
# @see https://www.npmjs.com/package/grunt-prompt
#

module.exports = (grunt) ->

    bump:
        options:
            questions: [
                {
                    config: 'bump.level'
                    type: 'list'
                    message: 'Set change level'
                    choices: [
                        {
                            name: 'Patch (backwards-compatible bug fixes)'
                            value: 'patch'
                            checked: true
                        }
                        {
                            name: 'Minor (backwards-compatible functionality)'
                            value: 'minor'
                        }
                        {
                            name: 'Major (incompatible changes)'
                            value: 'major'
                        }
                    ]
                }
                {
                    config: 'bump.commit'
                    type: 'list'
                    message: 'Commit, tag and push?'
                    choices: [
                        {
                            name: 'Yep'
                            value: true
                            checked: true
                        }
                        {
                            name: 'Nope'
                            value: false
                        }
                    ]
                }
            ]

    changelog:
        options:
            questions: [
                {
                    config: 'changelog.codename'
                    type: 'input'
                    message: 'Wanna assign version Codename?'
                    default: ''
                }
            ]
