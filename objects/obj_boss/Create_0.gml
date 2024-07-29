xspeed_ = 0;
yspeed_ = 0;
speed_ = move_speed;
invuln_time = 30;
_selected_action = -1;
_previous_action = -1;
alarm[0] = 120;

function take_damage(_amount, _from_x, _from_y, _knockback_speed)
{
	if(invuln_time > 0) return;
	
	if (_knockback_speed > 0)
	{
		var _dir = point_direction(_from_x, _from_y, x, y);
		xspeed_ = lengthdir_x(obj_player.knockback * kb_multiplier, _dir);
		yspeed_ = lengthdir_y(obj_player.knockback * kb_multiplier, _dir);
	
		x += xspeed_;
		y += yspeed_;
	}

	
	enemy_health -= _amount;
	
	invuln_time = 30;

	if (enemy_health > 0)
	{
		_sound = audio_play_sound(snd_enemy_hit, 9, false);
	}
	else
	{
		play_sound(snd_enemy_death);
	}
}

function spawn_shadow(_x, _y)
{
	var _objs = [obj_shadow_cloud_0, obj_shadow_cloud_1, obj_shadow_cloud_2];
	var _j = irandom(array_length(_objs) - 1);
	var _cur_obj = _objs[_j];
	instance_create_layer(_x, _y, "Instances", _cur_obj);
}

function vanish()
{
	show_debug_message("Vanishing")
	alarm[0] = 60;
	var _offset = obj_shadow_cloud_0.sprite_height;
	
	play_sound(snd_woosh);
	
	spawn_shadow(x, y);
	spawn_shadow(x + _offset, y);
	spawn_shadow(x - _offset, y);
	spawn_shadow(x, y - _offset);
	spawn_shadow(x, y - _offset);
	
	
	var _destination = irandom(3);
	var _x_destination;
	var _y_destination;
	
	switch (_destination)
	{
		case 0:
		_x_destination = obj_player.x;
		_y_destination = obj_player.y + 440;
		break;
		
		case 1:
		_x_destination = obj_player.x + 440;
		_y_destination = obj_player.y;
		break;
		
		case 2:
		_x_destination = obj_player.x;
		_y_destination = obj_player.y - 440;
		break;
		
		case 3:
		_x_destination = obj_player.x - 440;
		_y_destination = obj_player.y;
		break;
		
		default:
		break;
	}
	
	x = _x_destination;
	y = _y_destination;
}