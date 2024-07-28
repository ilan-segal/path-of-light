/// @param {real} _x
/// @param {real} _y
/// @param {string} _message
/// @param {real} _colour
/// @param {real} _lifetime_seconds
function popup_text(_x, _y, _message, _colour, _lifetime_seconds = 1) 
{
	instance_create_layer(
		_x,
		_y,
		"Menu",
		obj_popup_text,
		{
			message: _message,
			colour: _colour,
			lifetime_frames: _lifetime_seconds * game_get_speed(gamespeed_fps),
			speed_x: 0,
			speed_y: -2,
		}
	);
}