var _dir = point_direction(x, y, obj_player.x, obj_player.y);
xspeed_ = lengthdir_x(speed_, _dir);
yspeed_ = lengthdir_y(speed_, _dir);

if (place_meeting(x + xspeed_, y, obj_enemy1))
{
	xspeed_ = 0;
}

if (place_meeting(x, y + yspeed_, obj_enemy1))
{
	yspeed_ = 0;
}

x += xspeed_;
y += yspeed_;