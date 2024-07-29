if(sanity <= 0)
{
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;

	if (alarm_get(0) == -1) {
		alarm_set(0, game_get_speed(gamespeed_fps) * 1.0);
	}
}

if (distance_covered >= distance_needed && !altar_created)
{
	altar_created = true;
	var _chosen_spot =  instance_find(obj_potential_altar_spot, irandom(instance_number(obj_potential_altar_spot) - 1));
	
	var _altar = instance_create_layer(
		_chosen_spot.x,
		_chosen_spot.y,
		"BackgroundInstances",
		obj_altar);
	_altar.image_xscale = 3.222222;
	_altar.image_yscale = 3.222222;
	
	var _indicator = instance_create_layer(
		x,
		y,
		"ForegroundInstances",
		obj_altar_indicator);
	_indicator.image_xscale = 0.5;
	_indicator.image_yscale = 0.5;
	play_sound(snd_find_altar, 0);
}