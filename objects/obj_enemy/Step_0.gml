var _dir = point_direction(x, y, obj_player.x, obj_player.y);
var _desired_xspeed = lengthdir_x(speed_, _dir);
var _desired_yspeed = lengthdir_y(speed_, _dir);

if (enemy_health <= 0)
{
	instance_destroy(self, true);
}

if (invuln_time > 0)
{
	image_alpha = 0.5;
	invuln_time--;
}
else
{
	image_alpha = 1;
}

if (spawn_sickness > 0)
{
	spawn_sickness--;
	return;
}

if (place_meeting(x + xspeed_, y, obj_enemy))
{
	xspeed_ = 0;
}

if (place_meeting(x, y + yspeed_, obj_enemy))
{
	yspeed_ = 0;
}

xspeed_ = lerp(xspeed_, _desired_xspeed, 0.1);
yspeed_ = lerp(yspeed_, _desired_yspeed, 0.1);

x += xspeed_;
y += yspeed_;