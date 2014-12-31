utils = require './utils'
module.exports =
  parseObj: (str)->
    return {} if not str?
    return {} if str.replace(/\s+/g, '') is ''

    queue = str.split(',')
    obj = {}
    for item in queue
      node = item.split(':')
      obj[utils.trim(node[0])] = utils.trim node[1]

    return obj