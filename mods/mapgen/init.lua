--
-- Aliases for map generator outputs
--

-- ESSENTIAL node aliases
-- Basic nodes
minetest.register_alias("mapgen_stone", "cw_stone:stone")
minetest.register_alias("mapgen_water_source", "cw_water:water_source")
minetest.register_alias("mapgen_river_water_source", "cw_water:river_water_source")

-- Additional essential aliases for v6
minetest.register_alias("mapgen_lava_source", "cw_core:lava_source")
minetest.register_alias("mapgen_dirt", "cw_dirt:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "cw_dirt:dirt_with_grass")
minetest.register_alias("mapgen_sand", "cw_core:sand")
minetest.register_alias("mapgen_tree", "cw_core:tree")
minetest.register_alias("mapgen_leaves", "cw_core:leaves")
minetest.register_alias("mapgen_apple", "cw_core:apple")

-- Essential alias for dungeons
minetest.register_alias("mapgen_cobble", "cw_stone:cobble")

-- Optional aliases for v6 (they all have fallback values in the engine)
if minetest.settings:get_bool("devtest_v6_mapgen_aliases", false) then
	minetest.register_alias("mapgen_gravel", "cw_core:gravel")
	minetest.register_alias("mapgen_desert_stone", "cw_core:desert_stone")
	minetest.register_alias("mapgen_desert_sand", "cw_core:desert_sand")
	minetest.register_alias("mapgen_dirt_with_snow", "cw_dirt:dirt_with_snow")
	minetest.register_alias("mapgen_snowblock", "cw_core:snowblock")
	minetest.register_alias("mapgen_snow", "cw_core:snow")
	minetest.register_alias("mapgen_ice", "cw_core:ice")
	minetest.register_alias("mapgen_junglegrass", "cw_dirt:junglegrass")
	minetest.register_alias("mapgen_jungletree", "cw_core:jungletree")
	minetest.register_alias("mapgen_jungleleaves", "cw_core:jungleleaves")
	minetest.register_alias("mapgen_pine_tree", "cw_core:pine_tree")
	minetest.register_alias("mapgen_pine_needles", "cw_core:pine_needles")
end
-- Optional alias for mossycobble (should fall back to cobble)
if minetest.settings:get_bool("devtest_dungeon_mossycobble", false) then
	minetest.register_alias("mapgen_mossycobble", "cw_core:mossycobble")
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
		name = "mapgen:grassland",
		node_top = "cw_core:dirt_with_grass",
		depth_top = 1,
		node_filler = "cw_core:dirt",
		depth_filler = 1,
		node_riverbed = "cw_core:sand",
		depth_riverbed = 2,
		node_dungeon = "cw_stone:cobble",
		node_dungeon_alt = "cw_core:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = 4,
		heat_point = 50,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "mapgen:grassland_ocean",
		node_top = "cw_core:sand",
		depth_top = 1,
		node_filler = "cw_core:sand",
		depth_filler = 3,
		node_riverbed = "cw_core:sand",
		depth_riverbed = 2,
		node_cave_liquid = "cw_core:water_source",
		node_dungeon = "cw_stone:cobble",
		node_dungeon_alt = "cw_core:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 3,
		y_min = -255,
		heat_point = 50,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "mapgen:grassland_under",
		node_cave_liquid = {"cw_core:water_source", "cw_core:lava_source"},
		node_dungeon = "cw_stone:cobble",
		node_dungeon_alt = "cw_core:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 50,
		humidity_point = 50,
	})
end
