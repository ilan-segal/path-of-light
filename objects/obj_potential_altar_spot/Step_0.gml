if (point_distance(x, y, obj_player.x, obj_player.y) <= destroy_distance)
{
	instance_destroy();
	obj_player.distance_covered++;
}