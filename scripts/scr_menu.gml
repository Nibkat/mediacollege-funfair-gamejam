if ( mouse_check_button_pressed( mb_left ) )
{
    with ( instance_position( mouse_x, mouse_y, all ))
    {
        if (object_index == obj_btn_play)
        {
            room_goto_next();
        } else if (object_index == obj_btn_exit)
        {
            game_end();
        }
    }
}
