-- These is a mod that puts dog blocks. I give credit to, and not in a particular order, OldCoder, kaeza, babyface1013, jojoa1997

--Definatios, b=black bw=brown w=white y=yellow o=orange
--This is for the fur blocks.

--Black
minetest.register_node("dogblocks:fur_b", {
	description = "Black Fur Block",
	tiles = {"dogblocks_fur_b.png"},
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:fur_b" 6',
	recipe = {
		{'', '', ''},
		{'wool:black', 'wool:black', 'wool:black'},
		{'wool:black', 'wool:black', 'wool:black'},
	}
})
--Brown
minetest.register_node("dogblocks:fur_bw", {
	description = "Brown Fur Block",
	tiles = {"dogblocks_fur_bw.png"},
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:fur_bw" 6',
	recipe = {
		{'', '', ''},
		{'wool:brown', 'wool:brown', 'wool:brown'},
		{'wool:brown', 'wool:brown', 'wool:brown'},
	}
})
--White
minetest.register_node("dogblocks:fur_w", {
	description = "White Fur Block",
	tiles = {"dogblocks_fur_w.png"},
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:fur_w" 6',
	recipe = {
		{'', '', ''},
		{'wool:white', 'wool:white', 'wool:white'},
		{'wool:white', 'wool:white', 'wool:white'},
	}
})
--Yellow
minetest.register_node("dogblocks:fur_y", {
	description = "Yellow Fur Block",
	tiles = {"dogblocks_fur_y.png"},
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:fur_y" 6',
	recipe = {
		{'', '', ''},
		{'wool:yellow', 'wool:yellow', 'wool:yellow'},
		{'wool:yellow', 'wool:yellow', 'wool:yellow'},
	}
})
--Orange
minetest.register_node("dogblocks:fur_o", {
	description = "Orangw Fur Block",
	tiles = {"dogblocks_fur_o.png"},
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:fur_o" 6',
	recipe = {
		{'', '', ''},
		{'wool:orange', 'wool:orange', 'wool:orange'},
		{'wool:orange', 'wool:orange', 'wool:orange'},
	}
})
--This is for the actual Dog blocks.------------------------------------------------------------

--Pug
minetest.register_node("dogblocks:dog_p", {
	description = "Pug Block",
	tiles = {"dogblocks_dog_p.png"},
	light_source = 15,
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:dog_p" 6',
	recipe = {
		{'','','default:torch'},
		{'dogblocks:fur_b','dogblocks:fur_b','dogblocks:fur_b'},
		{'dogblocks:fur_b','','dogblocks:fur_b'},
		}
})
--Beagle
minetest.register_node("dogblocks:dog_b", {
	description = "Beagle Block",
	tiles = {"dogblocks_dog_b.png"},
	light_source = 15,
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:dog_b" 6',
	recipe = {
		{'','','default:torch'},
		{'dogblocks:fur_b','dogblocks:fur_bw','dogblocks:fur_bw'},
		{'dogblocks:fur_w','','dogblocks:fur_w'},
		}
})
--German Shepard
minetest.register_node("dogblocks:dog_gs", {
	description = "German Shepherd Block",
	tiles = {"dogblocks_dog_gs.png"},
	light_source = 15,
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:dog_gs" 6',
	recipe = {
		{'','','default:torch'},
		{'dogblocks:fur_b','dogblocks:fur_b','dogblocks:fur_bw'},
		{'dogblocks:fur_bw','','dogblocks:fur_bw'},
		}
})
--Fox Terrier
minetest.register_node("dogblocks:dog_ft", {
	description = "Fox Terrier Block",
	tiles = {"dogblocks_dog_ft.png"},
	light_source = 15,
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:dog_ft" 6',
	recipe = {
		{'','','default:torch'},
		{'dogblocks:fur_w','dogblocks:fur_w','dogblocks:fur_bw'},
		{'dogblocks:fur_w','','dogblocks:fur_w'},
		}
})
--Bichon Frise
minetest.register_node("dogblocks:dog_bf", {
	description = "Bichon Frise Block",
	tiles = {"dogblocks_dog_bf.png"},
	light_source = 15,
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:dog_bf" 6',
	recipe = {
		{'','','default:torch'},
		{'dogblocks:fur_w','dogblocks:fur_w','dogblocks:fur_w'},
		{'dogblocks:fur_w','','dogblocks:fur_w'},
		}
})
--Labrador Retriever
minetest.register_node("dogblocks:dog_lb", {
	description = "Labrador Retriever Block",
	tiles = {"dogblocks_dog_lb.png"},
	light_source = 15,
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:dog_lb" 6',
	recipe = {
		{'','','default:torch'},
		{'dogblocks:fur_b','dogblocks:fur_b','wool:black'},
		{'dogblocks:fur_b','','dogblocks:fur_b'},
		}
})
--Rottweiler
minetest.register_node("dogblocks:dog_r", {
	description = "Rottweiler Block",
	tiles = {"dogblocks_dog_r.png"},
	light_source = 15,
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:dog_r" 6',
	recipe = {
		{'','','default:torch'},
		{'dogblocks:fur_b','dogblocks:fur_b','dogblocks:fur_b'},
		{'dogblocks:fur_bw','','dogblocks:fur_bw'},
		}
})
--Labradoodle
minetest.register_node("dogblocks:dog_ld", {
	description = "Labradoodle Block",
	tiles = {"dogblocks_dog_ld.png"},
	light_source = 15,
	groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
})
minetest.register_craft({
	output = '"dogblocks:dog_ld" 6',
	recipe = {
		{'','','default:torch'},
		{'dogblocks:fur_w','dogblocks:fur_w','wool:white'},
		{'dogblocks:fur_w','','dogblocks:fur_w'},
		}
})
