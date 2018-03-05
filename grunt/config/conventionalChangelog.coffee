##
# Generate changelog from git logs.
# @see https://www.npmjs.com/package/grunt-conventional-changelog
#

_ = require 'lodash'


module.exports = (grunt) ->

    templatePath = 'grunt/conventional-changelog/templates/'

    options:
        changelogOpts:
            preset: 'angular'
            # releaseCount: 0

        context:
            title: '<%= changelog.codename %>'
            host: 'https://github.com'
            owner: 'datasapiens'
            repository: 'ui-assets'

        writerOpts:
            mainTemplate:   grunt.file.read(templatePath + 'template.hbs')
            headerPartial:  grunt.file.read(templatePath + 'header.hbs')
            commitPartial:  grunt.file.read(templatePath + 'commit.hbs')
            footerPartial:  grunt.file.read(templatePath + 'footer.hbs')
            transform: (commit) ->
                if commit.type == 'feat'
                    commit.type = 'Features'
                else if commit.type == 'fix'
                    commit.type = 'Bug Fixes'
                else if commit.type == 'perf'
                    commit.type = 'Performance Improvements'
                else if commit.type == 'refactor'
                    commit.type = 'Refactoring'
                else if commit.type == 'revert'
                    commit.type = 'Reverts'
                else
                    return

                if commit.scope == '*'
                    commit.scope = ''

                if typeof commit.hash == 'string'
                    commit.hash = commit.hash.substring(0, 7)

                if typeof commit.subject == 'string'
                    commit.subject = commit.subject.substring(0, 80)

                _.map commit.notes, (note) ->
                    if note.title == 'BREAKING CHANGE'
                        note.title = 'BREAKING CHANGES'
                    return note;

                return commit

    release:
        src: 'CHANGELOG.md'

