var _safe_zone_radius = 150;
var _darkness_distance = obj_player.sprite_height;

var _random_offset = 20;

obj_player.x = room_width / 2;
obj_player.y = room_height / 2;

for (var _cur_y = (room_height / 2) % _darkness_distance; _cur_y < room_height; _cur_y += _darkness_distance) {
	for (var _cur_x = (room_width / 2) % _darkness_distance; _cur_x < room_width; _cur_x += _darkness_distance) {
		
		if (point_distance(_cur_x, _cur_y, obj_player.x, obj_player.y) <= _safe_zone_radius) continue;
		
		var _spawn_x = _cur_x + random_range(-_random_offset, _random_offset);
		var _spawn_y = _cur_y + random_range(-_random_offset, _random_offset);
		
		switch (irandom(2)) {
			case 0: instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_shadow_cloud_0); break;
			case 1: instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_shadow_cloud_1); break;
			case 2: instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_shadow_cloud_2); break;
		}
		
	}
}