if(can_collide_with_darkness)
{
	draw_healthbar(
		x + -health_bar_length / 2,
		y + health_bar_offset,
		x + health_bar_length / 2,
		y + health_bar_width + health_bar_offset,
		sanity / max_sanity * 100,
		$FF000000 & $FFFFFF,
		$FF0000FF & $FFFFFF,
		$FFFFE500 & $FFFFFF,
		0,
		(($FF000000>>24) != 0),
		(($FF000000>>24) != 0)
	);
}