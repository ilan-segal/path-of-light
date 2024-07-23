var _angle_to_cursor_radians = arctan2(window_mouse_get_y() - y, window_mouse_get_x() - x);
var _angle_to_cursor_degrees = radtodeg(_angle_to_cursor_radians);
image_angle = -_angle_to_cursor_degrees;