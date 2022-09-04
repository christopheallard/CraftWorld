minetest.register_node("cw_snow:ice", {
	description = "Ice",
	tiles ={"default_ice.png"},
	groups = {cracky=3},
})

-- The snow nodes intentionally have different tints to make them more
-- distinguishable
minetest.register_node("cw_snow:snow", {
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

minetest.register_node("cw_snow:snowblock", {
	description = "Snow Block",
	tiles ={"default_snow.png"},
	groups = {crumbly=3},
})