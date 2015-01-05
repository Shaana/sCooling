--[[
Copyright (c) 2015 Shaana <shaana@student.ethz.ch>
This file is part of sCooling.

sCooling is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

sCooling is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with sCooling. If not, see <http://www.gnu.org/licenses/>.
--]]

local setmetatable, pairs = setmetatable, pairs

local addon, namespace = ...


local config = {}
namespace.config = config

config["core"] = {
  ["is_a_really_cool_addon"] = true, 
}



--inheritance for the config
for k,_ in pairs(config) do 
  setmetatable(config[k], config[k])
end

