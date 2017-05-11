if (obj_menu.game_started)
{
    timer -= timer_speed*delta_time;
    
    if (timer <= 0)
    {
        instance_create(0, 0, obj_target);
        
        timer = random_range(3, 6);
    }
}
