var _delta_seconds = delta_time / 1_000_000;

image_angle += degrees_per_second * _delta_seconds;
age_seconds += _delta_seconds;
if (age_seconds >= seconds_before_growth)
{
	image_xscale += growth_per_second * _delta_seconds;
	image_yscale += growth_per_second * _delta_seconds;
	
	if (alarm[0] == -1)
	{
		alarm[0] = 90;
	}
	
	if (!done_woosh)
	{
		play_sound(snd_cleansing_light);
		done_woosh = true;
	}
}

if (jobs_done)
{
	room_goto(rm_victory_screen);
}