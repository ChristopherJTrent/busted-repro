describe('dependent', function()
	Test = {}
	Foo = {}
	setup(function() 
		Test = spy.new(function() print('foo') end)
		Foo = require('dependent')
	end)
	it('should return true', function() 
		assert.is.True(Foo:foo())
	end)
end)