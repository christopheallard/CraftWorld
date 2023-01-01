minetest.register_schematic(
	{
		name = "cw_tree:simpletree",
		schematic = "cw_tree:simpletree",
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
)