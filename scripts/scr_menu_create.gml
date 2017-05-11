clicked_play = false;

vertical_speed = 15;

play_btn = instance_find(obj_btn_play, 0);

initial_scale = play_btn.image_xscale;
hover_scale = play_btn.image_xscale * 1.05;

objects = 0;
objects[0] = instance_find(obj_logo, 0);
objects[1] = instance_find(obj_btn_exit, 0);
objects[2] = instance_find(obj_btn_play, 0);
objects[3] = instance_find(obj_menu_background, 0);

game_started = false;
stop_game = false;
