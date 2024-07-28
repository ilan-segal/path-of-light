xspeed_ = 0;
yspeed_ = 0;
speed_ = move_speed;
invuln_time = 30;

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