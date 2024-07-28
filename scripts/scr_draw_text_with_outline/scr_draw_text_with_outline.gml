/// @param {real} _x
/// @param {real} _y
/// @param {string} _message
/// @param {real} _outline_thickness
/// @param {real} _outline_colour
/// @param {real} _outline_fidelity recommended: 4 for small, 8 for medium, 16 for larger. Watch your performance!
/// @param {real} _message_colour
/// @param {real} _opacity
/// @param {real} _separation default 0
/// @param {real} _width default 300
function draw_text_with_outline(
	_x, 
	_y, 
	_message, 
	_outline_thickness,
	_outline_colour,
	_outline_fidelity,
	_message_colour = c_white,
	_opacity = 1.0,
	_separation = 0,
	_width = 300
)
{
	var _dto_dcol=draw_get_color();
	
	var _outline_opacity = _opacity * (_outline_fidelity / 360);

	draw_set_color(_outline_colour & _outline_opacity);

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

	draw_set_color(_message_colour);

	draw_text_ext(_x,_y,_message,_separation,_width);
	
	draw_set_color(_dto_dcol);
}