/// @description Insert description here
// You can write your code in this editor

// movement speed variable
var move_speed = 5;

// Calculate the distance between the enemy and the target
var distance_to_target = point_distance(x, y, o_gosh.x, o_gosh.y);

// Move the enemy if the target is within a certain distance
if (distance_to_target <= 1000) {
    x -= move_speed;
}