sanity = max_sanity;

function swing_torch()
{
	if (instance_exists(obj_torch_attack) || !can_swing) return;
	
	var _offset = 20;
	var _angle_rad = -degtorad(attack_angle);
	var _atk_x = x + _offset * cos(_angle_rad);
	var _atk_y = y + _offset * sin(_angle_rad);

	var _generic_attack = instance_create_layer(
		_atk_x,
		_atk_y,
		"ForegroundInstances",
		obj_torch_attack,
		{
			offset_x: _offset * cos(_angle_rad),
			offset_y: _offset * sin(_angle_rad),
		}
	);
	_generic_attack.image_angle = attack_angle;
	_generic_attack.image_xscale = image_xscale * torch_size_multiplier;
	_generic_attack.image_yscale = image_yscale * torch_size_multiplier;
	if (attack_angle < 270 && attack_angle > 90)
	{
		_generic_attack.image_yscale *= -1;
	}
	play_sound(snd_torch);
	
	alarm[1] = swing_cooldown;
	can_swing = false;
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
	sanity = clamp(sanity + max_sanity * clarity_tincture_heal_percentage, 0, max_sanity);
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
	if (torch_upgrades_count >= maximum_torch_upgrades) return;
	
	attack_damage += torch_damage_upgrade;
	torch_size_multiplier += torch_size_multiplier_upgrade;
	torch_upgrades_count++;
	
	play_sound(snd_brightflame_oil);
}