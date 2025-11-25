describe 'dependent', ->
	local Foo
	setup ->
		Foo = require('dependent')
	it 'should return true', ->
		assert.is.true Foo:foo()