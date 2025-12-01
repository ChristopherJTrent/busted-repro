describe 'dependent', ->
	export Test
	local Foo
	setup ->
		Test = spy.new(-> print('foo'))
		Foo = require('dependent')
		Test = spy.new(-> print('foo'))
	it 'should return true', ->
		assert.is.true Foo:foo()