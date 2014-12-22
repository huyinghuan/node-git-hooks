Promiss = require 'promise'
exec = Promiss.denodeify require('child_process').exec
class Git
  constructor: ->
    exec('ls').then((stdout, stderr)->
      console.log stdout, stdout.split('\n')
    ).catch((e)->

    )


module.exports = new Git()