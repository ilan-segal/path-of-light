play_sound(snd_place_bottle);
instance_create_layer(x, y, "Instances", obj_lingering_light, { lifetime_frames: lifetime_frames });
alarm[0] = lifetime_frames;