if (!obj_pause.pause)
{
	return;
}

var _w = get_width();
var _h = get_height();

var _mouse_x = window_mouse_get_x();
var _mouse_y = window_mouse_get_y();

hovered = point_in_rectangle(_mouse_x, _mouse_y, x - _w, y - _h, x + _w, y + _h);

if (is_disabled) return;

clicked = hovered && mouse_check_button_pressed(mb_left);