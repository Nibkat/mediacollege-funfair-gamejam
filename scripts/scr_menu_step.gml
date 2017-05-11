with (instance_position( mouse_x, mouse_y, all))
{
    if (object_index == obj_btn_play)
    {
        obj_btn_play.image_xscale = obj_menu.hover_scale;
        obj_btn_play.image_yscale = obj_menu.hover_scale;
        
        obj_btn_exit.image_xscale = obj_menu.initial_scale;
        obj_btn_exit.image_yscale = obj_menu.initial_scale;
    
        if (mouse_check_button_pressed(mb_left) && !obj_menu.clicked_play)
        {
            obj_menu.clicked_play = true;
        }
    }
    else if (object_index == obj_btn_exit)
    {
        obj_btn_exit.image_xscale = obj_menu.hover_scale;
        obj_btn_exit.image_yscale = obj_menu.hover_scale;
        
        obj_btn_play.image_xscale = obj_menu.initial_scale;
        obj_btn_play.image_yscale = obj_menu.initial_scale;
    
        if (mouse_check_button_pressed(mb_left) && !obj_menu.clicked_play)
        {
            game_end();
        }
    }
    else
    {
        obj_btn_play.image_xscale = obj_menu.initial_scale;
        obj_btn_play.image_yscale = obj_menu.initial_scale;
        
        obj_btn_exit.image_xscale = obj_menu.initial_scale;
        obj_btn_exit.image_yscale = obj_menu.initial_scale;
    }
}

if (obj_menu.clicked_play && obj_menu_background.y >= -720)
{
    for (i = 0; i < array_length_1d(obj_menu.objects); i++)
    {
        with (obj_menu.objects[i])
            y -= obj_menu.vertical_speed;
    }
} else if (obj_menu_background.y <= -720)
{
    game_started = true;
    scr_set_cursor();
}
