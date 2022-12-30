
--
-- Register biomes for biome API
--

if minetest.settings:get_bool("devtest_register_biomes", true) then

	minetest.register_biome({
		name = "mapgen:grassland_ocean",
		node_top = "cw_sand:sand",
		depth_top = 1,
		node_filler = "cw_sand:sand",
		depth_filler = 3,
		node_riverbed = "cw_sand:sand",
		depth_riverbed = 2,
		node_cave_liquid = "cw_water:water_source",
		node_dungeon = "cw_stone:cobble",
		node_dungeon_alt = "cw_stone:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 3,
		y_min = -100,
		heat_point = 50,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "mapgen:grassland_under",
		node_cave_liquid = {"cw_water:water_source", "cw_lava:lava_source"},
		node_dungeon = "cw_stone:cobble",
		node_dungeon_alt = "cw_stone:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -100,
		y_min = -300,
		heat_point = 50,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "mapgen:mountain",
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
		y_min = 61,
		heat_point = 50,
		humidity_point = 50,
	})



	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cw_copper:copper_ore",
		wherein        = "cw_stone:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 16,
		clust_size     = 5,
		y_min          = 100,
		y_max          = 200,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cw_copper:copper_ore",
		wherein        = "cw_stone:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_min          = -100,
		y_max          = 100,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "cw_copper:copper_ore",
		wherein        = "cw_stone:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 8,
		clust_size     = 3,
		y_min          = -100,
		y_max          = 100,
	})



end

