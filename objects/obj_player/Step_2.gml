// Movement
var _actual_movement_speed = obj_player.movement_speed;
if (obj_player.move_x != 0 && obj_player.y != 0) {
	_actual_movement_speed /= sqrt(2);
}
x += _actual_movement_speed * obj_player.move_x;
y += _actual_movement_speed * obj_player.move_y;

obj_player.attack_angle = point_direction(x, y, mouse_x, mouse_y);

obj_player_aim_arrow.x = x;
obj_player_aim_arrow.y = y;

if (sanity <= 0)
{
	image_blend = c_red;
}
else if (!can_collide_with_darkness)
{
	image_blend = c_purple;
}
else
{
	image_blend = c_white;
}

can_collide_with_darkness = true;