
--
-- Register biomes for biome API
--

if minetest.settings:get_bool("devtest_register_biomes", true) then



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

