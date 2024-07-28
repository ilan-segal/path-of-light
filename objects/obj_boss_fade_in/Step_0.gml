if (countdown <= 0)
{
	instance_destroy();
	return;
}

countdown--;
image_alpha = lerp(1, 0, countdown / max_countdown);
image_xscale = image_alpha * final_scale;
image_yscale = image_alpha * final_scale;

if (countdown % 3 == 0 && max_countdown - countdown < 180)
{
	var _offset_x = random_range(-10, 10);
	var _offset_y = random_range(-10, 10);
	effect_create_depth(
		0,
		ef_smoke,
		x + _offset_x,
		y + _offset_y,
		2,
		c_black
	);
}