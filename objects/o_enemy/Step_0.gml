/// @description Enemy behavior and movement

// Calculate distance to the player
var dist_x = o_gosh.x - x;
var dist_y = o_gosh.y - y;
var distance_to_player = sqrt(dist_x * dist_x + dist_y * dist_y);

// Check if the player is within the detection range
if (distance_to_player < range) {
    // Calculate direction towards the player
    var dir = point_direction(x, y, o_gosh.x, o_gosh.y);
    
    // Move the enemy towards the player
    x += lengthdir_x(move_speed, dir);
    y += lengthdir_y(move_speed, dir);
} else {
    // Stop movement if the player is out of range
    x += 0; // Optional, explicitly stating no movement
    y += 0; // Optional, explicitly stating no movement
}
