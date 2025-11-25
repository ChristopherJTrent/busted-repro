table_mt = {}

function table_mt:any(search)
	for _, v in pairs(self) do
		if v == search then
			return true
		end
	end
	return false
end

T = function(t)
	return setmetatable(t or { }, {
		__index = function (_, k)
			return table_mt[k] or table[k]
		end
	})
end

--[[
* Table Metatable Override
*
* Overrides the default metatable of the table global.
* Metatable overrides:
*
*   __index = Custom indexing. [table -> table_mt -> nil]
--]]
setmetatable(table, {
    __index = function (_, k)
        return
            rawget(table, k) or
            table_mt[k] or
            nil;
    end,
});

-- Return the modules metatable and functions table.
return function ()
    return table_mt, {};
end