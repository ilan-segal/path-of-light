if (image_alpha < 1)
{
	image_alpha += 0.01;
}
else
{
	room_goto(rm_game_over_screen);
}