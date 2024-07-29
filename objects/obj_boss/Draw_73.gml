var _camera = camera_get_active();

var _horizontal_padding = 10;
var _vertical_padding = 10;

var _width = camera_get_view_width(_camera) - 2 * _horizontal_padding;
var _height = 10;

var _x_pos = camera_get_view_x(_camera) + _horizontal_padding;
var _y_pos = camera_get_view_y(_camera) + _vertical_padding;

draw_healthbar(
	_x_pos,
	_y_pos,
	_x_pos + _width,
	_y_pos + _height,
	get_health_bar_value(),
	$FF000000 & $FFFFFF,
	$FF000084 & $FFFFFF,
	$FF000084 & $FFFFFF,
	0,
	(($FF000000>>24) != 0),
	(($FF000000>>24) != 0)
);