if (instance_exists(obj_player))
{
	var _distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
	var _factor = 0.01 * _distance_to_player;
	_factor = clamp(_factor, 3.5, 7);
	image_xscale *= _factor;
	image_yscale *= _factor;
}