with (instance_position( mouse_x, mouse_y, all))
{
    if (object_index == obj_btn_play)
    {
        if (mouse_check_button_pressed(mb_left) && !obj_btn_play.clicked_play)
        {
            clicked_play = true;
            //room_goto_next();
        }
    }
    else if (object_index == obj_btn_exit)
    {
        if (mouse_check_button_pressed(mb_left) && !obj_btn_play.clicked_play)
        {
            game_end();
        }
    }
}

if (clicked_play && obj_menu_background.y >= -720)
{
    with (obj_logo)
    {
        y -= obj_btn_play.vertical_speed;
    }
    with (obj_btn_play)
    {
        y -= vertical_speed;
    }
    with (obj_btn_exit)
    {
        y -= obj_btn_play.vertical_speed;
    }
    with (obj_menu_background)
    {
        y -= obj_btn_play.vertical_speed;
    }
} else if (obj_menu_background.y <= -720)
{
    with (obj_logo)
    {
        instance_destroy();
    }
    with (obj_btn_play)
    {
        instance_destroy();
    }
    with (obj_btn_exit)
    {
        instance_destroy();
    }
    with (obj_menu_background)
    {
        instance_destroy();
    }
}
