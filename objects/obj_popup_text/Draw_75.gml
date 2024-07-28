var _fadeout_duration_frames = 15;
var _fadeout_amount = (age_frames - lifetime_frames + _fadeout_duration_frames) / _fadeout_duration_frames;
var _opacity_slider = clamp(0, 1, 1 - _fadeout_amount);

draw_text_with_outline(
	x,
	y,
	message,
	4,
	c_black,
	16,
	colour,
	_opacity_slider
);