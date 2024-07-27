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