local mt_current_mod_name = minetest.get_current_modname()
local mt_mod_path = minetest.get_modpath(mt_current_mod_name)
local mt_mod_conf = Settings(minetest.get_modpath(mt_current_mod_name))
local mt_mod_names = minetest.get_modnames()





-- Register Item
dofile(mt_mod_path.."/items.lua")

-- Register Nodes
dofile(mt_mod_path.."/nodes.lua")

-- Register Crafts
dofile(mt_mod_path.."/crafts.lua")

-- Register Schematics
dofile(mt_mod_path.."/schematics.lua")