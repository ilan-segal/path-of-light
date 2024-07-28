/// @param {Asset.GMSound} _sound
/// @param {Real} _pitch_variance

function play_sound(_sound, _pitch_variance = 0.2) 
{

	var _sound_id = audio_play_sound(_sound, 10, false);
	var _pitch = random_range(1 - _pitch_variance, 1 + _pitch_variance);
	audio_sound_pitch(_sound_id, _pitch);
}

