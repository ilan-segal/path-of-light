age++;
var _blink_phase_duration = blink_duration_frames * (num_blinks - 1);
if (age <= _blink_phase_duration)
{
	// Maximum padding (distance from screen)
	padding = max_padding;
	
	// Transparent for the first half of each blink phase
	if ((age % blink_duration_frames) >= (blink_duration_frames / 2))
	{
		image_alpha = 0;
	}
	else
	{
		if (image_alpha == 0)
		{
			play_sound(snd_find_altar, 0);
		}
		image_alpha = 1;
	}
}
else
{
	// TODO: gradually move towards edge of screen
	var _t = min(movement_duration_frames, age - _blink_phase_duration) / movement_duration_frames;
	padding = lerp(max_padding, min_padding, _t);
}