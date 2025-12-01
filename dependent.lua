Test()
return {
	list = T{1, 2, 3, 4, 5},
	foo = function(self)
		return self.list:any(3)
	end
}