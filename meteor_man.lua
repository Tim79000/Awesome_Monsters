mobs:register_mob("awesome_monsters:meteor_man", {
	type = "monster",
	passive = false,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 12,
	dogshoot_count2_max = 3,
	reach = 2,
                  shoot_offset = 2,
	shoot_interval = 0.5,
	arrow = "awesome_monsters:star",
	damage = 3,
	hp_min = 25,
	hp_max = 35,
	armor = 100,
	collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.7, 0.3},
	visual = "mesh",
	mesh = "character.b3d",
	textures = {
		{"awesome_monsters_meteor_man.png"},
	},
	blood_texture = "default_cobble.png",
	makes_footstep_sound = true,
	sounds = {
		random = "awesome_monsters_meteor_man",
	},
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	view_range = 15,
	floats = 1,
	drops = {
		{name = "default:gold_lump", chance = 5, min = 1, max = 3},
	},
	water_damage = 0,
	lava_damage = 0,
	fire_damage = 0,
	light_damage = 0,
	animation = {
		stand_start = 0,
		stand_end = 79,
		stand_speed = 30,
		walk_start = 168,
		walk_end = 187,
		walk_speed = 30,
		run_start = 168,
		run_end = 187,
		run_speed = 30,
		punch_start = 189,
		punch_end = 198,
		punch_speed = 30,
		die_start = 162,
		die_end = 166,
		die_speed = 0.8
	},	
})

mobs:register_arrow("awesome_monsters:star", {
  	visual = "sprite",
	textures = {"awesome_monsters_star.png"},
	visual_size = {x = 0.5, y = 0.5},
	velocity = 8,
  	rotate = 180,

	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 3},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 3},
		}, nil)
	end,

	hit_node = function(self, pos, node)
	end
})

mobs:spawn({
	name = "awesome_monsters:meteor_man",
	nodes = {"default:silver_sandstone", "default:silver_sand"},
	min_light = 0,
	max_light = 15,
	chance = 3000,
	active_object_count = 3,
	min_height = 0,
	day_toggle = true,
})