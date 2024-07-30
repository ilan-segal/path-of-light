// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_in_spots() 
{
	var _starting_x = room_height / 20;
	var _starting_y = room_width / 20;
	var _spot_seperation = room_width / 10;
	
	for (var _i = 0; _i < 10; _i++)
	{
		for (var _j = 0; _j < 10; _j++)
		{
			instance_create_layer(
				_starting_x + _j * _spot_seperation,
				_starting_y + _i * _spot_seperation,
				"BackgroundInstances",
				obj_potential_altar_spot);
		}
	}
}