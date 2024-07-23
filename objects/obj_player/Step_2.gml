// Movement
var _actual_movement_speed = obj_player.movement_speed;
if (obj_player.move_x != 0 && obj_player.y != 0) {
	_actual_movement_speed /= sqrt(2);
}
x += _actual_movement_speed * obj_player.move_x;
y += _actual_movement_speed * obj_player.move_y;

// Calculate angle to cursor
var _attack_angle_radians = arctan2(window_mouse_get_y() - y, window_mouse_get_x() - x);
obj_player.attack_angle = -radtodeg(_attack_angle_radians);