var _spacing = 30;
var _variance = 15;

var _shadow_objs = [
	obj_shadow_cloud_0,
	obj_shadow_cloud_1,
	obj_shadow_cloud_2,
];

for (var _y = room_height; _y >= 0; _y -= _spacing)
{
	for (var _x = 0; _x < room_width; _x += _spacing)
	{
		var _cur_x = _x + random_range(-_variance, _variance);
		var _cur_y = _y + random_range(-_variance, _variance);
		
		instance_create_layer(
			_cur_x,
			_cur_y,
			"BackgroundInstances",
			_shadow_objs[irandom(2)]
		);
	}
}