--
-- SPDX-FileCopyrightText: (c) 2023-2024 Ring Zero Desenvolvimento de Software LTDA
-- SPDX-License-Identifier: MIT OR GPL-2.0-only
--

local device = require("device")

local function nop() end

-- driver.result: string | nil
local driver = {name = "lunatik", open = nop, release = nop}

-- cache functions so that we know that they are the original non-replaced ones
local pcall, type, tostring, load, select
	= pcall, type, tostring, load, select

-- driver.read: function(Driver): string | nil
function driver:read()
	local result = self.result
	self.result = nil
	return result
end

-- result: function(_, ...: any): string
local function result(_, ...)
	if select("#", ...) > 0 then
		-- we need a pcall on tostring since it can call
		-- metamethods __tostring or __name which can throw
		local worked, str = pcall(tostring, select(1, ...))
		if worked and type(str) == 'string' then
			return str
		else
			return ''
		end
	else
		return ''
	end
end

-- driver.write: function(Driver, string)
function driver:write(buf)
	-- load never throws
	local ok, err = load(buf)
	if ok then
		-- pcall since it is user code
		err = result(pcall(ok))
	end
	self.result = err
end

device.new(driver)

