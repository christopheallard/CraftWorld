
if minetest.settings:get_bool("devtest_register_biomes", true) then
	minetest.register_biome({
		name = "cw_biome_desert:desert",
		node_top = "cw_sand:sand",
		depth_top = 6,
		node_filler = "cw_stone:stone",
		depth_filler = 1,
		node_riverbed = "cw_sand:sand",
		depth_riverbed = 0,
		node_dungeon = "cw_stone:cobble",
		node_dungeon_alt = "cw_stone:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 60,
		y_min = 3,
		heat_point = 80,
		humidity_point = 10,
		vertical_blend = 8,
	})
end

