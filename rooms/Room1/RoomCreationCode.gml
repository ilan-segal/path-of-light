global.ui_scale = 3;

global.inventory_bone_dust_count = 99;
global.inventory_light_flower_count = 99;
global.inventory_shadow_essence_count = 99;

global.inventory_alchemists_fire_count = 99;
global.inventory_bottled_light_count = 99;
global.inventory_brightflame_oil_count = 99;
global.inventory_clarity_tincture_count = 99;

instance_create_layer(0, 0, "Instances", obj_pause);

obj_player.x = room_width / 2;
obj_player.y = room_height / 2;

var _darkness_distance = obj_player.sprite_height;

var _minimum_radius = 150;
var _maximum_radius = point_distance(0, 0, obj_player.x, obj_player.y);
var _radius_step = _darkness_distance;

var _minimum_density = 0.001;
var _maximum_density = 0.05;
var _maximum_density_radius = 0.5 * (_minimum_radius + _maximum_radius);
var _density_gradient_size = _maximum_density_radius - _minimum_radius;

var _random_offset = 20;

function spawn_darkness_cloud(_spawn_x, _spawn_y)
{
	switch (irandom(2)) {
		case 0: instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_shadow_cloud_0); break;
		case 1: instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_shadow_cloud_1); break;
		case 2: instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_shadow_cloud_2); break;
	}
}

for (var _radius = _minimum_radius; _radius < _maximum_radius; _radius += _radius_step)
{
	var _circumference = 2 * pi * _radius;
	var _density_percentage = clamp((_radius - _minimum_radius) / _density_gradient_size, 0, 1);
	var _cur_density = lerp(_minimum_density, _maximum_density, _density_percentage);
	var _num_darkness_clouds = round(_circumference * _cur_density);
	
	for (var _i = 0; _i < _num_darkness_clouds; _i++)
	{
		var _angle = random_range(0, 2 * pi);
		var _x = _radius * cos(_angle) + obj_player.x;
		var _y = _radius * sin(_angle) + obj_player.y;
		
		spawn_darkness_cloud(_x, _y);
		
	}
	
}

var _num_flowers = 50;
for (var _i = 0; _i < _num_flowers; _i++)
{
	var _x = random(room_width);
	var _y = random(room_height);
	instance_create_layer(_x, _y, "Instances", obj_light_flower);
}

var _num_skulls = 50;
for (var _i = 0; _i < _num_skulls; _i++)
{
	var _x = random(room_width);
	var _y = random(room_height);
	instance_create_layer(_x, _y, "Instances", obj_skull);
}