minetest.register_craftitem("cw_copper:raw_copper", {
	description = "Raw Copper",
	_doc_items_longdesc = "Raw Copper. Mine a Copper Ore to get it.",
	inventory_image = "raw_copper.png",
	stack_max = 64,
	groups = { craftitem=1, blast_furnace_smeltable=1 },
})