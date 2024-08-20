// Draw laser
if (a) {
    draw_line(x, y, xEnd, yEnd);

    for (var j = 0; j < length_laser; j++) {
        var lx = x + lengthdir_x(j, direction);
        var ly = y + lengthdir_y(j, direction);
        draw_sprite_ext(Sprite16, 0, lx, ly, 1, 1, direction, c_white, 1);
    }
}
