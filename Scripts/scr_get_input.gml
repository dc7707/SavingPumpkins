/// scr_get_input

right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

if (keyboard_check(vk_escape)) {
    game_end();
}

if (keyboard_check_pressed(ord("R"))) {
    game_restart();
}

if (keyboard_check_pressed(ord("F"))) {
    if (window_get_fullscreen() == true) {
        window_set_fullscreen(false); 
    } else {
        window_set_fullscreen(true);
    }
}

if mouse_check_button_pressed(mb_left) {
    window_set_fullscreen(false);
}

if (distance_to_object(obj_jack) <= 4) {
    closestJack = instance_nearest(obj_player.x, obj_player.y, obj_jack)
    with closestJack {
        if (followit != noone) {
           if (keyboard_check_pressed(ord("X"))) {
                followit = noone;  
            }
           // followit = noone;
        } else {
            if (keyboard_check_pressed(ord("X"))) {
                followit = obj_player;  
            }
        }
    }  
        
}
