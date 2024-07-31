if (!obj_pause.pause)
{
	return;
}

if (hovered && !is_disabled)
{
	if (circular_frame)
	{
		draw_sprite_ext(
			spr_circle,
			1,
			x, y,
			get_width() * scale / sprite_get_width(spr_circle),
			get_height() * scale / sprite_get_height(spr_circle),
			0,
			c_white,
			0.5
		);
	}
	else
	{
		draw_sprite_ext(
			spr_square,
			1,
			get_left() - (get_width() / 2),
			get_top() - (get_height() / 2),
			get_width() * scale,
			get_height() * scale,
			0,
			c_white,
			0.5
		);
	}

}

var _colour = is_disabled ? #202020 : c_white;
draw_sprite_ext(sprite, 1, x, y, scale, scale, 0, _colour, 1);

if (string_length(info) > 0)
{
	draw_text(
		x + (info_offset_x * global.ui_scale),
		y + (info_offset_y * global.ui_scale),
		info
	);
}

if (hovered && string_length(hover_text) > 0)
{
	var _mouse_x = (window_mouse_get_x()/window_get_width()) * display_get_gui_width() - window_get_x();
	var _mouse_y = (window_mouse_get_y()/window_get_height()) * display_get_gui_height() - window_get_y();
	draw_text_with_outline(_mouse_x, _mouse_y - 10 * scale, hover_text, 3, c_black, 16);
}
