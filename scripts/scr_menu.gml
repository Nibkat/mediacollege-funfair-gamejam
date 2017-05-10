with (instance_position( mouse_x, mouse_y, all))
{
    if (object_index == obj_btn_play)
    {
        if (mouse_check_button_pressed(mb_left))
        {
            clicked_play = true;
            background_vspeed = -5;
            //room_goto_next();
        }
    }
    else if (object_index == obj_btn_exit)
    {
        if (mouse_check_button_pressed(mb_left))
        {
            game_end();
        }
    }
}

if (clicked_play)
{
    with (obj_btn_play)
    {
        y -= 5;
    }
    with (obj_btn_exit)
    {
        y -= 5;
    }
}
