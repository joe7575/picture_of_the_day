minetest.register_node("picture_of_the_day:picture1", {
	description = S("Picture of the day"),
	tiles = {"picture_of_the_day_texture.png^picture_of_the_day_frame.png"},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -8/16, 7.5/16,  8/16,  8/16, 8/16},
		},
	},
	
	paramtype = 'light',
	paramtype2 = "facedir",
	groups = {cracky=2, crumbly=2, choppy=2},
	is_ground_content = false,
})

