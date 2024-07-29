global.ui_scale = 3;

global.inventory_bone_dust_count = 99;
global.inventory_light_flower_count = 99;
global.inventory_shadow_essence_count = 99;

global.inventory_alchemists_fire_count = 99;
global.inventory_bottled_light_count = 99;
global.inventory_clarity_tincture_count = 99;

instance_create_layer(0, 0, "Instances", obj_pause);

obj_player.x = room_width / 2;
obj_player.y = room_height / 2;

spawn_in_spots()

spawn_in_rings(
	obj_player.x,
	obj_player.y,
	150,
	point_distance(0, 0, obj_player.x, obj_player.y), // Stretch all the way to the corner
	obj_player.sprite_height,
	0.001,
	0.05,
	0.5,
	20,
	[
		obj_shadow_cloud_0,
		obj_shadow_cloud_1,
		obj_shadow_cloud_2
	],
	"Instances"
)

spawn_in_rings(
	obj_player.x,
	obj_player.y,
	150,
	point_distance(0, 0, obj_player.x, obj_player.y), // Stretch all the way to the corner
	obj_player.sprite_height,
	0.0005,
	0.001,
	0.5,
	20,
	[
		obj_light_flower,
		obj_skull,
	],
	"Instances"
)