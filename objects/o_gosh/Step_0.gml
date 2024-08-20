/// @description movement

// Apply gravity
vsp += grv;

// Handle horizontal movement
if (keyboard_check(ord("D"))) {
    sprite_index = (keyboard_check(ord("E"))) ? shine_run : spr_run;
    x += 10;
    image_xscale = 2;
} else if (keyboard_check(ord("A"))) {
    sprite_index = (keyboard_check(ord("E"))) ? shine_run : spr_run;
    x -= 10;
    image_xscale = -2;
} else {
    sprite_index = spr_idle;
}

// Check for jumping
if (keyboard_check_pressed(vk_space) && place_meeting(x, y + 1, block)) {
    vsp = -20; // Set vertical speed to negative for jumping
}

// Collision with the ground
if (place_meeting(x, y + vsp, block)) {
    while (!place_meeting(x, y + sign(vsp), block)) {
        y += sign(vsp);
    }
    vsp = 0; // Stop vertical movement upon collision
}

// Apply vertical speed to y position
y += vsp;
