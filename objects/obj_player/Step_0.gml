if(sanity <= 0)
{
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;

	if (alarm_get(0) == -1) {
		alarm_set(0, game_get_speed(gamespeed_fps) * 1.0);
	}
}