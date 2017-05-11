x += target_speed;

if (x >= room_width + sprite_width)
{
    if (!target_human)
    {
        obj_score.player_score -= 200;
    }
    
    instance_destroy();
}

with (instance_position(mouse_x, mouse_y, all))
{
    if (object_index == obj_target && mouse_check_button_pressed(mb_left))
    {
        if (target_human)
            obj_score.player_score -= 25;
        else
            obj_score.player_score += 25;
    
        if (!target_human)
            audio_play_sound(snd_zombie_death, 10, false);
        else
        {
            if (is_female)
                audio_play_sound(snd_death_female, 10, false);
            else
                audio_play_sound(snd_death_male, 10, false);
        }
        
        instance_destroy();
    }
}
