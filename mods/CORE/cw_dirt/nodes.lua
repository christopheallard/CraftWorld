

minetest.register_node("cw_dirt:dirt_with_grass", {
	description = "Dirt with Grass",
	--tiles ={{name='cw_grass_256x256.png^(cw_rngmask_48x48.png^[resize:256x256^[opacity:16)',align_style='world', scale=16},
	--tiles ={{name='cw_grass_256x256.png^[mask:cw_rngmask_48x48.png',align_style='world', scale=16},
	tiles ={{name='cw_grass_256x256.png',align_style='world', scale=16},
		-- a little dot on the bottom to distinguish it from dirt
		"mc_dirt.png^basenodes_dirt_with_grass_bottom.png",
		{name = "mc_dirt.png^default_grass_side.png",
		tileable_vertical = false,}},
	groups = {crumbly=3, soil=1, oddly_breakable_by_hand=1},
})

minetest.register_node("cw_dirt:dirt_with_snow", {
	description = "Dirt with Snow",
	tiles ={"basenodes_dirt_with_snow.png",
		-- a little dot on the bottom to distinguish it from dirt
		"default_dirt.png^basenodes_dirt_with_snow_bottom.png",
		{name = "mc_dirt.png^default_snow_side.png",
		tileable_vertical = false}},
	groups = {crumbly=3, soil=1},
})

minetest.register_node("cw_dirt:dirt", {
	description = "Dirt",
	tiles ={"mc_dirt.png"},
	groups = {crumbly=3, soil=1},
})

minetest.register_node("cw_dirt:junglegrass", {
	description = "Jungle Grass",
	drawtype = "plantlike",
	tiles ={"default_junglegrass.png"},
	inventory_image = "default_junglegrass.png",
	wield_image = "default_junglegrass.png",
	paramtype = "light",
	walkable = false,
	groups = {snappy=3},
})