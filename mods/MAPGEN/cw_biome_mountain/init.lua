
if minetest.settings:get_bool("devtest_register_biomes", true) then
	minetest.register_biome({
		name = "cw_biome_mountain:mountain",
		node_top = "cw_stone:stone",
		depth_top = 1,
		node_filler = "cw_stone:stone",
		depth_filler = 1,
		node_riverbed = "cw_stone:stone",
		depth_riverbed = 2,
		node_dungeon = "cw_stone:cobble",
		node_dungeon_alt = "cw_stone:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 300,
		y_min = 45,
		heat_point = 25,
		humidity_point = 50,
		vertical_blend = 16,
	})
end

