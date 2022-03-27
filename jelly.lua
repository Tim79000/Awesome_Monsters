mobs:register_mob("awesome_monsters:jelly", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 1,
	hp_min = 3,
	hp_max = 5,
	armor = 100,
	collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.7, 0.3},
	visual = "mesh",
	mesh = "awesome_monsters_jelly.obj",
	textures = {
		{"awesome_monsters_jelly.png"},
	},
	blood_texture = "awesome_monsters_dead_jelly.png",
	makes_footstep_sound = true,
	sounds = {
		random = "awesome_monsters_jelly",
	},
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	view_range = 15,
	floats = 1,
	drops = {
		{name = "awesome_monsters:dead_jelly", chance = 1, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 0,
	fire_damage = 0,
	light_damage = 0,	
})

mobs:spawn({
	name = "awesome_monsters:jelly",
	nodes = {"default:dirt_with_grass", "default:dry_dirt_with_dry_grass"},
	min_light = 0,
	max_light = 15,
	chance = 3000,
	active_object_count = 3,
	min_height = 0,
	day_toggle = true,
})

minetest.register_craftitem("awesome_monsters:dead_jelly", {
    description = "Dead Jelly",
    inventory_image = "awesome_monsters_dead_jelly.png",
    on_use = minetest.item_eat(3),
})

minetest.register_craft({
	output = "default:torch 4",
	recipe = {
		{"awesome_monsters:dead_jelly"},
		{"group:stick"},
	}
})

--Mercury

mobs:register_mob("awesome_monsters:mercury", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 3,
	hp_min = 8,
	hp_max = 10,
	armor = 100,
	collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.7, 0.3},
	visual = "mesh",
	mesh = "awesome_monsters_jelly.obj",
	textures = {
		{"awesome_monsters_mercury.png"},
	},
	blood_texture = "awesome_monsters_mercury.png",
	makes_footstep_sound = true,
	sounds = {
		random = "awesome_monsters_jelly",
	},
	walk_velocity = 3,
	run_velocity =5,
	jump = true,
	view_range = 15,
	floats = 1,
	water_damage = 0,
	lava_damage = 0,
	fire_damage = 0,
	light_damage = 0,	
})

mobs:spawn({
	name = "awesome_monsters:mercury",
	nodes = {"default:silver_sand", "default:silver_sandstone"},
	min_light = 0,
	max_light = 15,
	chance = 3000,
	active_object_count = 3,
	min_height = 0,
	day_toggle = true,
})