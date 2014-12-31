Promiss = require 'promise'
exec = Promiss.denodeify require('child_process').exec
path = require 'path'
command = require './commad'
MJSON = require './MJSON'


class Git
  constructor: ->
    @basePath = path.resolve(process.cwd(), "..")
    @getLastCommit()

  getLastCommit: ->
    exec(command.lastCommit, cwd: @basePath).then((result)->
      obj = MJSON.parseObj(result)
      console.log obj
     # console.log JSON.parse reslut
    ).catch((e)->
      console.log e
    )

  getLastTag: ->
    exec(command.lastTag, cwd: @basePath).then((result)->
    )

  checkout: (tags)->

  pull: ->
    exec(command.pull)

module.exports = new Git()