var _dir = point_direction(obj_player.x, obj_player.y, x, y);
xspeed_ = lengthdir_x(10 * kb_multiplier, _dir);
yspeed_ = lengthdir_y(10 * kb_multiplier, _dir);

if(invuln_time == 0)
{
	enemy_health -= obj_player.atk_damage;
	
	invuln_time = 30;
	
	x += xspeed_;
	y += yspeed_;
}