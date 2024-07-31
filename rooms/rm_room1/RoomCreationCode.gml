/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2BDBA7D9
/// @DnDArgument : "code" "global.ui_scale = 3;$(13_10)$(13_10)var _starting_amount = 99; // Change for development$(13_10)$(13_10)global.inventory_bone_dust_count = _starting_amount;$(13_10)global.inventory_light_flower_count = _starting_amount;$(13_10)global.inventory_shadow_essence_count = _starting_amount;$(13_10)$(13_10)global.inventory_alchemists_fire_count = _starting_amount;$(13_10)global.inventory_bottled_light_count = _starting_amount;$(13_10)global.inventory_clarity_tincture_count = _starting_amount;$(13_10)$(13_10)instance_create_layer(0, 0, "Instances", obj_pause);$(13_10)$(13_10)obj_player.x = room_width / 2;$(13_10)obj_player.y = room_height / 2;$(13_10)$(13_10)spawn_in_spots()$(13_10)$(13_10)spawn_in_rings($(13_10)	obj_player.x,$(13_10)	obj_player.y,$(13_10)	150,$(13_10)	point_distance(0, 0, obj_player.x, obj_player.y), // Stretch all the way to the corner$(13_10)	obj_player.sprite_height,$(13_10)	0.001,$(13_10)	0.05,$(13_10)	0.5,$(13_10)	20,$(13_10)	[$(13_10)		obj_shadow_cloud_0,$(13_10)		obj_shadow_cloud_1,$(13_10)		obj_shadow_cloud_2$(13_10)	],$(13_10)	"Instances"$(13_10))$(13_10)$(13_10)spawn_in_rings($(13_10)	obj_player.x,$(13_10)	obj_player.y,$(13_10)	150,$(13_10)	point_distance(0, 0, obj_player.x, obj_player.y), // Stretch all the way to the corner$(13_10)	obj_player.sprite_height,$(13_10)	0.0005,$(13_10)	0.001,$(13_10)	0.5,$(13_10)	20,$(13_10)	[$(13_10)		obj_light_flower,$(13_10)		obj_skull,$(13_10)	],$(13_10)	"Instances"$(13_10))"
global.ui_scale = 3;

var _starting_amount = 99; // Change for development

global.inventory_bone_dust_count = _starting_amount;
global.inventory_light_flower_count = _starting_amount;
global.inventory_shadow_essence_count = _starting_amount;

global.inventory_alchemists_fire_count = _starting_amount;
global.inventory_bottled_light_count = _starting_amount;
global.inventory_clarity_tincture_count = _starting_amount;

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