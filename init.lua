minetest.register_tool("extra_mele_weapons:frying_pan", {
		description = "".. core.colorize("#FFFFFF", "Frying pan\n")..core.colorize("#A0A0A0", "melee damage: 10\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "attack interval: 1.25 "),
	wield_scale = {x=1.00,y=1.00,z=1.25},
	inventory_image = "extra_mele_weapons_frying_pan.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 1.25,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:frying_pan",
	recipe = {
		{"", "", "default:steelblock"},
		{"", "default:steel_ingot", ""},
		{"group:stick", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:golden_hammer", {
		description = "".. core.colorize("#FFFFFF", "Golden hammer\n")..core.colorize("#A0A0A0", "melee damage: 9\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "attack interval: 1.25 "),
	wield_scale = {x=1.05,y=1.05,z=1.25},
	inventory_image = "extra_mele_weapons_golden_hammer.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 1.25,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=1.5, [2]=0.75, [3]=0.30}, uses=4, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:golden_hammer",
	recipe = {
		{"", "default:gold_ingot", ""},
		{"", "default:gold_ingot", "default:gold_ingot"},
		{"default:gold_ingot", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:golden_sickle", {
		description = "".. core.colorize("#FFFFFF", "Golden sickle\n")..core.colorize("#A0A0A0", "melee damage: 6\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "attack interval: 0.6 "),
	wield_scale = {x=1.05,y=1.05,z=0.8},
	inventory_image = "extra_mele_weapons_golden_sickle.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy = {times={[1]=0.3, [2]=0.2, [3]=0.1}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:golden_sickle",
	recipe = {
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
		{"", "", "default:gold_ingot"},
		{"", "default:gold_ingot", ""},
	}
})

minetest.register_tool("extra_mele_weapons:monk_staff", {
		description = "".. core.colorize("#FFFFFF", "Monk's staff\n")..core.colorize("#A0A0A0", "melee damage: 1\n")..core.colorize("#A0A0A0", "range: 5.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.5 "),
	wield_scale = {x=2.4,y=2.4,z=1.2},
	inventory_image = "extra_mele_weapons_monk_staff.png",
	range = 5.0,
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.45, [2]=0.25, [3]=0.15}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=1},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:monk_staff",
	recipe = {
		{"", "", "group:stick"},
		{"", "group:stick", ""},
		{"group:stick", "",  ""},
	}
})

minetest.register_tool("extra_mele_weapons:crystal_knife", {
		description = "".. core.colorize("#FFFFFF", "Crystal Knife\n")..core.colorize("#A0A0A0", "melee damage: 6\n")..core.colorize("#A0A0A0", "range: 3.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.3 "),
	wield_scale = {x=0.95,y=0.95,z=0.95},
	inventory_image = "extra_mele_weapons_crystal_knife.png",
	range = 3.0,
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.45, [2]=0.25, [3]=0.15}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:crystal_knife",
	recipe = {
		{"", "", "default:diamond"},
		{"", "default:mese_crystal", ""},
	}
})

minetest.register_tool("extra_mele_weapons:diamondshard_greatsword", {
		description = "".. core.colorize("#760000", "Diamond shard greatsword\n")..core.colorize("#A0A0A0", "melee damage: 20\n")..core.colorize("#A0A0A0", "range: 4.65 \n")..core.colorize("#A0A0A0", "attack interval: 0.85 \n") ..core.colorize("#A0A0A0", "Right-click to shoot 3 diamond shards, each dealing 7 DMG "),
	wield_scale = {x=2.1,y=2.1,z=1.25},
	inventory_image = "extra_mele_weapons_diamondshard_greatsword.png",
	range = 4.65,
	on_secondary_use = function(itemstack, user, pointed_thing)
	itemstack:add_wear(65535/500)
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		local vertical = user:get_look_vertical()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
local obj = minetest.add_entity(pos, "extra_mele_weapons:diamond_shard")
			if obj then
obj:set_velocity({x=-3+dir.x*20, y=dir.y*20, z=-3+dir.z*20})
obj:set_acceleration({x=dir.x *-2, y=-6, z=dir.z *-2})
obj:set_rotation({x=0,y=yaw + math.pi,z=-vertical})
local ent = obj:get_luaentity()
ent.owner = user:get_player_name()
end
local obj = minetest.add_entity(pos, "extra_mele_weapons:diamond_shard")
			if obj then
obj:set_velocity({x=dir.x*20, y=dir.y*20, z=dir.z*20})
obj:set_acceleration({x=dir.x *-2, y=-6, z=dir.z *-2})
obj:set_rotation({x=0,y=yaw + math.pi,z=-vertical})
local ent = obj:get_luaentity()
ent.owner = user:get_player_name()
end
local obj = minetest.add_entity(pos, "extra_mele_weapons:diamond_shard")
			if obj then
obj:set_velocity({x=3+dir.x*20, y=dir.y*20, z=3+dir.z*20})
obj:set_acceleration({x=dir.x *-2, y=-6, z=dir.z *-2})
obj:set_rotation({x=0,y=yaw + math.pi,z=-vertical})
local ent = obj:get_luaentity()
ent.owner = user:get_player_name()
end
		end
		return itemstack
	end,
	tool_capabilities = {
		full_punch_interval = 0.85,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.05, [2]=0.02, [3]=0.01}, uses=125, maxlevel=3},
			choppy={times={[1]=0.5, [2]=0.25, [3]=0.1}, uses=125, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	},
})

local extra_mele_weapons_diamond_shard = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {"extra_mele_weapons:shard_visual"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
extra_mele_weapons_diamond_shard.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:get_pos()
	local node = minetest.get_node(pos)

	if self.timer > 0.2 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "extra_mele_weapons:diamond_shard" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 7
					obj:punch(minetest.get_player_by_name(self.owner), 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()

				end
			else
				local damage = 7
				obj:punch(minetest.get_player_by_name(self.owner), 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("extra_mele_weapons:diamond_shard", extra_mele_weapons_diamond_shard )

minetest.register_craftitem("extra_mele_weapons:shard_visual", {
	inventory_image = "extra_mele_weapons_diamondshard.png",
})

minetest.register_craft({
	output = "extra_mele_weapons:diamondshard_greatsword",
	recipe = {
		{"default:diamondblock", "extra_mele_weapons:crystal_sword", "default:diamondblock"},
		{"default:diamondblock", "extra_mele_weapons:flaming_sword", "default:diamondblock"},
		{"default:diamondblock", "default:obsidian", "default:diamondblock"},
	}
})


minetest.register_tool("extra_mele_weapons:crystal_sword", {
		description = "".. core.colorize("#FF00BF", "Crystal sword\n")..core.colorize("#A0A0A0", "melee damage: 14\n")..core.colorize("#A0A0A0", "range: 4.4 \n")..core.colorize("#A0A0A0", "attack interval: 1.0 "),
	wield_scale = {x=1.6,y=1.6,z=1.4},
	inventory_image = "extra_mele_weapons_crystal_sword.png",
	range = 4.4,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.05, [2]=0.02, [3]=0.01}, uses=125, maxlevel=3},
			choppy={times={[1]=0.5, [2]=0.25, [3]=0.1}, uses=125, maxlevel=3},
		},
		damage_groups = {fleshy=11},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:crystal_sword",
	recipe = {
		{"", "default:diamondblock", ""},
		{"default:mese_crystal", "default:diamondblock", "default:mese_crystal"},
		{"", "default:obsidian_shard", ""},
	}
})

minetest.register_tool("extra_mele_weapons:candycane", {
		description = "".. core.colorize("#FFFFFF", "Large Candycane\n")..core.colorize("#A0A0A0", "melee damage: 5\n")..core.colorize("#A0A0A0", "range: 3.75 \n")..core.colorize("#A0A0A0", "interval: 0.85 \n")..core.colorize("#A0A0A0", "Bash naughty people arround with it, and when you get bored of doing so, rightclick to eat it for 6HP"),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	inventory_image = "extra_mele_weapons_candycane.png",
	on_secondary_use = minetest.item_eat(6),
	range = 3.75,
	tool_capabilities = {
		full_punch_interval = 0.85,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.75, [2]=0.55, [3]=0.25}, uses=25, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:candycane",
	recipe = {
		{"dye:red", "default:papyrus", "default:papyrus"},
		{"dye:white", "default:papyrus", "dye:red"},
		{"dye:red", "default:papyrus", "dye:white"},
	}
})

minetest.register_tool("extra_mele_weapons:knife", {
		description = "".. core.colorize("#FFFFFF", "Knife\n")..core.colorize("#A0A0A0", "melee damage: 4\n")..core.colorize("#A0A0A0", "range: 2.75 \n")..core.colorize("#A0A0A0", "attack interval: 0.3 "),
	wield_scale = {x=0.9,y=0.9,z=0.9},
	inventory_image = "extra_mele_weapons_knife.png",
	range = 2.75,
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.45, [2]=0.25, [3]=0.15}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:knife",
	recipe = {
		{"", "", "default:steel_ingot"},
		{"dye:black", "group:stick", ""},
	}
})

minetest.register_tool("extra_mele_weapons:knife_bloody", {
		description = "".. core.colorize("#FFFFFF", "Bloody knife\n")..core.colorize("#A0A0A0", "melee damage: 4\n")..core.colorize("#A0A0A0", "range: 2.75 \n")..core.colorize("#A0A0A0", "attack interval: 0.27 "),
	wield_scale = {x=0.9,y=0.9,z=0.9},
	inventory_image = "extra_mele_weapons_knife_bloody.png",
	range = 2.75,
	tool_capabilities = {
		full_punch_interval = 0.27,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.4, [2]=0.2, [3]=0.1}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:knife_bloody",
	recipe = {
		{"", "dye:red", ""},
		{"dye:red", "extra_mele_weapons:knife", "dye:red"},
		{"", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:dagger", {
		description = "".. core.colorize("#FFFFFF", "Dagger\n")..core.colorize("#A0A0A0", "melee damage: 5\n")..core.colorize("#A0A0A0", "range: 2.4 \n")..core.colorize("#A0A0A0", "attack interval: 0.2 "),
	wield_scale = {x=0.8,y=0.8,z=0.8},
	inventory_image = "extra_mele_weapons_dagger.png",
	range = 2.4,
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.45, [2]=0.25, [3]=0.15}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:dagger",
	recipe = {
		{"", "", "default:steel_ingot"},
		{"", "default:gold_ingot", ""},
	}
})

minetest.register_tool("extra_mele_weapons:karambit", {
		description = "".. core.colorize("#FFFFFF", "Karambit\n")..core.colorize("#A0A0A0", "melee damage: 6\n")..core.colorize("#A0A0A0", "range: 3 \n")..core.colorize("#A0A0A0", "attack interval: 0.3 "),
	wield_scale = {x=0.95,y=0.95,z=0.95},
	inventory_image = "extra_mele_weapons_karambit.png",
	range = 3,
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.45, [2]=0.25, [3]=0.15}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:karambit",
	recipe = {
		{"dye:black", "default:diamond", ""},
		{"group:stick", "default:steel_ingot", ""},
	}
})

minetest.register_tool("extra_mele_weapons:knuckleduster", {
		description = "".. core.colorize("#FFFFFF", "Knuckleduster\n")..core.colorize("#A0A0A0", "melee damage: 6\n")..core.colorize("#A0A0A0", "range: 3.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.45 "),
	wield_scale = {x=1.5,y=1.5,z=1.4},
	wield_image = "extra_mele_weapons_knuckleduster.png",
	inventory_image = "extra_mele_weapons_knuckleduster_inv.png",
	range = 3.5,
	tool_capabilities = {
		full_punch_interval = 0.45,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.45, [2]=0.25, [3]=0.15}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:knuckleduster",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"", "default:steel_ingot", ""},
	}
})

minetest.register_tool("extra_mele_weapons:katana", {
		description = "".. core.colorize("#FFFFFF", "Katana\n")..core.colorize("#A0A0A0", "melee damage: 7\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.55 "),
	wield_scale = {x=1.375,y=1.375,z=0.5},
	inventory_image = "extra_mele_weapons_katana.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.55,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.1, [2]=0.05, [3]=0.02}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:katana",
	recipe = {
		{"", "default:diamond", "default:steel_ingot"},
		{"wool:black", "default:steel_ingot", ""},
		{"default:gold_ingot", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:scimitar", {
		description = "".. core.colorize("#FFFFFF", "Scimitar\n")..core.colorize("#A0A0A0", "melee damage: 7\n")..core.colorize("#A0A0A0", "range: 4.15 \n")..core.colorize("#A0A0A0", "attack interval: 0.675 "),
	wield_scale = {x=1.20,y=1.20,z=1.0},
	inventory_image = "extra_mele_weapons_scimitar.png",
	range = 4.15,
	tool_capabilities = {
		full_punch_interval = 0.675,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.2, [2]=0.1, [3]=0.05}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:scimitar",
	recipe = {
		{"", "", "default:steel_ingot"},
		{"default:gold_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"group:stick", "default:gold_ingot", ""},
	}
})

minetest.register_tool("extra_mele_weapons:battleaxe", {
		description = "".. core.colorize("#FFFFFF", "Battle axe\n")..core.colorize("#A0A0A0", "melee damage: 9\n")..core.colorize("#A0A0A0", "range: 4.10 \n")..core.colorize("#A0A0A0", "attack interval: 1.1"),
	wield_scale = {x=1.05,y=1.05,z=1.1},
	inventory_image = "extra_mele_weapons_battleaxe.png",
	range = 4.1,
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.30, [2]=1.30, [3]=0.95}, uses=35, maxlevel=2},
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:battleaxe",
	recipe = {
		{"default:axe_steel", "group:stick", "default:axe_steel"},
		{"", "default:steel_ingot", ""},
		{"", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:flaming_sword", {
		description = "".. core.colorize("#FF00BF", "Flaming sword\n")..core.colorize("#A0A0A0", "melee damage: 12\n")..core.colorize("#A0A0A0", "range: 4.35 \n")..core.colorize("#A0A0A0", "attack interval: 0.75 "),
	wield_scale = {x=1.5,y=1.5,z=1.1},
	inventory_image = "extra_mele_weapons_flaming_sword.png",
	range = 4.35,
	tool_capabilities = {
		full_punch_interval = 0.75,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.05, [2]=0.02, [3]=0.01}, uses=125, maxlevel=3},
			choppy={times={[1]=0.5, [2]=0.25, [3]=0.1}, uses=125, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:flaming_sword",
	recipe = {
		{"", "", "bucket:bucket_lava"},
		{"default:diamondblock", "bucket:bucket_lava", "default:mese"},
		{"default:obsidian", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:battlehammer", {
		description = "".. core.colorize("#FFFFFF", "Battle hammer\n")..core.colorize("#A0A0A0", "melee damage: 14\n")..core.colorize("#A0A0A0", "range: 3.9 \n")..core.colorize("#A0A0A0", "attack interval: 1.5 "),
	wield_scale = {x=1.05,y=1.05,z=1.5},
	inventory_image = "extra_mele_weapons_battlehammer.png",
	range = 3.9,
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:battlehammer",
	recipe = {
		{"default:steelblock", "default:steel_ingot", "default:steelblock"},
		{"", "default:steel_ingot", ""},
		{"", "default:steel_ingot", ""},
	}
})

minetest.register_tool("extra_mele_weapons:club", {
		description = "".. core.colorize("#FFFFFF", "Club\n")..core.colorize("#A0A0A0", "melee damage: 4\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "attack interval: 1.05 "),
	wield_scale = {x=1.05,y=1.05,z=1.5},
	inventory_image = "extra_mele_weapons_club.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 1.05,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[3]=2.20}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:club",
	recipe = {
		{"", "default:tree", ""},
		{"", "default:tree", ""},
		{"", "group:stick", ""},
	}
})

minetest.register_tool("extra_mele_weapons:nailed_club", {
		description = "".. core.colorize("#FFFFFF", "Nailed club\n")..core.colorize("#A0A0A0", "melee damage: 8\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "attack interval: 1.1 "),
	wield_scale = {x=1.00,y=1.00,z=1.4},
	inventory_image = "extra_mele_weapons_nailedclub.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.50, [2]=1.85, [3]=0.90}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:nailed_club",
	recipe = {
		{"default:mese_crystal_fragment", "", "default:mese_crystal_fragment"},
		{"default:steel_ingot", "extra_mele_weapons:club", "default:steel_ingot"},
		{"", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:lightsaber_red", {
		description = "".. core.colorize("#FF00BF", "Lightsaber - red\n")..core.colorize("#A0A0A0", "melee damage: 14\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.6 "),
	wield_scale = {x=1.5,y=1.5,z=1.1},
	inventory_image = "extra_mele_weapons_lightsaber_red.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.00, [2]=0.00, [3]=0.00}, uses=165, maxlevel=3},
			choppy={times={[1]=0.25, [2]=0.15, [3]=0.05}, uses=165, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:lightsaber_red",
	recipe = {
		{"default:diamondblock", "dye:red", "default:diamondblock"},
		{"default:diamondblock", "default:meselamp", "default:diamondblock"},
		{"default:mese", "default:steel_ingot", "default:mese"},
	}
})

minetest.register_tool("extra_mele_weapons:lightsaber_magenta", {
		description = "".. core.colorize("#FF00BF", "Lightsaber - magenta\n")..core.colorize("#A0A0A0", "melee damage: 14\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.6 "),
	wield_scale = {x=1.5,y=1.5,z=1.1},
	inventory_image = "extra_mele_weapons_lightsaber_magenta.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.00, [2]=0.00, [3]=0.00}, uses=165, maxlevel=3},
			choppy={times={[1]=0.25, [2]=0.15, [3]=0.05}, uses=165, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:lightsaber_magenta",
	recipe = {
		{"default:diamondblock", "dye:magenta", "default:diamondblock"},
		{"default:diamondblock", "default:meselamp", "default:diamondblock"},
		{"default:mese", "default:steel_ingot", "default:mese"},
	}
})

minetest.register_tool("extra_mele_weapons:lightsaber_blue", {
		description = "".. core.colorize("#FF00BF", "Lightsaber - blue\n")..core.colorize("#A0A0A0", "melee damage: 14\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.6 "),
	wield_scale = {x=1.5,y=1.5,z=1.1},
	inventory_image = "extra_mele_weapons_lightsaber_blue.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.00, [2]=0.00, [3]=0.00}, uses=165, maxlevel=3},
			choppy={times={[1]=0.25, [2]=0.15, [3]=0.05}, uses=165, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:lightsaber_blue",
	recipe = {
		{"default:diamondblock", "dye:blue", "default:diamondblock"},
		{"default:diamondblock", "default:meselamp", "default:diamondblock"},
		{"default:mese", "default:steel_ingot", "default:mese"},
	}
})

minetest.register_tool("extra_mele_weapons:lightsaber_yellow", {
		description = "".. core.colorize("#FF00BF", "Lightsaber - yellow\n")..core.colorize("#A0A0A0", "melee damage: 14\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.6 "),
	wield_scale = {x=1.5,y=1.5,z=1.1},
	inventory_image = "extra_mele_weapons_lightsaber_yellow.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.00, [2]=0.00, [3]=0.00}, uses=165, maxlevel=3},
			choppy={times={[1]=0.25, [2]=0.15, [3]=0.05}, uses=165, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:lightsaber_yellow",
	recipe = {
		{"default:diamondblock", "dye:yellow", "default:diamondblock"},
		{"default:diamondblock", "default:meselamp", "default:diamondblock"},
		{"default:mese", "default:steel_ingot", "default:mese"},
	}
})

minetest.register_tool("extra_mele_weapons:lightsaber_green", {
		description = "".. core.colorize("#FF00BF", "Lightsaber - green\n")..core.colorize("#A0A0A0", "melee damage: 14\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.6 "),
	wield_scale = {x=1.5,y=1.5,z=1.1},
	inventory_image = "extra_mele_weapons_lightsaber_green.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.00, [2]=0.00, [3]=0.00}, uses=165, maxlevel=3},
			choppy={times={[1]=0.25, [2]=0.15, [3]=0.05}, uses=165, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:lightsaber_green",
	recipe = {
		{"default:diamondblock", "dye:green", "default:diamondblock"},
		{"default:diamondblock", "default:meselamp", "default:diamondblock"},
		{"default:mese", "default:steel_ingot", "default:mese"},
	}
})

minetest.register_tool("extra_mele_weapons:trident", {
		description = "".. core.colorize("#FFFFFF", "Trident\n")..core.colorize("#A0A0A0", "melee damage: 11\n")..core.colorize("#A0A0A0", "range: 5.5 \n")..core.colorize("#A0A0A0", "attack interval: 1.5 "),
	wield_scale = {x=2.00,y=2.00,z=1.0},
	inventory_image = "extra_mele_weapons_trident.png",
	range = 5.5,
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=1,
		groupcaps={
			snappy = {times={[1]=0.3, [2]=0.2, [3]=0.1}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=11},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:trident",
	recipe = {
		{"default:mese_crystal_fragment", "default:mese_crystal_fragment", "default:mese_crystal_fragment"},
		{"default:gold_ingot", "default:diamond", "default:gold_ingot"},
		{"", "default:steel_ingot", ""},
	}
})

minetest.register_tool("extra_mele_weapons:machete", {
		description = "".. core.colorize("#FFFFFF", "Machete\n")..core.colorize("#A0A0A0", "melee damage: 6\n")..core.colorize("#A0A0A0", "range: 4.15 \n")..core.colorize("#A0A0A0", "attack interval: 0.8 "),
	wield_scale = {x=1.0,y=1.0,z=1.0},
	inventory_image = "extra_mele_weapons_machete.png",
	range = 4.15,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.2, [2]=0.1, [3]=0.05}, uses=80, maxlevel=3},
			choppy={times={[1]=2.65, [2]=1.50, [3]=1.05}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:machete",
	recipe = {
		{"default:axe_steel", "default:sword_steel"},
	}
})

minetest.register_tool("extra_mele_weapons:nunchucks", {
		description = "".. core.colorize("#FFFFFF", "Nunchucks\n")..core.colorize("#A0A0A0", "melee damage: 3\n")..core.colorize("#A0A0A0", "range: 5.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.30 "),
	wield_scale = {x=2.00,y=2.00,z=0.8},
	inventory_image = "extra_mele_weapons_nunchucks.png",
	range = 5.5,
	tool_capabilities = {
		full_punch_interval = 0.30,
		max_drop_level=1,
		groupcaps={
			snappy = {times={[1]=0.3, [2]=0.2, [3]=0.1}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:nunchucks",
	recipe = {
		{"default:steel_ingot", "farming:string", "default:steel_ingot"},
		{"group:wood", "", "group:wood"},
		{"default:steel_ingot", "", "default:steel_ingot"},
	}
})

minetest.register_tool("extra_mele_weapons:spear", {
		description = "".. core.colorize("#FFFFFF", "Spear\n")..core.colorize("#A0A0A0", "melee damage: 6\n")..core.colorize("#A0A0A0", "range: 5.25 \n")..core.colorize("#A0A0A0", "attack interval: 1.3 "),
	wield_scale = {x=2.00,y=2.00,z=1.0},
	inventory_image = "extra_mele_weapons_spear.png",
	range = 5.25,
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=1,
		groupcaps={
			snappy = {times={[1]=0.3, [2]=0.2, [3]=0.1}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:spear",
	recipe = {
		{"", "default:flint", "default:flint"},
		{"farming:string", "group:stick", "default:flint"},
		{"group:stick", "farming:string", ""},
	}
})

minetest.register_tool("extra_mele_weapons:mace", {
		description = "".. core.colorize("#FFFFFF", "Mace\n")..core.colorize("#A0A0A0", "melee damage: 10\n")..core.colorize("#A0A0A0", "range: 3.9 \n")..core.colorize("#A0A0A0", "attack interval: 1.4 "),
	wield_scale = {x=1.05,y=1.05,z=1.4},
	inventory_image = "extra_mele_weapons_mace.png",
	range = 3.9,
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:mace",
	recipe = {
		{"default:mese_crystal_fragment", "", "default:mese_crystal_fragment"},
		{"default:mese_crystal_fragment", "default:steelblock", "default:mese_crystal_fragment"},
		{"", "group:stick", ""},
	}
})

minetest.register_tool("extra_mele_weapons:naginata", {
		description = "".. core.colorize("#FFFFFF", "Naginata\n")..core.colorize("#A0A0A0", "melee damage: 6\n")..core.colorize("#A0A0A0", "range: 5.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.5 "),
	wield_scale = {x=1.9,y=1.9,z=0.9},
	inventory_image = "extra_mele_weapons_naginata.png",
	range = 5.25,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.2, [2]=0.1, [3]=0.05}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:naginata",
	recipe = {
		{"default:steel_ingot", "group:stick", "default:steel_ingot"},
		{"extra_mele_weapons:knife", "default:diamond", ""},
		{"default:diamond", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:death_scythe", {
		description = "".. core.colorize("#FF00BF", "Death's scythe\n")..core.colorize("#A0A0A0", "melee damage: 11\n")..core.colorize("#A0A0A0", "range: 4.75 \n")..core.colorize("#A0A0A0", "attack interval: 0.9 "),
	wield_scale = {x=1.5,y=1.5,z=1.0},
	inventory_image = "extra_mele_weapons_death_scythe.png",
	range = 4.75,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0, [2]=0.0, [3]=0.00}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=11},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:death_scythe",
	recipe = {
		{"default:diamond", "default:diamondblock", "default:diamondblock"},
		{"", "default:obsidian", ""},
		{"default:obsidian", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:kukri", {
		description = "".. core.colorize("#FFFFFF", "Kukri\n")..core.colorize("#A0A0A0", "melee damage: 6\n")..core.colorize("#A0A0A0", "range: 3.8 \n")..core.colorize("#A0A0A0", "attack interval: 0.6 "),
	wield_scale = {x=0.98,y=0.98,z=0.95},
	inventory_image = "extra_mele_weapons_kukri.png",
	range = 3.8,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.4, [2]=0.2, [3]=0.1}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:kukri",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", ""},
		{"", "default:steel_ingot", ""},
		{"", "group:stick", ""},
	}
})

minetest.register_tool("extra_mele_weapons:shortsword_steel", {
		description = "".. core.colorize("#FFFFFF", "Steel Shortsword\n")..core.colorize("#A0A0A0", "melee damage: 5\n")..core.colorize("#A0A0A0", "range: 3.10 \n")..core.colorize("#A0A0A0", "attack interval: 0.5 "),
	wield_scale = {x=0.9,y=0.9,z=0.9},
	inventory_image = "extra_mele_weapons_shortsword_steel.png",
	range = 3.10,
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.8, [2]=0.4, [3]=0.2}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:shortsword_steel",
	recipe = {
		{"", "default:steel_ingot", ""},
		{"group:stick", "", ""},
		{"", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:shortsword_copper", {
		description = "".. core.colorize("#FFFFFF", "Copper Shortsword\n")..core.colorize("#A0A0A0", "melee damage: 4\n")..core.colorize("#A0A0A0", "range: 3.10 \n")..core.colorize("#A0A0A0", "attack interval: 0.5 "),
	wield_scale = {x=0.9,y=0.9,z=0.9},
	inventory_image = "extra_mele_weapons_shortsword_copper.png",
	range = 3.10,
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.0, [2]=0.5, [3]=0.25}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:shortsword_copper",
	recipe = {
		{"", "default:copper_ingot", ""},
		{"group:stick", "", ""},
		{"", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:thornsword", {
		description = "".. core.colorize("#FFFFFF", "Thorny sword\n")..core.colorize("#A0A0A0", "melee damage: 5\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "attack interval: 0.9 "),
	wield_scale = {x=1.0,y=1.0,z=1.0},
	inventory_image = "extra_mele_weapons_thornsword.png",
	range = 4,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.8, [2]=0.4, [3]=0.2}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:thornsword",
	recipe = {
		{"", "default:cactus", ""},
		{"default:dry_shrub", "default:cactus", "default:dry_shrub"},
		{"", "default:dry_shrub", ""},
	}
})

minetest.register_tool("extra_mele_weapons:shard", {
		description = "".. core.colorize("#FFFFFF", "Glass shard in paper\n")..core.colorize("#A0A0A0", "melee damage: 3\n")..core.colorize("#A0A0A0", "range: 2.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.25 "),
	wield_scale = {x=0.5,y=0.5,z=0.5},
	inventory_image = "extra_mele_weapons_shard.png",
	range = 2.0,
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.45, [2]=0.25, [3]=0.15}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=3},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:shard",
	recipe = {
		{"", "default:glass", ""},
		{"", "default:paper", ""},
		{"", "", ""},
	}
})
minetest.register_tool("extra_mele_weapons:longsword", {
		description = "".. core.colorize("#FFFFFF", "Longsword\n")..core.colorize("#A0A0A0", "melee damage: 8\n")..core.colorize("#A0A0A0", "range: 4.75 \n")..core.colorize("#A0A0A0", "attack interval: 1.15 "),
	wield_scale = {x=2.0,y=2.0,z=1.0},
	inventory_image = "extra_mele_weapons_longsword.png",
	range = 4.75,
	tool_capabilities = {
		full_punch_interval = 1.15,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.3, [2]=0.2, [3]=0.1}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:longsword",
	recipe = {
		{"", "default:steel_ingot", ""},
		{"", "default:steel_ingot", ""},
		{"default:gold_ingot", "default:sword_steel", "default:gold_ingot"},
	}
})


minetest.register_tool("extra_mele_weapons:adventurer_sword", {
		description = "".. core.colorize("#FFFFFF", " Adventurer's sword\n")..core.colorize("#A0A0A0", "melee damage: 10\n")..core.colorize("#A0A0A0", "range: 4.30 \n")..core.colorize("#A0A0A0", "attack interval: 0.75"),
	wield_scale = {x=1.5,y=1.5,z=1.0},
	inventory_image = "extra_mele_weapons_adventurer_sword.png",
	range = 4.30,
	tool_capabilities = {
		full_punch_interval = 0.75,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.04, [2]=0.020, [3]=0.008}, uses=100, maxlevel=3},

		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:adventurer_sword",
	recipe = {
		{"", "", "default:goldblock"},
		{"default:coal_lump", "default:goldblock", ""},
		{"default:mese_crystal", "default:coal_lump", ""},
	}
})

minetest.register_tool("extra_mele_weapons:stop_sign", {
		description = "".. core.colorize("#FFFFFF", "STOP sign\n")..core.colorize("#A0A0A0", "melee damage: 12\n")..core.colorize("#A0A0A0", "range: 5.5 \n")..core.colorize("#A0A0A0", "attack interval: 1.75"),
	wield_scale = {x=2.0,y=2.0,z=1.0},
	inventory_image = "extra_mele_weapons_stop_sign.png",
	range = 5.5,
	tool_capabilities = {
		full_punch_interval = 1.75,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=5.0, [2]=2.1, [3]=1.0}, uses=40, maxlevel=2},
			choppy={times={[1]=3.00, [2]=1.8, [3]=1.25}, uses=40, maxlevel=2},
			crumbly = {times={[1]=1.75, [2]=1.10, [3]=0.50}, uses=60, maxlevel=2},
			snappy={times={[1]=2.75, [2]=1.30, [3]=0.4}, uses=60, maxlevel=2},
		},
		damage_groups = {fleshy=12},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:stop_sign",
	recipe = {
		{"", "dye:red", "default:steelblock"},
		{"", "default:steel_ingot", "dye:red"},
		{"default:steel_ingot", "", ""},
	}
})

minetest.register_tool("extra_mele_weapons:rolled_newspaper", {
		description = "".. core.colorize("#FFFFFF", "Rolled newspaper\n")..core.colorize("#A0A0A0", "melee damage: 2\n")..core.colorize("#A0A0A0", "range: 4.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.3"),
	wield_scale = {x=1.0,y=1.0,z=1.0},
	inventory_image = "extra_mele_weapons_rolled_newspaper.png",
	range = 4.0,
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=4.0, [2]=2.0, [3]=1.0}, uses=25, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:rolled_newspaper",
	recipe = {
		{"", "default:paper", "dye:black"},
		{"", "default:paper", "default:paper"},
		{"default:paper", "", ""},
	}
})

if minetest.get_modpath("moreores") then

minetest.register_tool("extra_mele_weapons:athame", {
		description = "".. core.colorize("#FFFFFF", "Athame\n")..core.colorize("#A0A0A0", "melee damage: 6\n")..core.colorize("#A0A0A0", "range: 2.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.22 "),
	wield_scale = {x=0.85,y=0.85,z=0.85},
	inventory_image = "extra_mele_weapons_athame.png",
	range = 2.5,
	tool_capabilities = {
		full_punch_interval = 0.22,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.45, [2]=0.25, [3]=0.15}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:athame",
	recipe = {
		{"", "", "moreores:silver_ingot"},
		{"dye:black", "moreores:silver_ingot", ""},
	}
})

minetest.register_tool("extra_mele_weapons:dragon_sword", {
		description = "".. core.colorize("#FFBF00", "Dragon GreatSword\n")..core.colorize("#A0A0A0", "melee damage: 17\n")..core.colorize("#A0A0A0", "range: 4.6 \n")..core.colorize("#A0A0A0", "attack interval: 0.75 "),
	wield_scale = {x=2.25,y=2.25,z=1.5},
	inventory_image = "extra_mele_weapons_dragon_sword.png",
	range = 4.6,
	tool_capabilities = {
		full_punch_interval = 0.75,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.00, [2]=0.00, [3]=0.00}, uses=420, maxlevel=3},
			choppy={times={[1]=0.1, [2]=0.05, [3]=0.025}, uses=420, maxlevel=3},
		},
		damage_groups = {fleshy=17},
	},
})



minetest.register_craft({
	output = "extra_mele_weapons:dragon_sword",
	recipe = {
		{"", "moreores:mithril_ingot", ""},
		{"moreores:mithril_block", "extra_mele_weapons:flaming_sword", "moreores:mithril_block"},
		{"moreores:mithril_ingot", "default:obsidian", "moreores:mithril_ingot"},
	}
})

minetest.register_tool("extra_mele_weapons:thorshammer", {
		description = "".. core.colorize("#FF00BF", "Thor's hammer\n")..core.colorize("#A0A0A0", "melee damage: 22\n")..core.colorize("#A0A0A0", "range: 4.20 \n")..core.colorize("#A0A0A0", "attack interval: 2.0 "),
	wield_scale = {x=2.00,y=2.00,z=1.5},
	inventory_image = "extra_mele_weapons_thorshammer.png",
	range = 4.20,
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=0.1, [2]=0.05, [3]=0.01}, uses=175, maxlevel=3},
		},
		damage_groups = {fleshy=22},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:thorshammer",
	recipe = {
		{"moreores:mithril_block", "moreores:silver_block", "moreores:mithril_block"},
		{"moreores:mithril_block", "default:goldblock", "moreores:mithril_block"},
		{"", "default:diamondblock", ""},
	}
})


minetest.register_tool("extra_mele_weapons:greatsword", {
		description = "".. core.colorize("#FFFFFF", " GreatSword\n")..core.colorize("#A0A0A0", "melee damage: 10\n")..core.colorize("#A0A0A0", "range: 4.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.90 "),
	wield_scale = {x=1.5,y=1.5,z=1.0},
	inventory_image = "extra_mele_weapons_greatsword.png",
	range = 4.5,
	tool_capabilities = {
		full_punch_interval = 0.90,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.05, [2]=0.025, [3]=0.01}, uses=100, maxlevel=3},

		},
		damage_groups = {fleshy=10},
	},
})



minetest.register_craft({
	output = "extra_mele_weapons:greatsword",
	recipe = {
		{"", "moreores:silver_block", ""},
		{"default:gold_ingot", "default:diamond", "default:gold_ingot"},
		{"", "default:gold_ingot", ""},
	}
})

end

if minetest.get_modpath("mobs_animal") then

minetest.register_tool("extra_mele_weapons:bone_sword", {
		description = "".. core.colorize("#FFFFFF", " Bone sword\n")..core.colorize("#A0A0A0", "melee damage: 7\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.70"),
	wield_scale = {x=1.5,y=1.5,z=1.0},
	inventory_image = "extra_mele_weapons_bone_sword.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.70,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.1, [2]=0.05, [3]=0.02}, uses=40, maxlevel=3},

		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_craft({
	output = "extra_mele_weapons:bone_sword",
	recipe = {
		{"", "", "extra_mele_weapons:huge_bone"},
		{"extra_mele_weapons:huge_bone", "extra_mele_weapons:huge_bone", ""},
		{"extra_mele_weapons:huge_bone", "extra_mele_weapons:huge_bone", ""},
	}
})

minetest.register_tool("extra_mele_weapons:huge_ham_xxxxx", {
		description = "".. core.colorize("#FFFFFF", "huge ham\n")..core.colorize("#A0A0A0", "melee damage: 8\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "interval: 1.5 \n")..core.colorize("#A0A0A0", "Right-click to take a bite and restore 3 HP \n")..core.colorize("#A0A0A0", "5 bites remain"),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	inventory_image = "extra_mele_weapons_huge_ham_xxxxx.png",
	on_secondary_use = minetest.item_eat(3, "extra_mele_weapons:huge_ham_xxxx"),
	range = 4.0,
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.75, [2]=0.55, [3]=0.25}, uses=25, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_tool("extra_mele_weapons:huge_ham_xxxx", {
		description = "".. core.colorize("#FFFFFF", "huge ham\n")..core.colorize("#A0A0A0", "melee damage: 7\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "interval: 1.25 \n")..core.colorize("#A0A0A0", "Right-click to take a bite and restore 3 HP \n")..core.colorize("#A0A0A0", "4 bites remain"),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	inventory_image = "extra_mele_weapons_huge_ham_xxxx.png",
	on_secondary_use = minetest.item_eat(3, "extra_mele_weapons:huge_ham_xxx"),
	range = 4.0,
	tool_capabilities = {
		full_punch_interval = 1.25,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.75, [2]=0.55, [3]=0.25}, uses=25, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	groups = {not_in_creative_inventory=1},
})

minetest.register_tool("extra_mele_weapons:huge_ham_xxx", {
		description = "".. core.colorize("#FFFFFF", "huge ham\n")..core.colorize("#A0A0A0", "melee damage: 6\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "interval: 1.0 \n")..core.colorize("#A0A0A0", "Right-click to take a bite and restore 3 HP \n")..core.colorize("#A0A0A0", "3 bites remain"),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	inventory_image = "extra_mele_weapons_huge_ham_xxx.png",
	on_secondary_use = minetest.item_eat(3, "extra_mele_weapons:huge_ham_xx"),
	range = 4.0,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.75, [2]=0.55, [3]=0.25}, uses=25, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	groups = {not_in_creative_inventory=1},
})

minetest.register_tool("extra_mele_weapons:huge_ham_xx", {
		description = "".. core.colorize("#FFFFFF", "huge ham\n")..core.colorize("#A0A0A0", "melee damage: 5\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "interval: 0.75 \n")..core.colorize("#A0A0A0", "Right-click to take a bite and restore 3 HP \n")..core.colorize("#A0A0A0", "2 bites remain"),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	inventory_image = "extra_mele_weapons_huge_ham_xx.png",
	on_secondary_use = minetest.item_eat(3, "extra_mele_weapons:huge_ham_x"),
	range = 4.0,
	tool_capabilities = {
		full_punch_interval = 0.75,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.75, [2]=0.55, [3]=0.25}, uses=25, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	groups = {not_in_creative_inventory=1},
})

minetest.register_tool("extra_mele_weapons:huge_ham_x", {
		description = "".. core.colorize("#FFFFFF", "huge ham\n")..core.colorize("#A0A0A0", "melee damage: 4\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "interval: 0.5 \n")..core.colorize("#A0A0A0", "Right-click to take a bite and restore 3 HP \n")..core.colorize("#A0A0A0", "1 bite remains"),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	inventory_image = "extra_mele_weapons_huge_ham_x.png",
	on_secondary_use = minetest.item_eat(3, "extra_mele_weapons:huge_bone"),
	range = 4.0,
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.75, [2]=0.55, [3]=0.25}, uses=25, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	groups = {not_in_creative_inventory=1},
})

minetest.register_tool("extra_mele_weapons:huge_bone", {
		description = "".. core.colorize("#FFFFFF", "huge bone\n")..core.colorize("#A0A0A0", "melee damage: 2\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "interval: 0.3 \n")..core.colorize("#A0A0A0", "Ahhh... what a shame... all the delicious ham has been eaten!"),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	inventory_image = "extra_mele_weapons_huge_bone.png",
	range = 4.0,
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.75, [2]=0.55, [3]=0.25}, uses=25, maxlevel=3},
		},
		damage_groups = {fleshy=2},
	},
	groups = {not_in_creative_inventory=1},
})

minetest.register_craft({
	output = "extra_mele_weapons:huge_ham_xxxxx",
	recipe = {
		{"mobs:pork_raw", "mobs:pork_raw", "mobs:pork_raw"},
		{"mobs:pork_raw", "mobs:pork_raw", "mobs:pork_raw"},
		{"", "mobs:pork_raw", ""},
	}
})

end


if minetest.get_modpath("vessels") then

minetest.override_item("vessels:glass_bottle", {
	on_use = function(itemstack, user, pointed_thing)
			if pointed_thing.type == "node" 
	then
itemstack:take_item()
		local inv = user:get_inventory()
		inv:add_item("main", "extra_mele_weapons:broken_bottle")
			minetest.sound_play("glass_break", {object=user})
			return itemstack
		end

	end,

minetest.register_tool("extra_mele_weapons:broken_bottle", {
		description = "".. core.colorize("#FFFFFF", "Broken glass bottle\n")..core.colorize("#A0A0A0", "melee damage: 4\n")..core.colorize("#A0A0A0", "range: 3.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.5 "),
	wield_scale = {x=0.9,y=0.9,z=0.9},
	inventory_image = "extra_mele_weapons_broken_bottle.png",
	range = 3.0,
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.45, [2]=0.25, [3]=0.15}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})
})

end

if minetest.global_exists("dungeon_loot") then

minetest.register_tool("extra_mele_weapons:dungeon_warrior_sword", {
		description = "".. core.colorize("#00fff6", "Dungeon warrior's sword\n")..core.colorize("#A0A0A0", "melee damage: 12\n")..core.colorize("#A0A0A0", "range: 4.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.9"),
	wield_scale = {x=1.75,y=1.75,z=1.0},
	inventory_image = "extra_mele_weapons_dungeon_warrior_sword.png",
	range = 4.50,
	tool_capabilities = {
		full_punch_interval = 0.75,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.04, [2]=0.020, [3]=0.008}, uses=100, maxlevel=3},

		},
		damage_groups = {fleshy=12},
	},
})

minetest.register_tool("extra_mele_weapons:rapier", {
		description = "".. core.colorize("#00fff6", "Rapier\n")..core.colorize("#A0A0A0", "melee damage: 6\n")..core.colorize("#A0A0A0", "range: 4.20 \n")..core.colorize("#A0A0A0", "attack interval: 0.5 "),
	wield_scale = {x=1.375,y=1.375,z=0.75},
	inventory_image = "extra_mele_weapons_rapier.png",
	range = 4.20,
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.15, [2]=0.075, [3]=0.03}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_tool("extra_mele_weapons:claymore", {
		description = "".. core.colorize("#00fff6", "Claymore\n")..core.colorize("#A0A0A0", "melee damage: 8\n")..core.colorize("#A0A0A0", "range: 4.20 \n")..core.colorize("#A0A0A0", "attack interval: 0.7 "),
	wield_scale = {x=1.375,y=1.375,z=0.75},
	inventory_image = "extra_mele_weapons_claymore.png",
	range = 4.20,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.15, [2]=0.075, [3]=0.03}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_tool("extra_mele_weapons:sword_of_life", {
		description = "".. core.colorize("#00fff6", "Sword Of Life\n")..core.colorize("#A0A0A0", "melee damage: 8\n") ..core.colorize("#A0A0A0", "range: 4.0 \n") ..core.colorize("#A0A0A0", "attack interval: 0.7 \n") ..core.colorize("#A0A0A0", "Regenerates 1HP every 3 seconds while held "),
	wield_scale = {x=1.0,y=1.0,z=1.0},
	inventory_image = "extra_mele_weapons_sword_of_life.png",
	range = 4.0,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_tool("extra_mele_weapons:enchanted_battleaxe", {
		description = "".. core.colorize("#00fff6", "Enchanted Battle axe\n")..core.colorize("#A0A0A0", "melee damage: 16\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 0.9"),
	wield_scale = {x=1.375,y=1.375,z=1.1},
	inventory_image = "extra_mele_weapons_enchanted_battleaxe.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.20, [2]=0.60, [3]=0.30}, uses=200, maxlevel=3},
		},
		damage_groups = {fleshy=16},
	},
})


minetest.register_tool("extra_mele_weapons:sword_of_power", {
		description = "".. core.colorize("#00fff6", "Sword Of Power\n")..core.colorize("#A0A0A0", "melee damage: 14\n") ..core.colorize("#A0A0A0", "range: 4.25 \n") ..core.colorize("#A0A0A0", "attack interval: 0.75 \n") ..core.colorize("#A0A0A0", "while swung, launches a power beam, that deals 10 DMG on contact "),
	wield_scale = {x=1.5,y=1.5,z=1.0},
	inventory_image = "extra_mele_weapons_power_sword.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.75,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=200, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})

local extra_mele_weapons_power_beam = {
	physical = false,
	timer = 0,
	glow = 15,
	visual = "wielditem",
	visual_size = {x=1.0, y=1.0,},
	textures = {"extra_mele_weapons:beam_visual"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
extra_mele_weapons_power_beam.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:get_pos()
	local node = minetest.get_node(pos)
	if self.timer > 4 then self.object:remove() end

	if self.timer > 0.2 then

for i = 1,math.random(2,4) do
	minetest.add_particle({
		pos = {x=pos.x,y=pos.y,z=pos.z},
		velocity = {x=math.random(-2,2), y=math.random(-2,2), z=math.random(-2,2)},
          acceleration = {x=math.random(-2,2), y=math.random(-3,3), z=math.random(-2,2)},
		expirationtime = 0.7, 
		size = math.random(3,6), 
		collisiondetection = true,
		collision_removal = false,
		vertical = false,
		texture = "extra_mele_weapons_powersword_partilce.png",
          animation = {type="vertical_frames", aspect_w=8, aspect_h=8, length = 0.8,},
		glow = 15,
	})
end


		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "extra_mele_weapons:power_beam" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 10
					obj:punch(minetest.get_player_by_name(self.owner), 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()

				end
			else
				local damage = 10
				obj:punch(minetest.get_player_by_name(self.owner), 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("extra_mele_weapons:power_beam", extra_mele_weapons_power_beam )

minetest.register_craftitem("extra_mele_weapons:beam_visual", {
	inventory_image = "extra_mele_weapons_powersword_projectile.png",
})


	dungeon_loot.register({
		{name = "extra_mele_weapons:dungeon_warrior_sword", chance = 0.125, count = {1, 1}},
		{name = "extra_mele_weapons:enchanted_battleaxe", chance = 0.035, count = {1, 1}},
		{name = "extra_mele_weapons:sword_of_life", chance = 0.125, count = {1, 1}},
		{name = "extra_mele_weapons:rapier", chance = 0.2, count = {1, 1}},
		{name = "extra_mele_weapons:claymore", chance = 0.2, count = {1, 1}},
		{name = "extra_mele_weapons:sword_of_power", chance = 0.03, count = {1, 1}},
	})
end


regen_int_timer = 0


minetest.register_globalstep(function(dtime)
regen_int_timer = regen_int_timer + dtime

for _, player in pairs(minetest.get_connected_players()) do
local playerMeta = player:get_meta()
if playerMeta:get_float("extra_melee_special_charge") < 100.0 then
playerMeta:set_float("extra_melee_special_charge",playerMeta:get_float("extra_melee_special_charge") + dtime)
end
local controls = player:get_player_control()
if controls.LMB then
if player:get_wielded_item():get_name() == "extra_mele_weapons:sword_of_power" then
if playerMeta:get_float("extra_melee_special_charge") > 1.5 then
playerMeta:set_float("extra_melee_special_charge",0.0)

		local pos = player:get_pos()
		local dir = player:get_look_dir()
		local yaw = player:get_look_yaw()
		local vertical = player:get_look_vertical()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
local obj = minetest.add_entity(pos, "extra_mele_weapons:power_beam")
			if obj then
obj:set_velocity({x=dir.x*20, y=dir.y*20, z=dir.z*20})
obj:set_rotation({x=0,y=yaw + math.pi,z=-vertical})
local ent = obj:get_luaentity()
ent.owner = player:get_player_name()
end end

end end end

end

if regen_int_timer >= 3 then
regen_int_timer = 0

for _, player in pairs(minetest.get_connected_players()) do
if player:get_wielded_item():get_name() == "extra_mele_weapons:sword_of_life" then
player:set_hp(player:get_hp() + 1)
end end

end


end)