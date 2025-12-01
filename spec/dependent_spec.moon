describe 'dependent', ->
	export Test
	local Foo
	setup ->
		Test = spy.new(-> print('foo'))
		Foo = require('dependent')
	it 'should return true', ->
		assert.is.true Foo:foo()