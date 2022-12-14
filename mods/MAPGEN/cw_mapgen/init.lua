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


-- ?? minetest.clear_registered_schematics()
minetest.clear_registered_biomes()
minetest.clear_registered_decorations()

if minetest.settings:get_bool("devtest_register_biomes", true) then

end

