function swing_torch()
{
	if (instance_exists(obj_generic_attack)) return;

	var _generic_attack = instance_create_layer(x, y, "ForegroundInstances", obj_generic_attack);
	_generic_attack.image_angle = attack_angle;
	_generic_attack.image_xscale = image_xscale;
	_generic_attack.image_yscale = image_yscale;
	if (attack_angle < 270 && attack_angle > 90)
	{
		_generic_attack.image_yscale *= -1;
	}
	var _sound = audio_play_sound(snd_torch, 10, false);
	var _pitch_variance = random_range(0.8, 1.2);
	audio_sound_pitch(_sound, _pitch_variance);
}

function throw_alchemists_fire()
{
	if (global.inventory_alchemists_fire_count <= 0) return;
	
	// TODO
}

function throw_bottled_light()
{
	if (global.inventory_bottled_light_count <= 0) return;
	
	// TODO
}

function consume_clarity_tincture()
{
	if (global.inventory_clarity_tincture_count <= 0) return;
	
	// TODO
}

function consume_brightflame_oil()
{
	// TODO
}