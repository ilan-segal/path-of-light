function get_width()
{
	return sprite_get_width(sprite);
}

function get_height()
{
	return sprite_get_height(sprite);
}

function get_left()
{
	return x - get_width() / 2;
}

function get_right()
{
	return x + get_width() / 2;
}

function get_top()
{
	return y - get_height() / 2;
}

function get_bottom()
{
	return y + get_height() / 2;
}

/// @param {real} _x
/// @param {real} _y
/// @param {string} _message
/// @param {real} _outline_thickness
/// @param {real} _outline_colour
/// @param {real} _outline_fidelity recommended: 4 for small, 8 for medium, 16 for larger. Watch your performance!
/// @param {real} _separation default 0
/// @param {real} _width default 300
function draw_text_with_outline(_x, _y, _message, _outline_thickness, _outline_colour, _outline_fidelity, _separation = 0, _width = 300)
{
	var _dto_dcol=draw_get_color();

	draw_set_color(_outline_colour);

	for(var _dto_i=45; _dto_i<405; _dto_i+=360/_outline_fidelity)
	{
		draw_text_ext(
			_x+round(lengthdir_x(_outline_thickness,_dto_i)),
			_y+round(lengthdir_y(_outline_thickness,_dto_i)),
			_message,
			_separation,
			_width
		);
	}

	draw_set_color(_dto_dcol);

	draw_text_ext(_x,_y,_message,_separation,_width);
}