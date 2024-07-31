/// @param {real} _centre_x
/// @param {real} _centre_y
/// @param {real} _minimum_radius
/// @param {real} _maximum_radius
/// @param {real} _radius_step
/// @param {real} _minimum_density
/// @param {real} _maximum_density
/// @param {real} _maximum_density_radius_slider
/// @param {real} _random_offset
/// @param {Array<Asset.GMObject>} _objs
/// @param {string} _layer
/// @param {bool} _deactivate

function spawn_in_rings(
	_centre_x,
	_centre_y,
	_minimum_radius,
	_maximum_radius,
	_radius_step,
	_minimum_density,
	_maximum_density,
	_maximum_density_radius_slider,
	_random_offset,
	_objs,
	_layer,
	_deactivate = false,
	_scale = 1
) 
{
	var _maximum_density_radius = lerp(_minimum_radius, _maximum_radius, _maximum_density_radius_slider);
	
	var _density_gradient_size = _maximum_density_radius - _minimum_radius;

	for (var _radius = _minimum_radius; _radius < _maximum_radius; _radius += _radius_step)
	{
		var _circumference = 2 * pi * _radius;
		var _density_percentage = clamp((_radius - _minimum_radius) / _density_gradient_size, 0, 1);
		var _cur_density = lerp(_minimum_density, _maximum_density, _density_percentage);
		var _num_instances = round(_circumference * _cur_density);
	
		for (var _i = 0; _i < _num_instances; _i++)
		{
			var _angle = random_range(0, 2 * pi);
			var _x = _radius * cos(_angle) + _centre_x;
			var _y = _radius * sin(_angle) + _centre_y;
		
			var _j = irandom(array_length(_objs) - 1);
			var _cur_obj = _objs[_j];
			var _instance = instance_create_layer(
				_x,
				_y,
				_layer,
				_cur_obj
			)
			//_instance.image_xscale = _scale;
			//_instance.image_yscale = _scale;
			if (_deactivate)
			{
				instance_deactivate_object(_instance);
			}
		}
	}
}