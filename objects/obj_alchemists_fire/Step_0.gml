if (alarm[0] < 0)
{
	alarm[0] = animation_period_frames;
}
var _distance_this_step = fly_pixels_per_frame;

if (point_distance(x, y, target_x, target_y) <= _distance_this_step)
{
	// TODO: Create fireball
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_fireball);
}

move_towards_point(target_x, target_y, _distance_this_step);