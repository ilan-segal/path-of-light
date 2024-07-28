var _generic_attack = instance_create_layer(x, y, "Instances", obj_generic_attack);
_generic_attack.image_angle = attack_angle;
var _sound = audio_play_sound(snd_torch, 10, false);
var _pitch_variance = random_range(0.8, 1.2);
audio_sound_pitch(_sound, _pitch_variance);