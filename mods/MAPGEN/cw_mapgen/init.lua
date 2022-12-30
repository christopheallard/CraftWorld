--
-- Aliases for map generator outputs
--

-- ESSENTIAL node aliases
-- Basic nodes
minetest.register_alias("mapgen_stone", "cw_stone:stone")
minetest.register_alias("mapgen_water_source", "cw_water:water_source")
minetest.register_alias("mapgen_river_water_source", "cw_water:river_water_source")

-- Additional essential aliases for v6
minetest.register_alias("mapgen_lava_source", "cw_lava:lava_source")
minetest.register_alias("mapgen_dirt", "cw_dirt:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "cw_dirt:dirt_with_grass")
minetest.register_alias("mapgen_sand", "cw_sand:sand")
minetest.register_alias("mapgen_tree", "cw_tree:tree")
minetest.register_alias("mapgen_leaves", "cw_tree:leaves")
minetest.register_alias("mapgen_apple", "cw_tree:apple")

-- Essential alias for dungeons
minetest.register_alias("mapgen_cobble", "cw_stone:cobble")

-- Optional aliases for v6 (they all have fallback values in the engine)
if minetest.settings:get_bool("devtest_v6_mapgen_aliases", false) then
	minetest.register_alias("mapgen_gravel", "cw_gravel:gravel")
	minetest.register_alias("mapgen_desert_stone", "cw_stone:desert_stone")
	minetest.register_alias("mapgen_desert_sand", "cw_sand:desert_sand")
	minetest.register_alias("mapgen_dirt_with_snow", "cw_dirt:dirt_with_snow")
	minetest.register_alias("mapgen_snowblock", "cw_snow:snowblock")
	minetest.register_alias("mapgen_snow", "cw_snow:snow")
	minetest.register_alias("mapgen_ice", "cw_snow:ice")
	minetest.register_alias("mapgen_junglegrass", "cw_dirt:junglegrass")
	minetest.register_alias("mapgen_jungletree", "cw_tree:jungletree")
	minetest.register_alias("mapgen_jungleleaves", "cw_tree:jungleleaves")
	minetest.register_alias("mapgen_pine_tree", "cw_tree:pine_tree")
	minetest.register_alias("mapgen_pine_needles", "cw_tree:pine_needles")
end
-- Optional alias for mossycobble (should fall back to cobble)
if minetest.settings:get_bool("devtest_dungeon_mossycobble", false) then
	minetest.register_alias("mapgen_mossycobble", "cw_stone:mossycobble")
end
-- Optional aliases for dungeon stairs (should fall back to full nodes)
if minetest.settings:get_bool("devtest_dungeon_stairs", false) then
	minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
	if minetest.settings:get_bool("devtest_v6_mapgen_aliases", false) then
		minetest.register_alias("mapgen_stair_desert_stone", "stairs:stair_desert_stone")
	end
end



--
-- Register biomes for biome API
--

minetest.clear_registered_biomes()
minetest.clear_registered_decorations()

if minetest.settings:get_bool("devtest_register_biomes", true) then
	minetest.register_biome({
		name = "cw_mapgen:grassland",
		node_top = "cw_dirt:dirt_with_grass",
		depth_top = 1,
		node_filler = "cw_stone:stone",
		depth_filler = 1,
		node_riverbed = "cw_sand:sand",
		depth_riverbed = 2,
		node_dungeon = "cw_stone:cobble",
		node_dungeon_alt = "cw_stone:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 60,
		y_min = 4,
		heat_point = 50,
		humidity_point = 50,
	})

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




	local my_schematic = {
		size = {x = 3, y = 6, z = 3},
		data = {
			-- The side of the bush, with the air on top
			{name = "air"}, {name = "air"}, {name = "air"},
			{name = "air"}, {name = "air"}, {name = "air"},
			{name = "air"}, {name = "air"}, {name = "air"},
			{name = "cw_tree:leaves"}, {name = "cw_tree:leaves"}, {name = "cw_tree:leaves"}, -- lower layer
			{name = "cw_tree:leaves"}, {name = "cw_tree:leaves"}, {name = "cw_tree:leaves"}, -- middle layer
			{name = "air"}, {name = "air"}, {name = "air"}, -- top layer
			
			-- The center of the bush, with stem at the base and a pointy leave 2 nodes above
			{name = "air"}, {name = "cw_tree:tree"}, {name = "air"},
			{name = "air"}, {name = "cw_tree:tree"}, {name = "air"},
			{name = "air"}, {name = "cw_tree:tree"}, {name = "air"},
			{name = "cw_tree:leaves"}, {name = "cw_tree:tree"}, {name = "cw_tree:leaves"}, -- lower layer
			{name = "cw_tree:leaves"}, {name = "cw_tree:leaves"}, {name = "cw_tree:leaves"}, -- middle layer
			{name = "air"}, {name = "cw_tree:leaves"}, {name = "air"}, -- top layer
			
			-- The other side of the bush, same as first side
			{name = "air"}, {name = "air"}, {name = "air"},
			{name = "air"}, {name = "air"}, {name = "air"},
			{name = "air"}, {name = "air"}, {name = "air"},
			{name = "cw_tree:leaves"}, {name = "cw_tree:leaves"}, {name = "cw_tree:leaves"}, -- lower layer
			{name = "cw_tree:leaves"}, {name = "cw_tree:leaves"}, {name = "cw_tree:leaves"}, -- middle layer
			{name = "air"}, {name = "air"}, {name = "air"}, -- top layer
		}
	}

	minetest.register_decoration({
		name = "mapgen:treetest",
		deco_type = "schematic",
		place_on = {"cw_dirt:dirt_with_grass"},
		sidelen = 6,
		fill_ratio = 0.02,
		biomes = {"mapgen:grassland"},
--		y_max = 3,
--		y_min = 60,
--		decoration = "default:tree",
		schematic = my_schematic,
		flags = "place_center_x, place_center_z, all_floors",
--		flags = "force_placement",
		rotation = "random",
	})

end

