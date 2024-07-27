if (!obj_pause.pause) return;

var _scale = global.ui_scale;
var _sprite_h = sprite_get_height(spr_crafting_menu);
var _sprite_w = sprite_get_width(spr_crafting_menu);
var _x_pos = view_wport[0] / 2;
var _y_pos = view_hport[0] / 2;

draw_sprite_ext(spr_crafting_menu, 1, _x_pos, _y_pos, _scale, _scale, 0, c_white, 1);