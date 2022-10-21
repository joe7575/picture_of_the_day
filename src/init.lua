local S = minetest.get_translator("picture_of_the_day")
local MP = minetest.get_modpath("picture_of_the_day")
local infotext = dofile(MP .. "/infotext.lua")

minetest.register_node("picture_of_the_day:picture1", {
	description = S("Picture of the day"),
	tiles = { "picture_of_the_day_texture.png^picture_of_the_day_frame.png" },
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8 / 16, -8 / 16, 7.5 / 16, 8 / 16, 8 / 16, 8 / 16 },
		},
	},

	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", infotext)
	end,

	paramtype = 'light',
	paramtype2 = "facedir",
	light_source = 4,
	use_texture_alpha = "clip",
	groups = { cracky = 2, crumbly = 2, choppy = 2 },
	is_ground_content = false,
})

minetest.register_craft({
	output = "picture_of_the_day:picture1",
	recipe = {
		{ "default:stick", "default:paper", "default:paper" },
		{ "default:stick", "default:paper", "default:paper" },
		{ "default:stick", "default:paper", "default:paper" },
	},
})

minetest.register_lbm({
	label = "Update Infotext",
	name = "picture_of_the_day:picture",
	nodenames = { "picture_of_the_day:picture1" },
	run_at_every_load = true,
	action = function(pos, node)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", infotext)
	end,
})
