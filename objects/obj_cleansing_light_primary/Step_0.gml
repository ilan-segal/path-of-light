var _delta_seconds = delta_time / 1_000_000;

image_angle += degrees_per_second * _delta_seconds;
age_seconds += _delta_seconds;
if (age_seconds >= seconds_before_growth)
{
	image_xscale += growth_per_second * _delta_seconds;
	image_yscale += growth_per_second * _delta_seconds;
	
	if (!done_woosh)
	{
		play_sound(snd_cleansing_light);
		done_woosh = true;
	}
}

jobs_done = !(instance_exists(obj_enemy) || instance_exists(obj_shadow_cloud_parent));
if (jobs_done)
{
	image_alpha += opacity_change_per_second * _delta_seconds;
}

if (image_alpha <= 0)
{
	instance_destroy();
}