require('_table')
Test = function() print('foo') end
local foo = require('dependent')
print(foo:foo())