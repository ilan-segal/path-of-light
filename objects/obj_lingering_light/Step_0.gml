age_frames++;

var _diameter = diameter_pixels;

if (age_frames < wind_up_frames)
{
	var _t = sin(0.5 * pi * age_frames / wind_up_frames); // between 0 and 1
	_diameter *= _t;
}
else if (age_frames > (lifetime_frames - wind_down_frames))
{
	var _t = sin(0.5 * pi * (lifetime_frames - age_frames) / wind_down_frames);
	_diameter *= _t;
}

image_xscale = _diameter / sprite_get_width(sprite_index);
image_yscale = _diameter / sprite_get_height(sprite_index);

var _n = 2;
if (age_frames % _n == 0) // Every N frames, draw sparkles
{
	var _num_sparkles = 6;
	var _radius = 0.5 * _diameter;
	var _sparkle_initial_angle = age_frames * sparkle_rotation_per_frame;
	var _angle_between_sparkles = 360 / _num_sparkles;
	for (var _i = 0; _i < _num_sparkles; _i++)
	{
		var _cur_angle = _sparkle_initial_angle + _i * _angle_between_sparkles;
		var _cur_angle_radians = pi / 180 * _cur_angle;
		var _cur_x = x + _radius * cos(_cur_angle_radians);
		var _cur_y = y + _radius * sin(_cur_angle_radians);
		effect_create_above(
			ef_spark,
			_cur_x,
			_cur_y,
			0,
			#FFF99C
		);
	}
}

