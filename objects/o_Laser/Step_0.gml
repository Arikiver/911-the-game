// Update laser direction and position
x = o_gosh.x;
y = o_gosh.y;

direction = point_direction(o_gosh.x, o_gosh.y, mouse_x, mouse_y);

var max_length = 2000;
var hit = false;

if (keyboard_check(ord("E"))) {
    a = true;
    for (var i = 0; i < max_length; i++) {
        xEnd = x + lengthdir_x(i, direction);
        yEnd = y + lengthdir_y(i, direction);
        length_laser = i;

        var inst = instance_place(xEnd, yEnd, o_enemy);
        var inst2 = instance_place(xEnd, yEnd, mirror);

        if (inst != noone) {
            inst.hp -= 1;
            if (inst.hp <= 0) {
                instance_destroy(inst);
                score += 1;
            }
            hit = true;
            break;
        } else if (inst2 != noone) {
            o_gosh.hp -= 0.1;
            hit = true;
            break;
        }
    }
} else {
    a = false; // Reset laser state if 'E' is not pressed
}
