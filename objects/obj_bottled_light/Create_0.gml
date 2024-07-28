play_sound(snd_bottle_landing);
instance_create_layer(x, y, "Instances", obj_lingering_light, { lifetime_frames: lifetime_frames });
alarm[0] = lifetime_frames;