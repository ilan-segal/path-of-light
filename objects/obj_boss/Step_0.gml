event_inherited();

if (enemy_health <= 72 && !in_phase_2)
{
	in_phase_2 = true;
	move_speed = 3;
	sprite_index = spr_boss_glow;
	vanish();
	play_sound(snd_mwahaha);
}

if (alarm[0] % 40 == 0 && _selected_action == 0 && alarm[0] >= 120)
{
	var _x_offset = self.sprite_width;
	var _y_offset = 0;
	var _objs = [obj_shadow_cloud_0, obj_shadow_cloud_1, obj_shadow_cloud_2];
	
	for (var _i = 0; _i < 5; _i++)
	{
		spawn_shadow(x + _x_offset, y + _y_offset);
		spawn_shadow(x - _x_offset, y - _y_offset);
		
		if (_i < 2)
		{
			_x_offset -= self.sprite_width / 2;
			_y_offset += self.sprite_height / 2;
		}
		else
		{
			_x_offset -= self.sprite_width / 2;
			_y_offset -= self.sprite_height / 2;
		}
		
	}
}

if (alarm[0] % 40 == 0 && _selected_action = 1 && alarm[0] >= 120)
{
	var _enemy = instance_create_layer(x + 0, y + 0, "Instances", obj_enemy);
	_enemy.image_xscale = 2.667;
	_enemy.image_yscale = 2.667;
}
	