target_speed = random_range(3, 6);

target_human = false;
is_female = false;

sprites = 0;
sprites[0] = spr_zombie_dapper;
sprites[1] = spr_zombie_boi;
sprites[2] = spr_zombie_gal;
sprites[3] = spr_zombie_smoll_boi;
sprites[4] = spr_zombie_princess;
sprites[5] = spr_human_boy;
sprites[6] = spr_human_girlo;
sprites[7] = spr_human_granny;

sprite = random_range(0, array_length_1d(sprites));

sprite_index = sprites[sprite];

if (sprite >= 5)
    target_human = true;
    
if (sprite >= 6)
    is_female = true;

start_positions_y = 0;
start_positions_y[0] = 288;
start_positions_y[1] = 500;
start_positions_y[2] = 704;

y = start_positions_y[random_range(0, array_length_1d(start_positions_y))];

if (!target_human)
    audio_play_sound(snd_zombie_spawn, 10, false);
