##
# Run shell commands.
# @see https://www.npmjs.com/package/grunt-shell
#

module.exports = (grunt) ->

    options:
        failOnError: true
        stderr: true
        stdout: true

    bump:
        command: 'grunt bump-only:<%= bump.level %>'

    commit:
        command: '<%= bump.commit %> && grunt bump-commit'
