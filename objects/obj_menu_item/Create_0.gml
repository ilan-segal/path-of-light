function get_width()
{
	return sprite_get_width(sprite);
}

function get_height()
{
	return sprite_get_height(sprite);
}

function get_left()
{
	return x - get_width() / 2;
}

function get_right()
{
	return x + get_width() / 2;
}

function get_top()
{
	return y - get_height() / 2;
}

function get_bottom()
{
	return y + get_height() / 2;
}