/// @description Camera movement and follow

// Update target position if the follow object is valid
if (follow != noone) {
    xTo = follow.x;
    yTo = follow.y;
}

// Smoothly move camera towards target position
x += (xTo - x) / smooth_factor;
y += (yTo - y) / smooth_factor;

// Set the camera view position
camera_set_view_pos(view_camera[0], x - (camWidth * 0.5), y - (camHeight * 0.5)-250);
