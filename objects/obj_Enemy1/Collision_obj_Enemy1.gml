var _dir = point_direction(other.x, other.y, x, y);
xspeed_ += lengthdir_x(1, _dir);
yspeed_ += lengthdir_y(1, _dir);
x += xspeed_;
y += yspeed_;