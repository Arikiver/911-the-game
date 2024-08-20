/// @description healthbar

// Draw healthbar
var health_percentage = hp / hp_max;
draw_sprite_stretched(healthbar, 0, healthbar_x, healthbar_y, healthbar_width * health_percentage, healthbar_height);
draw_sprite(health_bar, 0, healthbar_x, healthbar_y);
