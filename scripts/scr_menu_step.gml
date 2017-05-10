with (instance_position( mouse_x, mouse_y, all))
{
    if (object_index == obj_btn_play)
    {
        obj_btn_play.image_xscale = obj_btn_play.hover_scale;
        obj_btn_play.image_yscale = obj_btn_play.hover_scale;
        
        obj_btn_exit.image_xscale = obj_btn_play.initial_scale;
        obj_btn_exit.image_yscale = obj_btn_play.initial_scale;
    
        if (mouse_check_button_pressed(mb_left) && !obj_btn_play.clicked_play)
        {
            clicked_play = true;
            scr_set_cursor();
            //room_goto_next();
        }
    }
    else if (object_index == obj_btn_exit)
    {
        obj_btn_exit.image_xscale = obj_btn_play.hover_scale;
        obj_btn_exit.image_yscale = obj_btn_play.hover_scale;
        
        obj_btn_play.image_xscale = obj_btn_play.initial_scale;
        obj_btn_play.image_yscale = obj_btn_play.initial_scale;
    
        if (mouse_check_button_pressed(mb_left) && !obj_btn_play.clicked_play)
        {
            game_end();
        }
    }
    else
    {
        obj_btn_play.image_xscale = obj_btn_play.initial_scale;
        obj_btn_play.image_yscale = obj_btn_play.initial_scale;
        
        obj_btn_exit.image_xscale = obj_btn_play.initial_scale;
        obj_btn_exit.image_yscale = obj_btn_play.initial_scale;
    }
}

if (clicked_play && obj_menu_background.y >= -720)
{
    for (i = 0; i < array_length_1d(obj_btn_play.objects); i++)
    {
        with (objects[i])
            y -= obj_btn_play.vertical_speed;
    }
} else if (obj_menu_background.y <= -720)
{
    for (i = 0; i < array_length_1d(obj_btn_play.objects); i++)
    {
        with (objects[i])
            instance_destroy();
    }
}
