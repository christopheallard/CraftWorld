minetest.register_node("cw_stone:stone", {
	description = "Stone",
	--tiles = {"default_stone.png"},
	tiles ={{name='cw_stone_256x256.png',align_style='world', scale=16}},
	groups = {cracky=3},
})

minetest.register_node("cw_stone:cobble", {
	description = "Cobblestone",
	tiles ={"default_cobble.png"},
	is_ground_content = false,
	groups = {cracky=3},
	
})

minetest.register_node("cw_stone:desert_stone", {
	description = "Desert Stone",
	tiles = {"default_desert_stone.png"},
	groups = {cracky=3},
})

minetest.register_node("cw_stone:mossycobble", {
	description = "Mossy Cobblestone",
	tiles ={"default_mossycobble.png"},
	is_ground_content = false,
	groups = {cracky=3},
})