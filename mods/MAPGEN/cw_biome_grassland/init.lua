
if minetest.settings:get_bool("devtest_register_biomes", true) then
	minetest.register_biome({
		name = "cw_biome_grassland:grassland",
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
		vertical_blend = 16,
	})

	minetest.register_biome({
		name = "cw_biome_grassland:grassland_ocean",
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
		vertical_blend = 3,
	})


	minetest.register_biome({
		name = "cw_biome_grassland:grassland_under",
		node_cave_liquid = {"cw_water:water_source", "cw_lava:lava_source"},
		node_dungeon = "cw_stone:cobble",
		node_dungeon_alt = "cw_stone:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -100,
		y_min = -300,
		heat_point = 50,
		humidity_point = 50,

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


--	local schematictest = minetest.registered_schematics["cw_tree:simpletree"]
--	local schemaaaaaa = minetest.schematics["cw_tree:simpletree"]

	

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
--		schematic = minetest.registered_schematics["cw_tree:simpletree"],
		flags = "place_center_x, place_center_z, all_floors",
--		flags = "force_placement",
		rotation = "random",
	})

	--minetest.debug("plop")
	--minetest.debug(dump(minetest))

end

