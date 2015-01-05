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

local cooldown = sCore.class.cooldown
local button = sCore.class.cooldown_button
local header = sCore.class.cooldown_header


local backdrop = { 
  edgeFile = "Interface\\AddOns\\sCore\\media\\border",
  edgeSize = 16, 
}

local button_config = {
  ["anchor"] = {"CENTER", 0, 0},
  ["size"] = 36, --only supporting squared buttons, use even number to make it look nice
  ["backdrop"] = backdrop,
  ["border_color"] = {0.4, 0.4, 0.4, 1},
  ["enable_tooltip"] = false,
  ["texture_border"] = nil,
  ["texture_background"] = nil,
  ["texture_desaturate"] = true,
  ["texture_inset"] = 6, --really chrange, backdrop seams to be off by 1px, the border is actually 7px
  ["enable_text"] = true,
  ["text_font"] = {"Interface\\AddOns\\sCore\\media\\big_noodle_titling.ttf", 19, "OUTLINE"},
}

local button_config2 = {
  ["anchor"] = {"CENTER", 0, 0},
  ["size"] = 48, --only supporting squared buttons, use even number to make it look nice
  ["backdrop"] = backdrop,
  ["border_color"] = {0.4, 0.4, 0.4, 1},
  ["enable_tooltip"] = false,
  ["texture_border"] = nil,
  ["texture_background"] = nil,
  ["texture_desaturate"] = true,
  ["texture_inset"] = 6, --really chrange, backdrop seams to be off by 1px, the border is actually 7px
  ["enable_text"] = true,
  ["text_font"] = {"Interface\\AddOns\\sCore\\media\\big_noodle_titling.ttf", 19, "OUTLINE"},
}

local default_header_main = {
  ["anchor"] = {"CENTER",-160,-490},
  ["horizontal_spacing"] = 5,
  ["vertical_spacing"] = 5,
  ["x_wrap"] = 7,
  ["grow_direction"] = "LEFTUP",
  ["spell_ids"] = {
      8092, -- Mind Blast
      32379,  -- Shdow Word: Death
      120644, -- Halo Shadow
      34433,  -- Shadowfiend
  },
}

local default_header_cd = {
  ["anchor"] = {"CENTER",-380,-185},
  ["horizontal_spacing"] = 0,
  ["vertical_spacing"] = 5,
  ["x_wrap"] = 7,
  ["grow_direction"] = "LEFTUP",
  ["spell_ids"] = {
    47585,  -- Dispersion
    586,  -- Fade
    8122, -- Psychic Scream
    6346, -- Fear Ward
    73325,  -- Leap of Faith
    32375,  -- Mass Dispel
    17, -- Power Word: Shield
  },
}


local function init()

  local h1 = header:new(default_header_cd, button_config) 
  local h2 = header:new(default_header_main, button_config2)
  

end


--[[
  ["PRIEST"] = {
17, -- Power Word: Shield
527,  -- Purify
586,  -- Fade
724,  -- Lightwell
6346, -- Fear Ward
8092, -- Mind Blast
8122, -- Psychic Scream
10060,  -- Power Infusion
14914,  -- Holy Fire
15286,  -- Vampiric Embrace
15487,  -- Silence
19236,  -- Desperate Prayer
32375,  -- Mass Dispel
32379,  -- Shdow Word: Death
33076,  -- Prayer of Mending
33206,  -- Pain Suppression
34433,  -- Shadowfiend
34861,  -- Circle of Healing
47540,  -- Penance
47585,  -- Dispersion
47788,  -- Guardian Spirit
62618,  -- Power Word: Barrier
64901,  -- Hymm of Hope
64044,  -- Psychic Horror
64843,  -- Divine Hymm
73325,  -- Leap of Faith
81206,  -- Chakra: Sanctuary
81209,  -- Chakra: Chastise
81208,  -- Chakra: Serenity
81700,  -- Archangel
88625,  -- Holy Word: Chastise
88684,  -- Holy Word: Serenity
88685,  -- Holy Word: Sanctuary
89485,  -- Inner Focus
108920, -- Void Tendrils
108921, -- Psyfiend
108968, -- Void Shift
109964, -- Spirit Shell
110744, -- Divine Star
120517, -- Halo
121135, -- Cascade
121536, -- Angelic Feather
123040, -- Mindbender
129250, -- Power Word: Solace
},
--]]

init()