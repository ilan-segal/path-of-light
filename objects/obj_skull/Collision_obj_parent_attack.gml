if (i_frames > 0) return;

i_frames = i_frames_on_hit;

skull_health -= obj_player.attack_damage;

effect_create_above(4, x + 0, y + 0, 0, $FFC6F8FF & $ffffff);
var _direction = point_direction(obj_player.x, obj_player.y, x, y);
x += displacement_pixels * cos(_direction);
y += displacement_pixels * sin(_direction);
