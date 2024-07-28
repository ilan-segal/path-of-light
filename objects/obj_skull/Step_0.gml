if (abs(home_x - x) <= return_rate)
{
	x = home_x;
}
else if (home_x < x)
{
	x -= return_rate;
}
else
{
	x += return_rate;
}

if (abs(home_y - y) <= return_rate)
{
	y = home_y;
}
else if (home_y < y)
{
	y -= return_rate;
}
else
{
	y += return_rate;
}

if (x == home_x) && (y == home_y)
{
	i_frames--;
}

if (skull_health <= 1)
{
	image_index = 1;
}

if (skull_health <= 0)
{
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_bone_dust);
}