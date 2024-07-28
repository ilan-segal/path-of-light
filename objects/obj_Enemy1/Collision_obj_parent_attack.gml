var _dir = point_direction(obj_player.x, obj_player.y, x, y);
xspeed_ = lengthdir_x(obj_player.knockback * kb_multiplier, _dir);
yspeed_ = lengthdir_y(obj_player.knockback * kb_multiplier, _dir);
	
x += xspeed_;
y += yspeed_;

if(invuln_time == 0)
{
	enemy_health -= obj_player.attack_damage;
	
	invuln_time = 30;
}

var _sound;
if (enemy_health > 0)
{
	_sound = audio_play_sound(snd_enemy_hit, 9, false);
}
else
{
	// TODO: Death sound
	_sound = audio_play_sound(snd_enemy_hit, 9, false);
}
var _pitch_variance = random_range(0.8, 1.2);
audio_sound_pitch(_sound, _pitch_variance);