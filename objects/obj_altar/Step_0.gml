if (!is_activated) && (point_distance(x, y, obj_player.x, obj_player.y) <= activation_distance)
{
	is_activated = true;
	var _glow = instance_create_layer(x, y, "Instances", obj_altar_glow);
	show_debug_message("Activated!");
	
	alarm[1] = 1 * game_get_speed(gamespeed_fps);
}