draw_set_color(c_white);
draw_set_font(font_large);
if (obj_menu.game_started)
{
    draw_text(170, 100, "Score: " + string(player_score));
}
