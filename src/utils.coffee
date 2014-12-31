
module.exports =
  trim: (str)->
    str = String(str)
    str.replace(/^\s+/g, '').replace(/\s+$/g, "")