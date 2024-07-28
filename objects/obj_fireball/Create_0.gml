image_xscale *= diameter_pixels / sprite_width;
image_yscale *= diameter_pixels / sprite_height;

alarm[0] = duration_frames;
alarm[1] = 1;

play_sound(snd_fireball);