switch (activation_state)
{
	case "dormant":
		if (point_distance(x, y, obj_player.x, obj_player.y) > activation_distance)
		{
			return;
		}
		activation_state = "evil_transition";
		instance_create_layer(x, y, "Instances", obj_altar_glow);
		alarm[0] = evil_reveal_delay_frames;
		break;
	case "evil_transition":
		if (instance_exists(obj_altar_glow_evil))
		{
			obj_altar_glow.image_alpha -= evil_opacity_rate;
			obj_altar_glow_evil.image_alpha = 1 - obj_altar_glow.image_alpha;
			
			if (obj_altar_glow.image_alpha <= 0)
			{
				instance_destroy(obj_altar_glow);
				var _fake_boy = instance_create_layer(x, y, "ForegroundInstances", obj_boss_fade_in, {final_scale: 2.667});
				activation_state = "evil";
			}
		}
		break;
	case "evil":
		if !(instance_exists(obj_boss_fade_in) || instance_exists(obj_boss))
		{
			activation_state = "waiting";
		}
		break;
	case "waiting":
		if (!instance_exists(obj_altar_glow_effect_evil))
		{
			instance_create_layer(
				x,
				y,
				"Instances",
				obj_altar_glow_effect_evil,
				{
					final_scale: obj_altar_glow_evil.image_xscale
				}
			);
		}
		if (point_distance(x, y, obj_player.x, obj_player.y) <= activation_distance)
		{
			activation_state = "nice";
			var _glow_effect = instance_place(x, y, obj_altar_glow_effect_evil);
			var _glow = instance_place(x, y, obj_altar_glow_evil);
			instance_destroy(_glow_effect);
			instance_destroy(_glow);
			instance_create_layer(x, y, "Instances", obj_altar_glow);
			alarm[1] = 60;
		}
		break;
		
}
