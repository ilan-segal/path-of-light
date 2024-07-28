var _angle_rad = arctan2(target_y - y, target_x - x);
image_angle = -radtodeg(_angle_rad) + 90; // Compensate for sprite's rotation downwards instead of rightwards
play_sound(snd_enemy_hit);