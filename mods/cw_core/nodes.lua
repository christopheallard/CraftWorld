local WATER_ALPHA = "^[opacity:" .. 160
local WATER_VISC = 1
local LAVA_VISC = 7

minetest.register_node("cw_core:desert_stone", {
	description = "Desert Stone",
	tiles = {"default_desert_stone.png"},
	groups = {cracky=3},
})

minetest.register_node("cw_core:sand", {
	description = "Sand",
	tiles ={"default_sand.png"},
	groups = {crumbly=3},
})

minetest.register_node("cw_core:desert_sand", {
	description = "Desert Sand",
	tiles ={"default_desert_sand.png"},
	groups = {crumbly=3},
})

minetest.register_node("cw_core:gravel", {
	description = "Gravel",
	tiles ={"default_gravel.png"},
	groups = {crumbly=2},
})

minetest.register_node("cw_core:tree", {
	description = "Normal Tree Trunk",
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1},
})

minetest.register_node("cw_core:leaves", {
	description = "Normal Leaves",
	drawtype = "allfaces_optional",
	tiles = {"default_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3},
})

minetest.register_node("cw_core:jungletree", {
	description = "Jungle Tree Trunk",
	tiles = {"default_jungletree_top.png", "default_jungletree_top.png", "default_jungletree.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1},
})

minetest.register_node("cw_core:jungleleaves", {
	description = "Jungle Leaves",
	drawtype = "allfaces_optional",
	tiles = {"default_jungleleaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3},
})

minetest.register_node("cw_core:pine_tree", {
	description = "Pine Tree Trunk",
	tiles = {"default_pine_tree_top.png", "default_pine_tree_top.png", "default_pine_tree.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1},
})

minetest.register_node("cw_core:pine_needles", {
	description = "Pine Needles",
	drawtype = "allfaces_optional",
	tiles = {"default_pine_needles.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3},
})

minetest.register_node("cw_core:water_source", {
	description = "Water Source".."\n"..
		"Drowning damage: 1",
	drawtype = "liquid",
	waving = 3,
	tiles = {"default_water.png"..WATER_ALPHA},
	special_tiles = {
		{name = "default_water.png"..WATER_ALPHA, backface_culling = false},
		{name = "default_water.png"..WATER_ALPHA, backface_culling = true},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "cw_core:water_flowing",
	liquid_alternative_source = "cw_core:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 3},
})

minetest.register_node("cw_core:water_flowing", {
	description = "Flowing Water".."\n"..
		"Drowning damage: 1",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"default_water_flowing.png"},
	special_tiles = {
		{name = "default_water_flowing.png"..WATER_ALPHA,
			backface_culling = false},
		{name = "default_water_flowing.png"..WATER_ALPHA,
			backface_culling = false},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "cw_core:water_flowing",
	liquid_alternative_source = "cw_core:water_source",
	liquid_viscosity = WATER_VISC,
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {water = 3, liquid = 3},
})

minetest.register_node("cw_core:river_water_source", {
	description = "River Water Source".."\n"..
		"Drowning damage: 1",
	drawtype = "liquid",
	waving = 3,
	tiles = { "default_river_water.png"..WATER_ALPHA },
	special_tiles = {
		{name = "default_river_water.png"..WATER_ALPHA, backface_culling = false},
		{name = "default_river_water.png"..WATER_ALPHA, backface_culling = true},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "cw_core:river_water_flowing",
	liquid_alternative_source = "cw_core:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, },
})

minetest.register_node("cw_core:river_water_flowing", {
	description = "Flowing River Water".."\n"..
		"Drowning damage: 1",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"default_river_water_flowing.png"..WATER_ALPHA},
	special_tiles = {
		{name = "default_river_water_flowing.png"..WATER_ALPHA,
			backface_culling = false},
		{name = "default_river_water_flowing.png"..WATER_ALPHA,
			backface_culling = false},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "cw_core:river_water_flowing",
	liquid_alternative_source = "cw_core:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, },
})

minetest.register_node("cw_core:lava_flowing", {
	description = "Flowing Lava".."\n"..
		"4 damage per second".."\n"..
		"Drowning damage: 1",
	drawtype = "flowingliquid",
	tiles = {"default_lava_flowing.png"},
	special_tiles = {
		{name="default_lava_flowing.png", backface_culling = false},
		{name="default_lava_flowing.png", backface_culling = false},
	},
	paramtype = "light",
	light_source = minetest.LIGHT_MAX,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	damage_per_second = 4,
	liquidtype = "flowing",
	liquid_alternative_flowing = "cw_core:lava_flowing",
	liquid_alternative_source = "cw_core:lava_source",
	liquid_viscosity = LAVA_VISC,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=1},
})

minetest.register_node("cw_core:lava_source", {
	description = "Lava Source".."\n"..
		"4 damage per second".."\n"..
		"Drowning damage: 1",
	drawtype = "liquid",
	tiles = { "default_lava.png" },
	special_tiles = {
		{name = "default_lava.png", backface_culling = false},
		{name = "default_lava.png", backface_culling = true},
	},
	paramtype = "light",
	light_source = minetest.LIGHT_MAX,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	damage_per_second = 4,
	liquidtype = "source",
	liquid_alternative_flowing = "cw_core:lava_flowing",
	liquid_alternative_source = "cw_core:lava_source",
	liquid_viscosity = LAVA_VISC,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=1},
})

--minetest.register_node("cw_core:cobble", {
--	description = "Cobblestone",
--	tiles ={"default_cobble.png"},
--	is_ground_content = false,
--	groups = {cracky=3},
	
--})

--minetest.register_craft({
--	output = "cw_core:cobble",
--	recipe = {
--		{"group:crumbly", "group:crumbly"},
--		{"group:crumbly", "group:crumbly"}
--	}
--})


minetest.register_node("cw_core:mossycobble", {
	description = "Mossy Cobblestone",
	tiles ={"default_mossycobble.png"},
	is_ground_content = false,
	groups = {cracky=3},
})

minetest.register_node("cw_core:apple", {
	description = "Apple".."\n"..
		"Food (+2)",
	drawtype = "plantlike",
	tiles ={"default_apple.png"},
	inventory_image = "default_apple.png",
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	walkable = false,
	groups = {dig_immediate=3},

	-- Make eatable because why not?
	on_use = minetest.item_eat(2),
})

minetest.register_node("cw_core:ice", {
	description = "Ice",
	tiles ={"default_ice.png"},
	groups = {cracky=3},
})

-- The snow nodes intentionally have different tints to make them more
-- distinguishable
minetest.register_node("cw_core:snow", {
	description = "Snow Sheet",
	tiles = {"basenodes_snow_sheet.png"},
	groups = {crumbly=3},
	walkable = false,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
	},
})

minetest.register_node("cw_core:snowblock", {
	description = "Snow Block",
	tiles ={"default_snow.png"},
	groups = {crumbly=3},
})