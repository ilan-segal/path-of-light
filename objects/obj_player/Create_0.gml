function swing_torch()
{
	if (instance_exists(obj_torch_attack)) return;

	var _generic_attack = instance_create_layer(x, y, "ForegroundInstances", obj_torch_attack);
	_generic_attack.image_angle = attack_angle;
	_generic_attack.image_xscale = image_xscale;
	_generic_attack.image_yscale = image_yscale;
	if (attack_angle < 270 && attack_angle > 90)
	{
		_generic_attack.image_yscale *= -1;
	}
	play_sound(snd_torch);
}

function throw_alchemists_fire()
{
	if (global.inventory_alchemists_fire_count <= 0) return;
	
	global.inventory_alchemists_fire_count--;
	
	instance_create_layer(
		x,
		y,
		"Instances",
		obj_alchemists_fire,
		{
			target_x: mouse_x,
			target_y: mouse_y,
		}
	)
}

function throw_bottled_light()
{
	if (global.inventory_bottled_light_count <= 0) return;
	
	global.inventory_bottled_light_count--;
	
	instance_create_layer(
		x,
		y,
		"Instances",
		obj_bottled_light,
		{
			target_x: mouse_x,
			target_y: mouse_y,
		}
	);
}

function consume_clarity_tincture()
{
	if (global.inventory_clarity_tincture_count <= 0) return;
	
	global.inventory_clarity_tincture_count--;
	
	play_sound(snd_clarity_tincture);
	sanity = clamp(sanity + clarity_tincture_heal_amount, 0, 100);
	var _num_sparkles = 5;
	var _spread = 10;
	for (var _i = 0; _i < _num_sparkles; _i++)
	{
		var _x = x + random_range(-_spread, _spread);
		var _y = y + random_range(-_spread, _spread);
		effect_create_above(ef_spark, _x, _y, 0, #53E2F2);
	}
}

function consume_brightflame_oil()
{
	// TODO
}