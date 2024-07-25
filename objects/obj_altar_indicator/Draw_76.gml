
function point_to_edge(_sx, _sy, _tx, _ty, _inner, _pad) {
   
	var _vx = _tx - _sx;
	var _vy = _ty - _sy;
	var _angle_to_target = -arctan2(_vy, _vx);
	if _angle_to_target < 0 { _angle_to_target += 2 * pi }
	
	var _view_height = view_hport[0] - 2 * _pad;
	var _view_width = view_wport[0] - 3 * _pad;
   
	var _left = obj_player.x - _view_width / 2;
	var _top = obj_player.y - _view_height / 2;
	var _right = _left + _view_width;
	var _bottom = _top + _view_height;
	
	if (point_in_rectangle(_tx, _ty, _left, _top, _right, _bottom)) {
		image_alpha = 0;
		return;
	}
	image_alpha = 1;
   
	// Middle of view
	var _mx = 0.5 * (_left + _right);
	var _my = 0.5 * (_top + _bottom);
   
	var _top_right_angle = -arctan2(_top - _my, _right - _mx);
	var _top_left_angle = -arctan2(_top - _my, _left - _mx);
	var _bottom_left_angle = -arctan2(_bottom - _my, _left - _mx) + 2 * pi;
	var _bottom_right_angle = -arctan2(_bottom - _my, _right - _mx) + 2 * pi;
	
	var _arrow_x, _arrow_y;
	
	if (_top_right_angle <= _angle_to_target) && (_angle_to_target <= _top_left_angle) {
		_arrow_y = _top;
		_arrow_x = _mx + (_view_height / 2) / tan(_angle_to_target);
	}
	else if (_top_left_angle <= _angle_to_target) && (_angle_to_target <= _bottom_left_angle)
	{
		_arrow_x = _left;
		_arrow_y = _my + (_view_width / 2) * tan(_angle_to_target);
	}
	else if(_bottom_left_angle <= _angle_to_target) && (_angle_to_target <= _bottom_right_angle)
	{
		_arrow_y = _bottom;
		_arrow_x = _mx + (_view_height / 2) / -tan(_angle_to_target);
	}
	else
	{
		_arrow_x = _right;
		_arrow_y = _my - (_view_width / 2) * tan(_angle_to_target);
	}
	
	x = _arrow_x;
	y = _arrow_y;
	image_angle = radtodeg(_angle_to_target);
}

point_to_edge(obj_player.x, obj_player.y, obj_altar.x, obj_altar.y, 100, 150);
