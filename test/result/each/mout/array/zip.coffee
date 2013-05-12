getLength = (arr) ->
  (if not arr? then 0 else arr.length)

###
Merges together the values of each of the arrays with the values at the
corresponding position.
###
zip = (arr) ->
  len = (if arr then max(map(arguments_, getLength)) else 0)
  results = []
  i = -1
  item = undefined
  while ++i < len
    results.push map(arguments_, (item) ->
      (if not item? then `undefined` else item[i])
    )
  results
max = require("./max")
pluck = require("./pluck")
map = require("./map")
module.exports = zip