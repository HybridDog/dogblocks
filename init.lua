-- These is a mod that puts dog blocks. I give credit to, and not in a particular order, OldCoder, kaeza, babyface1013, jojoa1997

local dog_sounds = {
	footstep = {name="dogblocks_walk", gain=0.2},
	dig = {name="dogblocks_dig", gain=0.5},
	dug = {name="dogblocks_dug", gain=0.5},
	place = {name="dogblocks_place", gain=0.5},
}


--Definatios, b=black bw=brown w=white y=yellow o=orange
--This is for the fur blocks.

local colours = {
	["b"] = "black",
	["bw"] = "brown",
	["w"] = "white",
	["y"] = "yellow",
	["o"] = "orange"
}

for s,l in pairs(colours) do
	local desc = string.upper(string.sub(l, 1, 1))..string.sub(l, 2)
	local name = "dogblocks:fur_"..s
	local input = "wool:"..l

	minetest.register_node(name, {
		description = desc.." Fur Block",
		tiles = {"dogblocks_fur_"..s..".png"},
		groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2},
		sounds = dog_sounds,
	})
	minetest.register_craft({
		output = name.." 6",
		recipe = {
			{"", "", ""},
			{input, input, input},
			{input, input, input},
		}
	})
end


--This is for the actual Dog blocks.------------------------------------------------------------

local dogs = {
	["Pug"] = {"b"},
	["Beagle"] = {"b", "bw", "bw", "w", "w"},
	["German Shepherd"] = {"b", "b", "bw", "bw", "bw", name="gs"},
	["Fox Terrier"] = {"w", "w", "bw", name="ft"},
	["Bichon Frise"] = {"w", name="bf"},
	["Labrador Retriever"] = {
		name = "lb",
		recipe = {
			{"", "", "default:torch"},
			{"dogblocks:fur_b", "dogblocks:fur_b", "wool:black"},
			{"dogblocks:fur_b", "", "dogblocks:fur_b"},
		}

	},
	["Rottweiler"] = {"b", "b", "b", "bw", "bw"},
	["Labradoodle"] = {
		name = "ld",
		recipe = {
			{"", "", "default:torch"},
			{"dogblocks:fur_w", "dogblocks:fur_w", "wool:white"},
			{"dogblocks:fur_w", "", "dogblocks:fur_w"},
		}

	},
}

local function bark(pos, s)
	minetest.after(math.random(), function(s, pos)
		minetest.sound_play({name="dogblocks_"..s, pos=pos})
	end, s, pos)
end

local randm = 1
for dog,data in pairs(dogs) do
	local s = data.name or string.lower(string.sub(dog, 1, 1))
	local name = "dogblocks:dog_"..s

	local recipe = data.recipe
	if not recipe then
		recipe = {
			{"", "", "default:torch"},
			{"dogblocks:fur_", "dogblocks:fur_", "dogblocks:fur_"},
			{"dogblocks:fur_", "", "dogblocks:fur_"},
		}

		local default = data[1]

		for i = 1,3 do
			recipe[2][i] = recipe[2][i]..(data[i] or default)
		end
		for i = 1,3,2 do
			recipe[3][i] = recipe[3][i]..(data[math.ceil(i/2)+3] or default)
		end
	end

	minetest.register_node(name, {
		description = dog.." Block",
		tiles = {"dogblocks_dog_"..s..".png"},
		light_source = 15,
		groups = {oddly_breakable_by_hand=3,snappy=2,choppy=2,dog=1},
		sounds = dog_sounds,
		on_punch = function(pos)
			if math.random(randm) == math.random(2) then
				minetest.sound_play({name="dogblocks_whine", pos=pos})
				randm = randm+1
			else
				randm = math.max(randm-1, 1)
			end
		end,
	})
	minetest.register_craft({
		output = name.." 6",
		recipe = recipe
	})
	minetest.register_abm({
		nodenames = {name},
		interval = 1.5,
		chance = 2,
		action = function(pos)
			if next(minetest.get_objects_inside_radius(pos, 1.5)) then
				bark(pos, s)
			end
		end,
	})
	minetest.register_abm({
		nodenames = {name},
		neighbors = {"group:dog"},
		interval = 1.5,
		chance = 2,
		action = function(pos)
			bark(pos, s)
		end,
	})
end
