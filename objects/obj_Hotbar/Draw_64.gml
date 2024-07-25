if (instance_exists(obj_player))
{
	var scale = 3;
	var spriteH = sprite_get_height(spr_Hotbar);
	var spriteW = sprite_get_width(spr_Hotbar);
	var xPos = view_wport[0] / 2 - spriteW / 2 * scale;
	var yPos = view_hport[0] - spriteH * scale;
	
	draw_sprite_ext(spr_Hotbar, 1, xPos, yPos, scale, scale, 0, c_white, 1);
	
	// Old code, changed it to be more easily edited
	//draw_sprite_ext(spr_Hotbar, 1, 416, 558, scale, scale, 0, c_white, 1);
}